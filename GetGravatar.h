//
//  GetGravatar.h
//  
//
//  Created by iprayforwaves on 5/20/12.
//  GPL License
//



@interface GetGravatar : NSObject

+ (NSURL*)gravatarURLForEmail:(NSString*)aEmail size:(NSString*)imageSize default:(NSString*)defaultImage;
+ (NSURL*)gravatarURLForEmail:(NSString*)aEmail size:(NSString*)imageSize default:(NSString*)defaultImage secureTransfer:(BOOL)secure;
+ (NSString*)md5HexDigest:(NSString*)input;

@end
