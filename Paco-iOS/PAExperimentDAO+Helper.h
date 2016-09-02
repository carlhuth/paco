/* Copyright 2015  Google
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import "ExperimentDAO.h"
#import "PAExperimentGroup+PacoGroupHelper.h" 

@class OrgJodaTimeDateTime;
@class PAInput2;
@class PAExperimentGroup;


@interface PAExperimentDAO (Helper)

-(NSString*) instanceId;
-(NSString*) scheduleString;
-(BOOL) isSelfReport;
-(NSString*) earliestStartDate;
-(NSString*) lastEndDate;
-(NSArray*) getTableCellModelObjects;
-(NSDictionary* ) inputs;
-(NSString*) jsonStringForJavascript;
-(PAInput2*) inputWithId:(NSString*) inputID;
-(NSArray*) fetchAllExperimentGroups;
-(NSDictionary*) fetchExperimentGroupDictionary;
-(int) numberOfGroups;
-(PAExperimentGroup*) soloGroup;
-(PAExperimentGroup*) groupWithName:(NSString*) groupName;
- (BOOL)isCompatibleWithIOS;


@end