git commit
git commit

git branch bugFix
git checkout bugFix

git checkout -b bugFix
git commit
git checkout main
git commit
git merge bugFix

git checkout -b bugFix
git commit
git checkout main
git commit
git checkout bugFix
git rebase main


git checkout c4

git checkout bugFix
git checkout HEAD^

git checkout bugFix
git branch -f bugFix HEAD~3
git checkout main
git checkout c6
git checkout HEAD~3
git branch -f main c6

git checkout local
git reset HEAD~1
git checkout pushed
git revert HEAD

git cherry-pick c3 c4 c7

git rebase -i overHere

git checkout main
git cherry-pick C4

git checkout main
git checkout caption
git rebase -i HEAD~2
git commit --amend
git checkout newImage
git checkout main
git checkout caption
git rebase -i HEAD~2
git checkout main
git merge caption

git rebase _i HEAD~2
git commit --amend
git rebase -i HEAD~2
git rebase caption main

git checkout main
git cherry-pick C2
git commit --amend
git cherry-pick C3

git tag v0 c1
git tag v1 c2
git checkout HEAD~1

git describe main
git describe side
git describe bugFix
git commit

git checkout bugFix
git rebase main
git checkout main
git rebase c3'
git checkout another
git rebase main
git checkout side
git rebase c3'
git checkout another
git rebase side
git checkout main
git rebase another

git checkout main~^2~1
git checkout -b bugWork
git checkout main

git checkout one
git cherry-pick c4 c3 c2
git checkout two
git cherry-pick c5 c4 c3 c2
git checkout three
git rebase c2

git clone

git commit
git checkout o/main
git commit

git fetch

git pull

git clone
git fakeTeamwork 2
git commit
git pull

git commit
git commit
git push

git clone
git fakeTeamwork
git commit
git pull --rebase
git push

git branch feature
git reset --hard o/main
git checkout feature
git push


git fetch
git rebase o/main side1
git rebase side1 side2
git rebase side2 side3
git rebase side3 main
git push

git checkout main
git pull
git merge side1
git merge side2
git merge side3
git push

git checkout -b side o/main
git commit
git pull --rebase
git push

git push origin main
git push origin foo

git push origin main^:foo
git push origin foo:main

git fetch origin main^:foo
git fetch origin foo:main
git checkout foo
git merge main

git push origin :foo
git fetch origin :bar

git pull origin bar:foo
git pull origin main:side
