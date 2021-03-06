// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/protobuf/control_flow.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "tensorflow/core/protobuf/ControlFlow.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - ControlFlowRoot

@implementation ControlFlowRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - ControlFlowRoot_FileDescriptor

static GPBFileDescriptor *ControlFlowRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"tensorflow"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - ValuesDef

@implementation ValuesDef

@dynamic valuesArray, valuesArray_Count;
@dynamic externalValues, externalValues_Count;

typedef struct ValuesDef__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *valuesArray;
  NSMutableDictionary *externalValues;
} ValuesDef__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "valuesArray",
        .dataTypeSpecific.className = NULL,
        .number = ValuesDef_FieldNumber_ValuesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(ValuesDef__storage_, valuesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "externalValues",
        .dataTypeSpecific.className = NULL,
        .number = ValuesDef_FieldNumber_ExternalValues,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(ValuesDef__storage_, externalValues),
        .flags = GPBFieldMapKeyString,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ValuesDef class]
                                     rootClass:[ControlFlowRoot class]
                                          file:ControlFlowRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ValuesDef__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - CondContextDef

@implementation CondContextDef

@dynamic contextName;
@dynamic predName;
@dynamic pivotName;
@dynamic branch;
@dynamic hasValuesDef, valuesDef;

typedef struct CondContextDef__storage_ {
  uint32_t _has_storage_[1];
  int32_t branch;
  NSString *contextName;
  NSString *predName;
  NSString *pivotName;
  ValuesDef *valuesDef;
} CondContextDef__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "contextName",
        .dataTypeSpecific.className = NULL,
        .number = CondContextDef_FieldNumber_ContextName,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(CondContextDef__storage_, contextName),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "predName",
        .dataTypeSpecific.className = NULL,
        .number = CondContextDef_FieldNumber_PredName,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(CondContextDef__storage_, predName),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "pivotName",
        .dataTypeSpecific.className = NULL,
        .number = CondContextDef_FieldNumber_PivotName,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(CondContextDef__storage_, pivotName),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "branch",
        .dataTypeSpecific.className = NULL,
        .number = CondContextDef_FieldNumber_Branch,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(CondContextDef__storage_, branch),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "valuesDef",
        .dataTypeSpecific.className = GPBStringifySymbol(ValuesDef),
        .number = CondContextDef_FieldNumber_ValuesDef,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(CondContextDef__storage_, valuesDef),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[CondContextDef class]
                                     rootClass:[ControlFlowRoot class]
                                          file:ControlFlowRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(CondContextDef__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - WhileContextDef

@implementation WhileContextDef

@dynamic contextName;
@dynamic parallelIterations;
@dynamic backProp;
@dynamic swapMemory;
@dynamic pivotName;
@dynamic pivotForPredName;
@dynamic pivotForBodyName;
@dynamic loopExitNamesArray, loopExitNamesArray_Count;
@dynamic loopEnterNamesArray, loopEnterNamesArray_Count;
@dynamic hasValuesDef, valuesDef;

typedef struct WhileContextDef__storage_ {
  uint32_t _has_storage_[1];
  int32_t parallelIterations;
  NSString *contextName;
  NSString *pivotName;
  NSString *pivotForPredName;
  NSString *pivotForBodyName;
  NSMutableArray *loopExitNamesArray;
  ValuesDef *valuesDef;
  NSMutableArray *loopEnterNamesArray;
} WhileContextDef__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "contextName",
        .dataTypeSpecific.className = NULL,
        .number = WhileContextDef_FieldNumber_ContextName,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(WhileContextDef__storage_, contextName),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "parallelIterations",
        .dataTypeSpecific.className = NULL,
        .number = WhileContextDef_FieldNumber_ParallelIterations,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(WhileContextDef__storage_, parallelIterations),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "backProp",
        .dataTypeSpecific.className = NULL,
        .number = WhileContextDef_FieldNumber_BackProp,
        .hasIndex = 2,
        .offset = 3,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "swapMemory",
        .dataTypeSpecific.className = NULL,
        .number = WhileContextDef_FieldNumber_SwapMemory,
        .hasIndex = 4,
        .offset = 5,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "pivotName",
        .dataTypeSpecific.className = NULL,
        .number = WhileContextDef_FieldNumber_PivotName,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(WhileContextDef__storage_, pivotName),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "pivotForPredName",
        .dataTypeSpecific.className = NULL,
        .number = WhileContextDef_FieldNumber_PivotForPredName,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(WhileContextDef__storage_, pivotForPredName),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "pivotForBodyName",
        .dataTypeSpecific.className = NULL,
        .number = WhileContextDef_FieldNumber_PivotForBodyName,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(WhileContextDef__storage_, pivotForBodyName),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "loopExitNamesArray",
        .dataTypeSpecific.className = NULL,
        .number = WhileContextDef_FieldNumber_LoopExitNamesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(WhileContextDef__storage_, loopExitNamesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "valuesDef",
        .dataTypeSpecific.className = GPBStringifySymbol(ValuesDef),
        .number = WhileContextDef_FieldNumber_ValuesDef,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(WhileContextDef__storage_, valuesDef),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "loopEnterNamesArray",
        .dataTypeSpecific.className = NULL,
        .number = WhileContextDef_FieldNumber_LoopEnterNamesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(WhileContextDef__storage_, loopEnterNamesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[WhileContextDef class]
                                     rootClass:[ControlFlowRoot class]
                                          file:ControlFlowRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(WhileContextDef__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
