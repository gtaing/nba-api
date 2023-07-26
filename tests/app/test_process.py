import unittest

from src.app.process import addition

class TestProcess(unittest.TestCase):
    def test_addition(self):
        test_x = 2
        test_y = 3
        expected = 5
        result = addition(test_x, test_y)
        self.assertEqual(result, expected)

    def test_addition_bis(self):
        test_x = 2
        test_y = -2
        expected = 0
        result = addition(test_x, test_y)
        self.assertEqual(result, expected)

if __name__ == '__main__':
    unittest.main()