class DemoQA
    include Helper

    # 
    # Page Elements
    # 
    def initialize(browser)
        @browser = browser
    end

    # 
    # Page Actions
    # 
    def visit
        demo_qa_url = Const::DEMO_QA_URL

        visit_page(demo_qa_url)
    end
end