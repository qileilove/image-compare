#UI COMPARE TEST

Getting Started
Please makesure you have Node.js, and the node package manager yarn/npm:
```apple js

npm install

```

Execute scripts:

1. run generate the image at the first time, the parameter is that which testcase(Actually they are some json file) you want to test.

    1.1 how to config the testcase, please see the  link 
    https://github.com/garris/BackstopJS

```apple js shell
MARKET="<which case you want to set the base image>" ./run_compare_test.sh 
```
2. use the generated image as the base image

```apple js shell
MARKET="<which case you want to set the base image>" ./get_bash_image.sh  

```
