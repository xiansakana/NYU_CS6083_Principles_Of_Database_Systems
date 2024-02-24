from flask import Flask, render_template, request, redirect, url_for, session, g
from flask_mysqldb import MySQL
import sys
from werkzeug.security import generate_password_hash, check_password_hash
import mysql.connector
import random
import string
app = Flask(__name__, static_folder='static')
app.secret_key = 'your_secret_key'

# MySQL configurations
db = mysql.connector.connect(
                host='localhost',
                user='root',
                password='1233214567',
                database='dbms',
            )
mysql = MySQL(app)


def is_logged_in():
    return 'logged_in' in session

@app.route('/')
def home():
    return render_template('main.html', logged_in=is_logged_in())

@app.route('/about')
def about():
    return render_template('about_us.html', logged_in=is_logged_in())

@app.route('/cars')
def cars():
    return render_template('car_list.html', logged_in=is_logged_in())

@app.route('/contact')
def contact():
    return render_template('contact.html', logged_in=is_logged_in())

@app.route('/gallery')
def gallery():
    return render_template('gallery.html', logged_in=is_logged_in())

@app.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        email = request.form.get('username')
        password = request.form.get('password')

        try:
            
            cursor=db.cursor()
            cursor.execute("SELECT * FROM customer WHERE email = %s", [email])
            existing_user = cursor.fetchone()

            if existing_user:
                cursor.close()
                return 'Email already exists! Try a different email.'

            hashed_password = generate_password_hash(password)
            cursor.execute("INSERT INTO customer(email, password) VALUES (%s, %s)", (email, hashed_password))
            db.commit()
            cursor.close()
        except Exception as e:
            print(f"Database error: {e}")
            return f"Database error: {e}"

        return redirect(url_for('login'))
    return render_template('register.html')


@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        email = request.form.get('username')
        password = request.form.get('password')
        print("email:",email)

        try:
            cursor=db.cursor(dictionary=True)
            cursor.execute("SELECT * FROM customer WHERE email = %s", [email])
            user = cursor.fetchone()
            

            if user and check_password_hash(user['password'], password):
                session['logged_in'] = True
                cursor.close()
                return redirect(url_for('home'))
            else:
                cursor.close()
                return 'Login Failed. Invalid email or password.'
        except Exception as e:
            print(f"Database error: {e}")
            return "Database error."

    return render_template('base_template.html', logged_in=is_logged_in(), show_login_modal=True)




@app.route('/admin')
def admin():
    if not is_logged_in():
        return redirect(url_for('login'))

    # 示例数据，将来会从数据库获取
    data = {
        "num_users": 150,
        "num_vehicles": 50,
        "num_orders": 120,
        "num_brands": 10
    }
    
    return render_template('admin.html', logged_in=is_logged_in(), **data)


@app.route('/admin/add_brand', methods=['GET', 'POST'])
def add_brand():
    if not is_logged_in():
        return redirect(url_for('admin_login'))

    if request.method == 'POST':
        brand_name = request.form.get('brand_name')
        
        if not brand_name:
            return "Brand name is required", 400
        
        try:
            cursor = db.cursor()

            # 获取一个有效的 vehicle_id
            cursor.execute("SELECT vehicle_id FROM jc_vehicle_class LIMIT 1")
            vehicle_class = cursor.fetchone()
            if vehicle_class:
                valid_vehicle_id = vehicle_class[0]
            else:
                # 如果没有有效的 vehicle_id，可以选择插入一个默认值或者返回错误
                return "No valid vehicle_id found in jc_vehicle_class", 400

            # 生成其他车辆信息
            vehicle_vin = ''.join(random.choices(string.digits, k=17))
            vehicle_model = "Default Model"
            vehicle_year = "2023"
            license_plate_no = ''.join(random.choices(string.ascii_uppercase + string.digits, k=8))
            loc_id = random.choice([1, 2, 3, 4])

            # 插入新的车辆信息
            insert_query = """
                INSERT INTO jc_vehicle (vehicle_vin, vehicle_make, vehicle_model, 
                                        vehicle_year, license_plate_no, loc_id, vehicle_id) 
                VALUES (%s, %s, %s, %s, %s, %s, %s)
            """
            cursor.execute(insert_query, (vehicle_vin, brand_name, vehicle_model, 
                                          vehicle_year, license_plate_no, loc_id, valid_vehicle_id))
            db.commit()
            cursor.close()
        except Exception as err:
            print(f"Database error: {err}")
            return "Database error", 500

        return redirect(url_for('admin'))

    return render_template('admin.html', logged_in=is_logged_in())



