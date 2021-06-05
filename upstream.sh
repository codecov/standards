#!/usr/bin/env bash

# Update this to the coverage file you want to upload to the standards repo
COVERAGE_SOURCE_FILE=${COVERAGE_SOURCE_FILE}

# -=- Nothing below here should need to be changed -=-

echo "Starting the coverage data push to the standards repo..."
echo "Generating the SHA.txt file"
PROJECT_NAME=$(basename `git rev-parse --show-toplevel`)
echo $PROJECT_NAME
COVERAGE_SHA=$(git rev-list HEAD | head -1)
echo $COVERAGE_SHA > SHA.txt
echo "Cloning the standards repo in the parent directory"
cd ..
git clone https://codecov:${GH_TOKEN}@github.com/codecov/standards.git
cd standards
echo "Deleting content in coverage_data if it exists"
COVERAGE_DEST_DIR="coverage_data/$PROJECT_NAME"
rm -rf $COVERAGE_DEST_DIR
echo "Commiting deletion of coverage data"
git config --global user.email "devops@codecov.local"
git config --global user.name "Codecov Devops"
git add .
git commit -m "Deleting existing coverage data for $PROJECT_NAME with SHA $COVERAGE_SHA"
echo "Recreating coverage directory"
mkdir -p $COVERAGE_DEST_DIR
echo "Copying the coverage file and SHA.txt to the coverage directory"
cp ../$PROJECT_NAME/$COVERAGE_SOURCE_FILE $COVERAGE_DEST_DIR/
cp ../$PROJECT_NAME/SHA.txt $COVERAGE_DEST_DIR/
echo "Commiting and pushing the coverage data to the standards repo."
git add coverage_data
git commit -m "Updating coverage data for $PROJECT_NAME with SHA $COVERAGE_SHA"
git push origin --force
echo "Push to upstream complete!"