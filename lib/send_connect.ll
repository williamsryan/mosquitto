; ModuleID = 'send_connect.bc'
source_filename = "send_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.mosquitto = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i16, i16, i32, i64, i64, i64, %struct.mosquitto__packet, %struct.mosquitto__packet*, %struct.mosquitto__packet*, %struct.mosquitto_message_all*, %struct.mosquitto__alias*, %struct.will_delay_list*, i32, i32, i32, i64, i8, i8, i8, i32, i64, i8*, i8, %struct.mosquitto_msg_data, %struct.mosquitto_msg_data, void (%struct.mosquitto*, i8*, i32)*, void (%struct.mosquitto*, i8*, i32, i32)*, void (%struct.mosquitto*, i8*, i32, i32, %struct.mqtt5__property*)*, void (%struct.mosquitto*, i8*, i32)*, void (%struct.mosquitto*, i8*, i32, %struct.mqtt5__property*)*, void (%struct.mosquitto*, i8*, i32)*, void (%struct.mosquitto*, i8*, i32, i32, %struct.mqtt5__property*)*, void (%struct.mosquitto*, i8*, %struct.mosquitto_message*)*, void (%struct.mosquitto*, i8*, %struct.mosquitto_message*, %struct.mqtt5__property*)*, void (%struct.mosquitto*, i8*, i32, i32, i32*)*, void (%struct.mosquitto*, i8*, i32, i32, i32*, %struct.mqtt5__property*)*, void (%struct.mosquitto*, i8*, i32)*, void (%struct.mosquitto*, i8*, i32, %struct.mqtt5__property*)*, void (%struct.mosquitto*, i8*, i32, i8*)*, i8*, i32, i8*, i32, i32, i32, i8, i8, %struct.mosquitto__packet*, i8, i32 }
%struct.mosquitto__packet = type { i8*, %struct.mosquitto__packet*, i32, i32, i32, i32, i32, i16, i8, i8 }
%struct.mosquitto_message_all = type { %struct.mosquitto_message_all*, %struct.mosquitto_message_all*, %struct.mqtt5__property*, i64, i32, i8, %struct.mosquitto_message, i32 }
%struct.mosquitto_message = type { i32, i8*, i8*, i32, i32, i8 }
%struct.mosquitto__alias = type { i8*, i16 }
%struct.will_delay_list = type { %struct.mosquitto*, %struct.will_delay_list*, %struct.will_delay_list* }
%struct.mosquitto_msg_data = type { %struct.mosquitto_message_all*, i32, i32, i16 }
%struct.mqtt5__property = type { %struct.mqtt5__property*, %union.anon, %struct.mqtt__string, i32, i8 }
%union.anon = type { %struct.mqtt__string }
%struct.mqtt__string = type { i8*, i32 }

@change_static_value.nonce = private unnamed_addr constant [4 x i32] [i32 1337, i32 28, i32 92, i32 65], align 16
@.str = private unnamed_addr constant [5 x i8] c"mosq\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"send_connect.c\00", align 1
@__PRETTY_FUNCTION__.send__connect = private unnamed_addr constant [83 x i8] c"int send__connect(struct mosquitto *, uint16_t, _Bool, const mosquitto_property *)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"mosq->will->msg.topic\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"MQIsdp\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"MQTT\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Client %s sending CONNECT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @simple_encrypt(i32 %0) #0 !dbg !122 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata i32* %3, metadata !129, metadata !DIExpression()), !dbg !130
  store i32 1234182, i32* %3, align 4, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %4, metadata !131, metadata !DIExpression()), !dbg !132
  %5 = load i32, i32* %2, align 4, !dbg !133
  %6 = load i32, i32* %3, align 4, !dbg !134
  %7 = xor i32 %5, %6, !dbg !135
  store i32 %7, i32* %4, align 4, !dbg !132
  %8 = load i32, i32* %4, align 4, !dbg !136
  ret i32 %8, !dbg !137
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @change_static_value(i32 %0) #0 !dbg !138 {
  %2 = alloca i32, align 4
  %3 = alloca [4 x i32], align 16
  %4 = alloca i64, align 8
  %5 = alloca %struct.tm*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata [4 x i32]* %3, metadata !141, metadata !DIExpression()), !dbg !145
  %6 = bitcast [4 x i32]* %3 to i8*, !dbg !145
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([4 x i32]* @change_static_value.nonce to i8*), i64 16, i1 false), !dbg !145
  call void @llvm.dbg.declare(metadata i64* %4, metadata !146, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata %struct.tm** %5, metadata !153, metadata !DIExpression()), !dbg !169
  %7 = call i64 @time(i64* %4) #7, !dbg !170
  %8 = call %struct.tm* @gmtime(i64* %4) #7, !dbg !171
  store %struct.tm* %8, %struct.tm** %5, align 8, !dbg !172
  %9 = load %struct.tm*, %struct.tm** %5, align 8, !dbg !173
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 2, !dbg !175
  %11 = load i32, i32* %10, align 8, !dbg !175
  %12 = srem i32 %11, 24, !dbg !176
  %13 = icmp sgt i32 %12, 12, !dbg !177
  br i1 %13, label %14, label %20, !dbg !178

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4, !dbg !179
  %16 = mul nsw i32 %15, 2, !dbg !181
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !182
  %18 = load i32, i32* %17, align 16, !dbg !182
  %19 = add nsw i32 %16, %18, !dbg !183
  store i32 %19, i32* %2, align 4, !dbg !184
  br label %26, !dbg !185

20:                                               ; preds = %1
  %21 = load i32, i32* %2, align 4, !dbg !186
  %22 = mul nsw i32 %21, 2, !dbg !188
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2, !dbg !189
  %24 = load i32, i32* %23, align 8, !dbg !189
  %25 = add nsw i32 %22, %24, !dbg !190
  store i32 %25, i32* %2, align 4, !dbg !191
  br label %26

