Labels and selector
```bash
# to show pods with these labels
$ kubectl get po -l env=prod,bu=finance,tier=frontend
# to count the numbers of pods
$ kubectl get po -l env=prod --no-headers | wc -l
# to count all objects with this label
$ kubectl get all -l env=prod --no-headers | wc -l
