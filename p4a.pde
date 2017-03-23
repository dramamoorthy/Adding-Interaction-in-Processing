Table tabularData= null;
int t;
int [] sat;
//int sat_min;
//int act_min;
int [] act;
float mx = 29;
//setup
void setup(){
  size(800,600);
  selectInput("Select a file to process:", "fileSelected");
            }
//fetching input file
void fileSelected(File selection) {
  if (selection == null) {
    } else {
    tabularData = loadTable(selection.getAbsolutePath(), "header");
  }
  
  if(tabularData == null){
    background(255);
    }
  else{
  println("Success");
}
//fetching rows from the dataset
 println(tabularData.getRowCount() + " total rows in table"); 
  t=tabularData.getRowCount();
   sat=new int[t];
   act= new int[t];
  int i=0;
  for (TableRow row : tabularData.rows()) {
     sat[i] = row.getInt("SATM");
     act[i] = row.getInt("ACT");
    }

  //sat_min = 370/2;
  //act_min = 15*10;

}
//draw function
void draw(){
  if(tabularData == null){
    background(255,255,102);
  }
  else
  {
    stroke(0);
    noCursor();
  background(255,255,102);
  line(50,20,50,550);
  line(50,550,650,550);
  fill(0,51,0);
  text("SATM", 10, 300);
  text("ACT", 350, 590);
  text("BAR CHART: SATM VS ACT", 350, 10);
  

  text ("Represents SATM scores over",610,150);
    text ("corresponding ACT scores",610,160);
      text ("Move Mouse over chart to",610,250);
      text ("see respective ACT and",610,260);
      text ("SATM values",610,270);
    fill (0);
    int g=5;
    text("15  16    17   18   19   20    21    22    23   24   25", 55, 570);
    text("26    27   28    29    30    31   32   33   34   35", 320, 570);
//text("300",30,550);
   text("350",30,535);
   text("400",30,482);
   text("450",30,429);
   text("500",30,376);
   text("550",30,323);
   text("600",30,270);
   text("650",30,217);
   text("700",30,164);
   text("750",30,111);
   text("800",30,58);
  
  
 //interaction setup with mouse move over
    for (int z = 0; z < 271; z++)
{
  int sats = tabularData.getInt(z,0);
   int acts = tabularData.getInt(z,2);

   float m = map(acts, 15,35,60,550);
   float n = map(sats,370,800,0,500);
   strokeWeight(1);
    
    if((mx > 50 ) && (mx < 600)) {
      line(mx, 50, mx, 550);
      if(abs(mx-m)<2) {
        fill(255,0,0);
        text(acts, mx + 6, 40);
        text(sats, mx + 6, 55);
        
      }
    }
    stroke(255,0,127);
    line(m,550,m,550-n);
    
    noStroke();
    fill(0,0,255);
    int d = 3;
    ellipse(m,550-n,d,d);
     ellipse(600,150,6,6);
  }
}
}
//mouse move fucntion
void mouseMoved() {
  mx = mouseX;
}