#include <stdio.h>
#include <math.h>



float 
toRad(int x)
{
  return x*0.017453292519943295;
}
float
/* x viene en radianes */ 
trigo(float x, bool sen=true)
{
  float ans = x;
  if(sen == false)
    ans = 1;

  float acum = ans;
  const float x2 = x*x;
  float factor = 1;
  int sign = 1;
  for(int n = 1; n<8;++n)
    {
      sign *=-1;
      if(sen)
	factor *= 2*n*(2*n+1);
      else
	factor *= 2*n*(2*n-1);
      
      acum *= x2;
      ans += sign*acum/factor;
    }
  return ans;
}

float
sen(int angle)
{
  
}
float
coseno(int angle)
{

}

float 
tangente(int angle)
{
}

int 
main()
{
  /*float PI = acos(-1);
  printf("sen %f\n",trigo(PI/2));
  printf("cos %f\n",trigo(PI/2, false));*/
  return 0;
}
