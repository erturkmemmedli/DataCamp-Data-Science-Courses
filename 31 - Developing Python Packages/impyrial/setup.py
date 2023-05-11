#!/usr/bin/env python

"""The setup script."""

from setuptools import setup, find_packages

with open('README.md') as readme_file:
    readme = readme_file.read()

with open('HISTORY.md') as history_file:
    history = history_file.read()

setup(
    author="Arturk Mammadli", # noqa
    author_email='erturkmemmedli@gmail.com',
    description="A package for converting between imperial unit lengths and weights.",
    name='impyrial',
    packages=find_packages(include=['impyrial', 'impyrial.*']),
    version='0.2.0',
    install_requires=['numpy>=1.10', 'pandas'],
    python_requires="==3.11.*",
    classifiers=[
        'Development Status :: 2 - Pre-Alpha',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: MIT License',
        'Natural Language :: English',
        'Programming Language :: Python :: 3',
        'Programming Language :: Python :: 3.11',
    ],
    license="MIT license",
    long_description=readme + '\n\n' + history,
    long_description_content_type='text/markdown',
    keywords='impyrial',
    zip_safe=False,
)
