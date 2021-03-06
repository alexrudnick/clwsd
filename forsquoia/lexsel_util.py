#!/usr/bin/env python3

import random
import sys
import xml.etree.ElementTree as ET

from util import dprint

def prettify(elem):
    from xml.dom import minidom
    """Return a pretty-printed XML string for the Element."""
    rough_string = ET.tostring(elem, 'unicode')
    ## print(type(rough_string), file=sys.stderr)
    reparsed = minidom.parseString(rough_string)
    return reparsed.toprettyxml(indent="  ")

def get_tuples(corpus):
    """Find all the nodes in the tree, return the list of source-language
    tuples."""
    target_nodes = corpus.findall(".//NODE")
    tokens = []
    for node in target_nodes:
        ref = node.attrib['ref']
        try:
            theref = int(ref)
        except:
            dprint("REFISNOTINT:", ref)
            theref = int(float(ref))
        sform = node.attrib['sform']
        slem = node.attrib['slem']
        tokens.append((theref, sform, slem))
    tokens.sort()
    return tokens

if __name__ == "__main__": main()
