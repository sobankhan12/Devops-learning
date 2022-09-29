# Commmands
```bash
# to validate configuration file
$ terraform validate
# format file
$ terraform fmt
#  to show data in json
$ terraform show -json
# to see all providers
$ terraform providers
# copy plugins for another directory
$ terraform provider mirror /root/khan
# to see output for variable
$ terraform output
# to refresh state file
$ terraform  refresh
# to visualize dependency
$ sudo update -y
# install graphviz
$ sudo install graphviz -y
# to see visualize
$ terraform visualize graph| dot -Tsvg >a.svg
```