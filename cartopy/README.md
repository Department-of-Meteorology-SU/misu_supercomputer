```bash
interactive -A <project> --reservation=lsda -n1 -t0-1
jupyter_cartopy_server <node_id_numbner> # node_id_number, e.g.: 12 for node = n12
```

```bash
squeue -u $USER
>>> JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON)
>>> <pid> tetralith interact  x_ezrei  R 1-00:41:36      1 <node>

jobsh -j <pid> <node>

jupyter_cartopy_running
>>> [...]
>>> Currently running servers:
>>> http://<node>:8888/?token=<token> :: /proj/bolinc/users/<path>
```
