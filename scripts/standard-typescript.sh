#Function: Helper shell script for typescript standard repo 


#clone the typescript standard repo from gh
echo "Cloning TypeScript Standard repo..."
clone_repo(){
    git clone https://codecov:${GH_TOKEN}@github.com/codecov/typescript-standard.git
    cd typescript-standard
}

# Get current month and year, e.g: Apr 2018
dateAndTime=`date +"%D %T"`

#change repo readme in line, update it with the latest build date
echo "Modifying README.md..."
change_readme() {
  sed -i -e "s|.*Last Updated:.*|### Last Updated: $dateAndTime|g" README.md

  rm -f README.md-e
}

#commit files and upload to github repo with new commmit sha
echo "Committing changes, pushing to GH repo..."
commit_and_upload() {
  git config --global user.email "devops@codecov.local"
  git config --global user.name "Codecov Devops"
  git add .
  git commit -m "New Build: ${dateAndTime}" 
  git remote rm origin 
  git remote add origin  https://codecov:${GH_TOKEN}@github.com/codecov/typescript-standard.git
  git pull origin master
  git push origin master --quiet

}

#run all methods
clone_repo
change_readme
commit_and_upload