26:                                               ; preds = %20, %14
  %27 = load i32, i32* %2, align 4, !dbg !192
  ret i32 %27, !dbg !193
}

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind
declare %struct.tm* @gmtime(i64*) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @send__connect(%struct.mosquitto* %0, i16 zeroext %1, i1 zeroext %2, %struct.mqtt5__property* %3) #0 !dbg !194 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mosquitto*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  %9 = alloca %struct.mqtt5__property*, align 8
  %10 = alloca %struct.mosquitto__packet*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.mqtt5__property*, align 8
  %24 = alloca i16, align 2
  store %struct.mosquitto* %0, %struct.mosquitto** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.mosquitto** %6, metadata !383, metadata !DIExpression()), !dbg !384
  store i16 %1, i16* %7, align 2
  call void @llvm.dbg.declare(metadata i16* %7, metadata !385, metadata !DIExpression()), !dbg !386
  %25 = zext i1 %2 to i8
  store i8 %25, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !387, metadata !DIExpression()), !dbg !388
  store %struct.mqtt5__property* %3, %struct.mqtt5__property** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt5__property** %9, metadata !389, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.declare(metadata %struct.mosquitto__packet** %10, metadata !391, metadata !DIExpression()), !dbg !392
  store %struct.mosquitto__packet* null, %struct.mosquitto__packet** %10, align 8, !dbg !392
  call void @llvm.dbg.declare(metadata i32* %11, metadata !393, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.declare(metadata i8* %12, metadata !395, metadata !DIExpression()), !dbg !396
  store i8 0, i8* %12, align 1, !dbg !396
  call void @llvm.dbg.declare(metadata i8* %13, metadata !397, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.declare(metadata i32* %14, metadata !399, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.declare(metadata i8* %15, metadata !401, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.declare(metadata i8** %16, metadata !403, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.declare(metadata i8** %17, metadata !405, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.declare(metadata i8** %18, metadata !407, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.declare(metadata i32* %19, metadata !409, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.declare(metadata i32* %20, metadata !411, metadata !DIExpression()), !dbg !412
  store i32 0, i32* %20, align 4, !dbg !412
  call void @llvm.dbg.declare(metadata i32* %21, metadata !413, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.declare(metadata i32* %22, metadata !415, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.declare(metadata %struct.mqtt5__property** %23, metadata !417, metadata !DIExpression()), !dbg !418
  store %struct.mqtt5__property* null, %struct.mqtt5__property** %23, align 8, !dbg !418
  call void @llvm.dbg.declare(metadata i16* %24, metadata !419, metadata !DIExpression()), !dbg !420
  %26 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !421
  %27 = icmp ne %struct.mosquitto* %26, null, !dbg !421
  br i1 %27, label %28, label %29, !dbg !424

28:                                               ; preds = %4
  br label %30, !dbg !424

29:                                               ; preds = %4
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 76, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.send__connect, i32 0, i32 0)) #8, !dbg !421
  unreachable, !dbg !421

30:                                               ; preds = %28
  %31 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !425
  %32 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %31, i32 0, i32 3, !dbg !427
  %33 = load i32, i32* %32, align 4, !dbg !427
  %34 = icmp eq i32 %33, 1, !dbg !428
  br i1 %34, label %35, label %41, !dbg !429

35:                                               ; preds = %30
  %36 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !430
  %37 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %36, i32 0, i32 5, !dbg !431
  %38 = load i8*, i8** %37, align 8, !dbg !431
  %39 = icmp ne i8* %38, null, !dbg !430
  br i1 %39, label %41, label %40, !dbg !432

40:                                               ; preds = %35
  store i32 2, i32* %5, align 4, !dbg !433
  br label %414, !dbg !433

41:                                               ; preds = %35, %30
  %42 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !434
  %43 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %42, i32 0, i32 5, !dbg !435
  %44 = load i8*, i8** %43, align 8, !dbg !435
  store i8* %44, i8** %16, align 8, !dbg !436
  %45 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !437
  %46 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %45, i32 0, i32 6, !dbg !438
  %47 = load i8*, i8** %46, align 8, !dbg !438
  store i8* %47, i8** %17, align 8, !dbg !439
  %48 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !440
  %49 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %48, i32 0, i32 7, !dbg !441
  %50 = load i8*, i8** %49, align 8, !dbg !441
  store i8* %50, i8** %18, align 8, !dbg !442
  %51 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !443
  %52 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %51, i32 0, i32 3, !dbg !445
  %53 = load i32, i32* %52, align 4, !dbg !445
  %54 = icmp eq i32 %53, 5, !dbg !446
  br i1 %54, label %55, label %96, !dbg !447

55:                                               ; preds = %41
  %56 = load %struct.mqtt5__property*, %struct.mqtt5__property** %9, align 8, !dbg !448
  %57 = call %struct.mqtt5__property* @mosquitto_property_read_int16(%struct.mqtt5__property* %56, i32 33, i16* %24, i1 zeroext false), !dbg !451
  %58 = icmp ne %struct.mqtt5__property* %57, null, !dbg !451
  br i1 %58, label %70, label %59, !dbg !452

59:                                               ; preds = %55
  %60 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !453
  %61 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %60, i32 0, i32 31, !dbg !455
  %62 = getelementptr inbounds %struct.mosquitto_msg_data, %struct.mosquitto_msg_data* %61, i32 0, i32 3, !dbg !456
  %63 = load i16, i16* %62, align 8, !dbg !456
  %64 = call i32 @mosquitto_property_add_int16(%struct.mqtt5__property** %23, i32 33, i16 zeroext %63), !dbg !457
  store i32 %64, i32* %14, align 4, !dbg !458
  %65 = load i32, i32* %14, align 4, !dbg !459
  %66 = icmp ne i32 %65, 0, !dbg !459
  br i1 %66, label %67, label %69, !dbg !461

67:                                               ; preds = %59
  %68 = load i32, i32* %14, align 4, !dbg !462
  store i32 %68, i32* %5, align 4, !dbg !463
  br label %414, !dbg !463

69:                                               ; preds = %59
  br label %80, !dbg !464

70:                                               ; preds = %55
  %71 = load i16, i16* %24, align 2, !dbg !465
  %72 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !467
  %73 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %72, i32 0, i32 31, !dbg !468
  %74 = getelementptr inbounds %struct.mosquitto_msg_data, %struct.mosquitto_msg_data* %73, i32 0, i32 3, !dbg !469
  store i16 %71, i16* %74, align 8, !dbg !470
  %75 = load i16, i16* %24, align 2, !dbg !471
  %76 = zext i16 %75 to i32, !dbg !471
  %77 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !472
  %78 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %77, i32 0, i32 31, !dbg !473
  %79 = getelementptr inbounds %struct.mosquitto_msg_data, %struct.mosquitto_msg_data* %78, i32 0, i32 2, !dbg !474
  store i32 %76, i32* %79, align 4, !dbg !475
  br label %80

80:                                               ; preds = %70, %69
  store i8 5, i8* %15, align 1, !dbg !476
  store i32 10, i32* %19, align 4, !dbg !477
  store i32 0, i32* %20, align 4, !dbg !478
  %81 = load %struct.mqtt5__property*, %struct.mqtt5__property** %9, align 8, !dbg !479
  %82 = call i32 @property__get_length_all(%struct.mqtt5__property* %81), !dbg !480
  %83 = load i32, i32* %20, align 4, !dbg !481
  %84 = add nsw i32 %83, %82, !dbg !481
  store i32 %84, i32* %20, align 4, !dbg !481
  %85 = load %struct.mqtt5__property*, %struct.mqtt5__property** %23, align 8, !dbg !482
  %86 = call i32 @property__get_length_all(%struct.mqtt5__property* %85), !dbg !483
  %87 = load i32, i32* %20, align 4, !dbg !484
  %88 = add nsw i32 %87, %86, !dbg !484
  store i32 %88, i32* %20, align 4, !dbg !484
  %89 = load i32, i32* %20, align 4, !dbg !485
  %90 = call i32 @packet__varint_bytes(i32 %89), !dbg !486
  store i32 %90, i32* %22, align 4, !dbg !487
  %91 = load i32, i32* %20, align 4, !dbg !488
  %92 = load i32, i32* %22, align 4, !dbg !489
  %93 = add nsw i32 %91, %92, !dbg !490
  %94 = load i32, i32* %19, align 4, !dbg !491
  %95 = add nsw i32 %94, %93, !dbg !491
  store i32 %95, i32* %19, align 4, !dbg !491
  br label %111, !dbg !492

96:                                               ; preds = %41
  %97 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !493
  %98 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %97, i32 0, i32 3, !dbg !495
  %99 = load i32, i32* %98, align 4, !dbg !495
  %100 = icmp eq i32 %99, 2, !dbg !496
  br i1 %100, label %101, label %102, !dbg !497

101:                                              ; preds = %96
  store i8 4, i8* %15, align 1, !dbg !498
  store i32 10, i32* %19, align 4, !dbg !500
  br label %110, !dbg !501

102:                                              ; preds = %96
  %103 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !502
  %104 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %103, i32 0, i32 3, !dbg !504
  %105 = load i32, i32* %104, align 4, !dbg !504
  %106 = icmp eq i32 %105, 1, !dbg !505
  br i1 %106, label %107, label %108, !dbg !506

107:                                              ; preds = %102
  store i8 3, i8* %15, align 1, !dbg !507
  store i32 12, i32* %19, align 4, !dbg !509
  br label %109, !dbg !510

108:                                              ; preds = %102
  store i32 3, i32* %5, align 4, !dbg !511
  br label %414, !dbg !511

109:                                              ; preds = %107
  br label %110

110:                                              ; preds = %109, %101
  br label %111

111:                                              ; preds = %110, %80
  %112 = call i8* @mosquitto__calloc(i64 1, i64 40), !dbg !513
  %113 = bitcast i8* %112 to %struct.mosquitto__packet*, !dbg !513
  store %struct.mosquitto__packet* %113, %struct.mosquitto__packet** %10, align 8, !dbg !514
  %114 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !515
  %115 = icmp ne %struct.mosquitto__packet* %114, null, !dbg !515
  br i1 %115, label %117, label %116, !dbg !517

116:                                              ; preds = %111
  store i32 1, i32* %5, align 4, !dbg !518
  br label %414, !dbg !518

117:                                              ; preds = %111
  %118 = load i8*, i8** %16, align 8, !dbg !519
  %119 = icmp ne i8* %118, null, !dbg !519
  br i1 %119, label %120, label %125, !dbg !521

120:                                              ; preds = %117
  %121 = load i8*, i8** %16, align 8, !dbg !522
  %122 = call i64 @strlen(i8* %121) #9, !dbg !524
  %123 = add i64 2, %122, !dbg !525
  %124 = trunc i64 %123 to i32, !dbg !526
  store i32 %124, i32* %11, align 4, !dbg !527
  br label %126, !dbg !528

125:                                              ; preds = %117
  store i32 2, i32* %11, align 4, !dbg !529
  br label %126

126:                                              ; preds = %125, %120
  %127 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !531
  %128 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %127, i32 0, i32 17, !dbg !533
  %129 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %128, align 8, !dbg !533
  %130 = icmp ne %struct.mosquitto_message_all* %129, null, !dbg !531
  br i1 %130, label %131, label %182, !dbg !534

131:                                              ; preds = %126
  store i8 1, i8* %12, align 1, !dbg !535
  %132 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !537
  %133 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %132, i32 0, i32 17, !dbg !537
  %134 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %133, align 8, !dbg !537
  %135 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %134, i32 0, i32 6, !dbg !537
  %136 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %135, i32 0, i32 1, !dbg !537
  %137 = load i8*, i8** %136, align 8, !dbg !537
  %138 = icmp ne i8* %137, null, !dbg !537
  br i1 %138, label %139, label %140, !dbg !540

139:                                              ; preds = %131
  br label %141, !dbg !540

140:                                              ; preds = %131
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 133, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.send__connect, i32 0, i32 0)) #8, !dbg !537
  unreachable, !dbg !537

141:                                              ; preds = %139
  %142 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !541
  %143 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %142, i32 0, i32 17, !dbg !542
  %144 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %143, align 8, !dbg !542
  %145 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %144, i32 0, i32 6, !dbg !543
  %146 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %145, i32 0, i32 1, !dbg !544
  %147 = load i8*, i8** %146, align 8, !dbg !544
  %148 = call i64 @strlen(i8* %147) #9, !dbg !545
  %149 = add i64 2, %148, !dbg !546
  %150 = add i64 %149, 2, !dbg !547
  %151 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !548
  %152 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %151, i32 0, i32 17, !dbg !549
  %153 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %152, align 8, !dbg !549
  %154 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %153, i32 0, i32 6, !dbg !550
  %155 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %154, i32 0, i32 3, !dbg !551
  %156 = load i32, i32* %155, align 8, !dbg !551
  %157 = sext i32 %156 to i64, !dbg !548
  %158 = add i64 %150, %157, !dbg !552
  %159 = load i32, i32* %11, align 4, !dbg !553
  %160 = sext i32 %159 to i64, !dbg !553
  %161 = add i64 %160, %158, !dbg !553
  %162 = trunc i64 %161 to i32, !dbg !553
  store i32 %162, i32* %11, align 4, !dbg !553
  %163 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !554
  %164 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %163, i32 0, i32 3, !dbg !556
  %165 = load i32, i32* %164, align 4, !dbg !556
  %166 = icmp eq i32 %165, 5, !dbg !557
  br i1 %166, label %167, label %181, !dbg !558

167:                                              ; preds = %141
  %168 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !559
  %169 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %168, i32 0, i32 17, !dbg !561
  %170 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %169, align 8, !dbg !561
  %171 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %170, i32 0, i32 2, !dbg !562
  %172 = load %struct.mqtt5__property*, %struct.mqtt5__property** %171, align 8, !dbg !562
  %173 = call i32 @property__get_length_all(%struct.mqtt5__property* %172), !dbg !563
  store i32 %173, i32* %21, align 4, !dbg !564
  %174 = load i32, i32* %21, align 4, !dbg !565
  %175 = call i32 @packet__varint_bytes(i32 %174), !dbg !566
  store i32 %175, i32* %22, align 4, !dbg !567
  %176 = load i32, i32* %21, align 4, !dbg !568
  %177 = load i32, i32* %22, align 4, !dbg !569
  %178 = add nsw i32 %176, %177, !dbg !570
  %179 = load i32, i32* %11, align 4, !dbg !571
  %180 = add nsw i32 %179, %178, !dbg !571
  store i32 %180, i32* %11, align 4, !dbg !571
  br label %181, !dbg !572

181:                                              ; preds = %167, %141
  br label %182, !dbg !573

182:                                              ; preds = %181, %126
  %183 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !574
  %184 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %183, i32 0, i32 3, !dbg !576
  %185 = load i32, i32* %184, align 4, !dbg !576
  %186 = icmp eq i32 %185, 1, !dbg !577
  br i1 %186, label %192, label %187, !dbg !578

187:                                              ; preds = %182
  %188 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !579
  %189 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %188, i32 0, i32 3, !dbg !580
  %190 = load i32, i32* %189, align 4, !dbg !580
  %191 = icmp eq i32 %190, 2, !dbg !581
  br i1 %191, label %192, label %200, !dbg !582

192:                                              ; preds = %187, %182
  %193 = load i8*, i8** %18, align 8, !dbg !583
  %194 = icmp ne i8* %193, null, !dbg !586
  br i1 %194, label %195, label %199, !dbg !587

195:                                              ; preds = %192
  %196 = load i8*, i8** %17, align 8, !dbg !588
  %197 = icmp eq i8* %196, null, !dbg !589
  br i1 %197, label %198, label %199, !dbg !590

198:                                              ; preds = %195
  store i32 3, i32* %5, align 4, !dbg !591
  br label %414, !dbg !591

199:                                              ; preds = %195, %192
  br label %200, !dbg !593

200:                                              ; preds = %199, %187
  %201 = load i8*, i8** %17, align 8, !dbg !594
  %202 = icmp ne i8* %201, null, !dbg !594
  br i1 %202, label %203, label %211, !dbg !596

203:                                              ; preds = %200
  %204 = load i8*, i8** %17, align 8, !dbg !597
  %205 = call i64 @strlen(i8* %204) #9, !dbg !599
  %206 = add i64 2, %205, !dbg !600
  %207 = load i32, i32* %11, align 4, !dbg !601
  %208 = sext i32 %207 to i64, !dbg !601
  %209 = add i64 %208, %206, !dbg !601
  %210 = trunc i64 %209 to i32, !dbg !601
  store i32 %210, i32* %11, align 4, !dbg !601
  br label %211, !dbg !602

211:                                              ; preds = %203, %200
  %212 = load i8*, i8** %18, align 8, !dbg !603
  %213 = icmp ne i8* %212, null, !dbg !603
  br i1 %213, label %214, label %222, !dbg !605

214:                                              ; preds = %211
  %215 = load i8*, i8** %18, align 8, !dbg !606
  %216 = call i64 @strlen(i8* %215) #9, !dbg !608
  %217 = add i64 2, %216, !dbg !609
  %218 = load i32, i32* %11, align 4, !dbg !610
  %219 = sext i32 %218 to i64, !dbg !610
  %220 = add i64 %219, %217, !dbg !610
  %221 = trunc i64 %220 to i32, !dbg !610
  store i32 %221, i32* %11, align 4, !dbg !610
  br label %222, !dbg !611

222:                                              ; preds = %214, %211
  %223 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !612
  %224 = getelementptr inbounds %struct.mosquitto__packet, %struct.mosquitto__packet* %223, i32 0, i32 8, !dbg !613
  store i8 16, i8* %224, align 2, !dbg !614
  %225 = load i32, i32* %19, align 4, !dbg !615
  %226 = load i32, i32* %11, align 4, !dbg !616
  %227 = add nsw i32 %225, %226, !dbg !617
  %228 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !618
  %229 = getelementptr inbounds %struct.mosquitto__packet, %struct.mosquitto__packet* %228, i32 0, i32 3, !dbg !619
  store i32 %227, i32* %229, align 4, !dbg !620
  %230 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !621
  %231 = getelementptr inbounds %struct.mosquitto__packet, %struct.mosquitto__packet* %230, i32 0, i32 3, !dbg !622
  %232 = load i32, i32* %231, align 4, !dbg !622
  %233 = call i32 @change_static_value(i32 %232), !dbg !623
  %234 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !624
  %235 = getelementptr inbounds %struct.mosquitto__packet, %struct.mosquitto__packet* %234, i32 0, i32 3, !dbg !625
  store i32 %233, i32* %235, align 4, !dbg !626
  %236 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !627
  %237 = call i32 @packet__alloc(%struct.mosquitto__packet* %236), !dbg !628
  store i32 %237, i32* %14, align 4, !dbg !629
  %238 = load i32, i32* %14, align 4, !dbg !630
  %239 = icmp ne i32 %238, 0, !dbg !630
  br i1 %239, label %240, label %244, !dbg !632

240:                                              ; preds = %222
  %241 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !633
  %242 = bitcast %struct.mosquitto__packet* %241 to i8*, !dbg !633
  call void @mosquitto__free(i8* %242), !dbg !635
  %243 = load i32, i32* %14, align 4, !dbg !636
  store i32 %243, i32* %5, align 4, !dbg !637
  br label %414, !dbg !637

244:                                              ; preds = %222
  %245 = load i8, i8* %15, align 1, !dbg !638
  %246 = zext i8 %245 to i32, !dbg !638
  %247 = icmp eq i32 %246, 3, !dbg !640
  br i1 %247, label %248, label %250, !dbg !641

248:                                              ; preds = %244
  %249 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !642
  call void @packet__write_string(%struct.mosquitto__packet* %249, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i16 zeroext 6), !dbg !644
  br label %252, !dbg !645

250:                                              ; preds = %244
  %251 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !646
  call void @packet__write_string(%struct.mosquitto__packet* %251, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i16 zeroext 4), !dbg !648
  br label %252

252:                                              ; preds = %250, %248
  %253 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !649
  %254 = load i8, i8* %15, align 1, !dbg !650
  call void @packet__write_byte(%struct.mosquitto__packet* %253, i8 zeroext %254), !dbg !651
  %255 = load i8, i8* %8, align 1, !dbg !652
  %256 = trunc i8 %255 to i1, !dbg !652
  %257 = zext i1 %256 to i32, !dbg !652
  %258 = and i32 %257, 1, !dbg !653
  %259 = shl i32 %258, 1, !dbg !654
  %260 = trunc i32 %259 to i8, !dbg !655
  store i8 %260, i8* %13, align 1, !dbg !656
  %261 = load i8, i8* %12, align 1, !dbg !657
  %262 = icmp ne i8 %261, 0, !dbg !657
  br i1 %262, label %263, label %292, !dbg !659

263:                                              ; preds = %252
  %264 = load i8, i8* %13, align 1, !dbg !660
  %265 = zext i8 %264 to i32, !dbg !660
  %266 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !662
  %267 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %266, i32 0, i32 17, !dbg !663
  %268 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %267, align 8, !dbg !663
  %269 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %268, i32 0, i32 6, !dbg !664
  %270 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %269, i32 0, i32 5, !dbg !665
  %271 = load i8, i8* %270, align 8, !dbg !665
  %272 = trunc i8 %271 to i1, !dbg !665
  %273 = zext i1 %272 to i32, !dbg !662
  %274 = and i32 %273, 1, !dbg !666
  %275 = shl i32 %274, 5, !dbg !667
  %276 = or i32 %265, %275, !dbg !668
  %277 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !669
  %278 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %277, i32 0, i32 17, !dbg !670
  %279 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %278, align 8, !dbg !670
  %280 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %279, i32 0, i32 6, !dbg !671
  %281 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %280, i32 0, i32 4, !dbg !672
  %282 = load i32, i32* %281, align 4, !dbg !672
  %283 = and i32 %282, 3, !dbg !673
  %284 = shl i32 %283, 3, !dbg !674
  %285 = or i32 %276, %284, !dbg !675
  %286 = load i8, i8* %12, align 1, !dbg !676
  %287 = zext i8 %286 to i32, !dbg !676
  %288 = and i32 %287, 1, !dbg !677
  %289 = shl i32 %288, 2, !dbg !678
  %290 = or i32 %285, %289, !dbg !679
  %291 = trunc i32 %290 to i8, !dbg !660
  store i8 %291, i8* %13, align 1, !dbg !680
  br label %292, !dbg !681

292:                                              ; preds = %263, %252
  %293 = load i8*, i8** %17, align 8, !dbg !682
  %294 = icmp ne i8* %293, null, !dbg !682
  br i1 %294, label %295, label %300, !dbg !684

295:                                              ; preds = %292
  %296 = load i8, i8* %13, align 1, !dbg !685
  %297 = zext i8 %296 to i32, !dbg !685
  %298 = or i32 %297, 128, !dbg !687
  %299 = trunc i32 %298 to i8, !dbg !685
  store i8 %299, i8* %13, align 1, !dbg !688
  br label %300, !dbg !689

300:                                              ; preds = %295, %292
  %301 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !690
  %302 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %301, i32 0, i32 7, !dbg !692
  %303 = load i8*, i8** %302, align 8, !dbg !692
  %304 = icmp ne i8* %303, null, !dbg !690
  br i1 %304, label %305, label %310, !dbg !693

305:                                              ; preds = %300
  %306 = load i8, i8* %13, align 1, !dbg !694
  %307 = zext i8 %306 to i32, !dbg !694
  %308 = or i32 %307, 64, !dbg !696
  %309 = trunc i32 %308 to i8, !dbg !694
  store i8 %309, i8* %13, align 1, !dbg !697
  br label %310, !dbg !698

310:                                              ; preds = %305, %300
  %311 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !699
  %312 = load i8, i8* %13, align 1, !dbg !700
  call void @packet__write_byte(%struct.mosquitto__packet* %311, i8 zeroext %312), !dbg !701
  %313 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !702
  %314 = load i16, i16* %7, align 2, !dbg !703
  call void @packet__write_uint16(%struct.mosquitto__packet* %313, i16 zeroext %314), !dbg !704
  %315 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !705
  %316 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %315, i32 0, i32 3, !dbg !707
  %317 = load i32, i32* %316, align 4, !dbg !707
  %318 = icmp eq i32 %317, 5, !dbg !708
  br i1 %318, label %319, label %329, !dbg !709

319:                                              ; preds = %310
  %320 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !710
  %321 = load i32, i32* %20, align 4, !dbg !712
  %322 = call i32 @packet__write_varint(%struct.mosquitto__packet* %320, i32 %321), !dbg !713
  %323 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !714
  %324 = load %struct.mqtt5__property*, %struct.mqtt5__property** %9, align 8, !dbg !715
  %325 = call i32 @property__write_all(%struct.mosquitto__packet* %323, %struct.mqtt5__property* %324, i1 zeroext false), !dbg !716
  %326 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !717
  %327 = load %struct.mqtt5__property*, %struct.mqtt5__property** %23, align 8, !dbg !718
  %328 = call i32 @property__write_all(%struct.mosquitto__packet* %326, %struct.mqtt5__property* %327, i1 zeroext false), !dbg !719
  br label %329, !dbg !720

329:                                              ; preds = %319, %310
  call void @mosquitto_property_free_all(%struct.mqtt5__property** %23), !dbg !721
  %330 = load i8*, i8** %16, align 8, !dbg !722
  %331 = icmp ne i8* %330, null, !dbg !722
  br i1 %331, label %332, label %338, !dbg !724

332:                                              ; preds = %329
  %333 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !725
  %334 = load i8*, i8** %16, align 8, !dbg !727
  %335 = load i8*, i8** %16, align 8, !dbg !728
  %336 = call i64 @strlen(i8* %335) #9, !dbg !729
  %337 = trunc i64 %336 to i16, !dbg !729
  call void @packet__write_string(%struct.mosquitto__packet* %333, i8* %334, i16 zeroext %337), !dbg !730
  br label %340, !dbg !731

338:                                              ; preds = %329
  %339 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !732
  call void @packet__write_uint16(%struct.mosquitto__packet* %339, i16 zeroext 0), !dbg !734
  br label %340

340:                                              ; preds = %338, %332
  %341 = load i8, i8* %12, align 1, !dbg !735
  %342 = icmp ne i8 %341, 0, !dbg !735
  br i1 %342, label %343, label %386, !dbg !737

343:                                              ; preds = %340
  %344 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !738
  %345 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %344, i32 0, i32 3, !dbg !741
  %346 = load i32, i32* %345, align 4, !dbg !741
  %347 = icmp eq i32 %346, 5, !dbg !742
  br i1 %347, label %348, label %356, !dbg !743

348:                                              ; preds = %343
  %349 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !744
  %350 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !746
  %351 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %350, i32 0, i32 17, !dbg !747
  %352 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %351, align 8, !dbg !747
  %353 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %352, i32 0, i32 2, !dbg !748
  %354 = load %struct.mqtt5__property*, %struct.mqtt5__property** %353, align 8, !dbg !748
  %355 = call i32 @property__write_all(%struct.mosquitto__packet* %349, %struct.mqtt5__property* %354, i1 zeroext true), !dbg !749
  br label %356, !dbg !750

356:                                              ; preds = %348, %343
  %357 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !751
  %358 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !752
  %359 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %358, i32 0, i32 17, !dbg !753
  %360 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %359, align 8, !dbg !753
  %361 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %360, i32 0, i32 6, !dbg !754
  %362 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %361, i32 0, i32 1, !dbg !755
  %363 = load i8*, i8** %362, align 8, !dbg !755
  %364 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !756
  %365 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %364, i32 0, i32 17, !dbg !757
  %366 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %365, align 8, !dbg !757
  %367 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %366, i32 0, i32 6, !dbg !758
  %368 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %367, i32 0, i32 1, !dbg !759
  %369 = load i8*, i8** %368, align 8, !dbg !759
  %370 = call i64 @strlen(i8* %369) #9, !dbg !760
  %371 = trunc i64 %370 to i16, !dbg !760
  call void @packet__write_string(%struct.mosquitto__packet* %357, i8* %363, i16 zeroext %371), !dbg !761
  %372 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !762
  %373 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !763
  %374 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %373, i32 0, i32 17, !dbg !764
  %375 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %374, align 8, !dbg !764
  %376 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %375, i32 0, i32 6, !dbg !765
  %377 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %376, i32 0, i32 2, !dbg !766
  %378 = load i8*, i8** %377, align 8, !dbg !766
  %379 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !767
  %380 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %379, i32 0, i32 17, !dbg !768
  %381 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %380, align 8, !dbg !768
  %382 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %381, i32 0, i32 6, !dbg !769
  %383 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %382, i32 0, i32 3, !dbg !770
  %384 = load i32, i32* %383, align 8, !dbg !770
  %385 = trunc i32 %384 to i16, !dbg !767
  call void @packet__write_string(%struct.mosquitto__packet* %372, i8* %378, i16 zeroext %385), !dbg !771
  br label %386, !dbg !772

386:                                              ; preds = %356, %340
  %387 = load i8*, i8** %17, align 8, !dbg !773
  %388 = icmp ne i8* %387, null, !dbg !773
  br i1 %388, label %389, label %395, !dbg !775

389:                                              ; preds = %386
  %390 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !776
  %391 = load i8*, i8** %17, align 8, !dbg !778
  %392 = load i8*, i8** %17, align 8, !dbg !779
  %393 = call i64 @strlen(i8* %392) #9, !dbg !780
  %394 = trunc i64 %393 to i16, !dbg !780
  call void @packet__write_string(%struct.mosquitto__packet* %390, i8* %391, i16 zeroext %394), !dbg !781
  br label %395, !dbg !782

395:                                              ; preds = %389, %386
  %396 = load i8*, i8** %18, align 8, !dbg !783
  %397 = icmp ne i8* %396, null, !dbg !783
  br i1 %397, label %398, label %404, !dbg !785

398:                                              ; preds = %395
  %399 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !786
  %400 = load i8*, i8** %18, align 8, !dbg !788
  %401 = load i8*, i8** %18, align 8, !dbg !789
  %402 = call i64 @strlen(i8* %401) #9, !dbg !790
  %403 = trunc i64 %402 to i16, !dbg !790
  call void @packet__write_string(%struct.mosquitto__packet* %399, i8* %400, i16 zeroext %403), !dbg !791
  br label %404, !dbg !792

404:                                              ; preds = %398, %395
  %405 = load i16, i16* %7, align 2, !dbg !793
  %406 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !794
  %407 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %406, i32 0, i32 8, !dbg !795
  store i16 %405, i16* %407, align 8, !dbg !796
  %408 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !797
  %409 = load i8*, i8** %16, align 8, !dbg !798
  %410 = call i32 (%struct.mosquitto*, i32, i8*, ...) @log__printf(%struct.mosquitto* %408, i32 16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), i8* %409), !dbg !799
  %411 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !800
  %412 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !801
  %413 = call i32 @packet__queue(%struct.mosquitto* %411, %struct.mosquitto__packet* %412), !dbg !802
  store i32 %413, i32* %5, align 4, !dbg !803
  br label %414, !dbg !803

414:                                              ; preds = %404, %240, %198, %116, %108, %67, %40
  %415 = load i32, i32* %5, align 4, !dbg !804
  ret i32 %415, !dbg !804
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare %struct.mqtt5__property* @mosquitto_property_read_int16(%struct.mqtt5__property*, i32, i16*, i1 zeroext) #4

declare i32 @mosquitto_property_add_int16(%struct.mqtt5__property**, i32, i16 zeroext) #4

declare i32 @property__get_length_all(%struct.mqtt5__property*) #4

declare i32 @packet__varint_bytes(i32) #4

declare i8* @mosquitto__calloc(i64, i64) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @packet__alloc(%struct.mosquitto__packet*) #4

declare void @mosquitto__free(i8*) #4

declare void @packet__write_string(%struct.mosquitto__packet*, i8*, i16 zeroext) #4

declare void @packet__write_byte(%struct.mosquitto__packet*, i8 zeroext) #4

declare void @packet__write_uint16(%struct.mosquitto__packet*, i16 zeroext) #4

declare i32 @packet__write_varint(%struct.mosquitto__packet*, i32) #4

declare i32 @property__write_all(%struct.mosquitto__packet*, %struct.mqtt5__property*, i1 zeroext) #4

declare void @mosquitto_property_free_all(%struct.mqtt5__property**) #4

declare i32 @log__printf(%struct.mosquitto*, i32, i8*, ...) #4

declare i32 @packet__queue(%struct.mosquitto*, %struct.mosquitto__packet*) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !112)
!1 = !DIFile(filename: "send_connect.c", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/lib")
!2 = !{!3, !11, !34, !48, !82}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mosquitto__protocol", file: !4, line: 117, size: 32, elements: !5)
!4 = !DIFile(filename: "./mosquitto_internal.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/lib")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "mosq_p_invalid", value: 0)
!7 = !DIEnumerator(name: "mosq_p_mqtt31", value: 1)
!8 = !DIEnumerator(name: "mosq_p_mqtt311", value: 2)
!9 = !DIEnumerator(name: "mosq_p_mqtts", value: 3)
!10 = !DIEnumerator(name: "mosq_p_mqtt5", value: 5)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mosquitto_client_state", file: !4, line: 93, size: 32, elements: !12)
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!13 = !DIEnumerator(name: "mosq_cs_new", value: 0)
!14 = !DIEnumerator(name: "mosq_cs_connected", value: 1)
!15 = !DIEnumerator(name: "mosq_cs_disconnecting", value: 2)
!16 = !DIEnumerator(name: "mosq_cs_active", value: 3)
!17 = !DIEnumerator(name: "mosq_cs_connect_pending", value: 4)
!18 = !DIEnumerator(name: "mosq_cs_connect_srv", value: 5)
!19 = !DIEnumerator(name: "mosq_cs_disconnect_ws", value: 6)
!20 = !DIEnumerator(name: "mosq_cs_disconnected", value: 7)
!21 = !DIEnumerator(name: "mosq_cs_socks5_new", value: 8)
!22 = !DIEnumerator(name: "mosq_cs_socks5_start", value: 9)
!23 = !DIEnumerator(name: "mosq_cs_socks5_request", value: 10)
!24 = !DIEnumerator(name: "mosq_cs_socks5_reply", value: 11)
!25 = !DIEnumerator(name: "mosq_cs_socks5_auth_ok", value: 12)
!26 = !DIEnumerator(name: "mosq_cs_socks5_userpass_reply", value: 13)
!27 = !DIEnumerator(name: "mosq_cs_socks5_send_userpass", value: 14)
!28 = !DIEnumerator(name: "mosq_cs_expiring", value: 15)
!29 = !DIEnumerator(name: "mosq_cs_duplicate", value: 17)
!30 = !DIEnumerator(name: "mosq_cs_disconnect_with_will", value: 18)
!31 = !DIEnumerator(name: "mosq_cs_disused", value: 19)
!32 = !DIEnumerator(name: "mosq_cs_authenticating", value: 20)
!33 = !DIEnumerator(name: "mosq_cs_reauthenticating", value: 21)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mosquitto_msg_state", file: !4, line: 78, size: 32, elements: !35)
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!36 = !DIEnumerator(name: "mosq_ms_invalid", value: 0)
!37 = !DIEnumerator(name: "mosq_ms_publish_qos0", value: 1)
!38 = !DIEnumerator(name: "mosq_ms_publish_qos1", value: 2)
!39 = !DIEnumerator(name: "mosq_ms_wait_for_puback", value: 3)
!40 = !DIEnumerator(name: "mosq_ms_publish_qos2", value: 4)
!41 = !DIEnumerator(name: "mosq_ms_wait_for_pubrec", value: 5)
!42 = !DIEnumerator(name: "mosq_ms_resend_pubrel", value: 6)
!43 = !DIEnumerator(name: "mosq_ms_wait_for_pubrel", value: 7)
!44 = !DIEnumerator(name: "mosq_ms_resend_pubcomp", value: 8)
!45 = !DIEnumerator(name: "mosq_ms_wait_for_pubcomp", value: 9)
!46 = !DIEnumerator(name: "mosq_ms_send_pubrec", value: 10)
!47 = !DIEnumerator(name: "mosq_ms_queued", value: 11)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mosq_err_t", file: !49, line: 69, size: 32, elements: !50)
!49 = !DIFile(filename: "./mosquitto.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/lib")
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81}
!51 = !DIEnumerator(name: "MOSQ_ERR_AUTH_CONTINUE", value: -4)
!52 = !DIEnumerator(name: "MOSQ_ERR_NO_SUBSCRIBERS", value: -3)
!53 = !DIEnumerator(name: "MOSQ_ERR_SUB_EXISTS", value: -2)
!54 = !DIEnumerator(name: "MOSQ_ERR_CONN_PENDING", value: -1)
!55 = !DIEnumerator(name: "MOSQ_ERR_SUCCESS", value: 0)
!56 = !DIEnumerator(name: "MOSQ_ERR_NOMEM", value: 1)
!57 = !DIEnumerator(name: "MOSQ_ERR_PROTOCOL", value: 2)
!58 = !DIEnumerator(name: "MOSQ_ERR_INVAL", value: 3)
!59 = !DIEnumerator(name: "MOSQ_ERR_NO_CONN", value: 4)
!60 = !DIEnumerator(name: "MOSQ_ERR_CONN_REFUSED", value: 5)
!61 = !DIEnumerator(name: "MOSQ_ERR_NOT_FOUND", value: 6)
!62 = !DIEnumerator(name: "MOSQ_ERR_CONN_LOST", value: 7)
!63 = !DIEnumerator(name: "MOSQ_ERR_TLS", value: 8)
!64 = !DIEnumerator(name: "MOSQ_ERR_PAYLOAD_SIZE", value: 9)
!65 = !DIEnumerator(name: "MOSQ_ERR_NOT_SUPPORTED", value: 10)
!66 = !DIEnumerator(name: "MOSQ_ERR_AUTH", value: 11)
!67 = !DIEnumerator(name: "MOSQ_ERR_ACL_DENIED", value: 12)
!68 = !DIEnumerator(name: "MOSQ_ERR_UNKNOWN", value: 13)
!69 = !DIEnumerator(name: "MOSQ_ERR_ERRNO", value: 14)
!70 = !DIEnumerator(name: "MOSQ_ERR_EAI", value: 15)
!71 = !DIEnumerator(name: "MOSQ_ERR_PROXY", value: 16)
!72 = !DIEnumerator(name: "MOSQ_ERR_PLUGIN_DEFER", value: 17)
!73 = !DIEnumerator(name: "MOSQ_ERR_MALFORMED_UTF8", value: 18)
!74 = !DIEnumerator(name: "MOSQ_ERR_KEEPALIVE", value: 19)
!75 = !DIEnumerator(name: "MOSQ_ERR_LOOKUP", value: 20)
!76 = !DIEnumerator(name: "MOSQ_ERR_MALFORMED_PACKET", value: 21)
!77 = !DIEnumerator(name: "MOSQ_ERR_DUPLICATE_PROPERTY", value: 22)
!78 = !DIEnumerator(name: "MOSQ_ERR_TLS_HANDSHAKE", value: 23)
!79 = !DIEnumerator(name: "MOSQ_ERR_QOS_NOT_SUPPORTED", value: 24)
!80 = !DIEnumerator(name: "MOSQ_ERR_OVERSIZE_PACKET", value: 25)
!81 = !DIEnumerator(name: "MOSQ_ERR_OCSP", value: 26)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mqtt5_property", file: !83, line: 108, size: 32, elements: !84)
!83 = !DIFile(filename: "./mqtt_protocol.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/lib")
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!85 = !DIEnumerator(name: "MQTT_PROP_PAYLOAD_FORMAT_INDICATOR", value: 1)
!86 = !DIEnumerator(name: "MQTT_PROP_MESSAGE_EXPIRY_INTERVAL", value: 2)
!87 = !DIEnumerator(name: "MQTT_PROP_CONTENT_TYPE", value: 3)
!88 = !DIEnumerator(name: "MQTT_PROP_RESPONSE_TOPIC", value: 8)
!89 = !DIEnumerator(name: "MQTT_PROP_CORRELATION_DATA", value: 9)
!90 = !DIEnumerator(name: "MQTT_PROP_SUBSCRIPTION_IDENTIFIER", value: 11)
!91 = !DIEnumerator(name: "MQTT_PROP_SESSION_EXPIRY_INTERVAL", value: 17)
!92 = !DIEnumerator(name: "MQTT_PROP_ASSIGNED_CLIENT_IDENTIFIER", value: 18)
!93 = !DIEnumerator(name: "MQTT_PROP_SERVER_KEEP_ALIVE", value: 19)
!94 = !DIEnumerator(name: "MQTT_PROP_AUTHENTICATION_METHOD", value: 21)
!95 = !DIEnumerator(name: "MQTT_PROP_AUTHENTICATION_DATA", value: 22)
!96 = !DIEnumerator(name: "MQTT_PROP_REQUEST_PROBLEM_INFORMATION", value: 23)
!97 = !DIEnumerator(name: "MQTT_PROP_WILL_DELAY_INTERVAL", value: 24)
!98 = !DIEnumerator(name: "MQTT_PROP_REQUEST_RESPONSE_INFORMATION", value: 25)
!99 = !DIEnumerator(name: "MQTT_PROP_RESPONSE_INFORMATION", value: 26)
!100 = !DIEnumerator(name: "MQTT_PROP_SERVER_REFERENCE", value: 28)
!101 = !DIEnumerator(name: "MQTT_PROP_REASON_STRING", value: 31)
!102 = !DIEnumerator(name: "MQTT_PROP_RECEIVE_MAXIMUM", value: 33)
!103 = !DIEnumerator(name: "MQTT_PROP_TOPIC_ALIAS_MAXIMUM", value: 34)
!104 = !DIEnumerator(name: "MQTT_PROP_TOPIC_ALIAS", value: 35)
!105 = !DIEnumerator(name: "MQTT_PROP_MAXIMUM_QOS", value: 36)
!106 = !DIEnumerator(name: "MQTT_PROP_RETAIN_AVAILABLE", value: 37)
!107 = !DIEnumerator(name: "MQTT_PROP_USER_PROPERTY", value: 38)
!108 = !DIEnumerator(name: "MQTT_PROP_MAXIMUM_PACKET_SIZE", value: 39)
!109 = !DIEnumerator(name: "MQTT_PROP_WILDCARD_SUB_AVAILABLE", value: 40)
!110 = !DIEnumerator(name: "MQTT_PROP_SUBSCRIPTION_ID_AVAILABLE", value: 41)
!111 = !DIEnumerator(name: "MQTT_PROP_SHARED_SUB_AVAILABLE", value: 42)
!112 = !{!113, !114}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!117 = !{i32 2, !"Dwarf Version", i32 4}
!118 = !{i32 2, !"Debug Info Version", i32 3}
!119 = !{i32 1, !"wchar_size", i32 4}
!120 = !{i32 7, !"PIC Level", i32 2}
!121 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!122 = distinct !DISubprogram(name: "simple_encrypt", scope: !1, file: !1, line: 37, type: !123, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !126)
!123 = !DISubroutineType(types: !124)
!124 = !{!125, !125}
!125 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!126 = !{}
!127 = !DILocalVariable(name: "val", arg: 1, scope: !122, file: !1, line: 37, type: !125)
!128 = !DILocation(line: 37, column: 24, scope: !122)
!129 = !DILocalVariable(name: "key", scope: !122, file: !1, line: 38, type: !125)
!130 = !DILocation(line: 38, column: 6, scope: !122)
!131 = !DILocalVariable(name: "encrypted", scope: !122, file: !1, line: 40, type: !125)
!132 = !DILocation(line: 40, column: 6, scope: !122)
!133 = !DILocation(line: 40, column: 18, scope: !122)
!134 = !DILocation(line: 40, column: 24, scope: !122)
!135 = !DILocation(line: 40, column: 22, scope: !122)
!136 = !DILocation(line: 42, column: 9, scope: !122)
!137 = !DILocation(line: 42, column: 2, scope: !122)
!138 = distinct !DISubprogram(name: "change_static_value", scope: !1, file: !1, line: 46, type: !123, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !126)
!139 = !DILocalVariable(name: "static_value", arg: 1, scope: !138, file: !1, line: 46, type: !125)
!140 = !DILocation(line: 46, column: 29, scope: !138)
!141 = !DILocalVariable(name: "nonce", scope: !138, file: !1, line: 47, type: !142)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 128, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 4)
!145 = !DILocation(line: 47, column: 6, scope: !138)
!146 = !DILocalVariable(name: "rawtime", scope: !138, file: !1, line: 48, type: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !148, line: 7, baseType: !149)
!148 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/lib")
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !150, line: 148, baseType: !151)
!150 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/lib")
!151 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!152 = !DILocation(line: 48, column: 9, scope: !138)
!153 = !DILocalVariable(name: "ptm", scope: !138, file: !1, line: 49, type: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !156, line: 7, size: 448, elements: !157)
!156 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/lib")
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !155, file: !156, line: 9, baseType: !125, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !155, file: !156, line: 10, baseType: !125, size: 32, offset: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !155, file: !156, line: 11, baseType: !125, size: 32, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !155, file: !156, line: 12, baseType: !125, size: 32, offset: 96)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !155, file: !156, line: 13, baseType: !125, size: 32, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !155, file: !156, line: 14, baseType: !125, size: 32, offset: 160)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !155, file: !156, line: 15, baseType: !125, size: 32, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !155, file: !156, line: 16, baseType: !125, size: 32, offset: 224)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !155, file: !156, line: 17, baseType: !125, size: 32, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !155, file: !156, line: 20, baseType: !151, size: 64, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !155, file: !156, line: 21, baseType: !114, size: 64, offset: 384)
!169 = !DILocation(line: 49, column: 17, scope: !138)
!170 = !DILocation(line: 50, column: 2, scope: !138)
!171 = !DILocation(line: 51, column: 8, scope: !138)
!172 = !DILocation(line: 51, column: 6, scope: !138)
!173 = !DILocation(line: 53, column: 7, scope: !174)
!174 = distinct !DILexicalBlock(scope: !138, file: !1, line: 53, column: 6)
!175 = !DILocation(line: 53, column: 12, scope: !174)
!176 = !DILocation(line: 53, column: 20, scope: !174)
!177 = !DILocation(line: 53, column: 24, scope: !174)
!178 = !DILocation(line: 53, column: 6, scope: !138)
!179 = !DILocation(line: 54, column: 18, scope: !180)
!180 = distinct !DILexicalBlock(scope: !174, file: !1, line: 53, column: 30)
!181 = !DILocation(line: 54, column: 30, scope: !180)
!182 = !DILocation(line: 54, column: 35, scope: !180)
!183 = !DILocation(line: 54, column: 33, scope: !180)
!184 = !DILocation(line: 54, column: 16, scope: !180)
!185 = !DILocation(line: 55, column: 2, scope: !180)
!186 = !DILocation(line: 56, column: 18, scope: !187)
!187 = distinct !DILexicalBlock(scope: !174, file: !1, line: 55, column: 9)
!188 = !DILocation(line: 56, column: 30, scope: !187)
!189 = !DILocation(line: 56, column: 35, scope: !187)
!190 = !DILocation(line: 56, column: 33, scope: !187)
!191 = !DILocation(line: 56, column: 16, scope: !187)
!192 = !DILocation(line: 58, column: 9, scope: !138)
!193 = !DILocation(line: 58, column: 2, scope: !138)
!194 = distinct !DISubprogram(name: "send__connect", scope: !1, file: !1, line: 61, type: !195, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !126)
!195 = !DISubroutineType(types: !196)
!196 = !{!125, !197, !211, !279, !337}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto", file: !4, line: 207, size: 3456, elements: !199)
!199 = !{!200, !202, !203, !204, !205, !207, !208, !209, !210, !215, !216, !217, !218, !219, !220, !245, !246, !247, !293, !299, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !324, !325, !329, !333, !339, !340, !344, !345, !346, !352, !356, !362, !366, !367, !368, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !198, file: !4, line: 208, baseType: !201, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "mosq_sock_t", file: !4, line: 70, baseType: !125)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sockpairR", scope: !198, file: !4, line: 210, baseType: !201, size: 32, offset: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sockpairW", scope: !198, file: !4, line: 210, baseType: !201, size: 32, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !198, file: !4, line: 215, baseType: !3, size: 32, offset: 96)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !198, file: !4, line: 216, baseType: !206, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !198, file: !4, line: 217, baseType: !206, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !198, file: !4, line: 218, baseType: !206, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !198, file: !4, line: 219, baseType: !206, size: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !198, file: !4, line: 220, baseType: !211, size: 16, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !212, line: 25, baseType: !213)
!212 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/lib")
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !150, line: 39, baseType: !214)
!214 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "last_mid", scope: !198, file: !4, line: 221, baseType: !211, size: 16, offset: 400)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !198, file: !4, line: 222, baseType: !11, size: 32, offset: 416)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "last_msg_in", scope: !198, file: !4, line: 223, baseType: !147, size: 64, offset: 448)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "next_msg_out", scope: !198, file: !4, line: 224, baseType: !147, size: 64, offset: 512)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "ping_t", scope: !198, file: !4, line: 225, baseType: !147, size: 64, offset: 576)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "in_packet", scope: !198, file: !4, line: 226, baseType: !221, size: 320, offset: 640)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__packet", file: !4, line: 150, size: 320, elements: !222)
!222 = !{!223, !228, !230, !234, !235, !236, !237, !238, !239, !240}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !221, file: !4, line: 151, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !212, line: 24, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !150, line: 37, baseType: !227)
!227 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !221, file: !4, line: 152, baseType: !229, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "remaining_mult", scope: !221, file: !4, line: 153, baseType: !231, size: 32, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !212, line: 26, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !150, line: 41, baseType: !233)
!233 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "remaining_length", scope: !221, file: !4, line: 154, baseType: !231, size: 32, offset: 160)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "packet_length", scope: !221, file: !4, line: 155, baseType: !231, size: 32, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "to_process", scope: !221, file: !4, line: 156, baseType: !231, size: 32, offset: 224)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !221, file: !4, line: 157, baseType: !231, size: 32, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "mid", scope: !221, file: !4, line: 158, baseType: !211, size: 16, offset: 288)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !221, file: !4, line: 159, baseType: !225, size: 8, offset: 304)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "remaining_count", scope: !221, file: !4, line: 160, baseType: !241, size: 8, offset: 312)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !242, line: 24, baseType: !243)
!242 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/lib")
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !150, line: 36, baseType: !244)
!244 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "current_out_packet", scope: !198, file: !4, line: 227, baseType: !229, size: 64, offset: 960)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "out_packet", scope: !198, file: !4, line: 228, baseType: !229, size: 64, offset: 1024)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "will", scope: !198, file: !4, line: 229, baseType: !248, size: 64, offset: 1088)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_message_all", file: !4, line: 163, size: 704, elements: !250)
!250 = !{!251, !252, !253, !280, !281, !282, !283, !292}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !249, file: !4, line: 164, baseType: !248, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !249, file: !4, line: 165, baseType: !248, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !249, file: !4, line: 166, baseType: !254, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "mosquitto_property", file: !49, line: 135, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt5__property", file: !257, line: 27, size: 384, elements: !258)
!257 = !DIFile(filename: "./property_mosq.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/lib")
!258 = !{!259, !261, !274, !275, !278}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !257, line: 28, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !256, file: !257, line: 36, baseType: !262, size: 128, offset: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !256, file: !257, line: 29, size: 128, elements: !263)
!263 = !{!264, !265, !266, !267, !268, !273}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "i8", scope: !262, file: !257, line: 30, baseType: !225, size: 8)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "i16", scope: !262, file: !257, line: 31, baseType: !211, size: 16)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "i32", scope: !262, file: !257, line: 32, baseType: !231, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "varint", scope: !262, file: !257, line: 33, baseType: !231, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "bin", scope: !262, file: !257, line: 34, baseType: !269, size: 128)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt__string", file: !257, line: 22, size: 128, elements: !270)
!270 = !{!271, !272}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !269, file: !257, line: 23, baseType: !206, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !269, file: !257, line: 24, baseType: !125, size: 32, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !262, file: !257, line: 35, baseType: !269, size: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !256, file: !257, line: 37, baseType: !269, size: 128, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !256, file: !257, line: 38, baseType: !276, size: 32, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !242, line: 26, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !150, line: 40, baseType: !125)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "client_generated", scope: !256, file: !257, line: 39, baseType: !279, size: 8, offset: 352)
!279 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !249, file: !4, line: 167, baseType: !147, size: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !249, file: !4, line: 169, baseType: !34, size: 32, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !249, file: !4, line: 170, baseType: !279, size: 8, offset: 288)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !249, file: !4, line: 171, baseType: !284, size: 320, offset: 320)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_message", file: !49, line: 125, size: 320, elements: !285)
!285 = !{!286, !287, !288, !289, !290, !291}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mid", scope: !284, file: !49, line: 126, baseType: !125, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !284, file: !49, line: 127, baseType: !206, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !284, file: !49, line: 128, baseType: !113, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "payloadlen", scope: !284, file: !49, line: 129, baseType: !125, size: 32, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !284, file: !49, line: 130, baseType: !125, size: 32, offset: 224)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "retain", scope: !284, file: !49, line: 131, baseType: !279, size: 8, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_interval", scope: !249, file: !4, line: 172, baseType: !231, size: 32, offset: 640)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "aliases", scope: !198, file: !4, line: 230, baseType: !294, size: 64, offset: 1152)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__alias", file: !4, line: 139, size: 128, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !295, file: !4, line: 140, baseType: !206, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !295, file: !4, line: 141, baseType: !211, size: 16, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "will_delay_entry", scope: !198, file: !4, line: 231, baseType: !300, size: 64, offset: 1216)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "will_delay_list", file: !4, line: 182, size: 192, elements: !302)
!302 = !{!303, !304, !305}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !301, file: !4, line: 183, baseType: !197, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !301, file: !4, line: 184, baseType: !300, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !4, line: 185, baseType: !300, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "maximum_packet_size", scope: !198, file: !4, line: 232, baseType: !231, size: 32, offset: 1280)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "alias_count", scope: !198, file: !4, line: 233, baseType: !125, size: 32, offset: 1312)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "will_delay_interval", scope: !198, file: !4, line: 234, baseType: !231, size: 32, offset: 1344)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "will_delay_time", scope: !198, file: !4, line: 235, baseType: !147, size: 64, offset: 1408)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "want_write", scope: !198, file: !4, line: 257, baseType: !279, size: 8, offset: 1472)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "want_connect", scope: !198, file: !4, line: 258, baseType: !279, size: 8, offset: 1480)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "clean_start", scope: !198, file: !4, line: 269, baseType: !279, size: 8, offset: 1488)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "session_expiry_interval", scope: !198, file: !4, line: 270, baseType: !231, size: 32, offset: 1504)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "session_expiry_time", scope: !198, file: !4, line: 271, baseType: !147, size: 64, offset: 1536)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "userdata", scope: !198, file: !4, line: 305, baseType: !113, size: 64, offset: 1600)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "in_callback", scope: !198, file: !4, line: 306, baseType: !279, size: 8, offset: 1664)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "msgs_in", scope: !198, file: !4, line: 307, baseType: !318, size: 192, offset: 1728)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_msg_data", file: !4, line: 188, size: 192, elements: !319)
!319 = !{!320, !321, !322, !323}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "inflight", scope: !318, file: !4, line: 197, baseType: !248, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "queue_len", scope: !318, file: !4, line: 198, baseType: !125, size: 32, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "inflight_quota", scope: !318, file: !4, line: 203, baseType: !125, size: 32, offset: 96)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "inflight_maximum", scope: !318, file: !4, line: 204, baseType: !211, size: 16, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "msgs_out", scope: !198, file: !4, line: 308, baseType: !318, size: 192, offset: 1920)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "on_connect", scope: !198, file: !4, line: 309, baseType: !326, size: 64, offset: 2112)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !197, !113, !125}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "on_connect_with_flags", scope: !198, file: !4, line: 310, baseType: !330, size: 64, offset: 2176)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !197, !113, !125, !125}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "on_connect_v5", scope: !198, file: !4, line: 311, baseType: !334, size: 64, offset: 2240)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !197, !113, !125, !125, !337}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "on_disconnect", scope: !198, file: !4, line: 312, baseType: !326, size: 64, offset: 2304)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "on_disconnect_v5", scope: !198, file: !4, line: 313, baseType: !341, size: 64, offset: 2368)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !197, !113, !125, !337}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "on_publish", scope: !198, file: !4, line: 314, baseType: !326, size: 64, offset: 2432)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "on_publish_v5", scope: !198, file: !4, line: 315, baseType: !334, size: 64, offset: 2496)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "on_message", scope: !198, file: !4, line: 316, baseType: !347, size: 64, offset: 2560)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !197, !113, !350}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "on_message_v5", scope: !198, file: !4, line: 317, baseType: !353, size: 64, offset: 2624)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !197, !113, !350, !337}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "on_subscribe", scope: !198, file: !4, line: 318, baseType: !357, size: 64, offset: 2688)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !197, !113, !125, !125, !360}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "on_subscribe_v5", scope: !198, file: !4, line: 319, baseType: !363, size: 64, offset: 2752)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !197, !113, !125, !125, !360, !337}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "on_unsubscribe", scope: !198, file: !4, line: 320, baseType: !326, size: 64, offset: 2816)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "on_unsubscribe_v5", scope: !198, file: !4, line: 321, baseType: !341, size: 64, offset: 2880)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "on_log", scope: !198, file: !4, line: 322, baseType: !369, size: 64, offset: 2944)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !197, !113, !125, !114}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !198, file: !4, line: 324, baseType: !206, size: 64, offset: 3008)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !198, file: !4, line: 325, baseType: !125, size: 32, offset: 3072)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "bind_address", scope: !198, file: !4, line: 326, baseType: !206, size: 64, offset: 3136)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "reconnects", scope: !198, file: !4, line: 327, baseType: !233, size: 32, offset: 3200)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_delay", scope: !198, file: !4, line: 328, baseType: !233, size: 32, offset: 3232)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_delay_max", scope: !198, file: !4, line: 329, baseType: !233, size: 32, offset: 3264)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_exponential_backoff", scope: !198, file: !4, line: 330, baseType: !279, size: 8, offset: 3296)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !198, file: !4, line: 331, baseType: !116, size: 8, offset: 3304)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "out_packet_last", scope: !198, file: !4, line: 332, baseType: !229, size: 64, offset: 3328)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "maximum_qos", scope: !198, file: !4, line: 337, baseType: !225, size: 8, offset: 3392)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "nonce", scope: !198, file: !4, line: 348, baseType: !125, size: 32, offset: 3424)
!383 = !DILocalVariable(name: "mosq", arg: 1, scope: !194, file: !1, line: 61, type: !197)
!384 = !DILocation(line: 61, column: 37, scope: !194)
!385 = !DILocalVariable(name: "keepalive", arg: 2, scope: !194, file: !1, line: 61, type: !211)
!386 = !DILocation(line: 61, column: 52, scope: !194)
!387 = !DILocalVariable(name: "clean_session", arg: 3, scope: !194, file: !1, line: 61, type: !279)
!388 = !DILocation(line: 61, column: 68, scope: !194)
!389 = !DILocalVariable(name: "properties", arg: 4, scope: !194, file: !1, line: 61, type: !337)
!390 = !DILocation(line: 61, column: 109, scope: !194)
!391 = !DILocalVariable(name: "packet", scope: !194, file: !1, line: 64, type: !229)
!392 = !DILocation(line: 64, column: 28, scope: !194)
!393 = !DILocalVariable(name: "payloadlen", scope: !194, file: !1, line: 65, type: !125)
!394 = !DILocation(line: 65, column: 6, scope: !194)
!395 = !DILocalVariable(name: "will", scope: !194, file: !1, line: 66, type: !225)
!396 = !DILocation(line: 66, column: 10, scope: !194)
!397 = !DILocalVariable(name: "byte", scope: !194, file: !1, line: 67, type: !225)
!398 = !DILocation(line: 67, column: 10, scope: !194)
!399 = !DILocalVariable(name: "rc", scope: !194, file: !1, line: 68, type: !125)
!400 = !DILocation(line: 68, column: 6, scope: !194)
!401 = !DILocalVariable(name: "version", scope: !194, file: !1, line: 69, type: !225)
!402 = !DILocation(line: 69, column: 10, scope: !194)
!403 = !DILocalVariable(name: "clientid", scope: !194, file: !1, line: 70, type: !206)
!404 = !DILocation(line: 70, column: 8, scope: !194)
!405 = !DILocalVariable(name: "username", scope: !194, file: !1, line: 70, type: !206)
!406 = !DILocation(line: 70, column: 19, scope: !194)
!407 = !DILocalVariable(name: "password", scope: !194, file: !1, line: 70, type: !206)
!408 = !DILocation(line: 70, column: 30, scope: !194)
!409 = !DILocalVariable(name: "headerlen", scope: !194, file: !1, line: 71, type: !125)
!410 = !DILocation(line: 71, column: 6, scope: !194)
!411 = !DILocalVariable(name: "proplen", scope: !194, file: !1, line: 72, type: !125)
!412 = !DILocation(line: 72, column: 6, scope: !194)
!413 = !DILocalVariable(name: "will_proplen", scope: !194, file: !1, line: 72, type: !125)
!414 = !DILocation(line: 72, column: 19, scope: !194)
!415 = !DILocalVariable(name: "varbytes", scope: !194, file: !1, line: 72, type: !125)
!416 = !DILocation(line: 72, column: 33, scope: !194)
!417 = !DILocalVariable(name: "local_props", scope: !194, file: !1, line: 73, type: !254)
!418 = !DILocation(line: 73, column: 22, scope: !194)
!419 = !DILocalVariable(name: "receive_maximum", scope: !194, file: !1, line: 74, type: !211)
!420 = !DILocation(line: 74, column: 11, scope: !194)
!421 = !DILocation(line: 76, column: 2, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !1, line: 76, column: 2)
!423 = distinct !DILexicalBlock(scope: !194, file: !1, line: 76, column: 2)
!424 = !DILocation(line: 76, column: 2, scope: !423)
!425 = !DILocation(line: 78, column: 5, scope: !426)
!426 = distinct !DILexicalBlock(scope: !194, file: !1, line: 78, column: 5)
!427 = !DILocation(line: 78, column: 11, scope: !426)
!428 = !DILocation(line: 78, column: 20, scope: !426)
!429 = !DILocation(line: 78, column: 37, scope: !426)
!430 = !DILocation(line: 78, column: 41, scope: !426)
!431 = !DILocation(line: 78, column: 47, scope: !426)
!432 = !DILocation(line: 78, column: 5, scope: !194)
!433 = !DILocation(line: 78, column: 51, scope: !426)
!434 = !DILocation(line: 91, column: 13, scope: !194)
!435 = !DILocation(line: 91, column: 19, scope: !194)
!436 = !DILocation(line: 91, column: 11, scope: !194)
!437 = !DILocation(line: 92, column: 13, scope: !194)
!438 = !DILocation(line: 92, column: 19, scope: !194)
!439 = !DILocation(line: 92, column: 11, scope: !194)
!440 = !DILocation(line: 93, column: 13, scope: !194)
!441 = !DILocation(line: 93, column: 19, scope: !194)
!442 = !DILocation(line: 93, column: 11, scope: !194)
!443 = !DILocation(line: 96, column: 5, scope: !444)
!444 = distinct !DILexicalBlock(scope: !194, file: !1, line: 96, column: 5)
!445 = !DILocation(line: 96, column: 11, scope: !444)
!446 = !DILocation(line: 96, column: 20, scope: !444)
!447 = !DILocation(line: 96, column: 5, scope: !194)
!448 = !DILocation(line: 98, column: 37, scope: !449)
!449 = distinct !DILexicalBlock(scope: !450, file: !1, line: 98, column: 6)
!450 = distinct !DILexicalBlock(scope: !444, file: !1, line: 96, column: 36)
!451 = !DILocation(line: 98, column: 7, scope: !449)
!452 = !DILocation(line: 98, column: 6, scope: !450)
!453 = !DILocation(line: 99, column: 79, scope: !454)
!454 = distinct !DILexicalBlock(scope: !449, file: !1, line: 98, column: 101)
!455 = !DILocation(line: 99, column: 85, scope: !454)
!456 = !DILocation(line: 99, column: 93, scope: !454)
!457 = !DILocation(line: 99, column: 9, scope: !454)
!458 = !DILocation(line: 99, column: 7, scope: !454)
!459 = !DILocation(line: 100, column: 7, scope: !460)
!460 = distinct !DILexicalBlock(scope: !454, file: !1, line: 100, column: 7)
!461 = !DILocation(line: 100, column: 7, scope: !454)
!462 = !DILocation(line: 100, column: 18, scope: !460)
!463 = !DILocation(line: 100, column: 11, scope: !460)
!464 = !DILocation(line: 101, column: 3, scope: !454)
!465 = !DILocation(line: 102, column: 37, scope: !466)
!466 = distinct !DILexicalBlock(scope: !449, file: !1, line: 101, column: 8)
!467 = !DILocation(line: 102, column: 4, scope: !466)
!468 = !DILocation(line: 102, column: 10, scope: !466)
!469 = !DILocation(line: 102, column: 18, scope: !466)
!470 = !DILocation(line: 102, column: 35, scope: !466)
!471 = !DILocation(line: 103, column: 35, scope: !466)
!472 = !DILocation(line: 103, column: 4, scope: !466)
!473 = !DILocation(line: 103, column: 10, scope: !466)
!474 = !DILocation(line: 103, column: 18, scope: !466)
!475 = !DILocation(line: 103, column: 33, scope: !466)
!476 = !DILocation(line: 106, column: 11, scope: !450)
!477 = !DILocation(line: 107, column: 13, scope: !450)
!478 = !DILocation(line: 108, column: 11, scope: !450)
!479 = !DILocation(line: 109, column: 39, scope: !450)
!480 = !DILocation(line: 109, column: 14, scope: !450)
!481 = !DILocation(line: 109, column: 11, scope: !450)
!482 = !DILocation(line: 110, column: 39, scope: !450)
!483 = !DILocation(line: 110, column: 14, scope: !450)
!484 = !DILocation(line: 110, column: 11, scope: !450)
!485 = !DILocation(line: 111, column: 35, scope: !450)
!486 = !DILocation(line: 111, column: 14, scope: !450)
!487 = !DILocation(line: 111, column: 12, scope: !450)
!488 = !DILocation(line: 112, column: 16, scope: !450)
!489 = !DILocation(line: 112, column: 26, scope: !450)
!490 = !DILocation(line: 112, column: 24, scope: !450)
!491 = !DILocation(line: 112, column: 13, scope: !450)
!492 = !DILocation(line: 113, column: 2, scope: !450)
!493 = !DILocation(line: 113, column: 11, scope: !494)
!494 = distinct !DILexicalBlock(scope: !444, file: !1, line: 113, column: 11)
!495 = !DILocation(line: 113, column: 17, scope: !494)
!496 = !DILocation(line: 113, column: 26, scope: !494)
!497 = !DILocation(line: 113, column: 11, scope: !444)
!498 = !DILocation(line: 114, column: 11, scope: !499)
!499 = distinct !DILexicalBlock(scope: !494, file: !1, line: 113, column: 44)
!500 = !DILocation(line: 115, column: 13, scope: !499)
!501 = !DILocation(line: 116, column: 2, scope: !499)
!502 = !DILocation(line: 116, column: 11, scope: !503)
!503 = distinct !DILexicalBlock(scope: !494, file: !1, line: 116, column: 11)
!504 = !DILocation(line: 116, column: 17, scope: !503)
!505 = !DILocation(line: 116, column: 26, scope: !503)
!506 = !DILocation(line: 116, column: 11, scope: !494)
!507 = !DILocation(line: 117, column: 11, scope: !508)
!508 = distinct !DILexicalBlock(scope: !503, file: !1, line: 116, column: 43)
!509 = !DILocation(line: 118, column: 13, scope: !508)
!510 = !DILocation(line: 119, column: 2, scope: !508)
!511 = !DILocation(line: 120, column: 3, scope: !512)
!512 = distinct !DILexicalBlock(scope: !503, file: !1, line: 119, column: 7)
!513 = !DILocation(line: 123, column: 11, scope: !194)
!514 = !DILocation(line: 123, column: 9, scope: !194)
!515 = !DILocation(line: 124, column: 6, scope: !516)
!516 = distinct !DILexicalBlock(scope: !194, file: !1, line: 124, column: 5)
!517 = !DILocation(line: 124, column: 5, scope: !194)
!518 = !DILocation(line: 124, column: 14, scope: !516)
!519 = !DILocation(line: 126, column: 5, scope: !520)
!520 = distinct !DILexicalBlock(scope: !194, file: !1, line: 126, column: 5)
!521 = !DILocation(line: 126, column: 5, scope: !194)
!522 = !DILocation(line: 127, column: 25, scope: !523)
!523 = distinct !DILexicalBlock(scope: !520, file: !1, line: 126, column: 14)
!524 = !DILocation(line: 127, column: 18, scope: !523)
!525 = !DILocation(line: 127, column: 17, scope: !523)
!526 = !DILocation(line: 127, column: 16, scope: !523)
!527 = !DILocation(line: 127, column: 14, scope: !523)
!528 = !DILocation(line: 128, column: 2, scope: !523)
!529 = !DILocation(line: 129, column: 14, scope: !530)
!530 = distinct !DILexicalBlock(scope: !520, file: !1, line: 128, column: 7)
!531 = !DILocation(line: 131, column: 5, scope: !532)
!532 = distinct !DILexicalBlock(scope: !194, file: !1, line: 131, column: 5)
!533 = !DILocation(line: 131, column: 11, scope: !532)
!534 = !DILocation(line: 131, column: 5, scope: !194)
!535 = !DILocation(line: 132, column: 8, scope: !536)
!536 = distinct !DILexicalBlock(scope: !532, file: !1, line: 131, column: 16)
!537 = !DILocation(line: 133, column: 3, scope: !538)
!538 = distinct !DILexicalBlock(scope: !539, file: !1, line: 133, column: 3)
!539 = distinct !DILexicalBlock(scope: !536, file: !1, line: 133, column: 3)
!540 = !DILocation(line: 133, column: 3, scope: !539)
!541 = !DILocation(line: 135, column: 26, scope: !536)
!542 = !DILocation(line: 135, column: 32, scope: !536)
!543 = !DILocation(line: 135, column: 38, scope: !536)
!544 = !DILocation(line: 135, column: 42, scope: !536)
!545 = !DILocation(line: 135, column: 19, scope: !536)
!546 = !DILocation(line: 135, column: 18, scope: !536)
!547 = !DILocation(line: 135, column: 49, scope: !536)
!548 = !DILocation(line: 135, column: 53, scope: !536)
!549 = !DILocation(line: 135, column: 59, scope: !536)
!550 = !DILocation(line: 135, column: 65, scope: !536)
!551 = !DILocation(line: 135, column: 69, scope: !536)
!552 = !DILocation(line: 135, column: 52, scope: !536)
!553 = !DILocation(line: 135, column: 14, scope: !536)
!554 = !DILocation(line: 136, column: 6, scope: !555)
!555 = distinct !DILexicalBlock(scope: !536, file: !1, line: 136, column: 6)
!556 = !DILocation(line: 136, column: 12, scope: !555)
!557 = !DILocation(line: 136, column: 21, scope: !555)
!558 = !DILocation(line: 136, column: 6, scope: !536)
!559 = !DILocation(line: 137, column: 44, scope: !560)
!560 = distinct !DILexicalBlock(scope: !555, file: !1, line: 136, column: 37)
!561 = !DILocation(line: 137, column: 50, scope: !560)
!562 = !DILocation(line: 137, column: 56, scope: !560)
!563 = !DILocation(line: 137, column: 19, scope: !560)
!564 = !DILocation(line: 137, column: 17, scope: !560)
!565 = !DILocation(line: 138, column: 36, scope: !560)
!566 = !DILocation(line: 138, column: 15, scope: !560)
!567 = !DILocation(line: 138, column: 13, scope: !560)
!568 = !DILocation(line: 139, column: 18, scope: !560)
!569 = !DILocation(line: 139, column: 33, scope: !560)
!570 = !DILocation(line: 139, column: 31, scope: !560)
!571 = !DILocation(line: 139, column: 15, scope: !560)
!572 = !DILocation(line: 140, column: 3, scope: !560)
!573 = !DILocation(line: 141, column: 2, scope: !536)
!574 = !DILocation(line: 146, column: 5, scope: !575)
!575 = distinct !DILexicalBlock(scope: !194, file: !1, line: 146, column: 5)
!576 = !DILocation(line: 146, column: 11, scope: !575)
!577 = !DILocation(line: 146, column: 20, scope: !575)
!578 = !DILocation(line: 146, column: 37, scope: !575)
!579 = !DILocation(line: 146, column: 40, scope: !575)
!580 = !DILocation(line: 146, column: 46, scope: !575)
!581 = !DILocation(line: 146, column: 55, scope: !575)
!582 = !DILocation(line: 146, column: 5, scope: !194)
!583 = !DILocation(line: 147, column: 6, scope: !584)
!584 = distinct !DILexicalBlock(scope: !585, file: !1, line: 147, column: 6)
!585 = distinct !DILexicalBlock(scope: !575, file: !1, line: 146, column: 73)
!586 = !DILocation(line: 147, column: 15, scope: !584)
!587 = !DILocation(line: 147, column: 23, scope: !584)
!588 = !DILocation(line: 147, column: 26, scope: !584)
!589 = !DILocation(line: 147, column: 35, scope: !584)
!590 = !DILocation(line: 147, column: 6, scope: !585)
!591 = !DILocation(line: 148, column: 4, scope: !592)
!592 = distinct !DILexicalBlock(scope: !584, file: !1, line: 147, column: 43)
!593 = !DILocation(line: 150, column: 2, scope: !585)
!594 = !DILocation(line: 152, column: 5, scope: !595)
!595 = distinct !DILexicalBlock(scope: !194, file: !1, line: 152, column: 5)
!596 = !DILocation(line: 152, column: 5, scope: !194)
!597 = !DILocation(line: 153, column: 26, scope: !598)
!598 = distinct !DILexicalBlock(scope: !595, file: !1, line: 152, column: 14)
!599 = !DILocation(line: 153, column: 19, scope: !598)
!600 = !DILocation(line: 153, column: 18, scope: !598)
!601 = !DILocation(line: 153, column: 14, scope: !598)
!602 = !DILocation(line: 154, column: 2, scope: !598)
!603 = !DILocation(line: 155, column: 5, scope: !604)
!604 = distinct !DILexicalBlock(scope: !194, file: !1, line: 155, column: 5)
!605 = !DILocation(line: 155, column: 5, scope: !194)
!606 = !DILocation(line: 156, column: 26, scope: !607)
!607 = distinct !DILexicalBlock(scope: !604, file: !1, line: 155, column: 14)
!608 = !DILocation(line: 156, column: 19, scope: !607)
!609 = !DILocation(line: 156, column: 18, scope: !607)
!610 = !DILocation(line: 156, column: 14, scope: !607)
!611 = !DILocation(line: 157, column: 2, scope: !607)
!612 = !DILocation(line: 159, column: 2, scope: !194)
!613 = !DILocation(line: 159, column: 10, scope: !194)
!614 = !DILocation(line: 159, column: 18, scope: !194)
!615 = !DILocation(line: 163, column: 29, scope: !194)
!616 = !DILocation(line: 163, column: 41, scope: !194)
!617 = !DILocation(line: 163, column: 39, scope: !194)
!618 = !DILocation(line: 163, column: 2, scope: !194)
!619 = !DILocation(line: 163, column: 10, scope: !194)
!620 = !DILocation(line: 163, column: 27, scope: !194)
!621 = !DILocation(line: 167, column: 49, scope: !194)
!622 = !DILocation(line: 167, column: 57, scope: !194)
!623 = !DILocation(line: 167, column: 29, scope: !194)
!624 = !DILocation(line: 167, column: 2, scope: !194)
!625 = !DILocation(line: 167, column: 10, scope: !194)
!626 = !DILocation(line: 167, column: 27, scope: !194)
!627 = !DILocation(line: 170, column: 21, scope: !194)
!628 = !DILocation(line: 170, column: 7, scope: !194)
!629 = !DILocation(line: 170, column: 5, scope: !194)
!630 = !DILocation(line: 171, column: 5, scope: !631)
!631 = distinct !DILexicalBlock(scope: !194, file: !1, line: 171, column: 5)
!632 = !DILocation(line: 171, column: 5, scope: !194)
!633 = !DILocation(line: 172, column: 19, scope: !634)
!634 = distinct !DILexicalBlock(scope: !631, file: !1, line: 171, column: 8)
!635 = !DILocation(line: 172, column: 3, scope: !634)
!636 = !DILocation(line: 173, column: 10, scope: !634)
!637 = !DILocation(line: 173, column: 3, scope: !634)
!638 = !DILocation(line: 177, column: 5, scope: !639)
!639 = distinct !DILexicalBlock(scope: !194, file: !1, line: 177, column: 5)
!640 = !DILocation(line: 177, column: 13, scope: !639)
!641 = !DILocation(line: 177, column: 5, scope: !194)
!642 = !DILocation(line: 178, column: 24, scope: !643)
!643 = distinct !DILexicalBlock(scope: !639, file: !1, line: 177, column: 34)
!644 = !DILocation(line: 178, column: 3, scope: !643)
!645 = !DILocation(line: 179, column: 2, scope: !643)
!646 = !DILocation(line: 180, column: 24, scope: !647)
!647 = distinct !DILexicalBlock(scope: !639, file: !1, line: 179, column: 7)
!648 = !DILocation(line: 180, column: 3, scope: !647)
!649 = !DILocation(line: 188, column: 21, scope: !194)
!650 = !DILocation(line: 188, column: 29, scope: !194)
!651 = !DILocation(line: 188, column: 2, scope: !194)
!652 = !DILocation(line: 189, column: 10, scope: !194)
!653 = !DILocation(line: 189, column: 23, scope: !194)
!654 = !DILocation(line: 189, column: 28, scope: !194)
!655 = !DILocation(line: 189, column: 9, scope: !194)
!656 = !DILocation(line: 189, column: 7, scope: !194)
!657 = !DILocation(line: 190, column: 5, scope: !658)
!658 = distinct !DILexicalBlock(scope: !194, file: !1, line: 190, column: 5)
!659 = !DILocation(line: 190, column: 5, scope: !194)
!660 = !DILocation(line: 191, column: 10, scope: !661)
!661 = distinct !DILexicalBlock(scope: !658, file: !1, line: 190, column: 10)
!662 = !DILocation(line: 191, column: 19, scope: !661)
!663 = !DILocation(line: 191, column: 25, scope: !661)
!664 = !DILocation(line: 191, column: 31, scope: !661)
!665 = !DILocation(line: 191, column: 35, scope: !661)
!666 = !DILocation(line: 191, column: 41, scope: !661)
!667 = !DILocation(line: 191, column: 46, scope: !661)
!668 = !DILocation(line: 191, column: 15, scope: !661)
!669 = !DILocation(line: 191, column: 55, scope: !661)
!670 = !DILocation(line: 191, column: 61, scope: !661)
!671 = !DILocation(line: 191, column: 67, scope: !661)
!672 = !DILocation(line: 191, column: 71, scope: !661)
!673 = !DILocation(line: 191, column: 74, scope: !661)
!674 = !DILocation(line: 191, column: 79, scope: !661)
!675 = !DILocation(line: 191, column: 51, scope: !661)
!676 = !DILocation(line: 191, column: 88, scope: !661)
!677 = !DILocation(line: 191, column: 92, scope: !661)
!678 = !DILocation(line: 191, column: 97, scope: !661)
!679 = !DILocation(line: 191, column: 84, scope: !661)
!680 = !DILocation(line: 191, column: 8, scope: !661)
!681 = !DILocation(line: 192, column: 2, scope: !661)
!682 = !DILocation(line: 193, column: 5, scope: !683)
!683 = distinct !DILexicalBlock(scope: !194, file: !1, line: 193, column: 5)
!684 = !DILocation(line: 193, column: 5, scope: !194)
!685 = !DILocation(line: 194, column: 10, scope: !686)
!686 = distinct !DILexicalBlock(scope: !683, file: !1, line: 193, column: 14)
!687 = !DILocation(line: 194, column: 15, scope: !686)
!688 = !DILocation(line: 194, column: 8, scope: !686)
!689 = !DILocation(line: 195, column: 2, scope: !686)
!690 = !DILocation(line: 196, column: 5, scope: !691)
!691 = distinct !DILexicalBlock(scope: !194, file: !1, line: 196, column: 5)
!692 = !DILocation(line: 196, column: 11, scope: !691)
!693 = !DILocation(line: 196, column: 5, scope: !194)
!694 = !DILocation(line: 197, column: 10, scope: !695)
!695 = distinct !DILexicalBlock(scope: !691, file: !1, line: 196, column: 20)
!696 = !DILocation(line: 197, column: 15, scope: !695)
!697 = !DILocation(line: 197, column: 8, scope: !695)
!698 = !DILocation(line: 198, column: 2, scope: !695)
!699 = !DILocation(line: 199, column: 21, scope: !194)
!700 = !DILocation(line: 199, column: 29, scope: !194)
!701 = !DILocation(line: 199, column: 2, scope: !194)
!702 = !DILocation(line: 200, column: 23, scope: !194)
!703 = !DILocation(line: 200, column: 31, scope: !194)
!704 = !DILocation(line: 200, column: 2, scope: !194)
!705 = !DILocation(line: 202, column: 5, scope: !706)
!706 = distinct !DILexicalBlock(scope: !194, file: !1, line: 202, column: 5)
!707 = !DILocation(line: 202, column: 11, scope: !706)
!708 = !DILocation(line: 202, column: 20, scope: !706)
!709 = !DILocation(line: 202, column: 5, scope: !194)
!710 = !DILocation(line: 204, column: 24, scope: !711)
!711 = distinct !DILexicalBlock(scope: !706, file: !1, line: 202, column: 36)
!712 = !DILocation(line: 204, column: 32, scope: !711)
!713 = !DILocation(line: 204, column: 3, scope: !711)
!714 = !DILocation(line: 205, column: 23, scope: !711)
!715 = !DILocation(line: 205, column: 31, scope: !711)
!716 = !DILocation(line: 205, column: 3, scope: !711)
!717 = !DILocation(line: 206, column: 23, scope: !711)
!718 = !DILocation(line: 206, column: 31, scope: !711)
!719 = !DILocation(line: 206, column: 3, scope: !711)
!720 = !DILocation(line: 207, column: 2, scope: !711)
!721 = !DILocation(line: 208, column: 2, scope: !194)
!722 = !DILocation(line: 211, column: 5, scope: !723)
!723 = distinct !DILexicalBlock(scope: !194, file: !1, line: 211, column: 5)
!724 = !DILocation(line: 211, column: 5, scope: !194)
!725 = !DILocation(line: 212, column: 24, scope: !726)
!726 = distinct !DILexicalBlock(scope: !723, file: !1, line: 211, column: 14)
!727 = !DILocation(line: 212, column: 32, scope: !726)
!728 = !DILocation(line: 212, column: 49, scope: !726)
!729 = !DILocation(line: 212, column: 42, scope: !726)
!730 = !DILocation(line: 212, column: 3, scope: !726)
!731 = !DILocation(line: 213, column: 2, scope: !726)
!732 = !DILocation(line: 214, column: 24, scope: !733)
!733 = distinct !DILexicalBlock(scope: !723, file: !1, line: 213, column: 7)
!734 = !DILocation(line: 214, column: 3, scope: !733)
!735 = !DILocation(line: 216, column: 5, scope: !736)
!736 = distinct !DILexicalBlock(scope: !194, file: !1, line: 216, column: 5)
!737 = !DILocation(line: 216, column: 5, scope: !194)
!738 = !DILocation(line: 217, column: 6, scope: !739)
!739 = distinct !DILexicalBlock(scope: !740, file: !1, line: 217, column: 6)
!740 = distinct !DILexicalBlock(scope: !736, file: !1, line: 216, column: 10)
!741 = !DILocation(line: 217, column: 12, scope: !739)
!742 = !DILocation(line: 217, column: 21, scope: !739)
!743 = !DILocation(line: 217, column: 6, scope: !740)
!744 = !DILocation(line: 219, column: 24, scope: !745)
!745 = distinct !DILexicalBlock(scope: !739, file: !1, line: 217, column: 37)
!746 = !DILocation(line: 219, column: 32, scope: !745)
!747 = !DILocation(line: 219, column: 38, scope: !745)
!748 = !DILocation(line: 219, column: 44, scope: !745)
!749 = !DILocation(line: 219, column: 4, scope: !745)
!750 = !DILocation(line: 220, column: 3, scope: !745)
!751 = !DILocation(line: 221, column: 24, scope: !740)
!752 = !DILocation(line: 221, column: 32, scope: !740)
!753 = !DILocation(line: 221, column: 38, scope: !740)
!754 = !DILocation(line: 221, column: 44, scope: !740)
!755 = !DILocation(line: 221, column: 48, scope: !740)
!756 = !DILocation(line: 221, column: 62, scope: !740)
!757 = !DILocation(line: 221, column: 68, scope: !740)
!758 = !DILocation(line: 221, column: 74, scope: !740)
!759 = !DILocation(line: 221, column: 78, scope: !740)
!760 = !DILocation(line: 221, column: 55, scope: !740)
!761 = !DILocation(line: 221, column: 3, scope: !740)
!762 = !DILocation(line: 222, column: 24, scope: !740)
!763 = !DILocation(line: 222, column: 46, scope: !740)
!764 = !DILocation(line: 222, column: 52, scope: !740)
!765 = !DILocation(line: 222, column: 58, scope: !740)
!766 = !DILocation(line: 222, column: 62, scope: !740)
!767 = !DILocation(line: 222, column: 71, scope: !740)
!768 = !DILocation(line: 222, column: 77, scope: !740)
!769 = !DILocation(line: 222, column: 83, scope: !740)
!770 = !DILocation(line: 222, column: 87, scope: !740)
!771 = !DILocation(line: 222, column: 3, scope: !740)
!772 = !DILocation(line: 223, column: 2, scope: !740)
!773 = !DILocation(line: 225, column: 5, scope: !774)
!774 = distinct !DILexicalBlock(scope: !194, file: !1, line: 225, column: 5)
!775 = !DILocation(line: 225, column: 5, scope: !194)
!776 = !DILocation(line: 226, column: 24, scope: !777)
!777 = distinct !DILexicalBlock(scope: !774, file: !1, line: 225, column: 14)
!778 = !DILocation(line: 226, column: 32, scope: !777)
!779 = !DILocation(line: 226, column: 49, scope: !777)
!780 = !DILocation(line: 226, column: 42, scope: !777)
!781 = !DILocation(line: 226, column: 3, scope: !777)
!782 = !DILocation(line: 227, column: 2, scope: !777)
!783 = !DILocation(line: 228, column: 5, scope: !784)
!784 = distinct !DILexicalBlock(scope: !194, file: !1, line: 228, column: 5)
!785 = !DILocation(line: 228, column: 5, scope: !194)
!786 = !DILocation(line: 229, column: 24, scope: !787)
!787 = distinct !DILexicalBlock(scope: !784, file: !1, line: 228, column: 14)
!788 = !DILocation(line: 229, column: 32, scope: !787)
!789 = !DILocation(line: 229, column: 49, scope: !787)
!790 = !DILocation(line: 229, column: 42, scope: !787)
!791 = !DILocation(line: 229, column: 3, scope: !787)
!792 = !DILocation(line: 230, column: 2, scope: !787)
!793 = !DILocation(line: 232, column: 20, scope: !194)
!794 = !DILocation(line: 232, column: 2, scope: !194)
!795 = !DILocation(line: 232, column: 8, scope: !194)
!796 = !DILocation(line: 232, column: 18, scope: !194)
!797 = !DILocation(line: 238, column: 14, scope: !194)
!798 = !DILocation(line: 238, column: 65, scope: !194)
!799 = !DILocation(line: 238, column: 2, scope: !194)
!800 = !DILocation(line: 240, column: 23, scope: !194)
!801 = !DILocation(line: 240, column: 29, scope: !194)
!802 = !DILocation(line: 240, column: 9, scope: !194)
!803 = !DILocation(line: 240, column: 2, scope: !194)
!804 = !DILocation(line: 241, column: 1, scope: !194)
