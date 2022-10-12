from bs4 import BeautifulSoup
import os

soluzioni = {}

for filename in os.listdir("./doc"):
    f = os.path.join("./doc", filename)
    if os.path.isfile(f):
        with open(f) as fp:
            soup = BeautifulSoup(fp, 'html.parser')

        domande = soup.find_all("div", class_="que multichoice deferredfeedback notanswered")
        for d in domande:
            qtext = d.find_all("div", class_="qtext")[0]
            traccia = ""
            for p in qtext.findChildren("p" , recursive=False):
                traccia += p.text.replace(u'\xa0', ' ') + "\n"
                sol = d.find_all("div", class_="rightanswer")[0].text

            if traccia not in soluzioni and traccia != "" and sol != "":
                soluzioni[traccia] = sol


f = open("sol", "w")
for t in soluzioni:

    f.write(t)
    f.write("\n\n")
    f.write(soluzioni[t])
    f.write("\n\n")

    f.write("#########################################################\n")
f.close()