git filter-repo --force --commit-callback '
if commit.author_email == b"":
    commit.author_name = b"aykay76"
    commit.author_email = b"alan.kelly.london@gmail.com"
    commit.committer_name = b"aykay76"
    commit.committer_email = b"alan.kelly.london@gmail.com"
'
