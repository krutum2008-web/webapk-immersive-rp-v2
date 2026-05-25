@rem Gradle wrapper batch script for Windows
@echo off
setlocal

set DIRNAME=%~dp0
set GRADLE_WRAPPER_JAR=%DIRNAME%gradle\wrapper\gradle-wrapper.jar

if defined JAVA_HOME (
    set JAVA_EXE=%JAVA_HOME%/bin/java.exe
) else (
    set JAVA_EXE=java.exe
)

"%JAVA_EXE%" -jar "%GRADLE_WRAPPER_JAR%" %*
endlocal
