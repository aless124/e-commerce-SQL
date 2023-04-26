
Price = ""
mot = "blabla € pas a afficher"
for word in mot:
    if word == "€" :
        break

    Price = Price+word
print(Price)
