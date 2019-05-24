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
    # @param browser_height     The desired height
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

    # 
    # Listing of functions for returning page elements based on a parameter
    # 
    # @param identifier     The identifier of the requested element
    # 
    def elements(identifier)
        $browser.elements(identifier)
    end

    def form(identifier)
        $browser.form(identifier)
    end

    def h1(identifier)
        $browser.h1(identifier)
    end

    def h3(identifier)
        $browser.h3(identifier)
    end

    def icon(identifier)
        $browser.i(identifier)
    end

    def iframe(identifier)
        $browser.iframe.element(identifier)
    end

    def input(identifier)
        $browser.input(identifier)
    end

    def image(identifier)
        $browser.image(identifier)
    end

    def label(identifier)
        $browser.label(identifier)
    end

    def link(identifier)
        $browser.link(identifier)
    end

    def option(identifier)
        $browser.option(identifier)
    end

    def paragraph(identifier)
        $browser.p(identifier)
    end

    def paragraphs(identifier)
        $browser.ps(identifier)
    end

    def select_list(identifier)
        $browser.select(identifier)
    end

    def span(identifier)
        $browser.span(identifier)
    end

    def spans(identifier)
        $browser.spans(identifier)
    end

    def table(identifier)
        $browser.table(identifier)
    end

    def td(identifier)
        $browser.td(identifier)
    end

    def text_area(identifier)
        $browser.textarea(identifier)
    end

    def text_field(identifier)
        $browser.text_field(identifier)
    end

    def th(identifier)
        $browser.th(identifier)
    end

    def ul(identifier)
        $browser.ul(identifier)
    end

end

# 
# Add the Helper to our Cucumber World object
# 
World(Helper)