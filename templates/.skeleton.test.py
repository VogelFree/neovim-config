import unittest
from unittest import TestCase

class TestTemplate(TestCase):
    def setUp(self):
        self.Value = True

    def TestFunction(self):
        self.assertFalse(self.Value)

if ("__main__" == __name__):
    unittest.main()
