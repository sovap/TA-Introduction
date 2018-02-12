import test_library

#### Title test for page: Robot Framework
driver = test_library.OpenBrowserWithGoogle()
test_library.NavigateToPage(driver, "Robot Framework")
test_library.ValidatePageTitle(driver, "Robot Framework")
test_library.CloseTheBrowser(driver)

#### Title test for page: Selenium WebDriver
driver = test_library.OpenBrowserWithGoogle()
test_library.NavigateToPage(driver, "Selenium WebDriver")
test_library.ValidatePageTitle(driver, "Selenium WebDriver")
test_library.CloseTheBrowser(driver)