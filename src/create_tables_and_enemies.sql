DROP TABLE IF EXISTS dialogue;
DROP TABLE IF EXISTS character_player;


CREATE TABLE dialogue(
	dialogue_id INT PRIMARY KEY AUTO_INCREMENT,
    dialogue_abr VARCHAR(30) NOT NULL,
    dialogue_text VARCHAR(500)
);

CREATE TABLE enemies(
	enemies_id INT PRIMARY KEY AUTO_INCREMENT,
    enemies_name VARCHAR(15) NOT NULL,
    enemies_text VARCHAR(500)
);

INSERT INTO dialogue(dialogue_abr, dialogue_text)
VALUES ("welcome", "Fairy: Welcome explorer, are you ready to start the way?");

INSERT INTO dialogue(dialogue_abr, dialogue_text)
VALUES ("introduction", "Fairy: Someone stoles you your carrot cake and you will have to return it back. Good luck :D");

INSERT INTO dialogue(dialogue_abr, dialogue_text)
VALUES ("tutorial", "Fairy: When an enemy challenge you, you will have three options. Which you select will guide you around the way, good luck explorer");

INSERT INTO enemies(enemies_name, enemies_text)
VALUES ("ogre", "Ogre: Hi little explorer, here your travel ends.");

INSERT INTO dialogue(dialogue_abr, dialogue_text)
VALUES ("ogre_1", "Ogre: I fought with my gf, she says I can't play the PS all day, that I'm an adult ogre, give me a hug little explorer.
Fairy: Wow! That was embarrassing... But efficient, good job! I hope all the enemies will be like this");

INSERT INTO dialogue(dialogue_abr, dialogue_text)
VALUES ("ogre_2", "Ogre: Arrrghhhhh... I was joking men, what's wrong with you? I didn't save the last game...
Fairy: Okay... Remember me not to make you angry, maybe you could just ask him to go?");

INSERT INTO dialogue(dialogue_abr, dialogue_text)
VALUES ("ogre_3", "You: AhHHhhhHhHhHh
Ogre: Why are you running? Why are you running?
Fairy: Mmm... Are you sure you want to keep going to recovery your carrot cake?");

INSERT INTO dialogue(dialogue_abr, dialogue_text)
VALUES ("prov_end", "Nice, you ended the tutorial, you can return to your bored live... now... Go out");

