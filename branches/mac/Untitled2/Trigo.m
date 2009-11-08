#import "Trigo.h"

@implementation Trigo

- (IBAction)calcular:(id)sender{
	NSInteger tag = [segmento selectedSegment];
	int angulo = [input integerValue];
	float respuesta;

	if(tag == 0) 
		respuesta=seno(angulo);
	else if (tag == 1) 
		respuesta = coseno(angulo);
	else 
		respuesta =tangente(angulo);
	
	if ( -1 > respuesta || respuesta > 1) respuesta = pow(-2,0.5);//algo
	[label setFloatValue:respuesta];
}

@end
