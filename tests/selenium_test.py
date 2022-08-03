from selenium import webdriver
import unittest


class SeleniumTestCase(unittest.TestCase):
    browser = None

    @classmethod
    def setUpClass(cls):
        # start Chrome
        options = webdriver.ChromeOptions()
        options.add_argument("headless")

        try:
            cls.browser = webdriver.Chrome(chrome_options=options)
        except:
            pass

    @classmethod
    def tearDownClass(cls):
        if cls.browser:
            cls.browser.quit()
