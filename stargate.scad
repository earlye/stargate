// SG-1 Stargate


// According to https://en.wikipedia.org/wiki/Stargate_(device)
// The SG-1 stargate is 22ft in diameter.
//difference() { 
//    circle(d=22*12*25.4);
//    circle(d=(22*12-30)*25.4);
//};

rotate_extrude($fn=360) {
  translate(v=[-22*12*25.4/2.0,0,0]) {
    import("cross-section.svg");
  }
}
