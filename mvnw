#!/bin/sh
set -e
BASE_DIR=$(cd "$(dirname "$0")" && pwd -P)
MAVEN_PROJECTBASEDIR=${MAVEN_BASEDIR:-"$BASE_DIR"}

WRAPPER_DIR="$MAVEN_PROJECTBASEDIR/.mvn/wrapper"
JAR="$WRAPPER_DIR/maven-wrapper.jar"
PROPS="$WRAPPER_DIR/maven-wrapper.properties"

# Download Maven Wrapper if missing
if [ ! -f "$JAR" ]; then
  echo "Downloading Maven Wrapper..."
  mkdir -p "$WRAPPER_DIR"
  WRAPPER_URL=$(grep -E '^wrapperUrl=' "$PROPS" | cut -d= -f2)
  curl -fsSL "$WRAPPER_URL" -o "$JAR"
fi

# Run Maven
JAVA_OPTS=${MAVEN_OPTS:-"-Xmx512m"}
exec java $JAVA_OPTS -classpath "$JAR" org.apache.maven.wrapper.MavenWrapperMain "$@"
