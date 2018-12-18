FROM nvidia/cuda:9.2-runtime-ubuntu18.04

ADD ./cifar10_tutorial.py ./cifar10_tutorial.py
ADD Pipfile Pipfile.lock ./

RUN pip install pipenv \
    && pipenv lock --requirements > requirements.txt \
    && pip install -r requirements.txt

CMD ["python", "./cifar10_tutorial.py"]
