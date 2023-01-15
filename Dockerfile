FROM fnndsc/python-poetry

WORKDIR /src
COPY pyproject.toml poetry.lock ./
RUN poetry install --no-root

COPY . .

CMD ["poetry", "run", "python", "-m", "src"]