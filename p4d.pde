Table tabularData = null;

void setup(){
  size(600,600);
   selectInput("Select a file to process:", "fileSelected");
  
}

void draw(){
   if(tabularData != null){
  background(255);
  stroke(0);
  fill(0);
   
  structure();
  drawScatterPlota2();
  drawScatterPlotd3();
  drawScatterPlota3();
  drawScatterPlotb1();
  drawScatterPlotc4();
  drawScatterPlotc1();
  drawScatterPlotb3();
  drawScatterPlotc2();
  drawScatterPlota4();
  drawScatterPlotd1();
  drawScatterPlotb4();
  drawScatterPlotd2();
  
  noLoop();
   } 
}
void drawScatterPlota2(){
  
  int translate_x_axis = 215;
  int translate_y_axis = 70;
  fill(0);
  
  float x,y;
  float width = 1;
  float height = 1;
  float reductionFactor = 4f;
  
  for(TableRow row : tabularData.rows()){
      x = translate_y_axis + row.getInt("SATM")/reductionFactor;
      y = translate_x_axis - row.getInt("SATV")/reductionFactor;
      
      ellipse(x, y, width, height);
       
  } 
}
void drawScatterPlotd3(){
  
  int translate_x_axis = 530;
  int translate_y_axis = 187;
  fill(0);
 
  float x,y;
  float width = 1;
  float height = 1;
  float reductionFactor = 7;
  
  for(TableRow row : tabularData.rows()){
      x = translate_y_axis + row.getInt("ACT")*reductionFactor;
      y = translate_x_axis - row.getFloat("GPA")*reductionFactor;
      
      ellipse(x, y, width, height);
       
  } 
}

void drawScatterPlotb1(){
  
  //int translate_x_axis = 215;
  //int translate_y_axis = 70;
  fill(0);
  
  float x,y;
  float width = 1;
  float height = 1;
  float reductionFactor = 4f;
  
  for(TableRow row : tabularData.rows()){
      x = (row.getInt("SATM")/reductionFactor)-65;
      y = 85+row.getInt("SATV")/reductionFactor;
      
      ellipse(x, y, width, height);
       
  } 
}
void drawScatterPlotc4(){
  
  //int translate_x_axis = 50;
  //int translate_y_axis = 50;
  fill(0,0,255);
 
  float x,y;
  float width = 1;
  float height = 1;
  float reductionFactor = 6;
  
  for(TableRow row : tabularData.rows()){
      x = 360+row.getInt("ACT")*reductionFactor;
      y = 360+row.getFloat("GPA")*reductionFactor;
      
      ellipse(x, y, width, height);
       
  } 
}
void drawScatterPlota3(){
  
  int translate_x_axis = 100;
  int translate_y_axis = 180;
  fill(0,0,255);
  
  float x,y;
  float width = 1;
  float height = 1;
  float reductionFactor = 3.2f;
  
  for(TableRow row : tabularData.rows()){
      x = translate_y_axis + row.getInt("SATM")/reductionFactor;
      y = translate_x_axis - row.getInt("ACT")/reductionFactor;
      
      ellipse(x, y, width, height);
       
  } 
}
void drawScatterPlotc1(){
  
  //int translate_x_axis = 100;
  //int translate_y_axis = 180;
  fill(0,0,255);
  
  float x,y;
  float width = 1;
  float height = 1;
  float reductionFactor = 3.3f;
  
  for(TableRow row : tabularData.rows()){
      x = (row.getInt("SATM")/reductionFactor)-100;
      y = 350+row.getInt("ACT")/reductionFactor;
      
      ellipse(x, y, width, height);
       
  } 
}
void drawScatterPlotb3(){
  
  int translate_x_axis = 200;
  int translate_y_axis = 220;
  fill(0,0,255);
  
  float x,y;
  float width = 1;
  float height = 1;
  float reductionFactor = 3.8f;
  
  for(TableRow row : tabularData.rows()){
      x = translate_y_axis + row.getInt("SATV")/reductionFactor;
      y = translate_x_axis - row.getInt("ACT")/reductionFactor;
      
      ellipse(x, y, width, height);
       
  } 
}
void drawScatterPlotc2(){
  
  //int translate_x_axis = 100;
  //int translate_y_axis = 180;
  fill(0,0,255);
  
  float x,y;
  float width = 1;
  float height = 1;
  float reductionFactor = 3.8f;
  
  for(TableRow row : tabularData.rows()){
      x = 77+row.getInt("SATV")/reductionFactor;
      y = 350+row.getInt("ACT")/reductionFactor;
      
      ellipse(x, y, width, height);
       
  } 
}
void drawScatterPlota4(){
  
  int translate_x_axis = 90;
  int translate_y_axis = 340;
  fill(0,0,255);
  
  float x,y;
  float width = 1;
  float height = 1;
  float reductionFactor = 3.5f;
  
  for(TableRow row : tabularData.rows()){
      x = translate_y_axis + row.getInt("SATM")/reductionFactor;
      y = translate_x_axis - row.getInt("GPA")/reductionFactor;
      
      ellipse(x, y, width, height);
       
  } 
}
void drawScatterPlotd1(){
  
  //int translate_x_axis = 100;
  //int translate_y_axis = 180;
  fill(0,0,255);
  
  float x,y;
  float width = 1;
  float height = 1;
  float reductionFactor = 3.5f;
  
  for(TableRow row : tabularData.rows()){
      x = (row.getInt("SATM")/reductionFactor)-90;
      y = 500+row.getInt("GPA")/reductionFactor;
      
      ellipse(x, y, width, height);
       
  } 
}
void drawScatterPlotb4(){
  
  int translate_x_axis = 200;
  int translate_y_axis = 360;
  fill(0,0,255);
  
  float x,y;
  float width = 1;
  float height = 1;
  float reductionFactor = 3.7f;
  
  for(TableRow row : tabularData.rows()){
      x = translate_y_axis + row.getInt("SATV")/reductionFactor;
      y = translate_x_axis - row.getInt("GPA")/reductionFactor;
      
      ellipse(x, y, width, height);
       
  } 
}
void drawScatterPlotd2(){
  
  //int translate_x_axis = 100;
  //int translate_y_axis = 180;
  fill(0,0,255);
  
  float x,y;
  float width = 1;
  float height = 1;
  float reductionFactor = 3.5f;
  
  for(TableRow row : tabularData.rows()){
      x = 55+(row.getInt("SATV")/reductionFactor);
      y = 500+row.getInt("GPA")/reductionFactor;
      
      ellipse(x, y, width, height);
       
  } 
}
void structure(){
    
  line(10,10,580,10);
  line(10,580,580,580);
  line(10,290,580,290);
  line(10,145,580,145);
  line(10,435,580,435);
  line(10,10,10,580);
  line(145,10,145,580);
  line(290,10,290,580);
  line(145,10,145,580);
  line(435,10,435,580);
  line(580,10,580,580);
    stroke(255,51,51);
    fill(0,0,255);
  text("SATM",68,68);
  text("SATV",213,213);
  text("ACT",358,358);
  text("GPA",504,504);

}
void fileSelected(File selection) {
  if (selection == null) {
    
  } else {
        tabularData = loadTable(selection.getAbsolutePath(), "header");
  }
}