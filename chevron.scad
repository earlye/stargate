chevronLength=465;

a=132.279;
b=254.125;
c=sqrt(a*a + b*b);
echo("len:",c);

ratio = c/chevronLength;

echo("ratio:", ratio);


echo("desiredA:",desiredA);

// actual height should be 21. First 10mm
// is vertical, apparently.
linear_extrude(height=10) {
  scale(ratio) {
    translate([-229.518,-66.163557,0]){
      import("chevron.svg");
    }
  };
};