#!/bin/bash
#
# Esse script assume que tudo já esteja criado,
# só faltando fazer o push para o master e o deploy
# para o branch gh-pages

#bundle exec jekyll build &&
#git reset HEAD . &&
#git add _site/feed.xml &&
#git commit -m "Atualizando feed.xml" &&
#git pull --rebase &&
git push origin master &&
git subtree push --prefix _site/ origin gh-pages
