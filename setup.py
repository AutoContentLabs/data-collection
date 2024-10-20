from setuptools import setup, find_packages

setup(
    name="data-collection",
    version="1.0.0",
    description="An application for collecting and processing data from APIs into MongoDB and PostgreSQL.",
    packages=find_packages(where="src"),
    package_dir={"": "src"},
    install_requires=[
        "requests",
        "motor",
        "psycopg2-binary",
        "aiomysql",
    ],
    extras_require={
        "dev": ["pytest"],
    },
    entry_points={
        "console_scripts": [
            "data-collection=api.data_collection:main",
        ],
    },
    author="Quenteon",
    license="ISC",
    url="https://github.com/AutoContentLabs/data-collection",
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: ISC License (ISCL)",
    ],
    python_requires=">=3.6",
)
