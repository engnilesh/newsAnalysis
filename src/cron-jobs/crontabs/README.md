Install the cron jobs:

```
crontab <path_to_your_project_dir_where_git_cloned>/src/cron-jobs/crontabs/crontab_command.txt
```

After you run above command, these scheduled commands inside crontab_command.txt will get added to the crontab for the current user.

Check installed cron jobs:

```
crontab -l
```

