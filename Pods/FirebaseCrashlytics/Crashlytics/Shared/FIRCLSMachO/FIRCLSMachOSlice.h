// Copyright 2019 Google
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import <Foundation/Foundation.h>
#import "Crashlytics/Shared/FIRCLSMachO/FIRCLSMachO.h"

@interface FIRCLSMachOSlice : NSObject {
  struct FIRCLSMachOSlice _slice;

  NSString* _uuidString;
  NSArray* _linkedDylibs;
  FIRCLSMachOVersion _minimumOSVersion;
  FIRCLSMachOVersion _linkedSDKVersion;
}

+ (id)runningSlice;

- (id)initWithSlice:(FIRCLSMachOSliceRef)sliceRef;

@property(nonatomic, copy, readonly) NSString* uuid;
@property(nonatomic, copy, readonly) NSString* architectureName;
@property(nonatomic, strong, readonly) NSArray* linkedDylibs;
@property(nonatomic, assign, readonly) FIRCLSMachOVersion minimumOSVersion;
@property(nonatomic, assign, readonly) FIRCLSMachOVersion linkedSDKVersion;

@end
