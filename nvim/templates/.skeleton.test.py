import unittest
from unittest import TestCase
if (__package__):
    from ..template import Template
else:
    import sys
    from os import path
    sys.path.append( path.dirname( path.dirname( path.abspath(__file__) ) ) )
    from template import Template

class TestTemplate(TestCase):
    def setUp(self):
        self.__underTest = Template()

    def testDefault(self):
        self.assertFalse(True)

if ("__main__" == __name__):
    unittest.main()
