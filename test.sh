#!/bin/bash
cd .. || exit 5

if [ ! -d "3DXFAB-Firmware-test" ]; then
    mkdir 3DXFAB-Firmware-test  || exit 10
fi

cd 3DXFAB-Firmware-test || exit 20

cmake -G "Eclipse CDT4 - Ninja" ../3DXFAB-Firmware || exit 30
cmake --build . || exit 35
./tests || exit 40