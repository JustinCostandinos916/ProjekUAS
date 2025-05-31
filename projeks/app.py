from flask import Flask, flash, redirect, render_template, request, url_for, session
# from config import Config

class Portal:
  def __init__(self):
    self.app = Flask(__name__)
    self.app.secret_key = '!@#$123456&*()'
    # self.con = Config()
    self.routes()
  
  def routes(self):
    # @self.app.route('/testdb')
    # def test_db():
    #   try:
    #     if self.con.mysql is not None:
    #       return "Database connection succesful"
    #   except Exception as e:
    #     return f"Database connection failed: {e}"
  
    @self.app.route('/tes')
    def Tes124():
      return render_template('index.html')
    
  def run(self):
    self.app.run(debug=True)

if __name__ == '__main__':
  portal = Portal()
  portal.run()