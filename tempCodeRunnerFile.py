from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://postgres:Canada123@localhost/Housing_Price_Analysis'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)

@app.route("/")
def Canada_Housing_Market():
    return "House Price for next 5 years!"

if __name__ == '__main__':
    app.run()