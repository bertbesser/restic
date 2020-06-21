#!/usr/bin/env sh
go build build.go
./build --goos linux --goarch amd64 -o restic-amd64
./build --goos linux --goarch arm --goarm 5 -o restic-arm-v5
./build --goos linux --goarch arm --goarm 6 -o restic-arm-v6
./build --goos linux --goarch arm --goarm 7 -o restic-arm-v7
./build --goos linux --goarch arm64 -o restic-arm64

