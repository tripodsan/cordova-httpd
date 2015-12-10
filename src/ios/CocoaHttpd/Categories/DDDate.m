#import "DDDate.h"


@implementation NSDate (DDDate)

// Category on NSDate to support rfc1123 formatted date strings.
// http://blog.mro.name/2009/08/nsdateformatter-http-header/

- (NSString*)rfc1123String
{
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	formatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
	formatter.timeZone = [NSTimeZone timeZoneWithAbbreviation:@"GMT"];
	formatter.dateFormat = @"EEE',' dd MMM yyyy HH':'mm':'ss 'GMT'";
	return [formatter stringFromDate:self];
}

@end
