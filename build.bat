rem https://stackoverflow.com/questions/28350214/how-to-build-x86-and-or-x64-on-windows-from-command-line-with-cmake

@echo off

@mkdir _build32 & pushd _build32 >nul
cmake -DCMAKE_GENERATOR_PLATFORM=win32 ..
popd >nul
@mkdir _build64 & pushd _build64 >nul
cmake -DCMAKE_GENERATOR_PLATFORM=x64 ..
popd >nul

cmake --build _build32 --config Debug
cmake --build _build64 --config Debug
