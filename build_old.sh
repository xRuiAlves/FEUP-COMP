#!/usr/bin/env sh

mkdir out
jjtree jmm.jjt
javacc jmm.jj
javac *.java -d out/
