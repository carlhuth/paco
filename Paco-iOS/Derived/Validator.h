//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/northropo/Projects/paco/Shared/src/com/pacoapp/paco/shared/model2/Validator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("Validator_INCLUDE_ALL")
#ifdef Validator_RESTRICT
#define Validator_INCLUDE_ALL 0
#else
#define Validator_INCLUDE_ALL 1
#endif
#undef Validator_RESTRICT

#if !defined (PAValidator_) && (Validator_INCLUDE_ALL || defined(PAValidator_INCLUDE))
#define PAValidator_

@class IOSObjectArray;
@protocol JavaUtilCollection;

@protocol PAValidator < NSObject, JavaObject >

- (void)addErrorWithNSString:(NSString *)errorMessage;

- (jboolean)isNotNullAndNonEmptyStringWithNSString:(NSString *)value
                                      withNSString:(NSString *)errorMsg;

- (jboolean)isNotNullAndNonEmptyCollectionWithJavaUtilCollection:(id<JavaUtilCollection>)collection
                                                    withNSString:(NSString *)errorMessage;

- (jboolean)isValidEmailWithNSString:(NSString *)address
                        withNSString:(NSString *)errorMessage;

- (jboolean)isValidCollectionOfEmailAddressesWithJavaUtilCollection:(id<JavaUtilCollection>)collection
                                                       withNSString:(NSString *)errorMessage;

- (jboolean)isNotNullCollectionWithJavaUtilCollection:(id<JavaUtilCollection>)actionTriggers
                                         withNSString:(NSString *)errorMessage;

- (jboolean)isValidDateStringWithNSString:(NSString *)dateStr
                             withNSString:(NSString *)errorMessage;

- (jboolean)isNotNullWithId:(id)obj
               withNSString:(NSString *)errorMessage;

- (jboolean)isValidJavascriptWithNSString:(NSString *)customRenderingCode
                             withNSString:(NSString *)errorMessage;

- (jboolean)isValidHtmlOrJavascriptWithNSString:(NSString *)text
                                   withNSString:(NSString *)errorMessage;

- (jboolean)isTrueWithBoolean:(jboolean)b
                 withNSString:(NSString *)string;

- (jboolean)isNotNullAndNonEmptyArrayWithNSStringArray:(IOSObjectArray *)arr
                                          withNSString:(NSString *)errorMessage;

- (jboolean)isValidConditionalExpressionWithNSString:(NSString *)conditionExpression
                                        withNSString:(NSString *)errorMessage;

@end

J2OBJC_EMPTY_STATIC_INIT(PAValidator)

inline jint PAValidator_get_MANDATORY();
#define PAValidator_MANDATORY 1
J2OBJC_STATIC_FIELD_CONSTANT(PAValidator, MANDATORY, jint)

inline jint PAValidator_get_OPTIONAL();
#define PAValidator_OPTIONAL 2
J2OBJC_STATIC_FIELD_CONSTANT(PAValidator, OPTIONAL, jint)

J2OBJC_TYPE_LITERAL_HEADER(PAValidator)

#define ComPacoappPacoSharedModel2Validator PAValidator

#endif

#pragma pop_macro("Validator_INCLUDE_ALL")