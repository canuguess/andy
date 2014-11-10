#!/bin/sh

for d in *
do
	if [ -d "$d" -a "$d" != "CVS" ]; then
		if [ ! -d "$d/CVS" ]; then
			cvs add "$d"
		fi
		#cvs add "$d/*.h" "$d/*.c" "$d/*.hpp" "$d/*.cpp" "$d/makefile" "$d/*.java" "$d/*.html"
		cvs add $(ls $d/*.{h,c,hpp,cpp,java,html,xml,sh} $d/makefile 2>/dev/null)
	fi
done
cvs commit


