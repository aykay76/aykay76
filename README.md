### Hi there 👋

Welcome to my slice of Github! I'm here to blog my development interests and activities, and to share the things I learn in case they can be of use to others.

I've been programming for 30 years, about 20 of those professionally. I'm more of a hobby developer these days, always looking to learn new things and definitely open to collaboration.

Note to self, to clone all repos:

```
brew install gh

gh auth login

gh repo list aykay76 --limit 4000 | while read -r repo _; do
  gh repo clone "$repo" "$repo"
done
```
