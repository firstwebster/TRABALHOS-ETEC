from flask import Flask, render_template, request
import urllib.request, json

app = Flask(__name__)

frutas = []
registros = []

@app.route('/', methods=["GET", "POST"])
def principal():
	#frutas = ["Morango", "Uva", "Laranja", "Mamão", "Maçã", "Pêra", "Melão", "Abacaxi"]
	if request.method == "POST":
		if request.form.get("fruta"):
			frutas.append(request.form.get("fruta"))
	return render_template("index.html", frutas=frutas)


@app.route('/sobre', methods=["GET", "POST"])
def sobre():
	#notas = {"Fulano":5.0, "Beltrano":6.0, "Aluno": 7.0, "Sicrano":8.5, "Rodrigo":9.5}
	if request.method == "POST":
		if request.form.get("aluno") and request.form.get("nota"):
			registros.append({"aluno": request.form.get("aluno"),"nota": request.form.get("nota")})
	return render_template("sobre.html", registros=registros)

@app.route('/filmes/<propriedade>')
def filmes(propriedade):
	key = "3ddc9b92db4de6c6559569c67bd88a13"
	if propriedade == "populares":
		url = "https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key="
	elif propriedade == "kids":
		url="https://api.themoviedb.org/3/discover/movie?certification_country=US&certification.lte=G&sort_by=popularity.desc&api_key="
	elif propriedade == "2010":
		url ="https://api.themoviedb.org/3/discover/movie?primary_release_year=2010&sort_by=vote_average.desc&api_key="
	elif propriedade == "drama":
		url ="https://api.themoviedb.org/3/discover/movie?with_genres=18&sort_by=vote_average.desc&vote_count.gte=10&api_key="
	elif propriedade == "tom_cruise":
		url = "https://api.themoviedb.org/3/discover/movie?with_genres=878&with_cast=500&sort_by=vote_average.desc&api_key="
	elif propriedade =="filmes":
		url = "https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key="
	resposta = urllib.request.urlopen(url+key)
	dados = resposta.read()
	jsondados = json.loads(dados)
	return render_template("filmes.html", filmes=jsondados["results"])

if __name__ =="__main__":
	app.run(debug=True)