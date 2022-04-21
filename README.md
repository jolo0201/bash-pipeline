# bash-pipeline
A simple bash pipeline that uses commands like grep, sort, cat and echo.

## Steps on executing the file
- Open any Linux Terminal
- Locate the bash file directory
- Make sure the script is executable using this command.

```
chmod +x ./pipeline.sh
```
- Run the file

```
./pipeline.sh
```

## Code
Reads log.csv file. Searches *Joe* from the list and count the results.
When the search is greater than 5, it will sort all name with *Joe* and listing them.

```
#!/bin/bash

var="$(cat ./log.csv | grep "Joe" | wc -l)"
echo $var
if [[ $var -gt 5 ]]
then
    cat ./log.csv | grep "Joe" | sort
else
     echo "None"
fi
```