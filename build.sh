#!/usr/bin/env sh

mkdir -p out
jjtree jmm.jjt
javacc jmm.jj
javac -cp . JMMParser.java -d out/
