setup_git() {
  git config --global user.email "ibrahim.0814@gmail.com"
  git config --global user.name "ibrahim0814"
}

clone_repo(){
    git clone https://ibrahim0814:${GH_TOKEN}@github.com/username/repository.git
    cd pystandard-draft
}

change_readme() {
  # Current month and year, e.g: Apr 2018
  dateAndTime=`date +"%D %T"`
  # Stage the modified files in dist/output
  sed -i "s/^Last Updated.*/Last Updated ${dateAndTime}/" ./README.md
}

commit_and_upload() {
  
  dateOnly = `date +”%m/%d/%Y”`
  git add .
  git commit -m "New Build: $dateOnly" 
  git remote -v
  git push origin master --quiet
}

setup_git
clone_repo
change_readme
commit_and_upload

