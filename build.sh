#!/usr/bin/env sh

mkdir -p out
jjtree jmm.jjt
javacc jmm.jj
javac -cp . JMMParser.java -d out/
# Creating the jar file from the compiled java classes (all added at the same level via the use of the -C flag)
# See https://docs.oracle.com/javase/tutorial/deployment/jar/build.html
jar cmf jar_manifest.mf jmm.jar -C out .
echo "jmm.jar compiled successfully!"