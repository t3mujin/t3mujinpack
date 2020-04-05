@echo off

rem Removes all t3mujinpack styles from Darktable database.
rem
rem Author: João Almeida <info@joaoalmeidaphotography.com>


rem Initialize output colors
set ESC=
set LIGHT_GREY=%ESC%[34m
set YELLOW=%ESC%[31m
set GREEN=%ESC%[34m
set LIGHT_BLUE=%ESC%[34m
set NC=%ESC%[37m

echo.
echo ----------------------------------------------------------------------
echo t3mujinpack - Film emulation presets for Darktable
echo.
echo Presets Uninstall script
echo ----------------------------------------------------------------------
echo.



rem Validate Darktable installation

set darktable_path="%ProgramFiles%\darktable\bin\darktable.exe"

IF not exist %darktable_path% (
	echo.
	echo Darktable was not found at %darktable_path%.
	echo.
	exit /B
)


rem Setup database file
IF [%1] == [] (
	echo.
	echo Using default database files
	set data_database_file="%localappdata%\darktable\data.db"
	set library_database_file="%localappdata%\darktable\library.db"
) ELSE (
	IF [%2] == [] (
		echo.
		echo You must also specify the library database file
		echo.
		exit /B
	) ELSE (
		echo Using given database files
		set data_database_file=%1
		set library_database_file=%2
	)
)

IF NOT exist %data_database_file% (
	echo.
	echo Database file %data_database_file% does not exist
	echo.
	exit /B
)

rem Validate Darktable model

echo Current metadata database file: %data_database_file%
echo Current library database file: %library_database_file%

set output_data=
for /f %%i in ('bin\sqlite3.exe %data_database_file% "select count(1) from sqlite_master where name = 'styles' or name = 'style_items' or name = 'tags'"') do set output_data=%%i

if not %output_data% == 3 (
	echo.
	echo %data_database_file% is not an Darktable 3.0.x metadata database
	echo Execution has ended and presets have NOT been uninstalled!
	echo.
	exit /B
)

set output_library=
for /f %%i in ('bin\sqlite3.exe  %library_database_file% "select count(1) from sqlite_master where name = 'tagged_images'"') do set output_library=%%i

if not %output_library% == 1 (
	echo.
	echo %library_database_file% is not an Darktable 3.0.x metadata database
	echo Execution has ended and presets have NOT been uninstalled!
	echo.
	exit /B
)


rem Validate t3mujinpack instalation (including older version)

set styles_list=

for /f %%i in ('bin\sqlite3.exe  %data_database_file% "select name from styles where name like 't3mujin - %%' or name like 't3mujinpack - %%' order by name"') do set styles_list=%%i

if "%styles_list%" == "" (
	echo.
	echo t3mujinpack is not installed
	echo.
	exit /B
)

set "reply=y"
set /p "reply=Uninstall all t3mujinpack styles? [y|n]: "

IF not "%reply%" == "y" (
	echo.
	echo Uninstall aborted
	exit /B
)

rem Execute uninstall

echo.
echo Removing styles definitions...

for /f %%i in ('bin\sqlite3.exe  %data_database_file% "delete from style_items where style_items.styleid in ( select id from styles where name like '%%t3mujin - %%')"') do set styles_list=%%i
for /f %%i in ('bin\sqlite3.exe  %data_database_file% "delete from style_items where style_items.styleid in ( select id from styles where name like '%%t3mujinpack - %%')"') do set styles_list=%%i
for /f %%i in ('bin\sqlite3.exe  %data_database_file% "delete from styles where name like '%%t3mujin - %%'"') do set styles_list=%%i
for /f %%i in ('bin\sqlite3.exe  %data_database_file% "delete from styles where name like '%%t3mujinpack - %%'"') do set styles_list=%%i

echo.
echo.
echo t3mujinpack presets have been uninstalled!
echo.
