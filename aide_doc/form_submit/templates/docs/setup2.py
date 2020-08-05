# https://www.sphinx-doc.org/en/master/usage/advanced/setuptools.html
from setuptools import setup

name = 'AIDE Design Specifications'
version = '0.0'
release = '0.0.0'

setup(
    name=name,
    author='AguaClara Cornell',
    description='Automated documentation builder for the AguaClara Infrastructure Design Engine',
    url='https://github.com/AguaClara/aide_design_specs',
    version=release,
    #cmdclass=cmdclass,
    python_requires="==3.7",
    # add requirements, e.g. alabaster

    # these are optional and override conf.py settings
    command_options={
        'build_sphinx': {
            'project': ('setup2.py', name),
            'version': ('setup2.py', version),
            'release': ('setup2.py', release),
            'builder': ('setup2.py', 'latex')}},
)
