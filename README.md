# Xntrik Repo

## How do I install these formulae?

`brew install xntrik/repo/<formula>`

Or `brew tap xntrik/repo` and then `brew install <formula>`.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

## Christian - note to self on how to update hcltm

1. Create a new branch
2. Update the URL and SHA in the hcltm.rb file
3. Commit the changes
4. Create a PR, you don't need to merge this
5. Brew test-bot should run tests
6. If they succeed, add the "pr-pull" label to the PR
7. The bot should run more automation, which will update everything, close the PR, remove the branch etc


