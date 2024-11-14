#!/bin/bash
echo "Starting build..."
mkdir -p bin
nasm -f bin src/boot.asm -o bin/boot.bin
echo "Complete."