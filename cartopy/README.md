```bash
$ interactive -A <project> --reservation=lsda -n1 -t0-1
$ jupyter_cartopy_server
```

```bash
$ squeue -u $USER
JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON)
<pid> tetralith interact  x_ezrei  R 1-00:41:36      1 n<num>
$ jobsh -j <pid> n<num>
$ jupyter_cartopy_running <num>
[...]
Currently running servers:
http://n<num>:8888/?token=<token> :: /proj/bolinc/users/<path>
```
