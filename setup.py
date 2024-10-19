from setuptools import setup, find_packages

setup(
    name='data-collection',
    version='1.0.0',
    description='This project is an application that utilizes both Node.js and Python to provide various functionalities. Users can leverage the strengths of both languages to develop a powerful and flexible system.',
    packages=find_packages(where='src'),
    package_dir={'': 'src'},
    install_requires=[
        'requests>=2.25.1',  # Axios için Python karşılığı
        'pymongo>=3.12.0',   # MongoDB için Python karşılığı
        'mysql-connector-python>=8.0.26',  # MySQL için Python karşılığı
        'psycopg2>=2.9.1'    # PostgreSQL için Python karşılığı
    ],
    extras_require={
        'dev': ['pytest'],  # Geliştirme için ek bağımlılıklar
    },
    entry_points={
        'console_scripts': [
            'data-collection=src.api:main',  # Ana giriş noktası
        ],
    },
    author='',
    license='ISC',
    url='https://github.com/AutoContentLabs/data-collection',
    classifiers=[
        'Programming Language :: Python :: 3',
        'License :: OSI Approved :: ISC License (ISCL)',
    ],
    python_requires='>=3.6',
)
