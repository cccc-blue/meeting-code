
  String[] nounSing = {"woman", "man", "human", "rain", "clouds", "building", "concrete", "finger", "euphoria", "thrill", "deception", "confusion", "love", "humanity", "window", "throat", "feeling", "wall", "tunnel", "hollow", "twig", "frame", "skeleton", "mistake","it", "he", "she", "tree", "flower", "tongue", "face", "wind", "leaf", "bird", "wood", "death", "life", "isolation", "shadow", "sun", "sky", "summer", "heaven", "foot", "raven", "dove", "deer", "patient", "gate", "table", "angel", "star", "dream", "freedom", "fruit"};

  String[] pronounds = new String [4];
  String[] adjectives= {"dead", "orange", "sweet", "skinny", "whispering", "shadowy", "new", "simple", "lovely", "shining", "burning", "scintillating", "golden", "yellow", "nervous", "fair", "springy", "lusty", "devoted", "dark", "empty", "poetic", "automated", "static", "robotic", "gentle", "comforting", "warm", "chilly", "forboding", "juicy", "spilling", "shrinking", "careless", "tired", "misty", "good", "silent", "pungent", "bright", "fallen"};
  
  String[] nonLex = new String[0];
  String [] preposition = new String[5];
  String [] conjunction = new String [7];
   
  String[] verbsS = {"rise", "embrace", "grace", "trace", "lace", "dance", "prance", "surprise", "compromise", "lie", "prance", "cage", "rage", "wage", "race", "capitulate", "face","fall", "call", "wail", "trail", "sail", "fail", "flail", "deliver", "quiver", "sing", "fling", "think", "walk", "stroll", "survive", "live", "die", "exist", "i", "shift", "lift", "rift", "roll", "knead", "navigate", "spill"};
  String [] prepositions = {"around", "above", "within", "behind", "in front of", "throughout", "through", "into", };
  PImage airpods;
  PImage eye;
  PImage flower;
  PImage glasses;
  PImage haunted;
  PImage horses;
  PImage lipsh;
  PImage smoon;
  PImage window;
 
  PImage [] images = new PImage[9];
void setup(){
  size (1000,1000);
  
  
 images[0] = loadImage("airpods.png");
 images[1] = loadImage("eye.png");
 images[2] = loadImage("flower.png");
 images[3] = loadImage("glasses.png");
 images[4] = loadImage ("haunted.png");
 images [5]= loadImage("horses.png");
 images [6] = loadImage("lipsh.png");
 images[7] = loadImage("smoon.png");
 images[8] = loadImage ("window.png");
 

}


void draw(){
  textSize(30);
    fill (114,149,207);
 
  rect (0,0,1000,1000);
    fill (255,255,255);
    image (images[int(random(images.length))], 0, 350);
  text ( adjectives[int(random(adjectives.length))]+ " " + nounSing[int(random(nounSing.length))] + " " + verbsS[int(random(verbsS.length))] + "s " + prepositions[int(random(prepositions.length))] + " the " + adjectives[int(random(adjectives.length))] + " " + nounSing[int(random(nounSing.length))], 50,50);
   text ( nounSing[int(random(nounSing.length))] + " " + verbsS[int(random(verbsS.length))] + "s " + prepositions[int(random(prepositions.length))] + " the " + adjectives[int(random(adjectives.length))] + " " + nounSing[int(random(nounSing.length))], 75,100);
    
    text ( "the " + nounSing[int(random(nounSing.length))] + " " + verbsS[int(random(verbsS.length))] + "s " + prepositions[int(random(prepositions.length))] + " the " + adjectives[int(random(adjectives.length))] + " " + nounSing[int(random(nounSing.length))], 100, 250);
  delay(7000);

}
