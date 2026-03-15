VIDEO
Docker for Data Engineering: Postgres, Docker Compose, and Real-World Workflows - Alexey Grigorev

# Virtual Environments and Data Pipelines

A data pipeline is a service that receives data as input and outputs more data. For example, reading a CSV file, transforming the data somehow and storing it as a table in a PostgreSQL database.

pip install uv
=> package to handle virual environments

uv init --python=3.13
=> this will initialize a python project with uv and will create a pyproject.toml file to manage dependencies and a .python-version file.