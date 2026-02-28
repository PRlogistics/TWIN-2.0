import os

class Config:
    DEBUG = os.getenv('DEBUG', 'False') == 'True'
    DATABASE_URL = os.getenv('DATABASE_URL')
    SECRET_KEY = os.getenv('SECRET_KEY')
    # Add other configuration variables as needed

class DevelopmentConfig(Config):
    DEBUG = True
    DATABASE_URL = os.getenv('DEV_DATABASE_URL')

class ProductionConfig(Config):
    DEBUG = False
    DATABASE_URL = os.getenv('PROD_DATABASE_URL')

config_by_name = {
    'dev': DevelopmentConfig,
    'prod': ProductionConfig,
}
