#
# docker build -t wordcount-app .
# docker run --rm -v "{pwd.Path}/data/input:/data/input/" -v "{pwd.Path}/data/output:/data/output/" wordcount-app
#
FROM python:3.11-slim
WORKDIR /app
COPY . .
RUN pip install -e .
# python3 -m homework data/input data/output
CMD ["python", "-m", "homework", "/data/input/", "/data/output/"]

# docker run --rm -v "$PWD/data/input:/data/input/" -v "$PWD/data/output:/data/output/" wordcount-app

# En windows es docker run --rm ^
#   -v "C:\Users\USER\Documents\GitHub\PRE-05-wordcount-produccion-jcoloradoh\data\input:/data/input" ^
#   -v "C:\Users\USER\Documents\GitHub\PRE-05-wordcount-produccion-jcoloradoh\data\output:/data/output" ^
#   wordcount-app