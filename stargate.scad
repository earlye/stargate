// SG-1 Stargate

// Some utility functions
function mmFromInches(value) = 25.4 * value;
function inchesFromFeet(value) = 12.0 * value;
function mmFromFeet(value) = 25.4 * 12.0 * value;

// According to https://en.wikipedia.org/wiki/Stargate_(device)
// The SG-1 stargate is 22ft in diameter.
stargateRadius=mmFromFeet(11);
stargateDiameter=stargateRadius*2;
stargateHeight=mmFromFeet(18.5);
platformWidth=mmFromFeet(22);
platformHeight=mmFromInches(4);
platformDepth=mmFromFeet(4);
bottomCut=stargateDiameter - stargateHeight;

echo("stargateRadius: ", stargateRadius);
echo("bottomCut:", bottomCut);

difference() {
  translate(v=[0,stargateHeight-stargateRadius,0]) {
    color([0,1,0]) {
      rotate_extrude(angle=360,$fn=360) {
        translate(v=[stargateRadius,mmFromInches(7.333),0]) {
          rotate(a=180) {
            import("cross-section.svg");            
          };
        };
      };
    };
  };
  color([0,0,1]) {
    translate(v=[-platformWidth/2.0,-bottomCut,-platformDepth/2.0]) {
      cube([platformWidth, bottomCut ,platformDepth]);
    };
  };
};


color([1,0,0]) {
  translate(v=[-platformWidth/2.0,-platformHeight,-platformDepth/2.0]) {
  cube([platformWidth, platformHeight ,platformDepth]);
  };
};