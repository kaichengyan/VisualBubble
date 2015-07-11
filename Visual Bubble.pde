int i = 0, j = 0, temp = 0, x = 0;
int [] a;
void setup(){
  size(1000,700);
  fill(178);
  strokeWeight(0);
  a = new int [20];
  for (i=0;i<20;i++)
  {
    a[i] = int(random(200)+30);
  }
  i = 0;
  j = 0;
}
void draw(){
      if (j < 19 - i){
            background(255);
            if (a[j] > a[j+1]){
                  temp = a[j+1];
                  a[j+1] = a[j];
                  a[j] = temp;
            }
      }else{
            i++;
            j = -1;
      }
      for (x = 0; x < 20; x++){  
            if ( (x==j) || (x==j+1) ) fill(255,0,0);
            else fill(178);
            rect(100 + 40 * x, 500, 20, -a[x]);
      } 
      ++j;
}
