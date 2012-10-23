//
//  GetGravatar.h
//  
//
//  Created by iprayforwaves on 5/20/12.
//  GPL License
//



@interface GetGravatar : NSObject

+ (NSURL*)gravatarURL:(NSString*)aEmail;
+ (NSString*)md5HexDigest:(NSString*)input;

@end
