//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/northropo/Projects/paco/Shared/src/com/pacoapp/paco/shared/model2/PacoNotificationAction.java
//

#include "J2ObjC_source.h"
#include "PacoAction.h"
#include "PacoNotificationAction.h"
#include "Validator.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"

@interface PAPacoNotificationAction () {
 @public
  JavaLangInteger *timeout_;
  jlong delay_;
  NSString *msgText_;
}

@end

J2OBJC_FIELD_SETTER(PAPacoNotificationAction, timeout_, JavaLangInteger *)
J2OBJC_FIELD_SETTER(PAPacoNotificationAction, msgText_, NSString *)

NSString *PAPacoNotificationAction_TRIGGER_SIGNAL_TIMEOUT = @"59";
NSString *PAPacoNotificationAction_ESM_SIGNAL_TIMEOUT = @"59";
NSString *PAPacoNotificationAction_FIXED_SCHEDULE_TIMEOUT = @"479";

@implementation PAPacoNotificationAction

- (instancetype)initWithJavaLangInteger:(JavaLangInteger *)snoozeCount
                    withJavaLangInteger:(JavaLangInteger *)snoozeTime
                    withJavaLangInteger:(JavaLangInteger *)timeout
                               withLong:(jlong)delay
                           withNSString:(NSString *)msgText {
  PAPacoNotificationAction_initWithJavaLangInteger_withJavaLangInteger_withJavaLangInteger_withLong_withNSString_(self, snoozeCount, snoozeTime, timeout, delay, msgText);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  PAPacoNotificationAction_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (JavaLangInteger *)getTimeout {
  return timeout_;
}

- (void)setTimeoutWithJavaLangInteger:(JavaLangInteger *)timeout {
  self->timeout_ = timeout;
}

- (JavaLangInteger *)getSnoozeCount {
  return snoozeCount_;
}

- (void)setSnoozeCountWithJavaLangInteger:(JavaLangInteger *)snoozeCount {
  self->snoozeCount_ = JavaLangInteger_valueOfWithInt_(snoozeCount != nil ? [snoozeCount intValue] : PAPacoNotificationAction_SNOOZE_COUNT_DEFAULT);
}

- (JavaLangInteger *)getSnoozeTime {
  return snoozeTime_;
}

- (void)setSnoozeTimeWithJavaLangInteger:(JavaLangInteger *)snoozeTime {
  self->snoozeTime_ = JavaLangInteger_valueOfWithInt_(snoozeTime != nil ? [snoozeTime intValue] : PAPacoNotificationAction_SNOOZE_TIME_DEFAULT);
}

- (jint)getSnoozeTimeInMinutes {
  return [((JavaLangInteger *) nil_chk([self getSnoozeTime])) intValue] / 1000 / 60;
}

- (void)setSnoozeTimeInMinutesWithInt:(jint)minutes {
  self->snoozeTime_ = JavaLangInteger_valueOfWithInt_(minutes * 60 * 1000);
}

- (NSString *)getMsgText {
  return msgText_;
}

- (void)setMsgTextWithNSString:(NSString *)msgText {
  self->msgText_ = msgText;
}

- (jlong)getDelay {
  return delay_;
}

- (void)setDelayWithLong:(jlong)delay {
  self->delay_ = delay;
}

- (void)validateWithWithPAValidator:(id<PAValidator>)validator {
  [super validateWithWithPAValidator:validator];
  [((id<PAValidator>) nil_chk(validator)) isNotNullWithId:JavaLangLong_valueOfWithLong_(delay_) withNSString:@"delay is not properly initialized for PacoNotificationActions for InterruptTriggers"];
  [validator isNotNullWithId:msgText_ withNSString:@"msgText is not properly initialized"];
  [validator isNotNullWithId:snoozeCount_ withNSString:@"snoozeCount is not properly initialized"];
  if ([((JavaLangInteger *) nil_chk(snoozeCount_)) intValue] > 0) {
    [validator isNotNullWithId:snoozeTime_ withNSString:@"snoozeTime must be properly initialized when snoozeCount is  > 0"];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaLangInteger:withJavaLangInteger:withJavaLangInteger:withLong:withNSString:", "PacoNotificationAction", NULL, 0x1, NULL, NULL },
    { "init", "PacoNotificationAction", NULL, 0x1, NULL, NULL },
    { "getTimeout", NULL, "Ljava.lang.Integer;", 0x1, NULL, NULL },
    { "setTimeoutWithJavaLangInteger:", "setTimeout", "V", 0x1, NULL, NULL },
    { "getSnoozeCount", NULL, "Ljava.lang.Integer;", 0x1, NULL, NULL },
    { "setSnoozeCountWithJavaLangInteger:", "setSnoozeCount", "V", 0x1, NULL, NULL },
    { "getSnoozeTime", NULL, "Ljava.lang.Integer;", 0x1, NULL, NULL },
    { "setSnoozeTimeWithJavaLangInteger:", "setSnoozeTime", "V", 0x1, NULL, NULL },
    { "getSnoozeTimeInMinutes", NULL, "I", 0x1, NULL, NULL },
    { "setSnoozeTimeInMinutesWithInt:", "setSnoozeTimeInMinutes", "V", 0x1, NULL, NULL },
    { "getMsgText", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "setMsgTextWithNSString:", "setMsgText", "V", 0x1, NULL, NULL },
    { "getDelay", NULL, "J", 0x1, NULL, NULL },
    { "setDelayWithLong:", "setDelay", "V", 0x1, NULL, NULL },
    { "validateWithWithPAValidator:", "validateWith", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "SNOOZE_TIME_DEFAULT", "SNOOZE_TIME_DEFAULT", 0x19, "I", NULL, NULL, .constantValue.asInt = PAPacoNotificationAction_SNOOZE_TIME_DEFAULT },
    { "SNOOZE_COUNT_DEFAULT", "SNOOZE_COUNT_DEFAULT", 0x19, "I", NULL, NULL, .constantValue.asInt = PAPacoNotificationAction_SNOOZE_COUNT_DEFAULT },
    { "TRIGGER_SIGNAL_TIMEOUT", "TRIGGER_SIGNAL_TIMEOUT", 0x19, "Ljava.lang.String;", &PAPacoNotificationAction_TRIGGER_SIGNAL_TIMEOUT, NULL, .constantValue.asLong = 0 },
    { "ESM_SIGNAL_TIMEOUT", "ESM_SIGNAL_TIMEOUT", 0x19, "Ljava.lang.String;", &PAPacoNotificationAction_ESM_SIGNAL_TIMEOUT, NULL, .constantValue.asLong = 0 },
    { "FIXED_SCHEDULE_TIMEOUT", "FIXED_SCHEDULE_TIMEOUT", 0x19, "Ljava.lang.String;", &PAPacoNotificationAction_FIXED_SCHEDULE_TIMEOUT, NULL, .constantValue.asLong = 0 },
    { "DEFAULT_NOTIFICATION_DELAY", "DEFAULT_NOTIFICATION_DELAY", 0x19, "I", NULL, NULL, .constantValue.asInt = PAPacoNotificationAction_DEFAULT_NOTIFICATION_DELAY },
    { "snoozeCount_", NULL, 0x4, "Ljava.lang.Integer;", NULL, NULL, .constantValue.asLong = 0 },
    { "snoozeTime_", NULL, 0x4, "Ljava.lang.Integer;", NULL, NULL, .constantValue.asLong = 0 },
    { "timeout_", NULL, 0x2, "Ljava.lang.Integer;", NULL, NULL, .constantValue.asLong = 0 },
    { "delay_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "msgText_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _PAPacoNotificationAction = { 2, "PacoNotificationAction", "com.pacoapp.paco.shared.model2", NULL, 0x1, 15, methods, 11, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_PAPacoNotificationAction;
}

@end

void PAPacoNotificationAction_initWithJavaLangInteger_withJavaLangInteger_withJavaLangInteger_withLong_withNSString_(PAPacoNotificationAction *self, JavaLangInteger *snoozeCount, JavaLangInteger *snoozeTime, JavaLangInteger *timeout, jlong delay, NSString *msgText) {
  PAPacoAction_init(self);
  self->snoozeCount_ = JavaLangInteger_valueOfWithInt_(PAPacoNotificationAction_SNOOZE_COUNT_DEFAULT);
  self->snoozeTime_ = JavaLangInteger_valueOfWithInt_(PAPacoNotificationAction_SNOOZE_TIME_DEFAULT);
  self->delay_ = PAPacoNotificationAction_DEFAULT_NOTIFICATION_DELAY;
  self->type_ = @"pacoNotificationAction";
  self->timeout_ = timeout;
  self->delay_ = delay;
  self->snoozeCount_ = JavaLangInteger_valueOfWithInt_((snoozeCount != nil) ? [snoozeCount intValue] : PAPacoNotificationAction_SNOOZE_COUNT_DEFAULT);
  self->snoozeTime_ = JavaLangInteger_valueOfWithInt_((snoozeTime != nil) ? [snoozeTime intValue] : PAPacoNotificationAction_SNOOZE_TIME_DEFAULT);
  self->msgText_ = msgText;
}

PAPacoNotificationAction *new_PAPacoNotificationAction_initWithJavaLangInteger_withJavaLangInteger_withJavaLangInteger_withLong_withNSString_(JavaLangInteger *snoozeCount, JavaLangInteger *snoozeTime, JavaLangInteger *timeout, jlong delay, NSString *msgText) {
  PAPacoNotificationAction *self = [PAPacoNotificationAction alloc];
  PAPacoNotificationAction_initWithJavaLangInteger_withJavaLangInteger_withJavaLangInteger_withLong_withNSString_(self, snoozeCount, snoozeTime, timeout, delay, msgText);
  return self;
}

PAPacoNotificationAction *create_PAPacoNotificationAction_initWithJavaLangInteger_withJavaLangInteger_withJavaLangInteger_withLong_withNSString_(JavaLangInteger *snoozeCount, JavaLangInteger *snoozeTime, JavaLangInteger *timeout, jlong delay, NSString *msgText) {
  return new_PAPacoNotificationAction_initWithJavaLangInteger_withJavaLangInteger_withJavaLangInteger_withLong_withNSString_(snoozeCount, snoozeTime, timeout, delay, msgText);
}

void PAPacoNotificationAction_init(PAPacoNotificationAction *self) {
  PAPacoNotificationAction_initWithJavaLangInteger_withJavaLangInteger_withJavaLangInteger_withLong_withNSString_(self, JavaLangInteger_valueOfWithInt_(PAPacoNotificationAction_SNOOZE_COUNT_DEFAULT), JavaLangInteger_valueOfWithInt_(PAPacoNotificationAction_SNOOZE_TIME_DEFAULT), JavaLangInteger_valueOfWithInt_(JavaLangInteger_parseIntWithNSString_(PAPacoNotificationAction_ESM_SIGNAL_TIMEOUT)), PAPacoNotificationAction_DEFAULT_NOTIFICATION_DELAY, @"Time to participate");
}

PAPacoNotificationAction *new_PAPacoNotificationAction_init() {
  PAPacoNotificationAction *self = [PAPacoNotificationAction alloc];
  PAPacoNotificationAction_init(self);
  return self;
}

PAPacoNotificationAction *create_PAPacoNotificationAction_init() {
  return new_PAPacoNotificationAction_init();
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(PAPacoNotificationAction)