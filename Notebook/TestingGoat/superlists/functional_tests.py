
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.firefox.firefox_binary import FirefoxBinary
import unittest
import time


class NewVisitorTest(unittest.TestCase):
    def setUp(self):
        firefox_dev_binary = FirefoxBinary(
            '/usr/bin/firefox-developer-edition')

        self.browser = webdriver.Firefox(firefox_binary=firefox_dev_binary)

    def tearDown(self):
        # self.browser.quit()
        print("nothing")

    def test_can_start_a_list_and_retrieve_it_later(self):
        self.browser.get("http://localhost:8000")
        self.assertIn("To-Do Lists", self.browser.title)
        header_text = self.browser.find_elements_by_tag_name("h1").text
        self.assertIn("To-Do", header_text)

        inputbox = self.browser.find_element_by_id("id_new_item")
        self.assertEqual(inputbox.get_attribute(
            "placeholder"), "Enter a to-do item")

        # Meirin types "Buy peacock feathers" into a text box (VitalyR's hobby)
        # is tying fly-fishing lures)
        inputbox.send_keys("Buy peacock feathers")

        # when she hits enter, the page updates, and now the page lists
        # "1: Buy peacock feathers" as an item in a to-do list table
        inputbox.send_keys(Keys.ENTER)
        time.sleep(1)
        table = self.browser.find_element_by_id("id_list_table")
        rows = table.find_elements_by_tag_name("tr")
        self.assertTrue(
            any(row.text == "1: Buy peacock feathers" for row in rows))
        # There is still a text box inviting her to add another item. She
        # enters "Use peacock feathers to make a fly"
        # (VitalyR is very methodical)

        self.fail("Finish the test!")


if __name__ == "__main__":
    unittest.main(warnings="ignore")

    browser.get("http:localhost:8000")
    assert "To-Do" in browser.title

# browser.quit()
