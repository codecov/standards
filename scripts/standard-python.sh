clone_repo(){
    git clone https://ibrahim0814:${GH_TOKEN}@github.com/ibrahim0814/pystandard-draft.git
    cd pystandard-draft
}

dateAndTime=`date +"%D %T"`
change_readme() {
  # Current month and year, e.g: Apr 2018

  #change readme file in line, update it with the latest build date
  sed -i -e "s|.*Last Updated:.*|### Last Updated: $dateAndTime|g" README.md

  rm -f README.md-e
}

commit_and_upload() {
  
  git add .
  git commit -m "New Build: ${dateAndTime}" 
  git remote rm origin 
  git remote add origin https://ibrahim0814:${GH_TOKEN}@github.com/ibrahim0814/pystandard-draft.git
  git push origin master --quiet
}

clone_repo
change_readme
commit_and_upload

