#!/usr/bin/env python

import csv, sys, argparse, lxml.etree as ET

COLUMN_LOCAL_ID = 'LocalId'
COLUMN_UHL_SYSTEM_NUMBER = 'UhlSystemNumber'

def main():
  parser = argparse.ArgumentParser()
  parser.add_argument('inputfile', nargs='?')
#  parser.add_argument('inputfile', nargs=1)
  parser.add_argument("-o", "--outputfilename", nargs='?', help="Output filename", default="output.csv")
  args = parser.parse_args()

  transformXmlToCsv(args.inputfile)

def transformXmlToCsv(inputfile):
  xslt = ET.XML('''\
     <xsl:stylesheet version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
        <xsl:output method="text"/>
        <xsl:template match="/">
            <xsl:value-of select="foo" />
        </xsl:template>
    </xsl:stylesheet>''')
  dom = ET.XML('''<?xml version="1.0"?>
      <foo>Text</foo>''')
  transform = ET.XSLT(xslt)
  print(str(transform(dom)))

if __name__ == "__main__":
   main()

