void setup(){
}
  function setup(){
  var inp = createInput();
  inp.input(myInputEvent);
  }
void draw(){
}
  function myInputEvent(){
  console.log("you are typing: ", this.value());
}