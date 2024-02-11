Place scripts in bash path (I have `~/bin` in my path and have the scripts there).

```bash
interactive -A <project> --reservation=lsda -n4 -t0-1
jupyter_cartopy_server <node_id_number> & # node_id_number, e.g.: 12 for node = n12
jupyter_cartopy_running
>>> [...]
>>> Currently running servers:
>>> http://<node>:8888/?token=<token> :: /proj/bolinc/users/<path>
```

if you like to check the running servers on a given node (but using a new connection)

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
