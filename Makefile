.DEFAULT_GOAL := test
PROJECT := slox.xcodeproj

build:
	swift build

clean:
	swift package clean

test: build
	swift test

xcode:
	swift package generate-xcodeproj --enable-code-coverage
	open $(PROJECT)

.PHONY: build clean test xcode
