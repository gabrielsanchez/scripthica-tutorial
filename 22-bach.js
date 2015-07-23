// Das Musikalische Opfer: Canon Cancrizans - J.S. Bach 

var crabCanon = createScore(); 
var t = createTrack("",1,0,180); 
var t2 = createTrack("",2,0,180); 

var CCPitches= "C4 Eb4 G4 Ab4 B3 R G4 Gb4 F4 E4 Eb4 D4 Db4 C4 B3 G3 C4 F4 Eb4 D4 C4 Eb4 G4 F4 G4 C5 G4 Eb4 D4 Eb4 F4 G4 A4 B4 C5 Eb4 F4 G4 Ab4 D4 Eb4 F4 G4 F4 Eb4 D4 Eb4 F4 G4 Ab4 Bb4 Ab4 G4 F4 G4 Ab4 Bb4 C5 Db5 Bb4 Ab4 G4 A4 B4 C5 D5 Eb5 C5 B4 A4 B4 C5 D5 Eb5 F5 D5 G4 D5 C5 D5 Eb5 F5 Eb5 D5 C5 B4 C5 G4 Eb4 C4"; 

var CCLengths = "H H H H H Q H H H H H Q Q Q Q Q Q Q H H H H E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E E Q Q Q Q";

var sec = createSection(); 
sec.addEvents(CCPitches,CCLengths); 

t.addSection(sec,1); 
t2.addSection(clone(sec),1); 
t2.retrograde(); 

crabCanon.addTrack(t); 
crabCanon.addTrack(t2); 
crabCanon.saveMidi();
