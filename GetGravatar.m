//
//  GetGravatar.m
//  
//
//  Created by iprayforwaves on 5/20/12.
//  GPL License
//

#import "GetGravatar.h"
#import <CommonCrypto/CommonDigest.h>

@implementation GetGravatar

+ (NSURL*)gravatarURL:(NSString*)aEmail:(NSString*)imageSize:(NSString*)defaultImage
{
    if (aEmail)
    {
        
        NSString *email = [[aEmail stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] lowercaseString];
        NSString *emailMD5 = [GetGravatar md5HexDigest:email];
        
        if(!imageSize) imageSize = @"80";
        
        if(!defaultImage) defaultImage = @"mm";
        
        NSString *gravatarString = [NSString stringWithFormat:@"http://www.gravatar.com/avatar/%@?s=%@&d=%@", emailMD5, imageSize, defaultImage];
        
        //NSLog(@"%@", gravatarString);
        
        return [NSURL URLWithString:gravatarString];
    }
    
    return nil;
}

+ (NSString*)md5HexDigest:(NSString*)input
{
    const char* str = [input UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(str, strlen(str), result);
    
    NSMutableString *ret = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH*2];
    
    for(int i = 0; i<CC_MD5_DIGEST_LENGTH; i++)
        [ret appendFormat:@"%02x",result[i]];
    
    return ret;
}

@end