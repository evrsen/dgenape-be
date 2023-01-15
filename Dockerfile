FROM fnndsc/python-poetry

WORKDIR /app
COPY pyproject.toml poetry.lock ./
RUN poetry install --no-root

COPY . .

CMD ["poetry", "run", "python", "-m", "app"]