from flask import jsonify

@app.route('/admin/manage_brands')
def manage_brands():
    if not is_logged_in():
        return redirect(url_for('admin_login'))

    # 初始化 brands 变量
    brands = []

    try:
        cursor = db.cursor(dictionary=True)
        cursor.execute("SELECT DISTINCT vehicle_make FROM jc_vehicle")
        brands = cursor.fetchall()
    except Exception as err:
        print(f"Database error: {err}")
        # 可以选择在这里处理错误，比如显示一个友好的错误消息
        return f"Database error: {err}", 500
    finally:
        cursor.close()  # 确保在所有情况下都关闭 cursor


    # 返回 JSON 格式的品牌数据
    return jsonify(brands=brands)






@app.route('/admin/register_car', methods=['GET', 'POST'])
def register_car():
    if not is_logged_in():
        return redirect(url_for('admin_login'))

    if request.method == 'POST':
        # 从表单中获取数据
        brand = request.form.get('brand')
        title = request.form.get('title')
        description = request.form.get('description')
        price_per_day = request.form.get('price_per_day')
        model_year = request.form.get('model_year')
        seating_capacity = request.form.get('seating_capacity')
        odometer_limit = request.form.get('odometer_limit')
        overmileage_fees = request.form.get('overmileage_fees')
        fuel_type = request.form.get('fuel_type')
        # 注意：文件上传处理稍有不同，需要使用 request.files

        # 检查数据的完整性
        if not all([brand, title, description, price_per_day, model_year, seating_capacity, odometer_limit, overmileage_fees, fuel_type]):
            return "All fields are required", 400

    try:
        cursor = db.cursor(dictionary=True)
        cursor.execute("SELECT DISTINCT vehicle_make FROM jc_vehicle")
        brands = cursor.fetchall()
        cursor.close()
    except Exception as e:
        print(f"Database error: {e}")
        brands = []  # 发生错误时使用空列表

    return render_template('admin.html', logged_in=is_logged_in(), brands=brands)


@app.route('/admin/manage_cars')
def manage_cars():
    if not is_logged_in():
        return redirect(url_for('admin_login'))

    try:
        cursor = db.cursor(dictionary=True)

        # 假设 jc_vehicle 和 jc_vehicle_class 之间通过 vehicle_id 关联
        cursor.execute("""
            SELECT v.vehicle_make AS brand, vc.vehicle_type AS title, vc.daily_rate AS pricePerDay, v.vehicle_year AS modelYear
            FROM jc_vehicle v
            JOIN jc_vehicle_class vc ON v.vehicle_id = vc.vehicle_id
        """)

        cars = cursor.fetchall()
        cursor.close()
    except Exception as e:
        print(f"Database error: {e}")
        cars = []  # 发生错误时使用空列表

    return jsonify(cars=cars)




@app.route('/ad_login', methods=['GET', 'POST'])
def admin_login():
    if request.method == 'POST':
        admin_id = request.form['username']
        input_password = request.form['password']

        try:
            cursor = db.cursor(dictionary=True)
            cursor.execute("SELECT * FROM admin WHERE id = %s", [admin_id])
            admin = cursor.fetchone()
            cursor.close()

            # 直接比较数据库中的明文密码和用户输入的密码
            if admin and admin['password'] == input_password:
                session['logged_in'] = True
                return redirect(url_for('admin'))
            else:
                return 'Admin Login Failed. Invalid ID or password.'
        except Exception as e:
            print(f"Database error: {e}")
            return "Database error."

    return render_template('ad_login.html')

@app.route('/admin/manage_users')
def manage_users():
    if not is_logged_in():
        return redirect(url_for('admin_login'))

    try:
        cursor = db.cursor(dictionary=True)
        cursor.execute("SELECT CONCAT(fname, ' ', lname) AS username, email, cust_type AS role FROM jc_customer")
        users = cursor.fetchall()
    except Exception as e:
        print(f"Database error: {e}")
        users = []  # 发生错误时使用空列表
    finally:
        cursor.close()

    return jsonify(users=users)

@app.route('/logout')
def logout():
    session.pop('logged_in', None)
    return redirect(url_for('home'))

if __name__ == '__main__':
    app.run(debug=True)
