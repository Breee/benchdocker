#!/usr/bin/bash

git clone https://github.com/sosy-lab/sv-benchmarks /svcomp
#cd /ultimate/releaseScripts/default/UAutomizer-linux && benchexec -d -o /output /input/student-heuristics-extract-features.xml
cd /ultimate/releaseScripts/default/UAutomizer-linux && benchexec -d -o /output /input/student-svcomp-extract-features.xml

