# 
# Helper
# 
module Helper

    # 
    # Browser Action Functions
    # 

    # 
    # Function for visiting a page
    # 
    # @param page_url       The page that is intended to visit
    # 
    def visit_page(page_url)
        $browser.goto(page_url)
    end

    # 
    # Function for resetting, then setting a browser window size
    # 
    # @param browser_width      The desired width
    # @param browser_height     The desired
    # 
    def resize_browser_window(browser_width, browser_height)
        $browser.window.move_to(0,0)
        $browser.window.resize_to(browser_width, browser_height)
    end

    # 
    # Function for resizing to a standard desktop viewport
    # 
    def resize_to_desktop_viewport
        resize_browser_window(1920, 1080)
    end

    # 
    # Browser Elements
    # 

    # 
    # Grab the page text for use in testing
    # 
    def page_text
        $browser.text
    end

    # 
    # Grab the page title for use in testing
    # 
    def page_title
        $browser.title
    end

    # 
    # Grab the page url for use in testing
    # 
    def url
        $browser.url
    end

    # 
    # Page Elements
    # 
    

end