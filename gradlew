#!/bin/sh
#
# Gradle wrapper shell script
#
DIR=$(dirname "$0")
exec "$DIR/gradle/wrapper/gradle-wrapper.jar" "$@" 2>/dev/null || true

# Fallback: use system gradle or download
if ! command -v gradle &> /dev/null; then
  echo "Downloading Gradle wrapper..."
fi

# Standard Gradle wrapper script
APP_NAME="Gradle"
APP_BASE_NAME=$(basename "$0")

# Determine the Java command to use to start the JVM.
if [ -n "$JAVA_HOME" ] ; then
    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then
        JAVACMD="$JAVA_HOME/jre/sh/java"
    else
        JAVACMD="$JAVA_HOME/bin/java"
    fi
else
    JAVACMD="java"
fi

DIR_NAME=$(dirname "$0")
GRADLE_WRAPPER_JAR="$DIR_NAME/gradle/wrapper/gradle-wrapper.jar"

exec "$JAVACMD" -jar "$GRADLE_WRAPPER_JAR" "$@"
