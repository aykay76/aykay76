### Hi there 👋

Welcome to my slice of Github! I'm here to blog my development interests and activities, and to share the things I learn in case they can be of use to others.

I've been programming for 40 years, about 30 of those professionally. I started with Pascal at school, then moved on to C, C++ and C#. In recent years I've switch to Go for smaller images in k8s and it seemed like more cloud-native tools were being developed in Go. Over the years I've also coded in PHP, ASP, SQL, Javascript, Typescript etc.

Note to self, to clone all repos, for backup purposes:

```
brew install gh

gh auth login

gh repo list aykay76 --limit 4000 | while read -r repo _; do
  gh repo clone "$repo" "$repo"
done
```
