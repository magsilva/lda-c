mkdir -p bin

make clean
make \
	CC=x86_64-w64-mingw32-gcc \
	OUTPUT_FILE="bin/lda-win32.exe"

make clean 
make \
	CC=i686-w64-mingw32-gcc \
	OUTPUT_FILE="bin/lda-win64.exe"

make clean
make \
	CC=gcc \
	CFLAGS="-m32" \
	OUTPUT_FILE="bin/lda-linux32"

make clean
make \
	CC=gcc \
	OUTPUT_FILE="bin/lda-linux64"

make clean
make \
	CFLAGS="-arch x86_64" \
	LDFLAGS="-arch x86_64" \
	CC=darwinx-gcc \
	OUTPUT_FILE="bin/lda-darwin64"
