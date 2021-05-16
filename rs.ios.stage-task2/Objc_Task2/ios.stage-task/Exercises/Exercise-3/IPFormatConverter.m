#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
     NSMutableString *correctedString = [[NSMutableString alloc] init];
    
     if (numbersArray == nil || numbersArray.count == 0) {
           return @"";
       }
    
    for (NSInteger i = 0;i<4;i++){
        NSInteger myNumber = 0;
        if (i < numbersArray.count) { // {192} -> array count == 1 ---- 1) 0<1--->nmb = 192 ---- 2) 0 3)0 4)0
                   myNumber = [numbersArray[i] intValue];
               }
        if (myNumber > 255){
            return @"The numbers in the input array can be in the range from 0 to 255.";
        }
        else if (myNumber < 0){
            return @"Negative numbers are not valid for input.";
        }
        else{
            [correctedString appendFormat:@"%ld.", myNumber];
        }
    }
    return [correctedString substringToIndex:[correctedString length] - 1];
}

@end
