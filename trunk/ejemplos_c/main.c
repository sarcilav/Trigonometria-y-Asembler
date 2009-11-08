/*
  Aproximacion por series de mcLaurin a las funciones trigonometricas basicas
  Por ahora va a funcionar con 32 terminos
 */
#define limit 32
#define sin 0
#define cos 1
float factorial[2*(limit+1)];/*el factorial de los numeros de [0 - limit]*/




void
init()
{
  float temp = factorial[0] = factorial[1] = 1;
  int n = 1;
 begin:;
  if(n > 2*(limit+1))
    goto end;
  n += 1;
  temp = n;
  factorial[n] = factorial[n - 1] * temp;
  goto begin;
 end:;
}

float
pow(int base, int expo)
/* FIXME implementación modo espagueti o hacer un acumulador interno dentro de cada función*/
{
  float acum = 1;
  int count = 0;
  
 powme:;
  if(count>=expo)
    goto end;
  acum *= base;  
  count++;
  goto powme;
 end:;
  return acum;
}

float 
coseno(int x)
{
  float acum = 0;
  int n = 0;
  int sign = -1;
 cose:;
  sign *= -1;
  acum += sign*pow(x,2*n)/factorial[2*n];
  n++;
  if(n<limit)
    goto cose;
  /* coseno con 32 iteraciones*/
  return acum;
}

float 
seno(int x)
{
  float acum = 0;
  int n = 0, sign = -1;
 sen:;
  sign *= -1;
  acum += sign*pow(x,2*n+1)/factorial[2*n+1];
  n++;
  if(n<limit)
    goto sen;
  /* seno con 32 iteraciones*/
  return acum;
}

float
trigo_funcion(int x,int funcion)
{
  float acum;
  if(funcion == sin)
    {
      acum = seno(x);
      goto end;
    }
  acum = coseno(x);
  
 end:;
  return acum;
}
int 
main()
{
  init();
  
  return 0;
}
