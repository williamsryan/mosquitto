; ModuleID = 'send_connect.bc'
source_filename = "../lib/send_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.mosquitto = type { i32, i32, i8*, i8*, i8*, i8*, i16, i16, i32, i64, i64, i64, %struct.mosquitto__packet, %struct.mosquitto__packet*, %struct.mosquitto__packet*, %struct.mosquitto_message_all*, %struct.mosquitto__alias*, %struct.will_delay_list*, i32, i32, i32, i64, i8, i8, i8, i32, i64, i8, i8, i8, %struct.mosquitto__bridge*, %struct.mosquitto_msg_data, %struct.mosquitto_msg_data, %struct.mosquitto__acl_user*, %struct.mosquitto__listener*, %struct.mosquitto__packet*, %struct.mosquitto__subhier**, %struct.mosquitto__subshared_ref**, i8*, i32, i32, i32, i8, i8, i8, %struct.UT_hash_handle, %struct.UT_hash_handle, %struct.mosquitto*, %struct.session_expiry_list*, i32 }
%struct.mosquitto__packet = type { i8*, %struct.mosquitto__packet*, i32, i32, i32, i32, i32, i16, i8, i8 }
%struct.mosquitto_message_all = type { %struct.mosquitto_message_all*, %struct.mosquitto_message_all*, %struct.mqtt5__property*, i64, i32, i8, %struct.mosquitto_message, i32 }
%struct.mosquitto_message = type { i32, i8*, i8*, i32, i32, i8 }
%struct.mosquitto__alias = type { i8*, i16 }
%struct.will_delay_list = type { %struct.mosquitto*, %struct.will_delay_list*, %struct.will_delay_list* }
%struct.mosquitto__bridge = type { i8*, %struct.bridge_address*, i32, i32, i64, i32, i8, i8, i8, i8, i32, %struct.mosquitto__bridge_topic*, i32, i8, i32, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.bridge_address = type { i8*, i32 }
%struct.mosquitto__bridge_topic = type { i8*, i32, i32, i8*, i8*, i8*, i8* }
%struct.mosquitto_msg_data = type { %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg*, i64, i64, i32, i32, i32, i16 }
%struct.mosquitto_client_msg = type { %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg*, %struct.mosquitto_msg_store*, %struct.mqtt5__property*, i64, i16, i8, i8, i32, i32, i8 }
%struct.mosquitto_msg_store = type { %struct.mosquitto_msg_store*, %struct.mosquitto_msg_store*, i64, i8*, i8*, %struct.mosquitto__listener*, i8**, i32, i32, i8*, %struct.mqtt5__property*, %union.mosquitto__payload_uhpa, i64, i32, i16, i16, i8, i8, i8 }
%union.mosquitto__payload_uhpa = type { i8* }
%struct.mosquitto__acl_user = type { %struct.mosquitto__acl_user*, i8*, %struct.mosquitto__acl* }
%struct.mosquitto__acl = type { %struct.mosquitto__acl*, i8*, i32, i32, i32 }
%struct.mosquitto__listener = type { i32, i16, i8*, i8*, i32, i8*, i32*, i32, i32, i32, i32, i8, i8, i16, %struct.mosquitto__security_options, %struct.mosquitto__unpwd*, %struct.mosquitto__unpwd* }
%struct.mosquitto__security_options = type { %struct.mosquitto__acl_user*, %struct.mosquitto__acl*, i8*, i8*, i8*, %struct.mosquitto__auth_plugin_config*, i32, i8, i8, i8*, i32 }
%struct.mosquitto__auth_plugin_config = type { i8*, %struct.mosquitto_opt*, i32, i8, %struct.mosquitto__auth_plugin }
%struct.mosquitto_opt = type { i8*, i8* }
%struct.mosquitto__auth_plugin = type { i8*, i8*, i32 ()*, i32 (i8**, %struct.mosquitto_opt*, i32)*, i32 (i8*, %struct.mosquitto_opt*, i32)*, i32 (i8*, %struct.mosquitto_opt*, i32, i1)*, i32 (i8*, %struct.mosquitto_opt*, i32, i1)*, i32 (i8*, i32, %struct.mosquitto*, %struct.mosquitto_acl_msg*)*, i32 (i8*, %struct.mosquitto*, i8*, i8*)*, i32 (i8*, %struct.mosquitto*, i8*, i8*, i8*, i32)*, i32 (i8*, %struct.mosquitto*, i8*, i1, i8*, i16, i8**, i16*)*, i32 (i8*, %struct.mosquitto*, i8*, i8*, i16, i8**, i16*)*, i32 (i8**, %struct.mosquitto_opt*, i32)*, i32 (i8*, %struct.mosquitto_opt*, i32)*, i32 (i8*, %struct.mosquitto_opt*, i32, i1)*, i32 (i8*, %struct.mosquitto_opt*, i32, i1)*, i32 (i8*, i32, %struct.mosquitto*, %struct.mosquitto_acl_msg*)*, i32 (i8*, %struct.mosquitto*, i8*, i8*)*, i32 (i8*, %struct.mosquitto*, i8*, i8*, i8*, i32)*, i32 (i8**, %struct.mosquitto_auth_opt*, i32)*, i32 (i8*, %struct.mosquitto_auth_opt*, i32)*, i32 (i8*, %struct.mosquitto_auth_opt*, i32, i1)*, i32 (i8*, %struct.mosquitto_auth_opt*, i32, i1)*, i32 (i8*, i8*, i8*, i8*, i32)*, i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*, i8*, i32)*, i32 }
%struct.mosquitto_acl_msg = type { i8*, i8*, i64, i32, i8 }
%struct.mosquitto_auth_opt = type { i8*, i8* }
%struct.mosquitto__unpwd = type { i8*, i8*, %struct.UT_hash_handle }
%struct.mosquitto__subhier = type { %struct.UT_hash_handle, %struct.mosquitto__subhier*, %struct.mosquitto__subhier*, %struct.mosquitto__subleaf*, %struct.mosquitto__subshared*, %struct.mosquitto_msg_store*, i8*, i16 }
%struct.mosquitto__subleaf = type { %struct.mosquitto__subleaf*, %struct.mosquitto__subleaf*, %struct.mosquitto*, i32, i8, i8, i8 }
%struct.mosquitto__subshared = type { %struct.UT_hash_handle, i8*, %struct.mosquitto__subleaf* }
%struct.mosquitto__subshared_ref = type { %struct.mosquitto__subhier*, %struct.mosquitto__subshared* }
%struct.UT_hash_handle = type { %struct.UT_hash_table*, i8*, i8*, %struct.UT_hash_handle*, %struct.UT_hash_handle*, i8*, i32, i32 }
%struct.UT_hash_table = type { %struct.UT_hash_bucket*, i32, i32, i32, %struct.UT_hash_handle*, i64, i32, i32, i32, i32, i32 }
%struct.UT_hash_bucket = type { %struct.UT_hash_handle*, i32, i32 }
%struct.session_expiry_list = type { %struct.mosquitto*, %struct.session_expiry_list*, %struct.session_expiry_list* }
%struct.mqtt5__property = type { %struct.mqtt5__property*, %union.anon, %struct.mqtt__string, i32, i8 }
%union.anon = type { %struct.mqtt__string }
%struct.mqtt__string = type { i8*, i32 }

@change_static_value.nonce = private unnamed_addr constant [4 x i32] [i32 1337, i32 28, i32 92, i32 65], align 16
@.str = private unnamed_addr constant [5 x i8] c"mosq\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"../lib/send_connect.c\00", align 1
@__PRETTY_FUNCTION__.send__connect = private unnamed_addr constant [83 x i8] c"int send__connect(struct mosquitto *, uint16_t, _Bool, const mosquitto_property *)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"mosq->will->msg.topic\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"MQIsdp\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"MQTT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @simple_encrypt(i32 %0) #0 !dbg !143 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata i32* %3, metadata !150, metadata !DIExpression()), !dbg !151
  store i32 1234182, i32* %3, align 4, !dbg !151
  call void @llvm.dbg.declare(metadata i32* %4, metadata !152, metadata !DIExpression()), !dbg !153
  %5 = load i32, i32* %2, align 4, !dbg !154
  %6 = load i32, i32* %3, align 4, !dbg !155
  %7 = xor i32 %5, %6, !dbg !156
  store i32 %7, i32* %4, align 4, !dbg !153
  %8 = load i32, i32* %4, align 4, !dbg !157
  ret i32 %8, !dbg !158
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @change_static_value(i32 %0) #0 !dbg !159 {
  %2 = alloca i32, align 4
  %3 = alloca [4 x i32], align 16
  %4 = alloca i64, align 8
  %5 = alloca %struct.tm*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !160, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata [4 x i32]* %3, metadata !162, metadata !DIExpression()), !dbg !166
  %6 = bitcast [4 x i32]* %3 to i8*, !dbg !166
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([4 x i32]* @change_static_value.nonce to i8*), i64 16, i1 false), !dbg !166
  call void @llvm.dbg.declare(metadata i64* %4, metadata !167, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata %struct.tm** %5, metadata !174, metadata !DIExpression()), !dbg !190
  %7 = call i64 @time(i64* %4) #7, !dbg !191
  %8 = call %struct.tm* @gmtime(i64* %4) #7, !dbg !192
  store %struct.tm* %8, %struct.tm** %5, align 8, !dbg !193
  %9 = load %struct.tm*, %struct.tm** %5, align 8, !dbg !194
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 2, !dbg !196
  %11 = load i32, i32* %10, align 8, !dbg !196
  %12 = srem i32 %11, 24, !dbg !197
  %13 = icmp sgt i32 %12, 12, !dbg !198
  br i1 %13, label %14, label %20, !dbg !199

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4, !dbg !200
  %16 = mul nsw i32 %15, 2, !dbg !202
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !203
  %18 = load i32, i32* %17, align 16, !dbg !203
  %19 = add nsw i32 %16, %18, !dbg !204
  store i32 %19, i32* %2, align 4, !dbg !205
  br label %26, !dbg !206

20:                                               ; preds = %1
  %21 = load i32, i32* %2, align 4, !dbg !207
  %22 = mul nsw i32 %21, 2, !dbg !209
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2, !dbg !210
  %24 = load i32, i32* %23, align 8, !dbg !210
  %25 = add nsw i32 %22, %24, !dbg !211
  store i32 %25, i32* %2, align 4, !dbg !212
  br label %26

