
datos.dat datos1.dat :: makedatos.py makedatos1.cpp
	python makedatos.py
	g++ makedatos1.cpp -o makedatos1
	./makedatos1

plot.png plot1.png :: plotdatos.py datos.dat datos1.dat
	python plotdatos.py
	python plotdatos1.py

results.pdf :: resultados.tex plot.png plot1.png
	pdflatex resultados.tex

