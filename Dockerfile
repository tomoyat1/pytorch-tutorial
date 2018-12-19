FROM tomoyat1/cuda-python:10.0-runtime-python37

ADD ./cifar10_tutorial.py ./cifar10_tutorial.py
ADD Pipfile Pipfile.lock ./

RUN pip install pipenv \
    && pipenv lock --requirements > requirements.txt \
    && pip install -r requirements.txt

CMD ["python", "./cifar10_tutorial.py"]
