#Comando que redefine as seeds na hora de reiniciar o app
Forest.destroy_all
Trail.destroy_all


forest1 = Forest.create(name: "Black Forest", state: "Colorado")
forest2 = Forest.create(name: "Olympic National Forest", state: "Washington")

trail1 = Trail.create(name: "Section 26", forest: forest1)
trail2 = Trail.create(name: "Hall of Moss", forest: forest2)