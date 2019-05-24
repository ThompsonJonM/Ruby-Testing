class Const

    # 
    # Primary Test URLs
    # 
    GOOGLE_HOMEPAGE_URL = 'https://www.google.com'

    # 
    # Secondary Test URLs
    # 
    GMAIL_URL = GOOGLE_HOMEPAGE_URL + '/gmail'
    LOGIN_URL = 'https://accounts.google.com/signin'
    SEARCH_RESULTS_URL = GOOGLE_HOMEPAGE_URL + '/search?source='

    # 
    # Messages
    # 
    # Space used for site messages (negative and positive)
    # eg. INVALID_PASSWORD = 'Please enter a valid password.'

    # 
    # Users
    # 
    GOOGLE_USER = {
        :username => 'tests@qatesting.com',
        :password => 'testing123'
    }

    # 
    # Data
    # 
    # Space used for testing data
    # eg. VALID_FILENAME = 'Ruby Test File'

end