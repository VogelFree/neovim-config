import unittest
from unittest import TestCase
#from template import Template

class TestTemplate(TestCase):
    def setUp(self):
        self.__underTest = Template()

    def testDefault(self):
        self.assertFalse(True)

if ("__main__" == __name__):
    unittest.main()
