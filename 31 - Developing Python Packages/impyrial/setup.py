# Import required functions
from setuptools import setup, find_packages

# Call setup function
setup(
    author="<Ərtürk Məmmədli>",
    description="A package for converting imperial lengths and weights.",
    name="impyrial",
    packages=find_packages(include=["impyrial",
                                    "impyrial.*"]),
    install_requres=['pandas>=1.0',
                     'scipy==1.1',
                     'matplotlib>=2.2.1,<3'],
    python_requires=['>=2.7, '],
    version="0.1.0",
)
