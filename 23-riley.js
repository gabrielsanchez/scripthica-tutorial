// In C - Terry Riley

// create a Score
var s = createScore();

// create the Tracks
var t1 = createTrack("",1,0,160);
var t2 = createTrack("",2,4,160);
var t3 = createTrack("",3,46,160);
var t4 = createTrack("",4,13,160);
var t5 = createTrack("",5,24,160);
var t6 = createTrack("",6,32,160);

// the cells containing the musical patterns.

var x = [["C4 E4 C4 E4 C4 E4","E E E E E E"],["C4 E4 F4 E4","E E E Q"],["R E4 F4 E4","E E E E"],["R E4 F4 G4","E E E E"],["E4 F4 G4 R","E E E E"],["C5","DW"],["R R R R C4 C4 C4 R R R R R","Q Q Q E S S E E Q Q Q Q"],["G4 F4","W. DW"],["B4 G4 R R R R","S S E Q Q Q"],["B4 G4","S S"],["F4 G4 B4 G4 B4 G4","S S S S S S"],["F4 G4 B4 C5","E E W Q"],["B4 G4 G4 F4 G4 R G4","S E. S S E E. S+H."],["C5 B4 G4 F#4","W W W W"],["G4 R R R R","S E. Q Q Q"],["G4 B4 C5 B4","S S S S"],["B4 C5 B4 C5 B4 R","S S S S S S"],["E4 F#4 E4 F#4 E4 E4","S S S S E. S"],["R G5","Q. Q."],["E4 F#4 E4 F#4 G3 E4 F#4 E4 F#4 E4","S S S S E. S S S S S"],["F#4","H."],["E4 E4 E4 E4 E4 F#4 G4 A4 B4","Q. Q. Q. Q. Q. Q. Q. Q. E"],["E4 F#4 F#4 F#4 F#4 F#4 G4 A4 B4","E Q. Q. Q. Q. Q. Q. Q. Q"],["E4 F#4 G4 G4 G4 G4 G4 A4 B4","E E Q. Q. Q. Q. Q. Q. E"],["E4 F#4 G4 A4 A4 A4 A4 A4 B4","E E E Q. Q. Q. Q. Q. Q."],["E4 F#4 G4 A4 B4 B4 B4 B4 B4","E E E E Q. Q. Q. Q. Q."],["E4 F#4 E4 F#4 G4 E4 G4 F#4 E4 F#4 E4","S S S S E S S S S S S"],["E4 F#4 E4 F#4 E4 E4","S S S S E. S"],["E4 G4 C5","H. H. H."],["C5","W."],["G4 F4 G4 B4 G4 B4","S S S S S S"],["F4 G4 F4 G4 B4 F4 G4","S S S S S S+H. Q."],["G4 F4 R","S S E"],["G4 F4","S S"],["F4 G4 B4 G4 B4 G4 B4 G4 B4 G4 R R R R Bb4 G5 A5 G5 B5 A5 G5 E5 G5 F#5 R R R E5 F5","S S S S S S S S S S E Q Q Q Q H. E Q E Q. E H. E E+H. Q Q E E+H W."],["F4 G4 B4 G4 B4 G4","S S S S S S"],["F4 G4","S S"],["F4 G4 B4","S S S"],["B4 G4 F4 G4 B4 C5","S S S S S S"],["B4 F4","S S"],["B4 G4","S S"],["C5 B4 A4 C5","W W W W"],["F5 E5 F5 E5 E5 E5 E5 F5 E5","S S S S E E E S S"],["F5 E5 E5 C5","E Q E Q"],["D5 D5 G4","Q Q Q"],["G4 D5 E5 D5 R G4 R G4 R G4 G4 D5 E5 D5","S S S S E E E E E E S S S S"],["D5 E5 D5","S S E"],["G4 G4 F4","W. W W+Q"],["F4 G4 Bb4 G4 Bb4 G4","S S S S S S"],["F4 G4","S S"],["F4 G4 Bb4","S S S"],["G4 Bb4","S S"],["Bb4 G4","S S"]];

// lets loop over the patterns and
// add them to the tracks.
for(var i = 0; i<x.length; i++){
    var section = createSection();
    section.addEvents(x[i][0],x[i][1]);
    t1.addSection(section,random(3,13));
    t2.addSection(clone(section),random(3,13));
    t3.addSection(clone(section),random(3,13));
    t4.addSection(clone(section),random(3,13));
    t5.addSection(clone(section),random(3,13));
    t6.addSection(clone(section),random(3,13));
}

// transpose the tracks
t1.transpose(-24);
t2.transpose(12);
t3.transpose(24);
t5.transpose(-12);
t6.transpose(-24);

// add tracks to the score.
s.addTrack(t1);
s.addTrack(t2);
s.addTrack(t3);
s.addTrack(t4);
s.addTrack(t5);
s.addTrack(t6);

// save midi
s.play();
