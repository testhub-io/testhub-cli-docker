#!/bin/bash

echo "Starting test results upload..."
echo "Pattern for test results: $TEST_FILES_PATTERN" 
echo "token= $TESTHUB_TOKEN"

/testhub-cli upload -p "$REPO_OWNER/$REPO_NAME" -f "$TEST_FILES_PATTERN" -b "$BUILD_ID" -r "$WORKSPACE_DIR" --branch "$BRANCH" -t "$TESTHUB_TOKEN"

echo "Pattern for coverage: $INPUT_TEST_COVERAGE_PATTERN"
/testhub-cli uploadCoverage -p "$REPO_OWNER/$REPO_NAME" -f "$COVERAGE_FILES_PATTERN" -b "$BUILD_ID" -r "$WORKSPACE_DIR" -t "$TESTHUB_TOKEN"

echo "Finish results publishing..."
