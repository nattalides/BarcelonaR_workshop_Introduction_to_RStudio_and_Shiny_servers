# For a Linux-based OS
For Linux, you need to configure the local GIT client with a username and email address,

```
$ git config --global user.name "your_github_username"
$ git config --global user.email "your_github_email"
$ git config -l
```

Once GIT is configured, we can begin using it to access GitHub. Example:

```
$ git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY
$ Username for 'https://github.com' : username
$ Password for 'https://github.com' : give your personal access token here
```

Now cache the given record in your computer to remembers the token:

```
$ git config --global credential.helper cache
```

If needed, anytime you can delete the cache record by:

```
$ git config --global --unset credential.helper
$ git config --system --unset credential.helper
```

Now try to pull with -v to verify
```
$ git pull -v
```
