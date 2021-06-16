#!/usr/bin/env python

import csv, sys, argparse, lxml.etree as ET

COLUMN_LOCAL_ID = 'LocalId'
COLUMN_UHL_SYSTEM_NUMBER = 'UhlSystemNumber'

def main():
  parser = argparse.ArgumentParser()
  parser.add_argument('inputfile', nargs=1)
  parser.add_argument("-o", "--outputfilename", nargs='?', help="Output filename", default="output.csv")
  args = parser.parse_args()

  transformXmlToCsv(args.inputfile[0])

def transformXmlToCsv(inputfile):
  xslt = ET.parse('transform.xslt')
  dom = ET.parse(inputfile)
  transform = ET.XSLT(xslt)
  print(str(transform(dom)))
  #print(ET.tostring(transform(dom), pretty_print=True))
if __name__ == "__main__":
   main()

