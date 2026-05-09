#!/bin/bash

USERID=$(id -u)

if [ $? -ne 0 ]; then
    echo "ERROR:: Run with root user"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0]; then
        echo "ERROR:: Installing $2 is failure"
        exit 1
    else
        echo "Installing $2 is SUCCESS"
    fi
}

dnf install mysql -y
VALIDATE $? "MySQL"

dnf install nginx -y
VALIDATE $? "Ngix"

dnf install python3 -y
VALIDATE $? "Python"

