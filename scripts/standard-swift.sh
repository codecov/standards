#Function: Helper shell script for swift standards repo


#clone the python standards repo from gh
clone_repo(){
    git clone https://codecov:${GH_TOKEN}@github.com/codecov/Swift-Standard.git
    cd SwiftStandard-Draft
}

# Get current month and year, e.g: Apr 2018
dateAndTime=`date +"%D %T"`

#change repo readme in line, update it with the latest build date
change_readme() {
  sed -i -e "s|.*Last Updated:.*|### Last Updated: $dateAndTime|g" README.md

  rm -f README.md-e
}

#commit files and upload to github repo with new commmit sha
commit_and_upload() {
  
  git add .
  git commit -m "New Build: ${dateAndTime}" 
  git remote rm origin 
  git remote add origin  https://codecov:${GH_TOKEN}@github.com/codecov/Swift-Standard.git
  git push origin master --quiet

}

#run all methods
clone_repo
change_readme
commit_and_upload