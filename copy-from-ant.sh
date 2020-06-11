#!/usr/bin/env bash

set -e

ANTSRC=../ant

copy-source () {
  mkdir -p $(dirname src/main/java/$1)
  cp ${ANTSRC}/src/main/$1 src/main/java/$1
}
copy-test () {
  mkdir -p $(dirname src/test/java/$1)
  cp ${ANTSRC}/src/tests/junit/$1 src/test/java/$1
}
copy-source org/apache/tools/ant/types/ZipScanner.java
#copy-source org/apache/tools/ant/types/ArchiveScanner.java
copy-source org/apache/tools/ant/DirectoryScanner.java

copy-source org/apache/tools/ant/BuildException.java
#copy-source org/apache/tools/ant/types/resources/FileProvider.java
#copy-source org/apache/tools/ant/types/resources/ZipResource.java
#copy-source org/apache/tools/ant/types/resources/ArchiveResource.java
#copy-source org/apache/tools/ant/util/StreamUtils.java
copy-source org/apache/tools/ant/util/FileUtils.java
#copy-source org/apache/tools/ant/util/VectorSet.java

cp -r ${ANTSRC}/src/main/org/apache/tools/zip src/main/java/org/apache/tools/

#copy-source org/apache/tools/ant/types/resources/FileResource.java
copy-source org/apache/tools/ant/types/Resource.java
#copy-source org/apache/tools/ant/types/DataType.java # remove?

copy-source org/apache/tools/ant/types/selectors/SelectorUtils.java
#copy-source org/apache/tools/ant/types/selectors/TokenizedPath.java
#copy-source org/apache/tools/ant/types/selectors/TokenizedPattern.java

copy-source org/apache/tools/ant/taskdefs/condition/Os.java

#copy-test org/apache/tools/ant/DirectoryScannerTest.java
