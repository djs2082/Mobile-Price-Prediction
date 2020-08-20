# MobilePricePredictor

It is a simple machine learning project which predicts the price of mobile phone  
based on the various features provided  

# Features

1)You Can train the model with the button provided in navbar of application  
2)You can predict the price of mobile phone based on various features as input  
3)All the mobile phones based on the predicted price will be shown to you  

# Technologies

1)python3  
2)Django Rest Framework  
3)PHP  
4)MYSQL  
5)Apache  
6)Scikit-learn  

## Installation
This application is containerized using Docker.
if you have docker-compose installed on your machine. below command will start project on your machine by hadling all the dependencies.  
Run this command in root directory of project.

```bash
docker-compose up
```
if you don't have docker-compose installed on your machine. then you can start project with below process  
1)install python3 dependencies using requirements.txt  

```bash
pip3 install -r requirements.txt
```
2)install mysql database on your machine and provide username and password of your database in settings.py file of project 
and import dataset from db.sql into your database  

 ```bash
 DATABASES = {
        'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'databaseName',
        'USER': 'databaseUserName',
        'PASSWORD': 'databasePassword',
        'HOST': 'localhost',
        'PORT': 3306,
    }
}

3)install apache on your machine and put project in /var/www/html/ directory(for linux) and try to run it from browser on localhost port 8080

```bash
http:/localhost:8080/MlMobileDjango/
```

## Purpose

This is developed as a part of my academic part for proof of concept
## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.  
dilipjoshis98@gmail.com  
8975427620  

## License
[MIT](https://choosealicense.com/licenses/mit/)
