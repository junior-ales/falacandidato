#!/bin/bash
#
# Esse script assume que o código já esteja desenvolvido,
# só faltando fazer o push para o master e o deploy
# para o branch gh-pages. Obviamente alguns métodos para
# pegar erros não esperados foram incluídos

bundle exec jekyll build &&
git reset HEAD . &&
git add _site/feed.xml &&
git commit -m "Atualizando feed.xml" &&
git pull --rebase &&
git push origin master &&
git subtree push --prefix _site/ origin gh-pages
