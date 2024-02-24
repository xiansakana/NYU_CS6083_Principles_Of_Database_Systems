# import pymysql

# def test_mysql_connection(host, user, password, db):
#     try:
#         connection = pymysql.connect(host=host,
#                                      user=user,
#                                      password=password,
#                                      db=db,
#                                      cursorclass=pymysql.cursors.DictCursor)
#         print("MySQL Database connection successful")
#     except Exception as e:
#         print(f"Error connecting to MySQL Database: {e}")
#     finally:
#         if connection:
#             connection.close()

# if __name__ == "__main__":
#     # Replace these with your MySQL Database credentials
#     MYSQL_HOST = 'localhost'
#     MYSQL_USER = 'root'
#     MYSQL_PASSWORD = '1233214567'
#     MYSQL_DB = 'WOWCAR'

#     test_mysql_connection(MYSQL_HOST, MYSQL_USER, MYSQL_PASSWORD, MYSQL_DB)
# from flask import Flask, render_template, request, redirect, url_for, session
# from flask_mysqldb import MySQL

# app = Flask(__name__)
# app.secret_key = 'your_secret_key'

# # MySQL configurations
# app.config['MYSQL_HOST'] = 'localhost'
# app.config['MYSQL_USER'] = 'root'
# app.config['MYSQL_PASSWORD'] = '1233214567'
# app.config['MYSQL_DB'] = 'WOWCAR'

# mysql = MySQL(app)

# @app.route('/test_db')
# def test_db():
#     try:
#         print("Attempting to connect to the database...")
#         cursor = mysql.connection.cursor()
#         cursor.execute("SELECT 1")
#         data = cursor.fetchone()
#         cursor.close()
#         print(f"Database connection successful. Data fetched: {data}")
#         return f"Database connection successful: {data}"
#     except Exception as e:
#         print(f"Database connection failed: {e}")
#         return f"Database connection failed: {e}"

# if __name__ == '__main__':
#     print("Starting Flask application...")
#     app.run(debug=True)


from run import mysql
cursor = mysql.connection.cursor()
