from flask import Flask, render_template, request, redirect, url_for, session

app = Flask(__name__)
app.secret_key = 'your_secret_key'  # 用于保护会话数据的密钥

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
        # 从表单中获取用户信息
        username = request.form.get('username')
        password = request.form.get('password')
        # TODO: 添加用户信息验证逻辑
        # TODO: 将用户信息保存到数据库
        # 重定向到登录页面或其他页面
        return redirect(url_for('login'))
    return render_template('register.html')


@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form.get('username')
        password = request.form.get('password')
        # 这里应该有验证用户名和密码的逻辑，此处仅为示例
        if username == 'user' and password == 'password':  # 示例条件
            session['logged_in'] = True
            return redirect(url_for('home'))
        else:
            return 'Login Failed'  # 或者重新渲染登录页面并显示错误信息
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
        # TODO: 保存品牌到数据库
        return redirect(url_for('admin'))
    return render_template('admin.html', logged_in=is_logged_in())

@app.route('/admin/manage_brands')
def manage_brands():
    if not is_logged_in():
        return redirect(url_for('admin_login'))
    # 假设的品牌数据
    brands = ["Brand 1", "Brand 2"]
    return render_template('admin.html', logged_in=is_logged_in(), brands=brands)

@app.route('/admin/register_car', methods=['GET', 'POST'])
def register_car():
    if not is_logged_in():
        return redirect(url_for('admin_login'))
    if request.method == 'POST':
        # 获取表单数据
        # TODO: 保存车辆信息到数据库
        return redirect(url_for('admin'))
    return render_template('admin.html', logged_in=is_logged_in())

@app.route('/admin/manage_cars')
def manage_cars():
    if not is_logged_in():
        return redirect(url_for('admin_login'))
    # 假设的车辆数据
    cars = [{"brand": "Brand A", "title": "Car A"}, {"brand": "Brand B", "title": "Car B"}]
    return render_template('admin.html', logged_in=is_logged_in(), cars=cars)


@app.route('/ad_login', methods=['GET', 'POST'])
def admin_login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        if username == 'admin' and password == 'admin123':
            session['logged_in'] = True
            return redirect(url_for('admin'))
        else:
            return 'Admin Login Failed'
    return render_template('ad_login.html')


@app.route('/logout')
def logout():
    session.pop('logged_in', None)
    return redirect(url_for('home'))

if __name__ == '__main__':
    app.run(debug=True)
