import camelot

# ref: https://camelot-py.readthedocs.io/en/master/index.html
tables = camelot.read_pdf('foo.pdf')
tables.export('foo.csv', f='csv', compress=True)