26:                                               ; preds = %20, %14
  %27 = load i32, i32* %2, align 4, !dbg !213
  ret i32 %27, !dbg !214
}

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind
declare %struct.tm* @gmtime(i64*) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @send__connect(%struct.mosquitto* %0, i16 zeroext %1, i1 zeroext %2, %struct.mqtt5__property* %3) #0 !dbg !215 {
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
  call void @llvm.dbg.declare(metadata %struct.mosquitto** %6, metadata !739, metadata !DIExpression()), !dbg !740
  store i16 %1, i16* %7, align 2
  call void @llvm.dbg.declare(metadata i16* %7, metadata !741, metadata !DIExpression()), !dbg !742
  %25 = zext i1 %2 to i8
  store i8 %25, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !743, metadata !DIExpression()), !dbg !744
  store %struct.mqtt5__property* %3, %struct.mqtt5__property** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt5__property** %9, metadata !745, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.declare(metadata %struct.mosquitto__packet** %10, metadata !747, metadata !DIExpression()), !dbg !748
  store %struct.mosquitto__packet* null, %struct.mosquitto__packet** %10, align 8, !dbg !748
  call void @llvm.dbg.declare(metadata i32* %11, metadata !749, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.declare(metadata i8* %12, metadata !751, metadata !DIExpression()), !dbg !752
  store i8 0, i8* %12, align 1, !dbg !752
  call void @llvm.dbg.declare(metadata i8* %13, metadata !753, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.declare(metadata i32* %14, metadata !755, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.declare(metadata i8* %15, metadata !757, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.declare(metadata i8** %16, metadata !759, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.declare(metadata i8** %17, metadata !761, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.declare(metadata i8** %18, metadata !763, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.declare(metadata i32* %19, metadata !765, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.declare(metadata i32* %20, metadata !767, metadata !DIExpression()), !dbg !768
  store i32 0, i32* %20, align 4, !dbg !768
  call void @llvm.dbg.declare(metadata i32* %21, metadata !769, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.declare(metadata i32* %22, metadata !771, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.declare(metadata %struct.mqtt5__property** %23, metadata !773, metadata !DIExpression()), !dbg !774
  store %struct.mqtt5__property* null, %struct.mqtt5__property** %23, align 8, !dbg !774
  call void @llvm.dbg.declare(metadata i16* %24, metadata !775, metadata !DIExpression()), !dbg !776
  %26 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !777
  %27 = icmp ne %struct.mosquitto* %26, null, !dbg !777
  br i1 %27, label %28, label %29, !dbg !780

28:                                               ; preds = %4
  br label %30, !dbg !780

29:                                               ; preds = %4
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 76, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.send__connect, i32 0, i32 0)) #8, !dbg !777
  unreachable, !dbg !777

30:                                               ; preds = %28
  %31 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !781
  %32 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %31, i32 0, i32 1, !dbg !783
  %33 = load i32, i32* %32, align 4, !dbg !783
  %34 = icmp eq i32 %33, 1, !dbg !784
  br i1 %34, label %35, label %41, !dbg !785

35:                                               ; preds = %30
  %36 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !786
  %37 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %36, i32 0, i32 3, !dbg !787
  %38 = load i8*, i8** %37, align 8, !dbg !787
  %39 = icmp ne i8* %38, null, !dbg !786
  br i1 %39, label %41, label %40, !dbg !788

40:                                               ; preds = %35
  store i32 2, i32* %5, align 4, !dbg !789
  br label %417, !dbg !789

41:                                               ; preds = %35, %30
  %42 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !790
  %43 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %42, i32 0, i32 3, !dbg !791
  %44 = load i8*, i8** %43, align 8, !dbg !791
  store i8* %44, i8** %16, align 8, !dbg !792
  %45 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !793
  %46 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %45, i32 0, i32 4, !dbg !794
  %47 = load i8*, i8** %46, align 8, !dbg !794
  store i8* %47, i8** %17, align 8, !dbg !795
  %48 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !796
  %49 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %48, i32 0, i32 5, !dbg !797
  %50 = load i8*, i8** %49, align 8, !dbg !797
  store i8* %50, i8** %18, align 8, !dbg !798
  %51 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !799
  %52 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %51, i32 0, i32 1, !dbg !801
  %53 = load i32, i32* %52, align 4, !dbg !801
  %54 = icmp eq i32 %53, 5, !dbg !802
  br i1 %54, label %55, label %96, !dbg !803

55:                                               ; preds = %41
  %56 = load %struct.mqtt5__property*, %struct.mqtt5__property** %9, align 8, !dbg !804
  %57 = call %struct.mqtt5__property* @mosquitto_property_read_int16(%struct.mqtt5__property* %56, i32 33, i16* %24, i1 zeroext false), !dbg !807
  %58 = icmp ne %struct.mqtt5__property* %57, null, !dbg !807
  br i1 %58, label %70, label %59, !dbg !808

59:                                               ; preds = %55
  %60 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !809
  %61 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %60, i32 0, i32 31, !dbg !811
  %62 = getelementptr inbounds %struct.mosquitto_msg_data, %struct.mosquitto_msg_data* %61, i32 0, i32 7, !dbg !812
  %63 = load i16, i16* %62, align 4, !dbg !812
  %64 = call i32 @mosquitto_property_add_int16(%struct.mqtt5__property** %23, i32 33, i16 zeroext %63), !dbg !813
  store i32 %64, i32* %14, align 4, !dbg !814
  %65 = load i32, i32* %14, align 4, !dbg !815
  %66 = icmp ne i32 %65, 0, !dbg !815
  br i1 %66, label %67, label %69, !dbg !817

67:                                               ; preds = %59
  %68 = load i32, i32* %14, align 4, !dbg !818
  store i32 %68, i32* %5, align 4, !dbg !819
  br label %417, !dbg !819

69:                                               ; preds = %59
  br label %80, !dbg !820

70:                                               ; preds = %55
  %71 = load i16, i16* %24, align 2, !dbg !821
  %72 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !823
  %73 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %72, i32 0, i32 31, !dbg !824
  %74 = getelementptr inbounds %struct.mosquitto_msg_data, %struct.mosquitto_msg_data* %73, i32 0, i32 7, !dbg !825
  store i16 %71, i16* %74, align 4, !dbg !826
  %75 = load i16, i16* %24, align 2, !dbg !827
  %76 = zext i16 %75 to i32, !dbg !827
  %77 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !828
  %78 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %77, i32 0, i32 31, !dbg !829
  %79 = getelementptr inbounds %struct.mosquitto_msg_data, %struct.mosquitto_msg_data* %78, i32 0, i32 6, !dbg !830
  store i32 %76, i32* %79, align 8, !dbg !831
  br label %80

80:                                               ; preds = %70, %69
  store i8 5, i8* %15, align 1, !dbg !832
  store i32 10, i32* %19, align 4, !dbg !833
  store i32 0, i32* %20, align 4, !dbg !834
  %81 = load %struct.mqtt5__property*, %struct.mqtt5__property** %9, align 8, !dbg !835
  %82 = call i32 @property__get_length_all(%struct.mqtt5__property* %81), !dbg !836
  %83 = load i32, i32* %20, align 4, !dbg !837
  %84 = add nsw i32 %83, %82, !dbg !837
  store i32 %84, i32* %20, align 4, !dbg !837
  %85 = load %struct.mqtt5__property*, %struct.mqtt5__property** %23, align 8, !dbg !838
  %86 = call i32 @property__get_length_all(%struct.mqtt5__property* %85), !dbg !839
  %87 = load i32, i32* %20, align 4, !dbg !840
  %88 = add nsw i32 %87, %86, !dbg !840
  store i32 %88, i32* %20, align 4, !dbg !840
  %89 = load i32, i32* %20, align 4, !dbg !841
  %90 = call i32 @packet__varint_bytes(i32 %89), !dbg !842
  store i32 %90, i32* %22, align 4, !dbg !843
  %91 = load i32, i32* %20, align 4, !dbg !844
  %92 = load i32, i32* %22, align 4, !dbg !845
  %93 = add nsw i32 %91, %92, !dbg !846
  %94 = load i32, i32* %19, align 4, !dbg !847
  %95 = add nsw i32 %94, %93, !dbg !847
  store i32 %95, i32* %19, align 4, !dbg !847
  br label %111, !dbg !848

96:                                               ; preds = %41
  %97 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !849
  %98 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %97, i32 0, i32 1, !dbg !851
  %99 = load i32, i32* %98, align 4, !dbg !851
  %100 = icmp eq i32 %99, 2, !dbg !852
  br i1 %100, label %101, label %102, !dbg !853

101:                                              ; preds = %96
  store i8 4, i8* %15, align 1, !dbg !854
  store i32 10, i32* %19, align 4, !dbg !856
  br label %110, !dbg !857

102:                                              ; preds = %96
  %103 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !858
  %104 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %103, i32 0, i32 1, !dbg !860
  %105 = load i32, i32* %104, align 4, !dbg !860
  %106 = icmp eq i32 %105, 1, !dbg !861
  br i1 %106, label %107, label %108, !dbg !862

107:                                              ; preds = %102
  store i8 3, i8* %15, align 1, !dbg !863
  store i32 12, i32* %19, align 4, !dbg !865
  br label %109, !dbg !866

108:                                              ; preds = %102
  store i32 3, i32* %5, align 4, !dbg !867
  br label %417, !dbg !867

109:                                              ; preds = %107
  br label %110

110:                                              ; preds = %109, %101
  br label %111

111:                                              ; preds = %110, %80
  %112 = call i8* @mosquitto__calloc(i64 1, i64 40), !dbg !869
  %113 = bitcast i8* %112 to %struct.mosquitto__packet*, !dbg !869
  store %struct.mosquitto__packet* %113, %struct.mosquitto__packet** %10, align 8, !dbg !870
  %114 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !871
  %115 = icmp ne %struct.mosquitto__packet* %114, null, !dbg !871
  br i1 %115, label %117, label %116, !dbg !873

116:                                              ; preds = %111
  store i32 1, i32* %5, align 4, !dbg !874
  br label %417, !dbg !874

117:                                              ; preds = %111
  %118 = load i8*, i8** %16, align 8, !dbg !875
  %119 = icmp ne i8* %118, null, !dbg !875
  br i1 %119, label %120, label %125, !dbg !877

120:                                              ; preds = %117
  %121 = load i8*, i8** %16, align 8, !dbg !878
  %122 = call i64 @strlen(i8* %121) #9, !dbg !880
  %123 = add i64 2, %122, !dbg !881
  %124 = trunc i64 %123 to i32, !dbg !882
  store i32 %124, i32* %11, align 4, !dbg !883
  br label %126, !dbg !884

125:                                              ; preds = %117
  store i32 2, i32* %11, align 4, !dbg !885
  br label %126

126:                                              ; preds = %125, %120
  %127 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !887
  %128 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %127, i32 0, i32 15, !dbg !889
  %129 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %128, align 8, !dbg !889
  %130 = icmp ne %struct.mosquitto_message_all* %129, null, !dbg !887
  br i1 %130, label %131, label %182, !dbg !890

131:                                              ; preds = %126
  store i8 1, i8* %12, align 1, !dbg !891
  %132 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !893
  %133 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %132, i32 0, i32 15, !dbg !893
  %134 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %133, align 8, !dbg !893
  %135 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %134, i32 0, i32 6, !dbg !893
  %136 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %135, i32 0, i32 1, !dbg !893
  %137 = load i8*, i8** %136, align 8, !dbg !893
  %138 = icmp ne i8* %137, null, !dbg !893
  br i1 %138, label %139, label %140, !dbg !896

139:                                              ; preds = %131
  br label %141, !dbg !896

140:                                              ; preds = %131
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 133, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.send__connect, i32 0, i32 0)) #8, !dbg !893
  unreachable, !dbg !893

141:                                              ; preds = %139
  %142 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !897
  %143 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %142, i32 0, i32 15, !dbg !898
  %144 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %143, align 8, !dbg !898
  %145 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %144, i32 0, i32 6, !dbg !899
  %146 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %145, i32 0, i32 1, !dbg !900
  %147 = load i8*, i8** %146, align 8, !dbg !900
  %148 = call i64 @strlen(i8* %147) #9, !dbg !901
  %149 = add i64 2, %148, !dbg !902
  %150 = add i64 %149, 2, !dbg !903
  %151 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !904
  %152 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %151, i32 0, i32 15, !dbg !905
  %153 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %152, align 8, !dbg !905
  %154 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %153, i32 0, i32 6, !dbg !906
  %155 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %154, i32 0, i32 3, !dbg !907
  %156 = load i32, i32* %155, align 8, !dbg !907
  %157 = sext i32 %156 to i64, !dbg !904
  %158 = add i64 %150, %157, !dbg !908
  %159 = load i32, i32* %11, align 4, !dbg !909
  %160 = sext i32 %159 to i64, !dbg !909
  %161 = add i64 %160, %158, !dbg !909
  %162 = trunc i64 %161 to i32, !dbg !909
  store i32 %162, i32* %11, align 4, !dbg !909
  %163 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !910
  %164 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %163, i32 0, i32 1, !dbg !912
  %165 = load i32, i32* %164, align 4, !dbg !912
  %166 = icmp eq i32 %165, 5, !dbg !913
  br i1 %166, label %167, label %181, !dbg !914

167:                                              ; preds = %141
  %168 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !915
  %169 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %168, i32 0, i32 15, !dbg !917
  %170 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %169, align 8, !dbg !917
  %171 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %170, i32 0, i32 2, !dbg !918
  %172 = load %struct.mqtt5__property*, %struct.mqtt5__property** %171, align 8, !dbg !918
  %173 = call i32 @property__get_length_all(%struct.mqtt5__property* %172), !dbg !919
  store i32 %173, i32* %21, align 4, !dbg !920
  %174 = load i32, i32* %21, align 4, !dbg !921
  %175 = call i32 @packet__varint_bytes(i32 %174), !dbg !922
  store i32 %175, i32* %22, align 4, !dbg !923
  %176 = load i32, i32* %21, align 4, !dbg !924
  %177 = load i32, i32* %22, align 4, !dbg !925
  %178 = add nsw i32 %176, %177, !dbg !926
  %179 = load i32, i32* %11, align 4, !dbg !927
  %180 = add nsw i32 %179, %178, !dbg !927
  store i32 %180, i32* %11, align 4, !dbg !927
  br label %181, !dbg !928

181:                                              ; preds = %167, %141
  br label %182, !dbg !929

182:                                              ; preds = %181, %126
  %183 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !930
  %184 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %183, i32 0, i32 1, !dbg !932
  %185 = load i32, i32* %184, align 4, !dbg !932
  %186 = icmp eq i32 %185, 1, !dbg !933
  br i1 %186, label %192, label %187, !dbg !934

187:                                              ; preds = %182
  %188 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !935
  %189 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %188, i32 0, i32 1, !dbg !936
  %190 = load i32, i32* %189, align 4, !dbg !936
  %191 = icmp eq i32 %190, 2, !dbg !937
  br i1 %191, label %192, label %200, !dbg !938

192:                                              ; preds = %187, %182
  %193 = load i8*, i8** %18, align 8, !dbg !939
  %194 = icmp ne i8* %193, null, !dbg !942
  br i1 %194, label %195, label %199, !dbg !943

195:                                              ; preds = %192
  %196 = load i8*, i8** %17, align 8, !dbg !944
  %197 = icmp eq i8* %196, null, !dbg !945
  br i1 %197, label %198, label %199, !dbg !946

198:                                              ; preds = %195
  store i32 3, i32* %5, align 4, !dbg !947
  br label %417, !dbg !947

199:                                              ; preds = %195, %192
  br label %200, !dbg !949

200:                                              ; preds = %199, %187
  %201 = load i8*, i8** %17, align 8, !dbg !950
  %202 = icmp ne i8* %201, null, !dbg !950
  br i1 %202, label %203, label %211, !dbg !952

203:                                              ; preds = %200
  %204 = load i8*, i8** %17, align 8, !dbg !953
  %205 = call i64 @strlen(i8* %204) #9, !dbg !955
  %206 = add i64 2, %205, !dbg !956
  %207 = load i32, i32* %11, align 4, !dbg !957
  %208 = sext i32 %207 to i64, !dbg !957
  %209 = add i64 %208, %206, !dbg !957
  %210 = trunc i64 %209 to i32, !dbg !957
  store i32 %210, i32* %11, align 4, !dbg !957
  br label %211, !dbg !958

211:                                              ; preds = %203, %200
  %212 = load i8*, i8** %18, align 8, !dbg !959
  %213 = icmp ne i8* %212, null, !dbg !959
  br i1 %213, label %214, label %222, !dbg !961

214:                                              ; preds = %211
  %215 = load i8*, i8** %18, align 8, !dbg !962
  %216 = call i64 @strlen(i8* %215) #9, !dbg !964
  %217 = add i64 2, %216, !dbg !965
  %218 = load i32, i32* %11, align 4, !dbg !966
  %219 = sext i32 %218 to i64, !dbg !966
  %220 = add i64 %219, %217, !dbg !966
  %221 = trunc i64 %220 to i32, !dbg !966
  store i32 %221, i32* %11, align 4, !dbg !966
  br label %222, !dbg !967

222:                                              ; preds = %214, %211
  %223 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !968
  %224 = getelementptr inbounds %struct.mosquitto__packet, %struct.mosquitto__packet* %223, i32 0, i32 8, !dbg !969
  store i8 16, i8* %224, align 2, !dbg !970
  %225 = load i32, i32* %19, align 4, !dbg !971
  %226 = load i32, i32* %11, align 4, !dbg !972
  %227 = add nsw i32 %225, %226, !dbg !973
  %228 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !974
  %229 = getelementptr inbounds %struct.mosquitto__packet, %struct.mosquitto__packet* %228, i32 0, i32 3, !dbg !975
  store i32 %227, i32* %229, align 4, !dbg !976
  %230 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !977
  %231 = getelementptr inbounds %struct.mosquitto__packet, %struct.mosquitto__packet* %230, i32 0, i32 3, !dbg !978
  %232 = load i32, i32* %231, align 4, !dbg !978
  %233 = call i32 @change_static_value(i32 %232), !dbg !979
  %234 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !980
  %235 = getelementptr inbounds %struct.mosquitto__packet, %struct.mosquitto__packet* %234, i32 0, i32 3, !dbg !981
  store i32 %233, i32* %235, align 4, !dbg !982
  %236 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !983
  %237 = getelementptr inbounds %struct.mosquitto__packet, %struct.mosquitto__packet* %236, i32 0, i32 3, !dbg !984
  %238 = load i32, i32* %237, align 4, !dbg !984
  %239 = call i32 @simple_encrypt(i32 %238), !dbg !985
  %240 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !986
  %241 = getelementptr inbounds %struct.mosquitto__packet, %struct.mosquitto__packet* %240, i32 0, i32 3, !dbg !987
  store i32 %239, i32* %241, align 4, !dbg !988
  %242 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !989
  %243 = call i32 @packet__alloc(%struct.mosquitto__packet* %242), !dbg !990
  store i32 %243, i32* %14, align 4, !dbg !991
  %244 = load i32, i32* %14, align 4, !dbg !992
  %245 = icmp ne i32 %244, 0, !dbg !992
  br i1 %245, label %246, label %250, !dbg !994

246:                                              ; preds = %222
  %247 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !995
  %248 = bitcast %struct.mosquitto__packet* %247 to i8*, !dbg !995
  call void @mosquitto__free(i8* %248), !dbg !997
  %249 = load i32, i32* %14, align 4, !dbg !998
  store i32 %249, i32* %5, align 4, !dbg !999
  br label %417, !dbg !999

250:                                              ; preds = %222
  %251 = load i8, i8* %15, align 1, !dbg !1000
  %252 = zext i8 %251 to i32, !dbg !1000
  %253 = icmp eq i32 %252, 3, !dbg !1002
  br i1 %253, label %254, label %256, !dbg !1003

254:                                              ; preds = %250
  %255 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !1004
  call void @packet__write_string(%struct.mosquitto__packet* %255, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i16 zeroext 6), !dbg !1006
  br label %258, !dbg !1007

256:                                              ; preds = %250
  %257 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !1008
  call void @packet__write_string(%struct.mosquitto__packet* %257, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i16 zeroext 4), !dbg !1010
  br label %258

258:                                              ; preds = %256, %254
  %259 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !1011
  %260 = load i8, i8* %15, align 1, !dbg !1012
  call void @packet__write_byte(%struct.mosquitto__packet* %259, i8 zeroext %260), !dbg !1013
  %261 = load i8, i8* %8, align 1, !dbg !1014
  %262 = trunc i8 %261 to i1, !dbg !1014
  %263 = zext i1 %262 to i32, !dbg !1014
  %264 = and i32 %263, 1, !dbg !1015
  %265 = shl i32 %264, 1, !dbg !1016
  %266 = trunc i32 %265 to i8, !dbg !1017
  store i8 %266, i8* %13, align 1, !dbg !1018
  %267 = load i8, i8* %12, align 1, !dbg !1019
  %268 = icmp ne i8 %267, 0, !dbg !1019
  br i1 %268, label %269, label %298, !dbg !1021

269:                                              ; preds = %258
  %270 = load i8, i8* %13, align 1, !dbg !1022
  %271 = zext i8 %270 to i32, !dbg !1022
  %272 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !1024
  %273 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %272, i32 0, i32 15, !dbg !1025
  %274 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %273, align 8, !dbg !1025
  %275 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %274, i32 0, i32 6, !dbg !1026
  %276 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %275, i32 0, i32 5, !dbg !1027
  %277 = load i8, i8* %276, align 8, !dbg !1027
  %278 = trunc i8 %277 to i1, !dbg !1027
  %279 = zext i1 %278 to i32, !dbg !1024
  %280 = and i32 %279, 1, !dbg !1028
  %281 = shl i32 %280, 5, !dbg !1029
  %282 = or i32 %271, %281, !dbg !1030
  %283 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !1031
  %284 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %283, i32 0, i32 15, !dbg !1032
  %285 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %284, align 8, !dbg !1032
  %286 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %285, i32 0, i32 6, !dbg !1033
  %287 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %286, i32 0, i32 4, !dbg !1034
  %288 = load i32, i32* %287, align 4, !dbg !1034
  %289 = and i32 %288, 3, !dbg !1035
  %290 = shl i32 %289, 3, !dbg !1036
  %291 = or i32 %282, %290, !dbg !1037
  %292 = load i8, i8* %12, align 1, !dbg !1038
  %293 = zext i8 %292 to i32, !dbg !1038
  %294 = and i32 %293, 1, !dbg !1039
  %295 = shl i32 %294, 2, !dbg !1040
  %296 = or i32 %291, %295, !dbg !1041
  %297 = trunc i32 %296 to i8, !dbg !1022
  store i8 %297, i8* %13, align 1, !dbg !1042
  br label %298, !dbg !1043

298:                                              ; preds = %269, %258
  %299 = load i8*, i8** %17, align 8, !dbg !1044
  %300 = icmp ne i8* %299, null, !dbg !1044
  br i1 %300, label %301, label %306, !dbg !1046

301:                                              ; preds = %298
  %302 = load i8, i8* %13, align 1, !dbg !1047
  %303 = zext i8 %302 to i32, !dbg !1047
  %304 = or i32 %303, 128, !dbg !1049
  %305 = trunc i32 %304 to i8, !dbg !1047
  store i8 %305, i8* %13, align 1, !dbg !1050
  br label %306, !dbg !1051

306:                                              ; preds = %301, %298
  %307 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !1052
  %308 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %307, i32 0, i32 5, !dbg !1054
  %309 = load i8*, i8** %308, align 8, !dbg !1054
  %310 = icmp ne i8* %309, null, !dbg !1052
  br i1 %310, label %311, label %316, !dbg !1055

311:                                              ; preds = %306
  %312 = load i8, i8* %13, align 1, !dbg !1056
  %313 = zext i8 %312 to i32, !dbg !1056
  %314 = or i32 %313, 64, !dbg !1058
  %315 = trunc i32 %314 to i8, !dbg !1056
  store i8 %315, i8* %13, align 1, !dbg !1059
  br label %316, !dbg !1060

316:                                              ; preds = %311, %306
  %317 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !1061
  %318 = load i8, i8* %13, align 1, !dbg !1062
  call void @packet__write_byte(%struct.mosquitto__packet* %317, i8 zeroext %318), !dbg !1063
  %319 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !1064
  %320 = load i16, i16* %7, align 2, !dbg !1065
  call void @packet__write_uint16(%struct.mosquitto__packet* %319, i16 zeroext %320), !dbg !1066
  %321 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !1067
  %322 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %321, i32 0, i32 1, !dbg !1069
  %323 = load i32, i32* %322, align 4, !dbg !1069
  %324 = icmp eq i32 %323, 5, !dbg !1070
  br i1 %324, label %325, label %335, !dbg !1071

325:                                              ; preds = %316
  %326 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !1072
  %327 = load i32, i32* %20, align 4, !dbg !1074
  %328 = call i32 @packet__write_varint(%struct.mosquitto__packet* %326, i32 %327), !dbg !1075
  %329 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !1076
  %330 = load %struct.mqtt5__property*, %struct.mqtt5__property** %9, align 8, !dbg !1077
  %331 = call i32 @property__write_all(%struct.mosquitto__packet* %329, %struct.mqtt5__property* %330, i1 zeroext false), !dbg !1078
  %332 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !1079
  %333 = load %struct.mqtt5__property*, %struct.mqtt5__property** %23, align 8, !dbg !1080
  %334 = call i32 @property__write_all(%struct.mosquitto__packet* %332, %struct.mqtt5__property* %333, i1 zeroext false), !dbg !1081
  br label %335, !dbg !1082

335:                                              ; preds = %325, %316
  call void @mosquitto_property_free_all(%struct.mqtt5__property** %23), !dbg !1083
  %336 = load i8*, i8** %16, align 8, !dbg !1084
  %337 = icmp ne i8* %336, null, !dbg !1084
  br i1 %337, label %338, label %344, !dbg !1086

338:                                              ; preds = %335
  %339 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !1087
  %340 = load i8*, i8** %16, align 8, !dbg !1089
  %341 = load i8*, i8** %16, align 8, !dbg !1090
  %342 = call i64 @strlen(i8* %341) #9, !dbg !1091
  %343 = trunc i64 %342 to i16, !dbg !1091
  call void @packet__write_string(%struct.mosquitto__packet* %339, i8* %340, i16 zeroext %343), !dbg !1092
  br label %346, !dbg !1093

344:                                              ; preds = %335
  %345 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !1094
  call void @packet__write_uint16(%struct.mosquitto__packet* %345, i16 zeroext 0), !dbg !1096
  br label %346

346:                                              ; preds = %344, %338
  %347 = load i8, i8* %12, align 1, !dbg !1097
  %348 = icmp ne i8 %347, 0, !dbg !1097
  br i1 %348, label %349, label %392, !dbg !1099

349:                                              ; preds = %346
  %350 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !1100
  %351 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %350, i32 0, i32 1, !dbg !1103
  %352 = load i32, i32* %351, align 4, !dbg !1103
  %353 = icmp eq i32 %352, 5, !dbg !1104
  br i1 %353, label %354, label %362, !dbg !1105

354:                                              ; preds = %349
  %355 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !1106
  %356 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !1108
  %357 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %356, i32 0, i32 15, !dbg !1109
  %358 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %357, align 8, !dbg !1109
  %359 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %358, i32 0, i32 2, !dbg !1110
  %360 = load %struct.mqtt5__property*, %struct.mqtt5__property** %359, align 8, !dbg !1110
  %361 = call i32 @property__write_all(%struct.mosquitto__packet* %355, %struct.mqtt5__property* %360, i1 zeroext true), !dbg !1111
  br label %362, !dbg !1112

362:                                              ; preds = %354, %349
  %363 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !1113
  %364 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !1114
  %365 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %364, i32 0, i32 15, !dbg !1115
  %366 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %365, align 8, !dbg !1115
  %367 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %366, i32 0, i32 6, !dbg !1116
  %368 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %367, i32 0, i32 1, !dbg !1117
  %369 = load i8*, i8** %368, align 8, !dbg !1117
  %370 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !1118
  %371 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %370, i32 0, i32 15, !dbg !1119
  %372 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %371, align 8, !dbg !1119
  %373 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %372, i32 0, i32 6, !dbg !1120
  %374 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %373, i32 0, i32 1, !dbg !1121
  %375 = load i8*, i8** %374, align 8, !dbg !1121
  %376 = call i64 @strlen(i8* %375) #9, !dbg !1122
  %377 = trunc i64 %376 to i16, !dbg !1122
  call void @packet__write_string(%struct.mosquitto__packet* %363, i8* %369, i16 zeroext %377), !dbg !1123
  %378 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !1124
  %379 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !1125
  %380 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %379, i32 0, i32 15, !dbg !1126
  %381 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %380, align 8, !dbg !1126
  %382 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %381, i32 0, i32 6, !dbg !1127
  %383 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %382, i32 0, i32 2, !dbg !1128
  %384 = load i8*, i8** %383, align 8, !dbg !1128
  %385 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !1129
  %386 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %385, i32 0, i32 15, !dbg !1130
  %387 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %386, align 8, !dbg !1130
  %388 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %387, i32 0, i32 6, !dbg !1131
  %389 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %388, i32 0, i32 3, !dbg !1132
  %390 = load i32, i32* %389, align 8, !dbg !1132
  %391 = trunc i32 %390 to i16, !dbg !1129
  call void @packet__write_string(%struct.mosquitto__packet* %378, i8* %384, i16 zeroext %391), !dbg !1133
  br label %392, !dbg !1134

392:                                              ; preds = %362, %346
  %393 = load i8*, i8** %17, align 8, !dbg !1135
  %394 = icmp ne i8* %393, null, !dbg !1135
  br i1 %394, label %395, label %401, !dbg !1137

395:                                              ; preds = %392
  %396 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !1138
  %397 = load i8*, i8** %17, align 8, !dbg !1140
  %398 = load i8*, i8** %17, align 8, !dbg !1141
  %399 = call i64 @strlen(i8* %398) #9, !dbg !1142
  %400 = trunc i64 %399 to i16, !dbg !1142
  call void @packet__write_string(%struct.mosquitto__packet* %396, i8* %397, i16 zeroext %400), !dbg !1143
  br label %401, !dbg !1144

401:                                              ; preds = %395, %392
  %402 = load i8*, i8** %18, align 8, !dbg !1145
  %403 = icmp ne i8* %402, null, !dbg !1145
  br i1 %403, label %404, label %410, !dbg !1147

404:                                              ; preds = %401
  %405 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !1148
  %406 = load i8*, i8** %18, align 8, !dbg !1150
  %407 = load i8*, i8** %18, align 8, !dbg !1151
  %408 = call i64 @strlen(i8* %407) #9, !dbg !1152
  %409 = trunc i64 %408 to i16, !dbg !1152
  call void @packet__write_string(%struct.mosquitto__packet* %405, i8* %406, i16 zeroext %409), !dbg !1153
  br label %410, !dbg !1154

410:                                              ; preds = %404, %401
  %411 = load i16, i16* %7, align 2, !dbg !1155
  %412 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !1156
  %413 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %412, i32 0, i32 6, !dbg !1157
  store i16 %411, i16* %413, align 8, !dbg !1158
  %414 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !1159
  %415 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !1160
  %416 = call i32 @packet__queue(%struct.mosquitto* %414, %struct.mosquitto__packet* %415), !dbg !1161
  store i32 %416, i32* %5, align 4, !dbg !1162
  br label %417, !dbg !1162

417:                                              ; preds = %410, %246, %198, %116, %108, %67, %40
  %418 = load i32, i32* %5, align 4, !dbg !1163
  ret i32 %418, !dbg !1163
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
!llvm.module.flags = !{!139, !140, !141}
!llvm.ident = !{!142}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !134)
!1 = !DIFile(filename: "../lib/send_connect.c", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!2 = !{!3, !11, !34, !48, !54, !60, !66, !70, !104}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mosquitto__protocol", file: !4, line: 117, size: 32, elements: !5)
!4 = !DIFile(filename: "../lib/mosquitto_internal.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
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
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mosquitto__bridge_direction", file: !49, line: 456, size: 32, elements: !50)
!49 = !DIFile(filename: "./mosquitto_broker_internal.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!50 = !{!51, !52, !53}
!51 = !DIEnumerator(name: "bd_out", value: 0)
!52 = !DIEnumerator(name: "bd_in", value: 1)
!53 = !DIEnumerator(name: "bd_both", value: 2)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mosquitto_bridge_start_type", file: !49, line: 462, size: 32, elements: !55)
!55 = !{!56, !57, !58, !59}
!56 = !DIEnumerator(name: "bst_automatic", value: 0)
!57 = !DIEnumerator(name: "bst_lazy", value: 1)
!58 = !DIEnumerator(name: "bst_manual", value: 2)
!59 = !DIEnumerator(name: "bst_once", value: 3)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mosquitto_protocol", file: !61, line: 28, size: 32, elements: !62)
!61 = !DIFile(filename: "./mosquitto_broker.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!62 = !{!63, !64, !65}
!63 = !DIEnumerator(name: "mp_mqtt", value: 0)
!64 = !DIEnumerator(name: "mp_mqttsn", value: 1)
!65 = !DIEnumerator(name: "mp_websockets", value: 2)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mosquitto_msg_direction", file: !4, line: 73, size: 32, elements: !67)
!67 = !{!68, !69}
!68 = !DIEnumerator(name: "mosq_md_in", value: 0)
!69 = !DIEnumerator(name: "mosq_md_out", value: 1)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mosq_err_t", file: !71, line: 69, size: 32, elements: !72)
!71 = !DIFile(filename: "../lib/mosquitto.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103}
!73 = !DIEnumerator(name: "MOSQ_ERR_AUTH_CONTINUE", value: -4)
!74 = !DIEnumerator(name: "MOSQ_ERR_NO_SUBSCRIBERS", value: -3)
!75 = !DIEnumerator(name: "MOSQ_ERR_SUB_EXISTS", value: -2)
!76 = !DIEnumerator(name: "MOSQ_ERR_CONN_PENDING", value: -1)
!77 = !DIEnumerator(name: "MOSQ_ERR_SUCCESS", value: 0)
!78 = !DIEnumerator(name: "MOSQ_ERR_NOMEM", value: 1)
!79 = !DIEnumerator(name: "MOSQ_ERR_PROTOCOL", value: 2)
!80 = !DIEnumerator(name: "MOSQ_ERR_INVAL", value: 3)
!81 = !DIEnumerator(name: "MOSQ_ERR_NO_CONN", value: 4)
!82 = !DIEnumerator(name: "MOSQ_ERR_CONN_REFUSED", value: 5)
!83 = !DIEnumerator(name: "MOSQ_ERR_NOT_FOUND", value: 6)
!84 = !DIEnumerator(name: "MOSQ_ERR_CONN_LOST", value: 7)
!85 = !DIEnumerator(name: "MOSQ_ERR_TLS", value: 8)
!86 = !DIEnumerator(name: "MOSQ_ERR_PAYLOAD_SIZE", value: 9)
!87 = !DIEnumerator(name: "MOSQ_ERR_NOT_SUPPORTED", value: 10)
!88 = !DIEnumerator(name: "MOSQ_ERR_AUTH", value: 11)
!89 = !DIEnumerator(name: "MOSQ_ERR_ACL_DENIED", value: 12)
!90 = !DIEnumerator(name: "MOSQ_ERR_UNKNOWN", value: 13)
!91 = !DIEnumerator(name: "MOSQ_ERR_ERRNO", value: 14)
!92 = !DIEnumerator(name: "MOSQ_ERR_EAI", value: 15)
!93 = !DIEnumerator(name: "MOSQ_ERR_PROXY", value: 16)
!94 = !DIEnumerator(name: "MOSQ_ERR_PLUGIN_DEFER", value: 17)
!95 = !DIEnumerator(name: "MOSQ_ERR_MALFORMED_UTF8", value: 18)
!96 = !DIEnumerator(name: "MOSQ_ERR_KEEPALIVE", value: 19)
!97 = !DIEnumerator(name: "MOSQ_ERR_LOOKUP", value: 20)
!98 = !DIEnumerator(name: "MOSQ_ERR_MALFORMED_PACKET", value: 21)
!99 = !DIEnumerator(name: "MOSQ_ERR_DUPLICATE_PROPERTY", value: 22)
!100 = !DIEnumerator(name: "MOSQ_ERR_TLS_HANDSHAKE", value: 23)
!101 = !DIEnumerator(name: "MOSQ_ERR_QOS_NOT_SUPPORTED", value: 24)
!102 = !DIEnumerator(name: "MOSQ_ERR_OVERSIZE_PACKET", value: 25)
!103 = !DIEnumerator(name: "MOSQ_ERR_OCSP", value: 26)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mqtt5_property", file: !105, line: 108, size: 32, elements: !106)
!105 = !DIFile(filename: "../lib/mqtt_protocol.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133}
!107 = !DIEnumerator(name: "MQTT_PROP_PAYLOAD_FORMAT_INDICATOR", value: 1)
!108 = !DIEnumerator(name: "MQTT_PROP_MESSAGE_EXPIRY_INTERVAL", value: 2)
!109 = !DIEnumerator(name: "MQTT_PROP_CONTENT_TYPE", value: 3)
!110 = !DIEnumerator(name: "MQTT_PROP_RESPONSE_TOPIC", value: 8)
!111 = !DIEnumerator(name: "MQTT_PROP_CORRELATION_DATA", value: 9)
!112 = !DIEnumerator(name: "MQTT_PROP_SUBSCRIPTION_IDENTIFIER", value: 11)
!113 = !DIEnumerator(name: "MQTT_PROP_SESSION_EXPIRY_INTERVAL", value: 17)
!114 = !DIEnumerator(name: "MQTT_PROP_ASSIGNED_CLIENT_IDENTIFIER", value: 18)
!115 = !DIEnumerator(name: "MQTT_PROP_SERVER_KEEP_ALIVE", value: 19)
!116 = !DIEnumerator(name: "MQTT_PROP_AUTHENTICATION_METHOD", value: 21)
!117 = !DIEnumerator(name: "MQTT_PROP_AUTHENTICATION_DATA", value: 22)
!118 = !DIEnumerator(name: "MQTT_PROP_REQUEST_PROBLEM_INFORMATION", value: 23)
!119 = !DIEnumerator(name: "MQTT_PROP_WILL_DELAY_INTERVAL", value: 24)
!120 = !DIEnumerator(name: "MQTT_PROP_REQUEST_RESPONSE_INFORMATION", value: 25)
!121 = !DIEnumerator(name: "MQTT_PROP_RESPONSE_INFORMATION", value: 26)
!122 = !DIEnumerator(name: "MQTT_PROP_SERVER_REFERENCE", value: 28)
!123 = !DIEnumerator(name: "MQTT_PROP_REASON_STRING", value: 31)
!124 = !DIEnumerator(name: "MQTT_PROP_RECEIVE_MAXIMUM", value: 33)
!125 = !DIEnumerator(name: "MQTT_PROP_TOPIC_ALIAS_MAXIMUM", value: 34)
!126 = !DIEnumerator(name: "MQTT_PROP_TOPIC_ALIAS", value: 35)
!127 = !DIEnumerator(name: "MQTT_PROP_MAXIMUM_QOS", value: 36)
!128 = !DIEnumerator(name: "MQTT_PROP_RETAIN_AVAILABLE", value: 37)
!129 = !DIEnumerator(name: "MQTT_PROP_USER_PROPERTY", value: 38)
!130 = !DIEnumerator(name: "MQTT_PROP_MAXIMUM_PACKET_SIZE", value: 39)
!131 = !DIEnumerator(name: "MQTT_PROP_WILDCARD_SUB_AVAILABLE", value: 40)
!132 = !DIEnumerator(name: "MQTT_PROP_SUBSCRIPTION_ID_AVAILABLE", value: 41)
!133 = !DIEnumerator(name: "MQTT_PROP_SHARED_SUB_AVAILABLE", value: 42)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!138 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!139 = !{i32 2, !"Dwarf Version", i32 4}
!140 = !{i32 2, !"Debug Info Version", i32 3}
!141 = !{i32 1, !"wchar_size", i32 4}
!142 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!143 = distinct !DISubprogram(name: "simple_encrypt", scope: !1, file: !1, line: 37, type: !144, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !147)
!144 = !DISubroutineType(types: !145)
!145 = !{!146, !146}
!146 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!147 = !{}
!148 = !DILocalVariable(name: "val", arg: 1, scope: !143, file: !1, line: 37, type: !146)
!149 = !DILocation(line: 37, column: 24, scope: !143)
!150 = !DILocalVariable(name: "key", scope: !143, file: !1, line: 38, type: !146)
!151 = !DILocation(line: 38, column: 6, scope: !143)
!152 = !DILocalVariable(name: "encrypted", scope: !143, file: !1, line: 40, type: !146)
!153 = !DILocation(line: 40, column: 6, scope: !143)
!154 = !DILocation(line: 40, column: 18, scope: !143)
!155 = !DILocation(line: 40, column: 24, scope: !143)
!156 = !DILocation(line: 40, column: 22, scope: !143)
!157 = !DILocation(line: 42, column: 9, scope: !143)
!158 = !DILocation(line: 42, column: 2, scope: !143)
!159 = distinct !DISubprogram(name: "change_static_value", scope: !1, file: !1, line: 46, type: !144, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !147)
!160 = !DILocalVariable(name: "static_value", arg: 1, scope: !159, file: !1, line: 46, type: !146)
!161 = !DILocation(line: 46, column: 29, scope: !159)
!162 = !DILocalVariable(name: "nonce", scope: !159, file: !1, line: 47, type: !163)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 128, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 4)
!166 = !DILocation(line: 47, column: 6, scope: !159)
!167 = !DILocalVariable(name: "rawtime", scope: !159, file: !1, line: 48, type: !168)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !169, line: 7, baseType: !170)
!169 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !171, line: 148, baseType: !172)
!171 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!172 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!173 = !DILocation(line: 48, column: 9, scope: !159)
!174 = !DILocalVariable(name: "ptm", scope: !159, file: !1, line: 49, type: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !177, line: 7, size: 448, elements: !178)
!177 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !176, file: !177, line: 9, baseType: !146, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !176, file: !177, line: 10, baseType: !146, size: 32, offset: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !176, file: !177, line: 11, baseType: !146, size: 32, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !176, file: !177, line: 12, baseType: !146, size: 32, offset: 96)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !176, file: !177, line: 13, baseType: !146, size: 32, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !176, file: !177, line: 14, baseType: !146, size: 32, offset: 160)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !176, file: !177, line: 15, baseType: !146, size: 32, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !176, file: !177, line: 16, baseType: !146, size: 32, offset: 224)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !176, file: !177, line: 17, baseType: !146, size: 32, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !176, file: !177, line: 20, baseType: !172, size: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !176, file: !177, line: 21, baseType: !136, size: 64, offset: 384)
!190 = !DILocation(line: 49, column: 17, scope: !159)
!191 = !DILocation(line: 50, column: 2, scope: !159)
!192 = !DILocation(line: 51, column: 8, scope: !159)
!193 = !DILocation(line: 51, column: 6, scope: !159)
!194 = !DILocation(line: 53, column: 7, scope: !195)
!195 = distinct !DILexicalBlock(scope: !159, file: !1, line: 53, column: 6)
!196 = !DILocation(line: 53, column: 12, scope: !195)
!197 = !DILocation(line: 53, column: 20, scope: !195)
!198 = !DILocation(line: 53, column: 24, scope: !195)
!199 = !DILocation(line: 53, column: 6, scope: !159)
!200 = !DILocation(line: 54, column: 18, scope: !201)
!201 = distinct !DILexicalBlock(scope: !195, file: !1, line: 53, column: 30)
!202 = !DILocation(line: 54, column: 30, scope: !201)
!203 = !DILocation(line: 54, column: 35, scope: !201)
!204 = !DILocation(line: 54, column: 33, scope: !201)
!205 = !DILocation(line: 54, column: 16, scope: !201)
!206 = !DILocation(line: 55, column: 2, scope: !201)
!207 = !DILocation(line: 56, column: 18, scope: !208)
!208 = distinct !DILexicalBlock(scope: !195, file: !1, line: 55, column: 9)
!209 = !DILocation(line: 56, column: 30, scope: !208)
!210 = !DILocation(line: 56, column: 35, scope: !208)
!211 = !DILocation(line: 56, column: 33, scope: !208)
!212 = !DILocation(line: 56, column: 16, scope: !208)
!213 = !DILocation(line: 58, column: 9, scope: !159)
!214 = !DILocation(line: 58, column: 2, scope: !159)
!215 = distinct !DISubprogram(name: "send__connect", scope: !1, file: !1, line: 61, type: !216, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !147)
!216 = !DISubroutineType(types: !217)
!217 = !{!146, !218, !230, !298, !737}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto", file: !4, line: 207, size: 4032, elements: !220)
!220 = !{!221, !223, !224, !226, !227, !228, !229, !234, !235, !236, !237, !238, !239, !264, !265, !266, !312, !318, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !390, !679, !680, !681, !682, !683, !712, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !736}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !219, file: !4, line: 208, baseType: !222, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "mosq_sock_t", file: !4, line: 70, baseType: !146)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !219, file: !4, line: 215, baseType: !3, size: 32, offset: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !219, file: !4, line: 216, baseType: !225, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !219, file: !4, line: 217, baseType: !225, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !219, file: !4, line: 218, baseType: !225, size: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !219, file: !4, line: 219, baseType: !225, size: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !219, file: !4, line: 220, baseType: !230, size: 16, offset: 320)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !231, line: 25, baseType: !232)
!231 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !171, line: 39, baseType: !233)
!233 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "last_mid", scope: !219, file: !4, line: 221, baseType: !230, size: 16, offset: 336)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !219, file: !4, line: 222, baseType: !11, size: 32, offset: 352)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "last_msg_in", scope: !219, file: !4, line: 223, baseType: !168, size: 64, offset: 384)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "next_msg_out", scope: !219, file: !4, line: 224, baseType: !168, size: 64, offset: 448)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "ping_t", scope: !219, file: !4, line: 225, baseType: !168, size: 64, offset: 512)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "in_packet", scope: !219, file: !4, line: 226, baseType: !240, size: 320, offset: 576)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__packet", file: !4, line: 150, size: 320, elements: !241)
!241 = !{!242, !247, !249, !253, !254, !255, !256, !257, !258, !259}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !240, file: !4, line: 151, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !231, line: 24, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !171, line: 37, baseType: !246)
!246 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !240, file: !4, line: 152, baseType: !248, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "remaining_mult", scope: !240, file: !4, line: 153, baseType: !250, size: 32, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !231, line: 26, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !171, line: 41, baseType: !252)
!252 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "remaining_length", scope: !240, file: !4, line: 154, baseType: !250, size: 32, offset: 160)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "packet_length", scope: !240, file: !4, line: 155, baseType: !250, size: 32, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "to_process", scope: !240, file: !4, line: 156, baseType: !250, size: 32, offset: 224)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !240, file: !4, line: 157, baseType: !250, size: 32, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "mid", scope: !240, file: !4, line: 158, baseType: !230, size: 16, offset: 288)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !240, file: !4, line: 159, baseType: !244, size: 8, offset: 304)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "remaining_count", scope: !240, file: !4, line: 160, baseType: !260, size: 8, offset: 312)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !261, line: 24, baseType: !262)
!261 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !171, line: 36, baseType: !263)
!263 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "current_out_packet", scope: !219, file: !4, line: 227, baseType: !248, size: 64, offset: 896)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "out_packet", scope: !219, file: !4, line: 228, baseType: !248, size: 64, offset: 960)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "will", scope: !219, file: !4, line: 229, baseType: !267, size: 64, offset: 1024)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_message_all", file: !4, line: 163, size: 704, elements: !269)
!269 = !{!270, !271, !272, !299, !300, !301, !302, !311}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !4, line: 164, baseType: !267, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !268, file: !4, line: 165, baseType: !267, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !268, file: !4, line: 166, baseType: !273, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "mosquitto_property", file: !71, line: 135, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt5__property", file: !276, line: 27, size: 384, elements: !277)
!276 = !DIFile(filename: "../lib/property_mosq.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!277 = !{!278, !280, !293, !294, !297}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !275, file: !276, line: 28, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !275, file: !276, line: 36, baseType: !281, size: 128, offset: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !275, file: !276, line: 29, size: 128, elements: !282)
!282 = !{!283, !284, !285, !286, !287, !292}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "i8", scope: !281, file: !276, line: 30, baseType: !244, size: 8)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "i16", scope: !281, file: !276, line: 31, baseType: !230, size: 16)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "i32", scope: !281, file: !276, line: 32, baseType: !250, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "varint", scope: !281, file: !276, line: 33, baseType: !250, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "bin", scope: !281, file: !276, line: 34, baseType: !288, size: 128)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt__string", file: !276, line: 22, size: 128, elements: !289)
!289 = !{!290, !291}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !288, file: !276, line: 23, baseType: !225, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !288, file: !276, line: 24, baseType: !146, size: 32, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !281, file: !276, line: 35, baseType: !288, size: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !275, file: !276, line: 37, baseType: !288, size: 128, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !275, file: !276, line: 38, baseType: !295, size: 32, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !261, line: 26, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !171, line: 40, baseType: !146)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "client_generated", scope: !275, file: !276, line: 39, baseType: !298, size: 8, offset: 352)
!298 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !268, file: !4, line: 167, baseType: !168, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !268, file: !4, line: 169, baseType: !34, size: 32, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !268, file: !4, line: 170, baseType: !298, size: 8, offset: 288)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !268, file: !4, line: 171, baseType: !303, size: 320, offset: 320)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_message", file: !71, line: 125, size: 320, elements: !304)
!304 = !{!305, !306, !307, !308, !309, !310}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "mid", scope: !303, file: !71, line: 126, baseType: !146, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !303, file: !71, line: 127, baseType: !225, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !303, file: !71, line: 128, baseType: !135, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "payloadlen", scope: !303, file: !71, line: 129, baseType: !146, size: 32, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !303, file: !71, line: 130, baseType: !146, size: 32, offset: 224)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "retain", scope: !303, file: !71, line: 131, baseType: !298, size: 8, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_interval", scope: !268, file: !4, line: 172, baseType: !250, size: 32, offset: 640)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "aliases", scope: !219, file: !4, line: 230, baseType: !313, size: 64, offset: 1088)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__alias", file: !4, line: 139, size: 128, elements: !315)
!315 = !{!316, !317}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !314, file: !4, line: 140, baseType: !225, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !314, file: !4, line: 141, baseType: !230, size: 16, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "will_delay_entry", scope: !219, file: !4, line: 231, baseType: !319, size: 64, offset: 1152)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "will_delay_list", file: !4, line: 182, size: 192, elements: !321)
!321 = !{!322, !323, !324}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !320, file: !4, line: 183, baseType: !218, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !320, file: !4, line: 184, baseType: !319, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !4, line: 185, baseType: !319, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "maximum_packet_size", scope: !219, file: !4, line: 232, baseType: !250, size: 32, offset: 1216)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "alias_count", scope: !219, file: !4, line: 233, baseType: !146, size: 32, offset: 1248)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "will_delay_interval", scope: !219, file: !4, line: 234, baseType: !250, size: 32, offset: 1280)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "will_delay_time", scope: !219, file: !4, line: 235, baseType: !168, size: 64, offset: 1344)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "want_write", scope: !219, file: !4, line: 257, baseType: !298, size: 8, offset: 1408)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "want_connect", scope: !219, file: !4, line: 258, baseType: !298, size: 8, offset: 1416)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "clean_start", scope: !219, file: !4, line: 269, baseType: !298, size: 8, offset: 1424)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "session_expiry_interval", scope: !219, file: !4, line: 270, baseType: !250, size: 32, offset: 1440)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "session_expiry_time", scope: !219, file: !4, line: 271, baseType: !168, size: 64, offset: 1472)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "removed_from_by_id", scope: !219, file: !4, line: 273, baseType: !298, size: 8, offset: 1536)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "is_dropping", scope: !219, file: !4, line: 274, baseType: !298, size: 8, offset: 1544)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "is_bridge", scope: !219, file: !4, line: 275, baseType: !298, size: 8, offset: 1552)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !219, file: !4, line: 276, baseType: !338, size: 64, offset: 1600)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__bridge", file: !49, line: 484, size: 1344, elements: !340)
!340 = !{!341, !342, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !339, file: !49, line: 485, baseType: !225, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "addresses", scope: !339, file: !49, line: 486, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bridge_address", file: !49, line: 479, size: 128, elements: !345)
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !344, file: !49, line: 480, baseType: !225, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !344, file: !49, line: 481, baseType: !146, size: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "cur_address", scope: !339, file: !49, line: 487, baseType: !146, size: 32, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "address_count", scope: !339, file: !49, line: 488, baseType: !146, size: 32, offset: 160)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "primary_retry", scope: !339, file: !49, line: 489, baseType: !168, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "primary_retry_sock", scope: !339, file: !49, line: 490, baseType: !222, size: 32, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "round_robin", scope: !339, file: !49, line: 491, baseType: !298, size: 8, offset: 288)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "try_private", scope: !339, file: !49, line: 492, baseType: !298, size: 8, offset: 296)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "try_private_accepted", scope: !339, file: !49, line: 493, baseType: !298, size: 8, offset: 304)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "clean_start", scope: !339, file: !49, line: 494, baseType: !298, size: 8, offset: 312)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !339, file: !49, line: 495, baseType: !146, size: 32, offset: 320)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "topics", scope: !339, file: !49, line: 496, baseType: !358, size: 64, offset: 384)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__bridge_topic", file: !49, line: 469, size: 384, elements: !360)
!360 = !{!361, !362, !363, !364, !365, !366, !367}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !359, file: !49, line: 470, baseType: !225, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !359, file: !49, line: 471, baseType: !146, size: 32, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !359, file: !49, line: 472, baseType: !48, size: 32, offset: 96)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "local_prefix", scope: !359, file: !49, line: 473, baseType: !225, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "remote_prefix", scope: !359, file: !49, line: 474, baseType: !225, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "local_topic", scope: !359, file: !49, line: 475, baseType: !225, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "remote_topic", scope: !359, file: !49, line: 476, baseType: !225, size: 64, offset: 320)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "topic_count", scope: !339, file: !49, line: 497, baseType: !146, size: 32, offset: 448)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "topic_remapping", scope: !339, file: !49, line: 498, baseType: !298, size: 8, offset: 480)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_version", scope: !339, file: !49, line: 499, baseType: !3, size: 32, offset: 512)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "restart_t", scope: !339, file: !49, line: 500, baseType: !168, size: 64, offset: 576)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "remote_clientid", scope: !339, file: !49, line: 501, baseType: !225, size: 64, offset: 640)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "remote_username", scope: !339, file: !49, line: 502, baseType: !225, size: 64, offset: 704)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "remote_password", scope: !339, file: !49, line: 503, baseType: !225, size: 64, offset: 768)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "local_clientid", scope: !339, file: !49, line: 504, baseType: !225, size: 64, offset: 832)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "local_username", scope: !339, file: !49, line: 505, baseType: !225, size: 64, offset: 896)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "local_password", scope: !339, file: !49, line: 506, baseType: !225, size: 64, offset: 960)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "notification_topic", scope: !339, file: !49, line: 507, baseType: !225, size: 64, offset: 1024)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "notifications", scope: !339, file: !49, line: 508, baseType: !298, size: 8, offset: 1088)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "notifications_local_only", scope: !339, file: !49, line: 509, baseType: !298, size: 8, offset: 1096)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "start_type", scope: !339, file: !49, line: 510, baseType: !54, size: 32, offset: 1120)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "idle_timeout", scope: !339, file: !49, line: 511, baseType: !146, size: 32, offset: 1152)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "restart_timeout", scope: !339, file: !49, line: 512, baseType: !146, size: 32, offset: 1184)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "backoff_base", scope: !339, file: !49, line: 513, baseType: !146, size: 32, offset: 1216)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "backoff_cap", scope: !339, file: !49, line: 514, baseType: !146, size: 32, offset: 1248)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "threshold", scope: !339, file: !49, line: 515, baseType: !146, size: 32, offset: 1280)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "lazy_reconnect", scope: !339, file: !49, line: 516, baseType: !298, size: 8, offset: 1312)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "attempt_unsubscribe", scope: !339, file: !49, line: 517, baseType: !298, size: 8, offset: 1320)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "initial_notification_done", scope: !339, file: !49, line: 518, baseType: !298, size: 8, offset: 1328)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "msgs_in", scope: !219, file: !4, line: 277, baseType: !391, size: 384, offset: 1664)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_msg_data", file: !4, line: 188, size: 384, elements: !392)
!392 = !{!393, !672, !673, !674, !675, !676, !677, !678}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "inflight", scope: !391, file: !4, line: 190, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_client_msg", file: !49, line: 382, size: 448, elements: !396)
!396 = !{!397, !398, !399, !664, !665, !666, !667, !668, !669, !670, !671}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !395, file: !49, line: 383, baseType: !394, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !395, file: !49, line: 384, baseType: !394, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !395, file: !49, line: 385, baseType: !400, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_msg_store", file: !49, line: 360, size: 896, elements: !402)
!402 = !{!403, !404, !405, !410, !411, !412, !642, !644, !645, !646, !647, !648, !657, !658, !659, !660, !661, !662, !663}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !401, file: !49, line: 361, baseType: !400, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !401, file: !49, line: 362, baseType: !400, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "db_id", scope: !401, file: !49, line: 363, baseType: !406, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "dbid_t", file: !49, line: 135, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !231, line: 27, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !171, line: 44, baseType: !409)
!409 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !401, file: !49, line: 364, baseType: !225, size: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "source_username", scope: !401, file: !49, line: 365, baseType: !225, size: 64, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "source_listener", scope: !401, file: !49, line: 366, baseType: !413, size: 64, offset: 320)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__listener", file: !49, line: 230, size: 1280, elements: !415)
!415 = !{!416, !417, !418, !419, !420, !421, !422, !424, !425, !426, !427, !428, !429, !430, !431, !598, !641}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !414, file: !49, line: 231, baseType: !146, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !414, file: !49, line: 232, baseType: !230, size: 16, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !414, file: !49, line: 233, baseType: !225, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "bind_interface", scope: !414, file: !49, line: 234, baseType: !225, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "max_connections", scope: !414, file: !49, line: 235, baseType: !146, size: 32, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "mount_point", scope: !414, file: !49, line: 236, baseType: !225, size: 64, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "socks", scope: !414, file: !49, line: 237, baseType: !423, size: 64, offset: 320)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "sock_count", scope: !414, file: !49, line: 238, baseType: !146, size: 32, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "client_count", scope: !414, file: !49, line: 239, baseType: !146, size: 32, offset: 416)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !414, file: !49, line: 240, baseType: !60, size: 32, offset: 448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "socket_domain", scope: !414, file: !49, line: 241, baseType: !146, size: 32, offset: 480)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "use_username_as_clientid", scope: !414, file: !49, line: 242, baseType: !298, size: 8, offset: 512)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "maximum_qos", scope: !414, file: !49, line: 243, baseType: !244, size: 8, offset: 520)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "max_topic_alias", scope: !414, file: !49, line: 244, baseType: !230, size: 16, offset: 528)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "security_options", scope: !414, file: !49, line: 268, baseType: !432, size: 576, offset: 576)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__security_options", file: !49, line: 212, size: 576, elements: !433)
!433 = !{!434, !449, !450, !451, !452, !453, !593, !594, !595, !596, !597}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "acl_list", scope: !432, file: !49, line: 217, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__acl_user", file: !49, line: 415, size: 192, elements: !437)
!437 = !{!438, !439, !440}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !436, file: !49, line: 416, baseType: !435, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !436, file: !49, line: 417, baseType: !225, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "acl", scope: !436, file: !49, line: 418, baseType: !441, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__acl", file: !49, line: 407, size: 256, elements: !443)
!443 = !{!444, !445, !446, !447, !448}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !442, file: !49, line: 408, baseType: !441, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !442, file: !49, line: 409, baseType: !225, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !442, file: !49, line: 410, baseType: !146, size: 32, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !442, file: !49, line: 411, baseType: !146, size: 32, offset: 160)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ccount", scope: !442, file: !49, line: 412, baseType: !146, size: 32, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "acl_patterns", scope: !432, file: !49, line: 218, baseType: !441, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "password_file", scope: !432, file: !49, line: 219, baseType: !225, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "psk_file", scope: !432, file: !49, line: 220, baseType: !225, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "acl_file", scope: !432, file: !49, line: 221, baseType: !225, size: 64, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "auth_plugin_configs", scope: !432, file: !49, line: 222, baseType: !454, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__auth_plugin_config", file: !49, line: 202, size: 1920, elements: !456)
!456 = !{!457, !458, !465, !466, !467}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !455, file: !49, line: 204, baseType: !225, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !455, file: !49, line: 205, baseType: !459, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_opt", file: !461, line: 35, size: 128, elements: !462)
!461 = !DIFile(filename: "./mosquitto_plugin.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!462 = !{!463, !464}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !460, file: !461, line: 36, baseType: !225, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !460, file: !461, line: 37, baseType: !225, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "option_count", scope: !455, file: !49, line: 206, baseType: !146, size: 32, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "deny_special_chars", scope: !455, file: !49, line: 207, baseType: !298, size: 8, offset: 160)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "plugin", scope: !455, file: !49, line: 209, baseType: !468, size: 1728, offset: 192)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__auth_plugin", file: !49, line: 169, size: 1728, elements: !469)
!469 = !{!470, !471, !472, !476, !482, !487, !492, !494, !509, !514, !519, !525, !530, !532, !534, !536, !538, !545, !550, !555, !565, !570, !575, !577, !582, !587, !592}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "lib", scope: !468, file: !49, line: 170, baseType: !135, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !468, file: !49, line: 171, baseType: !135, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_version", scope: !468, file: !49, line: 172, baseType: !473, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!146}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_init_v4", scope: !468, file: !49, line: 174, baseType: !477, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_init_v4", file: !49, line: 137, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!146, !481, !459, !146}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_cleanup_v4", scope: !468, file: !49, line: 175, baseType: !483, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_cleanup_v4", file: !49, line: 138, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!146, !135, !459, !146}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "security_init_v4", scope: !468, file: !49, line: 176, baseType: !488, size: 64, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_security_init_v4", file: !49, line: 139, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!146, !135, !459, !146, !298}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "security_cleanup_v4", scope: !468, file: !49, line: 177, baseType: !493, size: 64, offset: 384)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_security_cleanup_v4", file: !49, line: 140, baseType: !489)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "acl_check_v4", scope: !468, file: !49, line: 178, baseType: !495, size: 64, offset: 448)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_acl_check_v4", file: !49, line: 141, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!146, !135, !146, !218, !499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_acl_msg", file: !461, line: 45, size: 256, elements: !501)
!501 = !{!502, !503, !506, !507, !508}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !500, file: !461, line: 46, baseType: !136, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !500, file: !461, line: 47, baseType: !504, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "payloadlen", scope: !500, file: !461, line: 48, baseType: !172, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !500, file: !461, line: 49, baseType: !146, size: 32, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "retain", scope: !500, file: !461, line: 50, baseType: !298, size: 8, offset: 224)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "unpwd_check_v4", scope: !468, file: !49, line: 179, baseType: !510, size: 64, offset: 512)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_unpwd_check_v4", file: !49, line: 142, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!146, !135, !218, !136, !136}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "psk_key_get_v4", scope: !468, file: !49, line: 180, baseType: !515, size: 64, offset: 576)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_psk_key_get_v4", file: !49, line: 143, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!146, !135, !218, !136, !136, !225, !146}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "auth_start_v4", scope: !468, file: !49, line: 181, baseType: !520, size: 64, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_auth_start_v4", file: !49, line: 144, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!146, !135, !218, !136, !298, !504, !230, !481, !524}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "auth_continue_v4", scope: !468, file: !49, line: 182, baseType: !526, size: 64, offset: 704)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_auth_continue_v4", file: !49, line: 145, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!146, !135, !218, !136, !504, !230, !481, !524}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_init_v3", scope: !468, file: !49, line: 184, baseType: !531, size: 64, offset: 768)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_init_v3", file: !49, line: 147, baseType: !478)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_cleanup_v3", scope: !468, file: !49, line: 185, baseType: !533, size: 64, offset: 832)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_cleanup_v3", file: !49, line: 148, baseType: !484)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "security_init_v3", scope: !468, file: !49, line: 186, baseType: !535, size: 64, offset: 896)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_security_init_v3", file: !49, line: 149, baseType: !489)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "security_cleanup_v3", scope: !468, file: !49, line: 187, baseType: !537, size: 64, offset: 960)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_security_cleanup_v3", file: !49, line: 150, baseType: !489)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "acl_check_v3", scope: !468, file: !49, line: 188, baseType: !539, size: 64, offset: 1024)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_acl_check_v3", file: !49, line: 151, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!146, !135, !146, !543, !499}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "unpwd_check_v3", scope: !468, file: !49, line: 189, baseType: !546, size: 64, offset: 1088)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_unpwd_check_v3", file: !49, line: 152, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!146, !135, !543, !136, !136}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "psk_key_get_v3", scope: !468, file: !49, line: 190, baseType: !551, size: 64, offset: 1152)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_psk_key_get_v3", file: !49, line: 153, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!146, !135, !543, !136, !136, !225, !146}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_init_v2", scope: !468, file: !49, line: 192, baseType: !556, size: 64, offset: 1216)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_init_v2", file: !49, line: 155, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!146, !481, !560, !146}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_auth_opt", file: !461, line: 40, size: 128, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !561, file: !461, line: 41, baseType: !225, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !561, file: !461, line: 42, baseType: !225, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_cleanup_v2", scope: !468, file: !49, line: 193, baseType: !566, size: 64, offset: 1280)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_cleanup_v2", file: !49, line: 156, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!146, !135, !560, !146}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "security_init_v2", scope: !468, file: !49, line: 194, baseType: !571, size: 64, offset: 1344)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_security_init_v2", file: !49, line: 157, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!146, !135, !560, !146, !298}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "security_cleanup_v2", scope: !468, file: !49, line: 195, baseType: !576, size: 64, offset: 1408)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_security_cleanup_v2", file: !49, line: 158, baseType: !572)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "acl_check_v2", scope: !468, file: !49, line: 196, baseType: !578, size: 64, offset: 1472)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_acl_check_v2", file: !49, line: 159, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!146, !135, !136, !136, !136, !146}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "unpwd_check_v2", scope: !468, file: !49, line: 197, baseType: !583, size: 64, offset: 1536)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_unpwd_check_v2", file: !49, line: 160, baseType: !584)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!146, !135, !136, !136}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "psk_key_get_v2", scope: !468, file: !49, line: 198, baseType: !588, size: 64, offset: 1600)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_psk_key_get_v2", file: !49, line: 161, baseType: !589)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!146, !135, !136, !136, !225, !146}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !468, file: !49, line: 199, baseType: !146, size: 32, offset: 1664)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "auth_plugin_config_count", scope: !432, file: !49, line: 223, baseType: !146, size: 32, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "allow_anonymous", scope: !432, file: !49, line: 224, baseType: !260, size: 8, offset: 416)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "allow_zero_length_clientid", scope: !432, file: !49, line: 225, baseType: !298, size: 8, offset: 424)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "auto_id_prefix", scope: !432, file: !49, line: 226, baseType: !225, size: 64, offset: 448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "auto_id_prefix_len", scope: !432, file: !49, line: 227, baseType: !146, size: 32, offset: 512)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "unpwd", scope: !414, file: !49, line: 269, baseType: !599, size: 64, offset: 1152)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__unpwd", file: !49, line: 396, size: 576, elements: !601)
!601 = !{!602, !603, !604}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !600, file: !49, line: 397, baseType: !225, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !600, file: !49, line: 398, baseType: !225, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "hh", scope: !600, file: !49, line: 404, baseType: !605, size: 448, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "UT_hash_handle", file: !606, line: 946, baseType: !607)
!606 = !DIFile(filename: "../src/deps/uthash.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UT_hash_handle", file: !606, line: 937, size: 448, elements: !608)
!608 = !{!609, !634, !635, !636, !637, !638, !639, !640}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "tbl", scope: !607, file: !606, line: 938, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UT_hash_table", file: !606, line: 904, size: 512, elements: !612)
!612 = !{!613, !622, !623, !624, !625, !626, !629, !630, !631, !632, !633}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !611, file: !606, line: 905, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "UT_hash_bucket", file: !606, line: 898, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UT_hash_bucket", file: !606, line: 880, size: 128, elements: !617)
!617 = !{!618, !620, !621}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "hh_head", scope: !616, file: !606, line: 881, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !616, file: !606, line: 882, baseType: !252, size: 32, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "expand_mult", scope: !616, file: !606, line: 896, baseType: !252, size: 32, offset: 96)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "num_buckets", scope: !611, file: !606, line: 906, baseType: !252, size: 32, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "log2_num_buckets", scope: !611, file: !606, line: 906, baseType: !252, size: 32, offset: 96)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "num_items", scope: !611, file: !606, line: 907, baseType: !252, size: 32, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !611, file: !606, line: 908, baseType: !619, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "hho", scope: !611, file: !606, line: 909, baseType: !627, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !628, line: 51, baseType: !172)
!628 = !DIFile(filename: "/usr/lib/llvm-6.0/lib/clang/6.0.0/include/stddef.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!629 = !DIDerivedType(tag: DW_TAG_member, name: "ideal_chain_maxlen", scope: !611, file: !606, line: 913, baseType: !252, size: 32, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "nonideal_items", scope: !611, file: !606, line: 918, baseType: !252, size: 32, offset: 352)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "ineff_expands", scope: !611, file: !606, line: 926, baseType: !252, size: 32, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "noexpand", scope: !611, file: !606, line: 926, baseType: !252, size: 32, offset: 416)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !611, file: !606, line: 928, baseType: !250, size: 32, offset: 448)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !607, file: !606, line: 939, baseType: !135, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !607, file: !606, line: 940, baseType: !135, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "hh_prev", scope: !607, file: !606, line: 941, baseType: !619, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "hh_next", scope: !607, file: !606, line: 942, baseType: !619, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !607, file: !606, line: 943, baseType: !135, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !607, file: !606, line: 944, baseType: !252, size: 32, offset: 384)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "hashv", scope: !607, file: !606, line: 945, baseType: !252, size: 32, offset: 416)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "psk_id", scope: !414, file: !49, line: 270, baseType: !599, size: 64, offset: 1216)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "dest_ids", scope: !401, file: !49, line: 367, baseType: !643, size: 64, offset: 384)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "dest_id_count", scope: !401, file: !49, line: 368, baseType: !146, size: 32, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !401, file: !49, line: 369, baseType: !146, size: 32, offset: 480)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !401, file: !49, line: 370, baseType: !225, size: 64, offset: 512)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !401, file: !49, line: 371, baseType: !273, size: 64, offset: 576)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !401, file: !49, line: 372, baseType: !649, size: 64, offset: 640)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "mosquitto__payload_uhpa", file: !49, line: 125, baseType: !650)
!650 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !49, line: 122, size: 64, elements: !651)
!651 = !{!652, !653}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !650, file: !49, line: 123, baseType: !135, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !650, file: !49, line: 124, baseType: !654, size: 64)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 8)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "message_expiry_time", scope: !401, file: !49, line: 373, baseType: !168, size: 64, offset: 704)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "payloadlen", scope: !401, file: !49, line: 374, baseType: !250, size: 32, offset: 768)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "source_mid", scope: !401, file: !49, line: 375, baseType: !230, size: 16, offset: 800)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "mid", scope: !401, file: !49, line: 376, baseType: !230, size: 16, offset: 816)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !401, file: !49, line: 377, baseType: !244, size: 8, offset: 832)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "retain", scope: !401, file: !49, line: 378, baseType: !298, size: 8, offset: 840)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !401, file: !49, line: 379, baseType: !244, size: 8, offset: 848)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !395, file: !49, line: 386, baseType: !273, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !395, file: !49, line: 387, baseType: !168, size: 64, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "mid", scope: !395, file: !49, line: 388, baseType: !230, size: 16, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !395, file: !49, line: 389, baseType: !244, size: 8, offset: 336)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "retain", scope: !395, file: !49, line: 390, baseType: !298, size: 8, offset: 344)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !395, file: !49, line: 391, baseType: !66, size: 32, offset: 352)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !395, file: !49, line: 392, baseType: !34, size: 32, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !395, file: !49, line: 393, baseType: !298, size: 8, offset: 416)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "queued", scope: !391, file: !4, line: 191, baseType: !394, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "msg_bytes", scope: !391, file: !4, line: 192, baseType: !409, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "msg_bytes12", scope: !391, file: !4, line: 193, baseType: !409, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "msg_count", scope: !391, file: !4, line: 194, baseType: !146, size: 32, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "msg_count12", scope: !391, file: !4, line: 195, baseType: !146, size: 32, offset: 288)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "inflight_quota", scope: !391, file: !4, line: 203, baseType: !146, size: 32, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "inflight_maximum", scope: !391, file: !4, line: 204, baseType: !230, size: 16, offset: 352)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "msgs_out", scope: !219, file: !4, line: 278, baseType: !391, size: 384, offset: 2048)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "acl_list", scope: !219, file: !4, line: 279, baseType: !435, size: 64, offset: 2432)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !219, file: !4, line: 280, baseType: !413, size: 64, offset: 2496)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "out_packet_last", scope: !219, file: !4, line: 281, baseType: !248, size: 64, offset: 2560)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "subs", scope: !219, file: !4, line: 282, baseType: !684, size: 64, offset: 2624)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__subhier", file: !49, line: 343, size: 896, elements: !687)
!687 = !{!688, !689, !690, !691, !702, !709, !710, !711}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "hh", scope: !686, file: !49, line: 344, baseType: !605, size: 448)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !686, file: !49, line: 345, baseType: !685, size: 64, offset: 448)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !686, file: !49, line: 346, baseType: !685, size: 64, offset: 512)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "subs", scope: !686, file: !49, line: 347, baseType: !692, size: 64, offset: 576)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__subleaf", file: !49, line: 320, size: 256, elements: !694)
!694 = !{!695, !696, !697, !698, !699, !700, !701}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !693, file: !49, line: 321, baseType: !692, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !693, file: !49, line: 322, baseType: !692, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !693, file: !49, line: 323, baseType: !218, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !693, file: !49, line: 324, baseType: !250, size: 32, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !693, file: !49, line: 325, baseType: !244, size: 8, offset: 224)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "no_local", scope: !693, file: !49, line: 326, baseType: !298, size: 8, offset: 232)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "retain_as_published", scope: !693, file: !49, line: 327, baseType: !298, size: 8, offset: 240)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !686, file: !49, line: 348, baseType: !703, size: 64, offset: 640)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__subshared", file: !49, line: 337, size: 576, elements: !705)
!705 = !{!706, !707, !708}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "hh", scope: !704, file: !49, line: 338, baseType: !605, size: 448)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !704, file: !49, line: 339, baseType: !225, size: 64, offset: 448)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "subs", scope: !704, file: !49, line: 340, baseType: !692, size: 64, offset: 512)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "retained", scope: !686, file: !49, line: 349, baseType: !400, size: 64, offset: 704)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !686, file: !49, line: 350, baseType: !225, size: 64, offset: 768)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "topic_len", scope: !686, file: !49, line: 351, baseType: !230, size: 16, offset: 832)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "shared_subs", scope: !219, file: !4, line: 283, baseType: !713, size: 64, offset: 2688)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__subshared_ref", file: !49, line: 331, size: 128, elements: !716)
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "hier", scope: !715, file: !49, line: 332, baseType: !685, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !715, file: !49, line: 333, baseType: !703, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "auth_method", scope: !219, file: !4, line: 284, baseType: !225, size: 64, offset: 2752)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "sub_count", scope: !219, file: !4, line: 285, baseType: !146, size: 32, offset: 2816)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "shared_sub_count", scope: !219, file: !4, line: 286, baseType: !146, size: 32, offset: 2848)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "pollfd_index", scope: !219, file: !4, line: 287, baseType: !146, size: 32, offset: 2880)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ws_want_write", scope: !219, file: !4, line: 296, baseType: !298, size: 8, offset: 2912)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "assigned_id", scope: !219, file: !4, line: 297, baseType: !298, size: 8, offset: 2920)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "maximum_qos", scope: !219, file: !4, line: 337, baseType: !244, size: 8, offset: 2928)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "hh_id", scope: !219, file: !4, line: 340, baseType: !605, size: 448, offset: 2944)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "hh_sock", scope: !219, file: !4, line: 341, baseType: !605, size: 448, offset: 3392)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "for_free_next", scope: !219, file: !4, line: 342, baseType: !218, size: 64, offset: 3840)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_list_item", scope: !219, file: !4, line: 343, baseType: !730, size: 64, offset: 3904)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "session_expiry_list", file: !4, line: 144, size: 192, elements: !732)
!732 = !{!733, !734, !735}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !731, file: !4, line: 145, baseType: !218, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !731, file: !4, line: 146, baseType: !730, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !731, file: !4, line: 147, baseType: !730, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "nonce", scope: !219, file: !4, line: 348, baseType: !146, size: 32, offset: 3968)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!739 = !DILocalVariable(name: "mosq", arg: 1, scope: !215, file: !1, line: 61, type: !218)
!740 = !DILocation(line: 61, column: 37, scope: !215)
!741 = !DILocalVariable(name: "keepalive", arg: 2, scope: !215, file: !1, line: 61, type: !230)
!742 = !DILocation(line: 61, column: 52, scope: !215)
!743 = !DILocalVariable(name: "clean_session", arg: 3, scope: !215, file: !1, line: 61, type: !298)
!744 = !DILocation(line: 61, column: 68, scope: !215)
!745 = !DILocalVariable(name: "properties", arg: 4, scope: !215, file: !1, line: 61, type: !737)
!746 = !DILocation(line: 61, column: 109, scope: !215)
!747 = !DILocalVariable(name: "packet", scope: !215, file: !1, line: 64, type: !248)
!748 = !DILocation(line: 64, column: 28, scope: !215)
!749 = !DILocalVariable(name: "payloadlen", scope: !215, file: !1, line: 65, type: !146)
!750 = !DILocation(line: 65, column: 6, scope: !215)
!751 = !DILocalVariable(name: "will", scope: !215, file: !1, line: 66, type: !244)
!752 = !DILocation(line: 66, column: 10, scope: !215)
!753 = !DILocalVariable(name: "byte", scope: !215, file: !1, line: 67, type: !244)
!754 = !DILocation(line: 67, column: 10, scope: !215)
!755 = !DILocalVariable(name: "rc", scope: !215, file: !1, line: 68, type: !146)
!756 = !DILocation(line: 68, column: 6, scope: !215)
!757 = !DILocalVariable(name: "version", scope: !215, file: !1, line: 69, type: !244)
!758 = !DILocation(line: 69, column: 10, scope: !215)
!759 = !DILocalVariable(name: "clientid", scope: !215, file: !1, line: 70, type: !225)
!760 = !DILocation(line: 70, column: 8, scope: !215)
!761 = !DILocalVariable(name: "username", scope: !215, file: !1, line: 70, type: !225)
!762 = !DILocation(line: 70, column: 19, scope: !215)
!763 = !DILocalVariable(name: "password", scope: !215, file: !1, line: 70, type: !225)
!764 = !DILocation(line: 70, column: 30, scope: !215)
!765 = !DILocalVariable(name: "headerlen", scope: !215, file: !1, line: 71, type: !146)
!766 = !DILocation(line: 71, column: 6, scope: !215)
!767 = !DILocalVariable(name: "proplen", scope: !215, file: !1, line: 72, type: !146)
!768 = !DILocation(line: 72, column: 6, scope: !215)
!769 = !DILocalVariable(name: "will_proplen", scope: !215, file: !1, line: 72, type: !146)
!770 = !DILocation(line: 72, column: 19, scope: !215)
!771 = !DILocalVariable(name: "varbytes", scope: !215, file: !1, line: 72, type: !146)
!772 = !DILocation(line: 72, column: 33, scope: !215)
!773 = !DILocalVariable(name: "local_props", scope: !215, file: !1, line: 73, type: !273)
!774 = !DILocation(line: 73, column: 22, scope: !215)
!775 = !DILocalVariable(name: "receive_maximum", scope: !215, file: !1, line: 74, type: !230)
!776 = !DILocation(line: 74, column: 11, scope: !215)
!777 = !DILocation(line: 76, column: 2, scope: !778)
!778 = distinct !DILexicalBlock(scope: !779, file: !1, line: 76, column: 2)
!779 = distinct !DILexicalBlock(scope: !215, file: !1, line: 76, column: 2)
!780 = !DILocation(line: 76, column: 2, scope: !779)
!781 = !DILocation(line: 78, column: 5, scope: !782)
!782 = distinct !DILexicalBlock(scope: !215, file: !1, line: 78, column: 5)
!783 = !DILocation(line: 78, column: 11, scope: !782)
!784 = !DILocation(line: 78, column: 20, scope: !782)
!785 = !DILocation(line: 78, column: 37, scope: !782)
!786 = !DILocation(line: 78, column: 41, scope: !782)
!787 = !DILocation(line: 78, column: 47, scope: !782)
!788 = !DILocation(line: 78, column: 5, scope: !215)
!789 = !DILocation(line: 78, column: 51, scope: !782)
!790 = !DILocation(line: 91, column: 13, scope: !215)
!791 = !DILocation(line: 91, column: 19, scope: !215)
!792 = !DILocation(line: 91, column: 11, scope: !215)
!793 = !DILocation(line: 92, column: 13, scope: !215)
!794 = !DILocation(line: 92, column: 19, scope: !215)
!795 = !DILocation(line: 92, column: 11, scope: !215)
!796 = !DILocation(line: 93, column: 13, scope: !215)
!797 = !DILocation(line: 93, column: 19, scope: !215)
!798 = !DILocation(line: 93, column: 11, scope: !215)
!799 = !DILocation(line: 96, column: 5, scope: !800)
!800 = distinct !DILexicalBlock(scope: !215, file: !1, line: 96, column: 5)
!801 = !DILocation(line: 96, column: 11, scope: !800)
!802 = !DILocation(line: 96, column: 20, scope: !800)
!803 = !DILocation(line: 96, column: 5, scope: !215)
!804 = !DILocation(line: 98, column: 37, scope: !805)
!805 = distinct !DILexicalBlock(scope: !806, file: !1, line: 98, column: 6)
!806 = distinct !DILexicalBlock(scope: !800, file: !1, line: 96, column: 36)
!807 = !DILocation(line: 98, column: 7, scope: !805)
!808 = !DILocation(line: 98, column: 6, scope: !806)
!809 = !DILocation(line: 99, column: 79, scope: !810)
!810 = distinct !DILexicalBlock(scope: !805, file: !1, line: 98, column: 101)
!811 = !DILocation(line: 99, column: 85, scope: !810)
!812 = !DILocation(line: 99, column: 93, scope: !810)
!813 = !DILocation(line: 99, column: 9, scope: !810)
!814 = !DILocation(line: 99, column: 7, scope: !810)
!815 = !DILocation(line: 100, column: 7, scope: !816)
!816 = distinct !DILexicalBlock(scope: !810, file: !1, line: 100, column: 7)
!817 = !DILocation(line: 100, column: 7, scope: !810)
!818 = !DILocation(line: 100, column: 18, scope: !816)
!819 = !DILocation(line: 100, column: 11, scope: !816)
!820 = !DILocation(line: 101, column: 3, scope: !810)
!821 = !DILocation(line: 102, column: 37, scope: !822)
!822 = distinct !DILexicalBlock(scope: !805, file: !1, line: 101, column: 8)
!823 = !DILocation(line: 102, column: 4, scope: !822)
!824 = !DILocation(line: 102, column: 10, scope: !822)
!825 = !DILocation(line: 102, column: 18, scope: !822)
!826 = !DILocation(line: 102, column: 35, scope: !822)
!827 = !DILocation(line: 103, column: 35, scope: !822)
!828 = !DILocation(line: 103, column: 4, scope: !822)
!829 = !DILocation(line: 103, column: 10, scope: !822)
!830 = !DILocation(line: 103, column: 18, scope: !822)
!831 = !DILocation(line: 103, column: 33, scope: !822)
!832 = !DILocation(line: 106, column: 11, scope: !806)
!833 = !DILocation(line: 107, column: 13, scope: !806)
!834 = !DILocation(line: 108, column: 11, scope: !806)
!835 = !DILocation(line: 109, column: 39, scope: !806)
!836 = !DILocation(line: 109, column: 14, scope: !806)
!837 = !DILocation(line: 109, column: 11, scope: !806)
!838 = !DILocation(line: 110, column: 39, scope: !806)
!839 = !DILocation(line: 110, column: 14, scope: !806)
!840 = !DILocation(line: 110, column: 11, scope: !806)
!841 = !DILocation(line: 111, column: 35, scope: !806)
!842 = !DILocation(line: 111, column: 14, scope: !806)
!843 = !DILocation(line: 111, column: 12, scope: !806)
!844 = !DILocation(line: 112, column: 16, scope: !806)
!845 = !DILocation(line: 112, column: 26, scope: !806)
!846 = !DILocation(line: 112, column: 24, scope: !806)
!847 = !DILocation(line: 112, column: 13, scope: !806)
!848 = !DILocation(line: 113, column: 2, scope: !806)
!849 = !DILocation(line: 113, column: 11, scope: !850)
!850 = distinct !DILexicalBlock(scope: !800, file: !1, line: 113, column: 11)
!851 = !DILocation(line: 113, column: 17, scope: !850)
!852 = !DILocation(line: 113, column: 26, scope: !850)
!853 = !DILocation(line: 113, column: 11, scope: !800)
!854 = !DILocation(line: 114, column: 11, scope: !855)
!855 = distinct !DILexicalBlock(scope: !850, file: !1, line: 113, column: 44)
!856 = !DILocation(line: 115, column: 13, scope: !855)
!857 = !DILocation(line: 116, column: 2, scope: !855)
!858 = !DILocation(line: 116, column: 11, scope: !859)
!859 = distinct !DILexicalBlock(scope: !850, file: !1, line: 116, column: 11)
!860 = !DILocation(line: 116, column: 17, scope: !859)
!861 = !DILocation(line: 116, column: 26, scope: !859)
!862 = !DILocation(line: 116, column: 11, scope: !850)
!863 = !DILocation(line: 117, column: 11, scope: !864)
!864 = distinct !DILexicalBlock(scope: !859, file: !1, line: 116, column: 43)
!865 = !DILocation(line: 118, column: 13, scope: !864)
!866 = !DILocation(line: 119, column: 2, scope: !864)
!867 = !DILocation(line: 120, column: 3, scope: !868)
!868 = distinct !DILexicalBlock(scope: !859, file: !1, line: 119, column: 7)
!869 = !DILocation(line: 123, column: 11, scope: !215)
!870 = !DILocation(line: 123, column: 9, scope: !215)
!871 = !DILocation(line: 124, column: 6, scope: !872)
!872 = distinct !DILexicalBlock(scope: !215, file: !1, line: 124, column: 5)
!873 = !DILocation(line: 124, column: 5, scope: !215)
!874 = !DILocation(line: 124, column: 14, scope: !872)
!875 = !DILocation(line: 126, column: 5, scope: !876)
!876 = distinct !DILexicalBlock(scope: !215, file: !1, line: 126, column: 5)
!877 = !DILocation(line: 126, column: 5, scope: !215)
!878 = !DILocation(line: 127, column: 25, scope: !879)
!879 = distinct !DILexicalBlock(scope: !876, file: !1, line: 126, column: 14)
!880 = !DILocation(line: 127, column: 18, scope: !879)
!881 = !DILocation(line: 127, column: 17, scope: !879)
!882 = !DILocation(line: 127, column: 16, scope: !879)
!883 = !DILocation(line: 127, column: 14, scope: !879)
!884 = !DILocation(line: 128, column: 2, scope: !879)
!885 = !DILocation(line: 129, column: 14, scope: !886)
!886 = distinct !DILexicalBlock(scope: !876, file: !1, line: 128, column: 7)
!887 = !DILocation(line: 131, column: 5, scope: !888)
!888 = distinct !DILexicalBlock(scope: !215, file: !1, line: 131, column: 5)
!889 = !DILocation(line: 131, column: 11, scope: !888)
!890 = !DILocation(line: 131, column: 5, scope: !215)
!891 = !DILocation(line: 132, column: 8, scope: !892)
!892 = distinct !DILexicalBlock(scope: !888, file: !1, line: 131, column: 16)
!893 = !DILocation(line: 133, column: 3, scope: !894)
!894 = distinct !DILexicalBlock(scope: !895, file: !1, line: 133, column: 3)
!895 = distinct !DILexicalBlock(scope: !892, file: !1, line: 133, column: 3)
!896 = !DILocation(line: 133, column: 3, scope: !895)
!897 = !DILocation(line: 135, column: 26, scope: !892)
!898 = !DILocation(line: 135, column: 32, scope: !892)
!899 = !DILocation(line: 135, column: 38, scope: !892)
!900 = !DILocation(line: 135, column: 42, scope: !892)
!901 = !DILocation(line: 135, column: 19, scope: !892)
!902 = !DILocation(line: 135, column: 18, scope: !892)
!903 = !DILocation(line: 135, column: 49, scope: !892)
!904 = !DILocation(line: 135, column: 53, scope: !892)
!905 = !DILocation(line: 135, column: 59, scope: !892)
!906 = !DILocation(line: 135, column: 65, scope: !892)
!907 = !DILocation(line: 135, column: 69, scope: !892)
!908 = !DILocation(line: 135, column: 52, scope: !892)
!909 = !DILocation(line: 135, column: 14, scope: !892)
!910 = !DILocation(line: 136, column: 6, scope: !911)
!911 = distinct !DILexicalBlock(scope: !892, file: !1, line: 136, column: 6)
!912 = !DILocation(line: 136, column: 12, scope: !911)
!913 = !DILocation(line: 136, column: 21, scope: !911)
!914 = !DILocation(line: 136, column: 6, scope: !892)
!915 = !DILocation(line: 137, column: 44, scope: !916)
!916 = distinct !DILexicalBlock(scope: !911, file: !1, line: 136, column: 37)
!917 = !DILocation(line: 137, column: 50, scope: !916)
!918 = !DILocation(line: 137, column: 56, scope: !916)
!919 = !DILocation(line: 137, column: 19, scope: !916)
!920 = !DILocation(line: 137, column: 17, scope: !916)
!921 = !DILocation(line: 138, column: 36, scope: !916)
!922 = !DILocation(line: 138, column: 15, scope: !916)
!923 = !DILocation(line: 138, column: 13, scope: !916)
!924 = !DILocation(line: 139, column: 18, scope: !916)
!925 = !DILocation(line: 139, column: 33, scope: !916)
!926 = !DILocation(line: 139, column: 31, scope: !916)
!927 = !DILocation(line: 139, column: 15, scope: !916)
!928 = !DILocation(line: 140, column: 3, scope: !916)
!929 = !DILocation(line: 141, column: 2, scope: !892)
!930 = !DILocation(line: 146, column: 5, scope: !931)
!931 = distinct !DILexicalBlock(scope: !215, file: !1, line: 146, column: 5)
!932 = !DILocation(line: 146, column: 11, scope: !931)
!933 = !DILocation(line: 146, column: 20, scope: !931)
!934 = !DILocation(line: 146, column: 37, scope: !931)
!935 = !DILocation(line: 146, column: 40, scope: !931)
!936 = !DILocation(line: 146, column: 46, scope: !931)
!937 = !DILocation(line: 146, column: 55, scope: !931)
!938 = !DILocation(line: 146, column: 5, scope: !215)
!939 = !DILocation(line: 147, column: 6, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !1, line: 147, column: 6)
!941 = distinct !DILexicalBlock(scope: !931, file: !1, line: 146, column: 73)
!942 = !DILocation(line: 147, column: 15, scope: !940)
!943 = !DILocation(line: 147, column: 23, scope: !940)
!944 = !DILocation(line: 147, column: 26, scope: !940)
!945 = !DILocation(line: 147, column: 35, scope: !940)
!946 = !DILocation(line: 147, column: 6, scope: !941)
!947 = !DILocation(line: 148, column: 4, scope: !948)
!948 = distinct !DILexicalBlock(scope: !940, file: !1, line: 147, column: 43)
!949 = !DILocation(line: 150, column: 2, scope: !941)
!950 = !DILocation(line: 152, column: 5, scope: !951)
!951 = distinct !DILexicalBlock(scope: !215, file: !1, line: 152, column: 5)
!952 = !DILocation(line: 152, column: 5, scope: !215)
!953 = !DILocation(line: 153, column: 26, scope: !954)
!954 = distinct !DILexicalBlock(scope: !951, file: !1, line: 152, column: 14)
!955 = !DILocation(line: 153, column: 19, scope: !954)
!956 = !DILocation(line: 153, column: 18, scope: !954)
!957 = !DILocation(line: 153, column: 14, scope: !954)
!958 = !DILocation(line: 154, column: 2, scope: !954)
!959 = !DILocation(line: 155, column: 5, scope: !960)
!960 = distinct !DILexicalBlock(scope: !215, file: !1, line: 155, column: 5)
!961 = !DILocation(line: 155, column: 5, scope: !215)
!962 = !DILocation(line: 156, column: 26, scope: !963)
!963 = distinct !DILexicalBlock(scope: !960, file: !1, line: 155, column: 14)
!964 = !DILocation(line: 156, column: 19, scope: !963)
!965 = !DILocation(line: 156, column: 18, scope: !963)
!966 = !DILocation(line: 156, column: 14, scope: !963)
!967 = !DILocation(line: 157, column: 2, scope: !963)
!968 = !DILocation(line: 159, column: 2, scope: !215)
!969 = !DILocation(line: 159, column: 10, scope: !215)
!970 = !DILocation(line: 159, column: 18, scope: !215)
!971 = !DILocation(line: 163, column: 29, scope: !215)
!972 = !DILocation(line: 163, column: 41, scope: !215)
!973 = !DILocation(line: 163, column: 39, scope: !215)
!974 = !DILocation(line: 163, column: 2, scope: !215)
!975 = !DILocation(line: 163, column: 10, scope: !215)
!976 = !DILocation(line: 163, column: 27, scope: !215)
!977 = !DILocation(line: 167, column: 49, scope: !215)
!978 = !DILocation(line: 167, column: 57, scope: !215)
!979 = !DILocation(line: 167, column: 29, scope: !215)
!980 = !DILocation(line: 167, column: 2, scope: !215)
!981 = !DILocation(line: 167, column: 10, scope: !215)
!982 = !DILocation(line: 167, column: 27, scope: !215)
!983 = !DILocation(line: 168, column: 44, scope: !215)
!984 = !DILocation(line: 168, column: 52, scope: !215)
!985 = !DILocation(line: 168, column: 29, scope: !215)
!986 = !DILocation(line: 168, column: 2, scope: !215)
!987 = !DILocation(line: 168, column: 10, scope: !215)
!988 = !DILocation(line: 168, column: 27, scope: !215)
!989 = !DILocation(line: 170, column: 21, scope: !215)
!990 = !DILocation(line: 170, column: 7, scope: !215)
!991 = !DILocation(line: 170, column: 5, scope: !215)
!992 = !DILocation(line: 171, column: 5, scope: !993)
!993 = distinct !DILexicalBlock(scope: !215, file: !1, line: 171, column: 5)
!994 = !DILocation(line: 171, column: 5, scope: !215)
!995 = !DILocation(line: 172, column: 19, scope: !996)
!996 = distinct !DILexicalBlock(scope: !993, file: !1, line: 171, column: 8)
!997 = !DILocation(line: 172, column: 3, scope: !996)
!998 = !DILocation(line: 173, column: 10, scope: !996)
!999 = !DILocation(line: 173, column: 3, scope: !996)
!1000 = !DILocation(line: 177, column: 5, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !215, file: !1, line: 177, column: 5)
!1002 = !DILocation(line: 177, column: 13, scope: !1001)
!1003 = !DILocation(line: 177, column: 5, scope: !215)
!1004 = !DILocation(line: 178, column: 24, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 177, column: 34)
!1006 = !DILocation(line: 178, column: 3, scope: !1005)
!1007 = !DILocation(line: 179, column: 2, scope: !1005)
!1008 = !DILocation(line: 180, column: 24, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 179, column: 7)
!1010 = !DILocation(line: 180, column: 3, scope: !1009)
!1011 = !DILocation(line: 188, column: 21, scope: !215)
!1012 = !DILocation(line: 188, column: 29, scope: !215)
!1013 = !DILocation(line: 188, column: 2, scope: !215)
!1014 = !DILocation(line: 189, column: 10, scope: !215)
!1015 = !DILocation(line: 189, column: 23, scope: !215)
!1016 = !DILocation(line: 189, column: 28, scope: !215)
!1017 = !DILocation(line: 189, column: 9, scope: !215)
!1018 = !DILocation(line: 189, column: 7, scope: !215)
!1019 = !DILocation(line: 190, column: 5, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !215, file: !1, line: 190, column: 5)
!1021 = !DILocation(line: 190, column: 5, scope: !215)
!1022 = !DILocation(line: 191, column: 10, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1020, file: !1, line: 190, column: 10)
!1024 = !DILocation(line: 191, column: 19, scope: !1023)
!1025 = !DILocation(line: 191, column: 25, scope: !1023)
!1026 = !DILocation(line: 191, column: 31, scope: !1023)
!1027 = !DILocation(line: 191, column: 35, scope: !1023)
!1028 = !DILocation(line: 191, column: 41, scope: !1023)
!1029 = !DILocation(line: 191, column: 46, scope: !1023)
!1030 = !DILocation(line: 191, column: 15, scope: !1023)
!1031 = !DILocation(line: 191, column: 55, scope: !1023)
!1032 = !DILocation(line: 191, column: 61, scope: !1023)
!1033 = !DILocation(line: 191, column: 67, scope: !1023)
!1034 = !DILocation(line: 191, column: 71, scope: !1023)
!1035 = !DILocation(line: 191, column: 74, scope: !1023)
!1036 = !DILocation(line: 191, column: 79, scope: !1023)
!1037 = !DILocation(line: 191, column: 51, scope: !1023)
!1038 = !DILocation(line: 191, column: 88, scope: !1023)
!1039 = !DILocation(line: 191, column: 92, scope: !1023)
!1040 = !DILocation(line: 191, column: 97, scope: !1023)
!1041 = !DILocation(line: 191, column: 84, scope: !1023)
!1042 = !DILocation(line: 191, column: 8, scope: !1023)
!1043 = !DILocation(line: 192, column: 2, scope: !1023)
!1044 = !DILocation(line: 193, column: 5, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !215, file: !1, line: 193, column: 5)
!1046 = !DILocation(line: 193, column: 5, scope: !215)
!1047 = !DILocation(line: 194, column: 10, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 193, column: 14)
!1049 = !DILocation(line: 194, column: 15, scope: !1048)
!1050 = !DILocation(line: 194, column: 8, scope: !1048)
!1051 = !DILocation(line: 195, column: 2, scope: !1048)
!1052 = !DILocation(line: 196, column: 5, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !215, file: !1, line: 196, column: 5)
!1054 = !DILocation(line: 196, column: 11, scope: !1053)
!1055 = !DILocation(line: 196, column: 5, scope: !215)
!1056 = !DILocation(line: 197, column: 10, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1053, file: !1, line: 196, column: 20)
!1058 = !DILocation(line: 197, column: 15, scope: !1057)
!1059 = !DILocation(line: 197, column: 8, scope: !1057)
!1060 = !DILocation(line: 198, column: 2, scope: !1057)
!1061 = !DILocation(line: 199, column: 21, scope: !215)
!1062 = !DILocation(line: 199, column: 29, scope: !215)
!1063 = !DILocation(line: 199, column: 2, scope: !215)
!1064 = !DILocation(line: 200, column: 23, scope: !215)
!1065 = !DILocation(line: 200, column: 31, scope: !215)
!1066 = !DILocation(line: 200, column: 2, scope: !215)
!1067 = !DILocation(line: 202, column: 5, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !215, file: !1, line: 202, column: 5)
!1069 = !DILocation(line: 202, column: 11, scope: !1068)
!1070 = !DILocation(line: 202, column: 20, scope: !1068)
!1071 = !DILocation(line: 202, column: 5, scope: !215)
!1072 = !DILocation(line: 204, column: 24, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !1, line: 202, column: 36)
!1074 = !DILocation(line: 204, column: 32, scope: !1073)
!1075 = !DILocation(line: 204, column: 3, scope: !1073)
!1076 = !DILocation(line: 205, column: 23, scope: !1073)
!1077 = !DILocation(line: 205, column: 31, scope: !1073)
!1078 = !DILocation(line: 205, column: 3, scope: !1073)
!1079 = !DILocation(line: 206, column: 23, scope: !1073)
!1080 = !DILocation(line: 206, column: 31, scope: !1073)
!1081 = !DILocation(line: 206, column: 3, scope: !1073)
!1082 = !DILocation(line: 207, column: 2, scope: !1073)
!1083 = !DILocation(line: 208, column: 2, scope: !215)
!1084 = !DILocation(line: 211, column: 5, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !215, file: !1, line: 211, column: 5)
!1086 = !DILocation(line: 211, column: 5, scope: !215)
!1087 = !DILocation(line: 212, column: 24, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 211, column: 14)
!1089 = !DILocation(line: 212, column: 32, scope: !1088)
!1090 = !DILocation(line: 212, column: 49, scope: !1088)
!1091 = !DILocation(line: 212, column: 42, scope: !1088)
!1092 = !DILocation(line: 212, column: 3, scope: !1088)
!1093 = !DILocation(line: 213, column: 2, scope: !1088)
!1094 = !DILocation(line: 214, column: 24, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 213, column: 7)
!1096 = !DILocation(line: 214, column: 3, scope: !1095)
!1097 = !DILocation(line: 216, column: 5, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !215, file: !1, line: 216, column: 5)
!1099 = !DILocation(line: 216, column: 5, scope: !215)
!1100 = !DILocation(line: 217, column: 6, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !1, line: 217, column: 6)
!1102 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 216, column: 10)
!1103 = !DILocation(line: 217, column: 12, scope: !1101)
!1104 = !DILocation(line: 217, column: 21, scope: !1101)
!1105 = !DILocation(line: 217, column: 6, scope: !1102)
!1106 = !DILocation(line: 219, column: 24, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1101, file: !1, line: 217, column: 37)
!1108 = !DILocation(line: 219, column: 32, scope: !1107)
!1109 = !DILocation(line: 219, column: 38, scope: !1107)
!1110 = !DILocation(line: 219, column: 44, scope: !1107)
!1111 = !DILocation(line: 219, column: 4, scope: !1107)
!1112 = !DILocation(line: 220, column: 3, scope: !1107)
!1113 = !DILocation(line: 221, column: 24, scope: !1102)
!1114 = !DILocation(line: 221, column: 32, scope: !1102)
!1115 = !DILocation(line: 221, column: 38, scope: !1102)
!1116 = !DILocation(line: 221, column: 44, scope: !1102)
!1117 = !DILocation(line: 221, column: 48, scope: !1102)
!1118 = !DILocation(line: 221, column: 62, scope: !1102)
!1119 = !DILocation(line: 221, column: 68, scope: !1102)
!1120 = !DILocation(line: 221, column: 74, scope: !1102)
!1121 = !DILocation(line: 221, column: 78, scope: !1102)
!1122 = !DILocation(line: 221, column: 55, scope: !1102)
!1123 = !DILocation(line: 221, column: 3, scope: !1102)
!1124 = !DILocation(line: 222, column: 24, scope: !1102)
!1125 = !DILocation(line: 222, column: 46, scope: !1102)
!1126 = !DILocation(line: 222, column: 52, scope: !1102)
!1127 = !DILocation(line: 222, column: 58, scope: !1102)
!1128 = !DILocation(line: 222, column: 62, scope: !1102)
!1129 = !DILocation(line: 222, column: 71, scope: !1102)
!1130 = !DILocation(line: 222, column: 77, scope: !1102)
!1131 = !DILocation(line: 222, column: 83, scope: !1102)
!1132 = !DILocation(line: 222, column: 87, scope: !1102)
!1133 = !DILocation(line: 222, column: 3, scope: !1102)
!1134 = !DILocation(line: 223, column: 2, scope: !1102)
!1135 = !DILocation(line: 225, column: 5, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !215, file: !1, line: 225, column: 5)
!1137 = !DILocation(line: 225, column: 5, scope: !215)
!1138 = !DILocation(line: 226, column: 24, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1136, file: !1, line: 225, column: 14)
!1140 = !DILocation(line: 226, column: 32, scope: !1139)
!1141 = !DILocation(line: 226, column: 49, scope: !1139)
!1142 = !DILocation(line: 226, column: 42, scope: !1139)
!1143 = !DILocation(line: 226, column: 3, scope: !1139)
!1144 = !DILocation(line: 227, column: 2, scope: !1139)
!1145 = !DILocation(line: 228, column: 5, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !215, file: !1, line: 228, column: 5)
!1147 = !DILocation(line: 228, column: 5, scope: !215)
!1148 = !DILocation(line: 229, column: 24, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1146, file: !1, line: 228, column: 14)
!1150 = !DILocation(line: 229, column: 32, scope: !1149)
!1151 = !DILocation(line: 229, column: 49, scope: !1149)
!1152 = !DILocation(line: 229, column: 42, scope: !1149)
!1153 = !DILocation(line: 229, column: 3, scope: !1149)
!1154 = !DILocation(line: 230, column: 2, scope: !1149)
!1155 = !DILocation(line: 232, column: 20, scope: !215)
!1156 = !DILocation(line: 232, column: 2, scope: !215)
!1157 = !DILocation(line: 232, column: 8, scope: !215)
!1158 = !DILocation(line: 232, column: 18, scope: !215)
!1159 = !DILocation(line: 240, column: 23, scope: !215)
!1160 = !DILocation(line: 240, column: 29, scope: !215)
!1161 = !DILocation(line: 240, column: 9, scope: !215)
!1162 = !DILocation(line: 240, column: 2, scope: !215)
!1163 = !DILocation(line: 241, column: 1, scope: !215)
