# Scrapy
Scrapy is a nice framework which enables you to scrape the entire web and it's eays to learn. For more information see the [Scrapy Documentation](https://doc.scrapy.org/en/latest/index.html)

# How to use
I prefer to use this docker image in order to create my own specialized scrapers.

* Have your Scrapy Code in /home/user/my_scrapy_code
* Create your Dockerfile in exactly the same folder (Filename: Dockerfile)
* Write something linke this into your Dockerfile

```
FROM vtep86/alpine-scrapy-python3

COPY . /opt/my_scrapy_code
WORKDIR /opt/my_scrapy_code

RUN pip3 install <all your packages you need except for scrapy>
```

* Now you can create your own image based on my image:

```
docker build -t my_scraper .
```

* And start it in the background so that it starts scraping

```
docker run -d --name scraper my_scraper scrapy rrawl <your_scrapy_spider_name>
```


# Start with Docker

```
docker run -d --name scrapy vtep86/alpine-scrapy-python3
```
