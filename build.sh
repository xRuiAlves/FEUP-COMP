#!/usr/bin/env sh

jjtree jmm.jjt
javacc jmm.jj
javac *.java -d out/