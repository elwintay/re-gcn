FROM nvcr.io/nvidia/pytorch:20.07-py3

RUN mkdir -p /regcn
WORKDIR /regcn

COPY ./requirement.txt /regcn

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install jupyter
RUN pip install --no-cache-dir -r requirement.txt

CMD ["/bin/bash"]
