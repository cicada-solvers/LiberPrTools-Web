rm -f LiberPrTools.js
rm -f LiberPrTools.wasm

#W_FLAGS="-O3 -flto -DNDEBUG"
W_FLAGS="-O0 -g -v -s ASSERTIONS=1 -s DISABLE_EXCEPTION_CATCHING=0"
echo $W_FLAGS
emcc $W_FLAGS -s "EXPORTED_FUNCTIONS=['_malloc','_free','_main']" -s WASM=1 -s EXTRA_EXPORTED_RUNTIME_METHODS='["cwrap"]' GPVigenere_Decipher_v1Release.cpp -o LiberPrTools.js

