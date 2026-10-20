git config --global user.name "Karthik"
git config --global user.email "narayankarthik19@gmail.com"

git add index.html
git add .

git status
git commit -m "test git action initial commit"
git log

git checkout main                                    
git checkout -b feature-restructure

git revert 06662284bcbcf3a4c0a467700d28d4e6cfedc1fd
git reset --hard e344e21311e3ec0818e765e0afa5fbf967982c87

git branch
git branch main
git branch -D master

git remote add origin https://github.com/narayankarthik/test_github_actions.git
git remote set-url origin https://narayankarthik@github.com/narayankarthik/test_github_actions.git
git remote get-url origin

git push origin main
git push --set-upstream origin main
git push                           

git pull
git clone https://github.com/narayankarthik/test_github_actions.git
