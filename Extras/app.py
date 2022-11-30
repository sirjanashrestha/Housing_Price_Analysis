from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy
import sqlalchemy

app = Flask(__name__)
# app.config['SQLALCHEMY_DATABASE_URI'] = 
connection_url='postgresql://postgres:Canada123@localhost:5432/Housing_Price_Analysis'
# app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

engine=sqlalchemy.create_engine(connection_url)
# db = SQLAlchemy(app)

@app.route("/canada")
def Canada_Housing_Market():
    return "House Price for next 5 years!"

@app.route("/")
def index():
    return render_template("index.html")


@app.route('/home')
def Home():
    # cur = SQLAlchemy.connection.cursor()
    # cur.execute("SELECT * FROM final_db")
    # fetchdata = cur.fetchall()
    # cur.close()
    result=engine.execute('SELECT * FROM final_db')
    print(result.all())

    return render_template('index.html', data = result)

if __name__ == '__main__':
    app.run(debug=True)