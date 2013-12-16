in /opt/soltycabbage/chef-repo

solo.rb
```
file_cache_path "/tmp/chef-solo"
cookbook_path ["/opt/soltycabbage/chef-repo/cookbooks", "/opt/soltycabbage/chef-repo/site-cookbooks"]
```

```
$ cd /opt/soltycabbage/chef-repo
$ chef-solo -c solo.rb -j nodes/base.json
```
