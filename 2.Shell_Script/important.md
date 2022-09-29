# SHELL SCRIPTING
## 1. How to add a your own command file in shell?
1. Create a script file for your command and do not give extension .sh in the end
2. Give excute permission
3. Export path of your script
4. Run your own command
```shell
$ chmod +x filename
$ export PATH=$PATH:/home/foldernameofyourscript
#run your own command
$ print-hello
```
## 2. How to add command line argurement?
1. got to your script file and and assign variable $1 for 1 arguement and so on
```shell
name=$1
echo `Welcome to  $name`
#go to shell and give argument
$ print-hello  soban
#it will print
$Welcom to soban
```
## 3. How to read input through command?
1.got to your file and write 
```shell
read -p "What is your name" name
echo "My name is $name"
```
## 4. How to evaluate variable in simple aritehmatic?
```bash
# two variable 
$ 6 + 3
$ $A + $B
$ echo $((A+B))
$ echo $((A/B))
$ echo $((A*B))
$ echo $((A%B))
$ c=$(echo $a / $b | bc -l ) 
```
## 5. How to find the average of nubmer with floating point through three argument in shell?
```bash
#create a file write this code
a=$1
b=$2
c=$3
sum=$(($1+$2+$3))
avg=$(echo $sum / 3 | bc -l)
echo "the average of three number is "
```
# FLOW CONTROL
```bash
if [ $1 -lt $2 ]
then 
    echo $1
fi
if [ $a = "failed"]
```
## 6. How to create pattern in for loop?
```bash
#write in your file
for i in {31..40}
do
  echo i
done
```
## 7. Calculator menue and results?
```bash
while [ 1 ]
do
  echo "1.Add"
  echo "2.Subtract"
  echo "3.Multiple"
  echo "4.Divide"
  echo "5.Quit"
  read -p "enter number for operation: " select
  
  if [ $select -eq 1 ]
  then
    read -p "Number1: " numm1
    read -p "Number2: " numm2
    echo "Answer=$((num1+num2))"
  if [ $select -eq 2 ]
  then
    read -p "Number1: " numm1
    read -p "Number2: " numm2
    echo "Answer=$((num1-num2))"
  if [ $select -eq 3 ]
  then
    read -p "Number1: " numm1
    read -p "Number2: " numm2
    echo "Answer=$((num1*num2))"
  if [ $select -eq 4 ]
  then
    read -p "Number1: " numm1
    read -p "Number2: " numm2
    echo "Answer=$((num1/num2))"
  if [ $select -eq 5 ]
  then
    break
  else
    continue
done
```
## 9.How to use case statement in 
```bash
os=Fedora

case $os in
  "Fedora") echo "Uses RPM package manager" ;;

  "RHEL") echo "Uses RPM package manager" ;;

  "CentOS") echo "Uses RPM package manager" ;;

  "Debian") echo "Uses DEB package manager" ;;

  "Ubuntu")
            echo "Uses DEB package manager" ;;
esac
```
# SHEBANG
## 1. How to set fix shell for your script?
```bash
#in your file write this line
#!/bin/bash
```
## 2. You must use exist code in your script for the status of your script?
## 3. How to check exist code of your script?
```bash
# exit 25
$ echo $?
```
## 4. How to use function in your script?
```bash
#script in add function
function add () {
    sum=$(( $1 + $2 ))
    echo $sum
}
result=$(add 2 3)
echo $result
```
# How to replace text in your script?
```bash
$ sudo sed -i 's/index.html/index.php/g' /etc/httpd/conf/httpd.conf
```

  
 
 
 








