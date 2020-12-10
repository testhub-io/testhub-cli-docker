# testhub-cli-docker

# How to run 
docker run  -e TESTHUB_TOKEN=[API_TOKEN] -e TEST_FILES_PATTERN="*.xml" -e REPO_OWNER=test-org -e REPO_NAME=docker-test -e BUILD_ID=5 -e WORKSPACE_DIR='/home/' -e BRANCH=main -e COVERAGE_FILES_PATTERN=na  testhubio/cli:latest

- REPO_OWNER - organisation 
- REPO_NAME - repository name or project name
- BUILD_ID - build id 
- WORKSPACE_DIR - directory where testhub-cli should search for tets reports 
- BRANCH - branch to associate with test run
- TEST_FILES_PATTERN - glob pattern to search for test files 
- COVERAGE_FILES_PATTERN - glob pattern to search for coverage reports. Set to 'na' or '.' if not required
