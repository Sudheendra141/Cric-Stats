from flask import *
from flask_mysqldb import MySQL
app = Flask(__name__)
app.config['MYSQL_USER'] = "admin"
app.config['MYSQL_PASSWORD'] = "Kanna123456"
app.config['MYSQL_HOST'] = "database-1.ckmwbrm2zkd4.us-east-1.rds.amazonaws.com"
app.config['MYSQL_DB'] = "cric_stats"
mysql = MySQL(app)



@app.route("/")
def home():
    return render_template("index.html")

@app.route("/schedule",methods=['POST', 'GET'])
def schedule():



        cur = mysql.connection.cursor()
        print("22")
        query = "select team_1,team_2,timings,venue from programme"

        cur.execute(query)
        n=cur.fetchall()
        print("27")
        print(n)
        mysql.connection.commit()
        cur.close()
        print("31")
        res=make_response(render_template('schedule.html',n=n))
        return res
@app.route("/runs",methods=['POST', 'GET'])
def MostRuns():



        cur = mysql.connection.cursor()
        query = "  SELECT player_name, runs FROM players INNER JOIN batting_stats ON players.id = batting_stats.batsman_id ORDER BY batting_stats.runs DESC ;"

        cur.execute(query)
        runs=cur.fetchall()
        print(runs)
        mysql.connection.commit()
        cur.close()
        res=make_response(render_template('most_runs.html', runs=runs))
        return res
@app.route("/wickets",methods=['POST', 'GET'])
def MostWickets():



        cur = mysql.connection.cursor()
        query = """SELECT player_name, wickets FROM players INNER JOIN bowling_stats ON
                 players.id= bowling_stats.bowler_id ORDER BY bowling_stats.wickets DESC """

        cur.execute(query)
        wickets=cur.fetchall()
        print(wickets)
        mysql.connection.commit()
        cur.close()
        res=make_response(render_template('most_wickets.html',wickets=wickets))
        return res
@app.route("/hig_score",methods=['POST', 'GET'])
def HighScore():



        cur = mysql.connection.cursor()
        query = """SELECT player_name,highest FROM players INNER JOIN batting_stats ON players.id = batting_stats.batsman_id ORDER BY batting_stats.highest DESC  """

        cur.execute(query)
        hig_score=cur.fetchall()
        print(hig_score)
        mysql.connection.commit()
        cur.close()
        res=make_response(render_template('high_score.html',hig_score=hig_score))
        return res


@app.route("/avg",methods=['POST', 'GET'])
def avg():



        cur = mysql.connection.cursor()
        query = """   SELECT player_name, average FROM players INNER JOIN batting_stats ON players.id = batting_stats.batsman_id ORDER BY batting_stats.average DESC ;  """

        cur.execute(query)
        avg=cur.fetchall()
        print(avg)
        mysql.connection.commit()
        cur.close()
        res=make_response(render_template('avg.html',avg=avg))
        return res

@app.route("/points_table",methods=['POST', 'GET'])
def points_table():



        cur = mysql.connection.cursor()
        query = """
        SELECT team, played, won , lost , points FROM teams ORDER BY points DESC ;
        """

        cur.execute(query)
        points_table=cur.fetchall()
        print(points_table)
        mysql.connection.commit()
        cur.close()
        res=make_response(render_template('points_table.html',points_table=points_table))
        return res

@app.route("/search",methods=['POST', 'GET'])
def search():
    if (request.method == 'POST'):
        form=request.form
        name=form['name']
        cur = mysql.connection.cursor()

        print("name", name)

        cur.execute(f"Select player_name, runs, highest, fifties, hundreds, average, strike_rate, overs, wickets, maidens, economy, best , points from players, bowling_stats,batting_stats where players.id =batting_stats.batsman_id  and players.id =bowling_stats.bowler_id and players.player_name like '%{name}%'");
        search=cur.fetchall()
        print(search)
        mysql.connection.commit()
        cur.close()
        res=make_response(render_template('search.html',search=search))
        return res


if __name__ == "__main__":
    app.run(debug=True)

