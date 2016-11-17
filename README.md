# Cookbook

This is a demo recipe web site made in Rails.

[Open demo](https://evgenii-cookbook.herokuapp.com/)

## Setup development environment

```
brew install postgresql
git clone https://github.com/evgenyneu/cookbook.git
cd cookbook
bundle
rails db:create
rails db:migrate
rails server
```

## Run tests

```
rails test
```
