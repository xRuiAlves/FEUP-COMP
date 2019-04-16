#!/usr/bin/env sh

mkdir out
#jjtree jmm.jjt
#javacc jmm.jj
javac -cp . JMMParser.java -d out/
