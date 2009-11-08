#import <Cocoa/Cocoa.h>

extern float seno();
extern float coseno();
extern float tangente();

@interface Trigo : NSObject {
    IBOutlet NSPopUpButton *combo;
    IBOutlet NSTextField *input;
    IBOutlet NSTextField *label;
    IBOutlet NSSegmentedControl *segmento;
}
- (IBAction)calcular:(id)sender;
@end
