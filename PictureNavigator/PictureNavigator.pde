//vseSlike je spremenljivka za število naših slik, ki so va data mapi
//trenutnaSlika je spremenljivka, ki jo program v ozadju spreminja, da vemo katero sliko moramo prikazati
int vseSlike = 5;
int trenutnaSlika = 1;

//Nastavimo programu velikost zaslona in pa tudi, da je "fullScreen", kar pomeni, da ne bomo imeli grdih robov
void setup() {
  size(1920, 1080);
  fullScreen();
}

void draw() {
  //Nastavimo ozadje - mora biti tu ampak se ne spreminja in je nepredmetno
  background(255);
  //Programu povemo katera slika se predvaja tako da združimo trenutnaSlika in temu dodamo .png v String
  String imageName = trenutnaSlika + ".png";
  //Uporabimo knjižnico PImage da program ustvari sliko, in jo shrani v spomin
  PImage img = loadImage("data/" + imageName);
  //Sliko prikažemo
  image(img, 0, 0, width, height);
}


//Logika za navigacijo slik. Uporabi levo in desno puščico na tipkovnici
void keyPressed() {
  if (keyCode == RIGHT) {
    trenutnaSlika = (trenutnaSlika % vseSlike) + 1;
  } else if (keyCode == LEFT) {
    trenutnaSlika = (trenutnaSlika - 2 + vseSlike) % vseSlike + 1;
  }
}
