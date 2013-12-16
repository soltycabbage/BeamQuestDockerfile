BeamQuestDockerfile
===================

Docker を使って簡単環境構築！

```
$ git clone https://github.com/soltycabbage/BeamQuestDockerfile.git
$ cd BeamQuestDockerfile
$ sudo docker build -t soltycabbage/beamquest -rm .
$ sudo docker run -p 3000:3000 -i -t soltycabbage/beamquest
```

access: <http://localhost:3000>

一回 build までやってしまったらあとは docker run だけでソースの最新版を取得してきて実行する．
