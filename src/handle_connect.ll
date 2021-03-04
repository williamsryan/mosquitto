; ModuleID = 'handle_connect.bc'
source_filename = "handle_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mosquitto_db = type { i64, %struct.mosquitto__subhier*, %struct.mosquitto__unpwd*, %struct.mosquitto__unpwd*, %struct.mosquitto*, %struct.mosquitto*, %struct.mosquitto*, %struct.clientid__index_hash*, %struct.mosquitto_msg_store*, %struct.mosquitto_msg_store_load*, i32, i64, i8*, %struct.mosquitto__config*, i32, i8, i32, %struct.mosquitto* }
%struct.mosquitto__subhier = type { %struct.UT_hash_handle, %struct.mosquitto__subhier*, %struct.mosquitto__subhier*, %struct.mosquitto__subleaf*, %struct.mosquitto__subshared*, %struct.mosquitto_msg_store*, i8*, i16 }
%struct.UT_hash_handle = type { %struct.UT_hash_table*, i8*, i8*, %struct.UT_hash_handle*, %struct.UT_hash_handle*, i8*, i32, i32 }
%struct.UT_hash_table = type { %struct.UT_hash_bucket*, i32, i32, i32, %struct.UT_hash_handle*, i64, i32, i32, i32, i32, i32 }
%struct.UT_hash_bucket = type { %struct.UT_hash_handle*, i32, i32 }
%struct.mosquitto__subleaf = type { %struct.mosquitto__subleaf*, %struct.mosquitto__subleaf*, %struct.mosquitto*, i32, i8, i8, i8 }
%struct.mosquitto__subshared = type { %struct.UT_hash_handle, i8*, %struct.mosquitto__subleaf* }
%struct.mosquitto__unpwd = type { i8*, i8*, %struct.UT_hash_handle }
%struct.clientid__index_hash = type opaque
%struct.mosquitto_msg_store = type { %struct.mosquitto_msg_store*, %struct.mosquitto_msg_store*, i64, i8*, i8*, %struct.mosquitto__listener*, i8**, i32, i32, i8*, %struct.mqtt5__property*, %union.mosquitto__payload_uhpa, i64, i32, i16, i16, i8, i8, i8 }
%struct.mosquitto__listener = type { i32, i16, i8*, i8*, i32, i8*, i32*, i32, i32, i32, i32, i8, i8, i16, %struct.mosquitto__security_options, %struct.mosquitto__unpwd*, %struct.mosquitto__unpwd* }
%struct.mosquitto__security_options = type { %struct.mosquitto__acl_user*, %struct.mosquitto__acl*, i8*, i8*, i8*, %struct.mosquitto__auth_plugin_config*, i32, i8, i8, i8*, i32 }
%struct.mosquitto__acl_user = type { %struct.mosquitto__acl_user*, i8*, %struct.mosquitto__acl* }
%struct.mosquitto__acl = type { %struct.mosquitto__acl*, i8*, i32, i32, i32 }
%struct.mosquitto__auth_plugin_config = type { i8*, %struct.mosquitto_opt*, i32, i8, %struct.mosquitto__auth_plugin }
%struct.mosquitto_opt = type { i8*, i8* }
%struct.mosquitto__auth_plugin = type { i8*, i8*, i32 ()*, i32 (i8**, %struct.mosquitto_opt*, i32)*, i32 (i8*, %struct.mosquitto_opt*, i32)*, i32 (i8*, %struct.mosquitto_opt*, i32, i1)*, i32 (i8*, %struct.mosquitto_opt*, i32, i1)*, i32 (i8*, i32, %struct.mosquitto*, %struct.mosquitto_acl_msg*)*, i32 (i8*, %struct.mosquitto*, i8*, i8*)*, i32 (i8*, %struct.mosquitto*, i8*, i8*, i8*, i32)*, i32 (i8*, %struct.mosquitto*, i8*, i1, i8*, i16, i8**, i16*)*, i32 (i8*, %struct.mosquitto*, i8*, i8*, i16, i8**, i16*)*, i32 (i8**, %struct.mosquitto_opt*, i32)*, i32 (i8*, %struct.mosquitto_opt*, i32)*, i32 (i8*, %struct.mosquitto_opt*, i32, i1)*, i32 (i8*, %struct.mosquitto_opt*, i32, i1)*, i32 (i8*, i32, %struct.mosquitto*, %struct.mosquitto_acl_msg*)*, i32 (i8*, %struct.mosquitto*, i8*, i8*)*, i32 (i8*, %struct.mosquitto*, i8*, i8*, i8*, i32)*, i32 (i8**, %struct.mosquitto_auth_opt*, i32)*, i32 (i8*, %struct.mosquitto_auth_opt*, i32)*, i32 (i8*, %struct.mosquitto_auth_opt*, i32, i1)*, i32 (i8*, %struct.mosquitto_auth_opt*, i32, i1)*, i32 (i8*, i8*, i8*, i8*, i32)*, i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*, i8*, i32)*, i32 }
%struct.mosquitto_acl_msg = type { i8*, i8*, i64, i32, i8 }
%struct.mosquitto_auth_opt = type { i8*, i8* }
%struct.mqtt5__property = type { %struct.mqtt5__property*, %union.anon, %struct.mqtt__string, i32, i8 }
%union.anon = type { %struct.mqtt__string }
%struct.mqtt__string = type { i8*, i32 }
%union.mosquitto__payload_uhpa = type { i8* }
%struct.mosquitto_msg_store_load = type { %struct.UT_hash_handle, i64, %struct.mosquitto_msg_store* }
%struct.mosquitto__config = type { i8, i32, i8, i8, i8*, i8, i8, %struct.mosquitto__listener, %struct.mosquitto__listener*, i32, i32, i32, i32, i8, i8*, i8*, %struct._IO_FILE*, i16, i16, i32, i32, i8, i8*, i8*, i8*, i64, i8*, i8, i8, i8, i8, i32, i8, i8*, %struct.mosquitto__security_options }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct.mosquitto__subshared_ref = type { %struct.mosquitto__subhier*, %struct.mosquitto__subshared* }
%struct.session_expiry_list = type { %struct.mosquitto*, %struct.session_expiry_list*, %struct.session_expiry_list* }
%struct.mosquitto_container = type { %struct.mosquitto*, i8*, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [18 x i8] c"((*head)) != NULL\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"handle_connect.c\00", align 1
@__PRETTY_FUNCTION__.connection_check_acl = private unnamed_addr constant [101 x i8] c"void connection_check_acl(struct mosquitto_db *, struct mosquitto *, struct mosquitto_client_msg **)\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"(msg_tail)->prev != NULL\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Client %s already connected, closing old connection.\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"New bridge connected from %s as %s (p%d, c%d, k%d, u'%s').\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"New bridge connected from %s as %s (p%d, c%d, k%d).\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"New client connected from %s as %s (p%d, c%d, k%d, u'%s').\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"New client connected from %s as %s (p%d, c%d, k%d).\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Will message specified (%ld bytes) (r%d, q%d).\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"\09%s\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"No will message specified.\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@handle__connect_wrap.nonce_list = private unnamed_addr constant [4 x i32] [i32 1337, i32 28, i32 92, i32 65], align 16
@.str.12 = private unnamed_addr constant [49 x i8] c"Bad client %s sending multiple CONNECT messages.\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"MQIsdp\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"Invalid protocol version %d in CONNECT from %s.\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"MQTT\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"Invalid protocol \22%s\22 in CONNECT from %s.\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Invalid Will QoS in CONNECT from %s.\00", align 1
@.str.18 = private unnamed_addr constant [71 x i8] c"Protocol error from %s: password without username, closing connection.\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @connection_check_acl(%struct.mosquitto_db* %0, %struct.mosquitto* %1, %struct.mosquitto_client_msg** %2) #0 !dbg !727 {
  %4 = alloca %struct.mosquitto_db*, align 8
  %5 = alloca %struct.mosquitto*, align 8
  %6 = alloca %struct.mosquitto_client_msg**, align 8
  %7 = alloca %struct.mosquitto_client_msg*, align 8
  %8 = alloca %struct.mosquitto_client_msg*, align 8
  store %struct.mosquitto_db* %0, %struct.mosquitto_db** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mosquitto_db** %4, metadata !852, metadata !DIExpression()), !dbg !853
  store %struct.mosquitto* %1, %struct.mosquitto** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.mosquitto** %5, metadata !854, metadata !DIExpression()), !dbg !855
  store %struct.mosquitto_client_msg** %2, %struct.mosquitto_client_msg*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.mosquitto_client_msg*** %6, metadata !856, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.declare(metadata %struct.mosquitto_client_msg** %7, metadata !858, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.declare(metadata %struct.mosquitto_client_msg** %8, metadata !860, metadata !DIExpression()), !dbg !861
  %9 = load %struct.mosquitto_client_msg**, %struct.mosquitto_client_msg*** %6, align 8, !dbg !862
  %10 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %9, align 8, !dbg !862
  store %struct.mosquitto_client_msg* %10, %struct.mosquitto_client_msg** %7, align 8, !dbg !862
  br label %11, !dbg !862

11:                                               ; preds = %155, %3
  %12 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !864
  %13 = icmp ne %struct.mosquitto_client_msg* %12, null, !dbg !864
  br i1 %13, label %14, label %18, !dbg !864

14:                                               ; preds = %11
  %15 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !864
  %16 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %15, i32 0, i32 1, !dbg !864
  %17 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %16, align 8, !dbg !864
  store %struct.mosquitto_client_msg* %17, %struct.mosquitto_client_msg** %8, align 8, !dbg !864
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ false, %11 ], [ true, %14 ]
  br i1 %19, label %20, label %157, !dbg !862

20:                                               ; preds = %18
  %21 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !866
  %22 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %21, i32 0, i32 8, !dbg !869
  %23 = load i32, i32* %22, align 4, !dbg !869
  %24 = icmp eq i32 %23, 1, !dbg !870
  br i1 %24, label %25, label %154, !dbg !871

25:                                               ; preds = %20
  %26 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !872
  %27 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !875
  %28 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !876
  %29 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %28, i32 0, i32 2, !dbg !877
  %30 = load %struct.mosquitto_msg_store*, %struct.mosquitto_msg_store** %29, align 8, !dbg !877
  %31 = getelementptr inbounds %struct.mosquitto_msg_store, %struct.mosquitto_msg_store* %30, i32 0, i32 9, !dbg !878
  %32 = load i8*, i8** %31, align 8, !dbg !878
  %33 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !879
  %34 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %33, i32 0, i32 2, !dbg !880
  %35 = load %struct.mosquitto_msg_store*, %struct.mosquitto_msg_store** %34, align 8, !dbg !880
  %36 = getelementptr inbounds %struct.mosquitto_msg_store, %struct.mosquitto_msg_store* %35, i32 0, i32 13, !dbg !881
  %37 = load i32, i32* %36, align 8, !dbg !881
  %38 = zext i32 %37 to i64, !dbg !879
  %39 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !882
  %40 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %39, i32 0, i32 2, !dbg !882
  %41 = load %struct.mosquitto_msg_store*, %struct.mosquitto_msg_store** %40, align 8, !dbg !882
  %42 = getelementptr inbounds %struct.mosquitto_msg_store, %struct.mosquitto_msg_store* %41, i32 0, i32 13, !dbg !882
  %43 = load i32, i32* %42, align 8, !dbg !882
  %44 = zext i32 %43 to i64, !dbg !882
  %45 = icmp ugt i64 %44, 8, !dbg !882
  br i1 %45, label %46, label %53, !dbg !882

46:                                               ; preds = %25
  %47 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !882
  %48 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %47, i32 0, i32 2, !dbg !882
  %49 = load %struct.mosquitto_msg_store*, %struct.mosquitto_msg_store** %48, align 8, !dbg !882
  %50 = getelementptr inbounds %struct.mosquitto_msg_store, %struct.mosquitto_msg_store* %49, i32 0, i32 11, !dbg !882
  %51 = bitcast %union.mosquitto__payload_uhpa* %50 to i8**, !dbg !882
  %52 = load i8*, i8** %51, align 8, !dbg !882
  br label %60, !dbg !882

53:                                               ; preds = %25
  %54 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !882
  %55 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %54, i32 0, i32 2, !dbg !882
  %56 = load %struct.mosquitto_msg_store*, %struct.mosquitto_msg_store** %55, align 8, !dbg !882
  %57 = getelementptr inbounds %struct.mosquitto_msg_store, %struct.mosquitto_msg_store* %56, i32 0, i32 11, !dbg !882
  %58 = bitcast %union.mosquitto__payload_uhpa* %57 to [8 x i8]*, !dbg !882
  %59 = getelementptr inbounds [8 x i8], [8 x i8]* %58, i32 0, i32 0, !dbg !882
  br label %60, !dbg !882

60:                                               ; preds = %53, %46
  %61 = phi i8* [ %52, %46 ], [ %59, %53 ], !dbg !882
  %62 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !883
  %63 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %62, i32 0, i32 2, !dbg !884
  %64 = load %struct.mosquitto_msg_store*, %struct.mosquitto_msg_store** %63, align 8, !dbg !884
  %65 = getelementptr inbounds %struct.mosquitto_msg_store, %struct.mosquitto_msg_store* %64, i32 0, i32 16, !dbg !885
  %66 = load i8, i8* %65, align 8, !dbg !885
  %67 = zext i8 %66 to i32, !dbg !883
  %68 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !886
  %69 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %68, i32 0, i32 2, !dbg !887
  %70 = load %struct.mosquitto_msg_store*, %struct.mosquitto_msg_store** %69, align 8, !dbg !887
  %71 = getelementptr inbounds %struct.mosquitto_msg_store, %struct.mosquitto_msg_store* %70, i32 0, i32 17, !dbg !888
  %72 = load i8, i8* %71, align 1, !dbg !888
  %73 = trunc i8 %72 to i1, !dbg !888
  %74 = call i32 @mosquitto_acl_check(%struct.mosquitto_db* %26, %struct.mosquitto* %27, i8* %32, i64 %38, i8* %61, i32 %67, i1 zeroext %73, i32 1), !dbg !889
  %75 = icmp ne i32 %74, 0, !dbg !890
  br i1 %75, label %76, label %153, !dbg !891

76:                                               ; preds = %60
  br label %77, !dbg !892, !llvm.loop !894

77:                                               ; preds = %76
  %78 = load %struct.mosquitto_client_msg**, %struct.mosquitto_client_msg*** %6, align 8, !dbg !895
  %79 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %78, align 8, !dbg !895
  %80 = icmp ne %struct.mosquitto_client_msg* %79, null, !dbg !895
  br i1 %80, label %81, label %82, !dbg !899

81:                                               ; preds = %77
  br label %83, !dbg !899

82:                                               ; preds = %77
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 97, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @__PRETTY_FUNCTION__.connection_check_acl, i32 0, i32 0)) #8, !dbg !895
  unreachable, !dbg !895

83:                                               ; preds = %81
  %84 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !900
  %85 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %84, i32 0, i32 0, !dbg !900
  %86 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %85, align 8, !dbg !900
  %87 = icmp ne %struct.mosquitto_client_msg* %86, null, !dbg !900
  br i1 %87, label %88, label %89, !dbg !903

88:                                               ; preds = %83
  br label %90, !dbg !903

89:                                               ; preds = %83
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 97, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @__PRETTY_FUNCTION__.connection_check_acl, i32 0, i32 0)) #8, !dbg !900
  unreachable, !dbg !900

90:                                               ; preds = %88
  %91 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !904
  %92 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %91, i32 0, i32 0, !dbg !904
  %93 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %92, align 8, !dbg !904
  %94 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !904
  %95 = icmp eq %struct.mosquitto_client_msg* %93, %94, !dbg !904
  br i1 %95, label %96, label %98, !dbg !906

96:                                               ; preds = %90
  %97 = load %struct.mosquitto_client_msg**, %struct.mosquitto_client_msg*** %6, align 8, !dbg !907
  store %struct.mosquitto_client_msg* null, %struct.mosquitto_client_msg** %97, align 8, !dbg !907
  br label %144, !dbg !907

98:                                               ; preds = %90
  %99 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !909
  %100 = load %struct.mosquitto_client_msg**, %struct.mosquitto_client_msg*** %6, align 8, !dbg !909
  %101 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %100, align 8, !dbg !909
  %102 = icmp eq %struct.mosquitto_client_msg* %99, %101, !dbg !909
  br i1 %102, label %103, label %115, !dbg !904

103:                                              ; preds = %98
  %104 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !911
  %105 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %104, i32 0, i32 0, !dbg !911
  %106 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %105, align 8, !dbg !911
  %107 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !911
  %108 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %107, i32 0, i32 1, !dbg !911
  %109 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %108, align 8, !dbg !911
  %110 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %109, i32 0, i32 0, !dbg !911
  store %struct.mosquitto_client_msg* %106, %struct.mosquitto_client_msg** %110, align 8, !dbg !911
  %111 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !911
  %112 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %111, i32 0, i32 1, !dbg !911
  %113 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %112, align 8, !dbg !911
  %114 = load %struct.mosquitto_client_msg**, %struct.mosquitto_client_msg*** %6, align 8, !dbg !911
  store %struct.mosquitto_client_msg* %113, %struct.mosquitto_client_msg** %114, align 8, !dbg !911
  br label %143, !dbg !911

115:                                              ; preds = %98
  %116 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !913
  %117 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %116, i32 0, i32 1, !dbg !913
  %118 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %117, align 8, !dbg !913
  %119 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !913
  %120 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %119, i32 0, i32 0, !dbg !913
  %121 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %120, align 8, !dbg !913
  %122 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %121, i32 0, i32 1, !dbg !913
  store %struct.mosquitto_client_msg* %118, %struct.mosquitto_client_msg** %122, align 8, !dbg !913
  %123 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !915
  %124 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %123, i32 0, i32 1, !dbg !915
  %125 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %124, align 8, !dbg !915
  %126 = icmp ne %struct.mosquitto_client_msg* %125, null, !dbg !915
  br i1 %126, label %127, label %135, !dbg !913

127:                                              ; preds = %115
  %128 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !917
  %129 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %128, i32 0, i32 0, !dbg !917
  %130 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %129, align 8, !dbg !917
  %131 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !917
  %132 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %131, i32 0, i32 1, !dbg !917
  %133 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %132, align 8, !dbg !917
  %134 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %133, i32 0, i32 0, !dbg !917
  store %struct.mosquitto_client_msg* %130, %struct.mosquitto_client_msg** %134, align 8, !dbg !917
  br label %142, !dbg !917

135:                                              ; preds = %115
  %136 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !919
  %137 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %136, i32 0, i32 0, !dbg !919
  %138 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %137, align 8, !dbg !919
  %139 = load %struct.mosquitto_client_msg**, %struct.mosquitto_client_msg*** %6, align 8, !dbg !919
  %140 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %139, align 8, !dbg !919
  %141 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %140, i32 0, i32 0, !dbg !919
  store %struct.mosquitto_client_msg* %138, %struct.mosquitto_client_msg** %141, align 8, !dbg !919
  br label %142

142:                                              ; preds = %135, %127
  br label %143

143:                                              ; preds = %142, %103
  br label %144

144:                                              ; preds = %143, %96
  br label %145, !dbg !906

145:                                              ; preds = %144
  %146 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !921
  %147 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !922
  %148 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %147, i32 0, i32 2, !dbg !923
  call void @db__msg_store_ref_dec(%struct.mosquitto_db* %146, %struct.mosquitto_msg_store** %148), !dbg !924
  %149 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !925
  %150 = getelementptr inbounds %struct.mosquitto_client_msg, %struct.mosquitto_client_msg* %149, i32 0, i32 3, !dbg !926
  call void @mosquitto_property_free_all(%struct.mqtt5__property** %150), !dbg !927
  %151 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %7, align 8, !dbg !928
  %152 = bitcast %struct.mosquitto_client_msg* %151 to i8*, !dbg !928
  call void @mosquitto__free(i8* %152), !dbg !929
  br label %153, !dbg !930

153:                                              ; preds = %145, %60
  br label %154, !dbg !931

154:                                              ; preds = %153, %20
  br label %155, !dbg !932

155:                                              ; preds = %154
  %156 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %8, align 8, !dbg !864
  store %struct.mosquitto_client_msg* %156, %struct.mosquitto_client_msg** %7, align 8, !dbg !864
  br label %11, !dbg !864, !llvm.loop !933

157:                                              ; preds = %18
  ret void, !dbg !935
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @mosquitto_acl_check(%struct.mosquitto_db*, %struct.mosquitto*, i8*, i64, i8*, i32, i1 zeroext, i32) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare void @db__msg_store_ref_dec(%struct.mosquitto_db*, %struct.mosquitto_msg_store**) #2

declare void @mosquitto_property_free_all(%struct.mqtt5__property**) #2

declare void @mosquitto__free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @connect__on_authorised(%struct.mosquitto_db* %0, %struct.mosquitto* %1, i8* %2, i16 zeroext %3) #0 !dbg !936 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mosquitto_db*, align 8
  %7 = alloca %struct.mosquitto*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i16, align 2
  %10 = alloca %struct.mosquitto*, align 8
  %11 = alloca %struct.mosquitto__subleaf*, align 8
  %12 = alloca %struct.mqtt5__property*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.UT_hash_handle*, align 8
  %30 = alloca %struct.UT_hash_handle*, align 8
  %31 = alloca %struct.UT_hash_bucket*, align 8
  %32 = alloca %struct.UT_hash_bucket*, align 8
  store %struct.mosquitto_db* %0, %struct.mosquitto_db** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.mosquitto_db** %6, metadata !939, metadata !DIExpression()), !dbg !940
  store %struct.mosquitto* %1, %struct.mosquitto** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.mosquitto** %7, metadata !941, metadata !DIExpression()), !dbg !942
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !943, metadata !DIExpression()), !dbg !944
  store i16 %3, i16* %9, align 2
  call void @llvm.dbg.declare(metadata i16* %9, metadata !945, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.declare(metadata %struct.mosquitto** %10, metadata !947, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.declare(metadata %struct.mosquitto__subleaf** %11, metadata !949, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.declare(metadata %struct.mqtt5__property** %12, metadata !951, metadata !DIExpression()), !dbg !952
  store %struct.mqtt5__property* null, %struct.mqtt5__property** %12, align 8, !dbg !952
  call void @llvm.dbg.declare(metadata i8* %13, metadata !953, metadata !DIExpression()), !dbg !954
  store i8 0, i8* %13, align 1, !dbg !954
  call void @llvm.dbg.declare(metadata i32* %14, metadata !955, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.declare(metadata i32* %15, metadata !957, metadata !DIExpression()), !dbg !958
  br label %33, !dbg !959, !llvm.loop !960

33:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !961, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.declare(metadata i32* %17, metadata !964, metadata !DIExpression()), !dbg !963
  store %struct.mosquitto* null, %struct.mosquitto** %10, align 8, !dbg !963
  %34 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !965
  %35 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %34, i32 0, i32 4, !dbg !965
  %36 = load %struct.mosquitto*, %struct.mosquitto** %35, align 8, !dbg !965
  %37 = icmp ne %struct.mosquitto* %36, null, !dbg !965
  br i1 %37, label %38, label %525, !dbg !963

38:                                               ; preds = %33
  br label %39, !dbg !967, !llvm.loop !969

39:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata i32* %18, metadata !970, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.declare(metadata i32* %19, metadata !973, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.declare(metadata i32* %20, metadata !974, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.declare(metadata i8** %21, metadata !975, metadata !DIExpression()), !dbg !972
  %40 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !972
  %41 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %40, i32 0, i32 3, !dbg !972
  %42 = load i8*, i8** %41, align 8, !dbg !972
  store i8* %42, i8** %21, align 8, !dbg !972
  store i32 -17973521, i32* %17, align 4, !dbg !972
  store i32 -1640531527, i32* %19, align 4, !dbg !972
  store i32 -1640531527, i32* %18, align 4, !dbg !972
  %43 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !972
  %44 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %43, i32 0, i32 3, !dbg !972
  %45 = load i8*, i8** %44, align 8, !dbg !972
  %46 = call i64 @strlen(i8* %45) #9, !dbg !972
  %47 = trunc i64 %46 to i32, !dbg !972
  store i32 %47, i32* %20, align 4, !dbg !972
  br label %48, !dbg !972

48:                                               ; preds = %215, %39
  %49 = load i32, i32* %20, align 4, !dbg !972
  %50 = icmp uge i32 %49, 12, !dbg !972
  br i1 %50, label %51, label %220, !dbg !972

51:                                               ; preds = %48
  %52 = load i8*, i8** %21, align 8, !dbg !976
  %53 = getelementptr inbounds i8, i8* %52, i64 0, !dbg !976
  %54 = load i8, i8* %53, align 1, !dbg !976
  %55 = zext i8 %54 to i32, !dbg !976
  %56 = load i8*, i8** %21, align 8, !dbg !976
  %57 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !976
  %58 = load i8, i8* %57, align 1, !dbg !976
  %59 = zext i8 %58 to i32, !dbg !976
  %60 = shl i32 %59, 8, !dbg !976
  %61 = add i32 %55, %60, !dbg !976
  %62 = load i8*, i8** %21, align 8, !dbg !976
  %63 = getelementptr inbounds i8, i8* %62, i64 2, !dbg !976
  %64 = load i8, i8* %63, align 1, !dbg !976
  %65 = zext i8 %64 to i32, !dbg !976
  %66 = shl i32 %65, 16, !dbg !976
  %67 = add i32 %61, %66, !dbg !976
  %68 = load i8*, i8** %21, align 8, !dbg !976
  %69 = getelementptr inbounds i8, i8* %68, i64 3, !dbg !976
  %70 = load i8, i8* %69, align 1, !dbg !976
  %71 = zext i8 %70 to i32, !dbg !976
  %72 = shl i32 %71, 24, !dbg !976
  %73 = add i32 %67, %72, !dbg !976
  %74 = load i32, i32* %18, align 4, !dbg !976
  %75 = add i32 %74, %73, !dbg !976
  store i32 %75, i32* %18, align 4, !dbg !976
  %76 = load i8*, i8** %21, align 8, !dbg !976
  %77 = getelementptr inbounds i8, i8* %76, i64 4, !dbg !976
  %78 = load i8, i8* %77, align 1, !dbg !976
  %79 = zext i8 %78 to i32, !dbg !976
  %80 = load i8*, i8** %21, align 8, !dbg !976
  %81 = getelementptr inbounds i8, i8* %80, i64 5, !dbg !976
  %82 = load i8, i8* %81, align 1, !dbg !976
  %83 = zext i8 %82 to i32, !dbg !976
  %84 = shl i32 %83, 8, !dbg !976
  %85 = add i32 %79, %84, !dbg !976
  %86 = load i8*, i8** %21, align 8, !dbg !976
  %87 = getelementptr inbounds i8, i8* %86, i64 6, !dbg !976
  %88 = load i8, i8* %87, align 1, !dbg !976
  %89 = zext i8 %88 to i32, !dbg !976
  %90 = shl i32 %89, 16, !dbg !976
  %91 = add i32 %85, %90, !dbg !976
  %92 = load i8*, i8** %21, align 8, !dbg !976
  %93 = getelementptr inbounds i8, i8* %92, i64 7, !dbg !976
  %94 = load i8, i8* %93, align 1, !dbg !976
  %95 = zext i8 %94 to i32, !dbg !976
  %96 = shl i32 %95, 24, !dbg !976
  %97 = add i32 %91, %96, !dbg !976
  %98 = load i32, i32* %19, align 4, !dbg !976
  %99 = add i32 %98, %97, !dbg !976
  store i32 %99, i32* %19, align 4, !dbg !976
  %100 = load i8*, i8** %21, align 8, !dbg !976
  %101 = getelementptr inbounds i8, i8* %100, i64 8, !dbg !976
  %102 = load i8, i8* %101, align 1, !dbg !976
  %103 = zext i8 %102 to i32, !dbg !976
  %104 = load i8*, i8** %21, align 8, !dbg !976
  %105 = getelementptr inbounds i8, i8* %104, i64 9, !dbg !976
  %106 = load i8, i8* %105, align 1, !dbg !976
  %107 = zext i8 %106 to i32, !dbg !976
  %108 = shl i32 %107, 8, !dbg !976
  %109 = add i32 %103, %108, !dbg !976
  %110 = load i8*, i8** %21, align 8, !dbg !976
  %111 = getelementptr inbounds i8, i8* %110, i64 10, !dbg !976
  %112 = load i8, i8* %111, align 1, !dbg !976
  %113 = zext i8 %112 to i32, !dbg !976
  %114 = shl i32 %113, 16, !dbg !976
  %115 = add i32 %109, %114, !dbg !976
  %116 = load i8*, i8** %21, align 8, !dbg !976
  %117 = getelementptr inbounds i8, i8* %116, i64 11, !dbg !976
  %118 = load i8, i8* %117, align 1, !dbg !976
  %119 = zext i8 %118 to i32, !dbg !976
  %120 = shl i32 %119, 24, !dbg !976
  %121 = add i32 %115, %120, !dbg !976
  %122 = load i32, i32* %17, align 4, !dbg !976
  %123 = add i32 %122, %121, !dbg !976
  store i32 %123, i32* %17, align 4, !dbg !976
  br label %124, !dbg !976, !llvm.loop !978

124:                                              ; preds = %51
  %125 = load i32, i32* %19, align 4, !dbg !979
  %126 = load i32, i32* %18, align 4, !dbg !979
  %127 = sub i32 %126, %125, !dbg !979
  store i32 %127, i32* %18, align 4, !dbg !979
  %128 = load i32, i32* %17, align 4, !dbg !979
  %129 = load i32, i32* %18, align 4, !dbg !979
  %130 = sub i32 %129, %128, !dbg !979
  store i32 %130, i32* %18, align 4, !dbg !979
  %131 = load i32, i32* %17, align 4, !dbg !979
  %132 = lshr i32 %131, 13, !dbg !979
  %133 = load i32, i32* %18, align 4, !dbg !979
  %134 = xor i32 %133, %132, !dbg !979
  store i32 %134, i32* %18, align 4, !dbg !979
  %135 = load i32, i32* %17, align 4, !dbg !979
  %136 = load i32, i32* %19, align 4, !dbg !979
  %137 = sub i32 %136, %135, !dbg !979
  store i32 %137, i32* %19, align 4, !dbg !979
  %138 = load i32, i32* %18, align 4, !dbg !979
  %139 = load i32, i32* %19, align 4, !dbg !979
  %140 = sub i32 %139, %138, !dbg !979
  store i32 %140, i32* %19, align 4, !dbg !979
  %141 = load i32, i32* %18, align 4, !dbg !979
  %142 = shl i32 %141, 8, !dbg !979
  %143 = load i32, i32* %19, align 4, !dbg !979
  %144 = xor i32 %143, %142, !dbg !979
  store i32 %144, i32* %19, align 4, !dbg !979
  %145 = load i32, i32* %18, align 4, !dbg !979
  %146 = load i32, i32* %17, align 4, !dbg !979
  %147 = sub i32 %146, %145, !dbg !979
  store i32 %147, i32* %17, align 4, !dbg !979
  %148 = load i32, i32* %19, align 4, !dbg !979
  %149 = load i32, i32* %17, align 4, !dbg !979
  %150 = sub i32 %149, %148, !dbg !979
  store i32 %150, i32* %17, align 4, !dbg !979
  %151 = load i32, i32* %19, align 4, !dbg !979
  %152 = lshr i32 %151, 13, !dbg !979
  %153 = load i32, i32* %17, align 4, !dbg !979
  %154 = xor i32 %153, %152, !dbg !979
  store i32 %154, i32* %17, align 4, !dbg !979
  %155 = load i32, i32* %19, align 4, !dbg !979
  %156 = load i32, i32* %18, align 4, !dbg !979
  %157 = sub i32 %156, %155, !dbg !979
  store i32 %157, i32* %18, align 4, !dbg !979
  %158 = load i32, i32* %17, align 4, !dbg !979
  %159 = load i32, i32* %18, align 4, !dbg !979
  %160 = sub i32 %159, %158, !dbg !979
  store i32 %160, i32* %18, align 4, !dbg !979
  %161 = load i32, i32* %17, align 4, !dbg !979
  %162 = lshr i32 %161, 12, !dbg !979
  %163 = load i32, i32* %18, align 4, !dbg !979
  %164 = xor i32 %163, %162, !dbg !979
  store i32 %164, i32* %18, align 4, !dbg !979
  %165 = load i32, i32* %17, align 4, !dbg !979
  %166 = load i32, i32* %19, align 4, !dbg !979
  %167 = sub i32 %166, %165, !dbg !979
  store i32 %167, i32* %19, align 4, !dbg !979
  %168 = load i32, i32* %18, align 4, !dbg !979
  %169 = load i32, i32* %19, align 4, !dbg !979
  %170 = sub i32 %169, %168, !dbg !979
  store i32 %170, i32* %19, align 4, !dbg !979
  %171 = load i32, i32* %18, align 4, !dbg !979
  %172 = shl i32 %171, 16, !dbg !979
  %173 = load i32, i32* %19, align 4, !dbg !979
  %174 = xor i32 %173, %172, !dbg !979
  store i32 %174, i32* %19, align 4, !dbg !979
  %175 = load i32, i32* %18, align 4, !dbg !979
  %176 = load i32, i32* %17, align 4, !dbg !979
  %177 = sub i32 %176, %175, !dbg !979
  store i32 %177, i32* %17, align 4, !dbg !979
  %178 = load i32, i32* %19, align 4, !dbg !979
  %179 = load i32, i32* %17, align 4, !dbg !979
  %180 = sub i32 %179, %178, !dbg !979
  store i32 %180, i32* %17, align 4, !dbg !979
  %181 = load i32, i32* %19, align 4, !dbg !979
  %182 = lshr i32 %181, 5, !dbg !979
  %183 = load i32, i32* %17, align 4, !dbg !979
  %184 = xor i32 %183, %182, !dbg !979
  store i32 %184, i32* %17, align 4, !dbg !979
  %185 = load i32, i32* %19, align 4, !dbg !979
  %186 = load i32, i32* %18, align 4, !dbg !979
  %187 = sub i32 %186, %185, !dbg !979
  store i32 %187, i32* %18, align 4, !dbg !979
  %188 = load i32, i32* %17, align 4, !dbg !979
  %189 = load i32, i32* %18, align 4, !dbg !979
  %190 = sub i32 %189, %188, !dbg !979
  store i32 %190, i32* %18, align 4, !dbg !979
  %191 = load i32, i32* %17, align 4, !dbg !979
  %192 = lshr i32 %191, 3, !dbg !979
  %193 = load i32, i32* %18, align 4, !dbg !979
  %194 = xor i32 %193, %192, !dbg !979
  store i32 %194, i32* %18, align 4, !dbg !979
  %195 = load i32, i32* %17, align 4, !dbg !979
  %196 = load i32, i32* %19, align 4, !dbg !979
  %197 = sub i32 %196, %195, !dbg !979
  store i32 %197, i32* %19, align 4, !dbg !979
  %198 = load i32, i32* %18, align 4, !dbg !979
  %199 = load i32, i32* %19, align 4, !dbg !979
  %200 = sub i32 %199, %198, !dbg !979
  store i32 %200, i32* %19, align 4, !dbg !979
  %201 = load i32, i32* %18, align 4, !dbg !979
  %202 = shl i32 %201, 10, !dbg !979
  %203 = load i32, i32* %19, align 4, !dbg !979
  %204 = xor i32 %203, %202, !dbg !979
  store i32 %204, i32* %19, align 4, !dbg !979
  %205 = load i32, i32* %18, align 4, !dbg !979
  %206 = load i32, i32* %17, align 4, !dbg !979
  %207 = sub i32 %206, %205, !dbg !979
  store i32 %207, i32* %17, align 4, !dbg !979
  %208 = load i32, i32* %19, align 4, !dbg !979
  %209 = load i32, i32* %17, align 4, !dbg !979
  %210 = sub i32 %209, %208, !dbg !979
  store i32 %210, i32* %17, align 4, !dbg !979
  %211 = load i32, i32* %19, align 4, !dbg !979
  %212 = lshr i32 %211, 15, !dbg !979
  %213 = load i32, i32* %17, align 4, !dbg !979
  %214 = xor i32 %213, %212, !dbg !979
  store i32 %214, i32* %17, align 4, !dbg !979
  br label %215, !dbg !979

215:                                              ; preds = %124
  %216 = load i8*, i8** %21, align 8, !dbg !976
  %217 = getelementptr inbounds i8, i8* %216, i64 12, !dbg !976
  store i8* %217, i8** %21, align 8, !dbg !976
  %218 = load i32, i32* %20, align 4, !dbg !976
  %219 = sub i32 %218, 12, !dbg !976
  store i32 %219, i32* %20, align 4, !dbg !976
  br label %48, !dbg !972, !llvm.loop !981

220:                                              ; preds = %48
  %221 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !972
  %222 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %221, i32 0, i32 3, !dbg !972
  %223 = load i8*, i8** %222, align 8, !dbg !972
  %224 = call i64 @strlen(i8* %223) #9, !dbg !972
  %225 = load i32, i32* %17, align 4, !dbg !972
  %226 = zext i32 %225 to i64, !dbg !972
  %227 = add i64 %226, %224, !dbg !972
  %228 = trunc i64 %227 to i32, !dbg !972
  store i32 %228, i32* %17, align 4, !dbg !972
  %229 = load i32, i32* %20, align 4, !dbg !972
  switch i32 %229, label %316 [
    i32 11, label %230
    i32 10, label %238
    i32 9, label %246
    i32 8, label %254
    i32 7, label %262
    i32 6, label %270
    i32 5, label %278
    i32 4, label %285
    i32 3, label %293
    i32 2, label %301
    i32 1, label %309
  ], !dbg !972

230:                                              ; preds = %220
  %231 = load i8*, i8** %21, align 8, !dbg !982
  %232 = getelementptr inbounds i8, i8* %231, i64 10, !dbg !982
  %233 = load i8, i8* %232, align 1, !dbg !982
  %234 = zext i8 %233 to i32, !dbg !982
  %235 = shl i32 %234, 24, !dbg !982
  %236 = load i32, i32* %17, align 4, !dbg !982
  %237 = add i32 %236, %235, !dbg !982
  store i32 %237, i32* %17, align 4, !dbg !982
  br label %238, !dbg !982

238:                                              ; preds = %220, %230
  %239 = load i8*, i8** %21, align 8, !dbg !982
  %240 = getelementptr inbounds i8, i8* %239, i64 9, !dbg !982
  %241 = load i8, i8* %240, align 1, !dbg !982
  %242 = zext i8 %241 to i32, !dbg !982
  %243 = shl i32 %242, 16, !dbg !982
  %244 = load i32, i32* %17, align 4, !dbg !982
  %245 = add i32 %244, %243, !dbg !982
  store i32 %245, i32* %17, align 4, !dbg !982
  br label %246, !dbg !982

246:                                              ; preds = %220, %238
  %247 = load i8*, i8** %21, align 8, !dbg !982
  %248 = getelementptr inbounds i8, i8* %247, i64 8, !dbg !982
  %249 = load i8, i8* %248, align 1, !dbg !982
  %250 = zext i8 %249 to i32, !dbg !982
  %251 = shl i32 %250, 8, !dbg !982
  %252 = load i32, i32* %17, align 4, !dbg !982
  %253 = add i32 %252, %251, !dbg !982
  store i32 %253, i32* %17, align 4, !dbg !982
  br label %254, !dbg !982

254:                                              ; preds = %220, %246
  %255 = load i8*, i8** %21, align 8, !dbg !982
  %256 = getelementptr inbounds i8, i8* %255, i64 7, !dbg !982
  %257 = load i8, i8* %256, align 1, !dbg !982
  %258 = zext i8 %257 to i32, !dbg !982
  %259 = shl i32 %258, 24, !dbg !982
  %260 = load i32, i32* %19, align 4, !dbg !982
  %261 = add i32 %260, %259, !dbg !982
  store i32 %261, i32* %19, align 4, !dbg !982
  br label %262, !dbg !982

262:                                              ; preds = %220, %254
  %263 = load i8*, i8** %21, align 8, !dbg !982
  %264 = getelementptr inbounds i8, i8* %263, i64 6, !dbg !982
  %265 = load i8, i8* %264, align 1, !dbg !982
  %266 = zext i8 %265 to i32, !dbg !982
  %267 = shl i32 %266, 16, !dbg !982
  %268 = load i32, i32* %19, align 4, !dbg !982
  %269 = add i32 %268, %267, !dbg !982
  store i32 %269, i32* %19, align 4, !dbg !982
  br label %270, !dbg !982

270:                                              ; preds = %220, %262
  %271 = load i8*, i8** %21, align 8, !dbg !982
  %272 = getelementptr inbounds i8, i8* %271, i64 5, !dbg !982
  %273 = load i8, i8* %272, align 1, !dbg !982
  %274 = zext i8 %273 to i32, !dbg !982
  %275 = shl i32 %274, 8, !dbg !982
  %276 = load i32, i32* %19, align 4, !dbg !982
  %277 = add i32 %276, %275, !dbg !982
  store i32 %277, i32* %19, align 4, !dbg !982
  br label %278, !dbg !982

278:                                              ; preds = %220, %270
  %279 = load i8*, i8** %21, align 8, !dbg !982
  %280 = getelementptr inbounds i8, i8* %279, i64 4, !dbg !982
  %281 = load i8, i8* %280, align 1, !dbg !982
  %282 = zext i8 %281 to i32, !dbg !982
  %283 = load i32, i32* %19, align 4, !dbg !982
  %284 = add i32 %283, %282, !dbg !982
  store i32 %284, i32* %19, align 4, !dbg !982
  br label %285, !dbg !982

285:                                              ; preds = %220, %278
  %286 = load i8*, i8** %21, align 8, !dbg !982
  %287 = getelementptr inbounds i8, i8* %286, i64 3, !dbg !982
  %288 = load i8, i8* %287, align 1, !dbg !982
  %289 = zext i8 %288 to i32, !dbg !982
  %290 = shl i32 %289, 24, !dbg !982
  %291 = load i32, i32* %18, align 4, !dbg !982
  %292 = add i32 %291, %290, !dbg !982
  store i32 %292, i32* %18, align 4, !dbg !982
  br label %293, !dbg !982

293:                                              ; preds = %220, %285
  %294 = load i8*, i8** %21, align 8, !dbg !982
  %295 = getelementptr inbounds i8, i8* %294, i64 2, !dbg !982
  %296 = load i8, i8* %295, align 1, !dbg !982
  %297 = zext i8 %296 to i32, !dbg !982
  %298 = shl i32 %297, 16, !dbg !982
  %299 = load i32, i32* %18, align 4, !dbg !982
  %300 = add i32 %299, %298, !dbg !982
  store i32 %300, i32* %18, align 4, !dbg !982
  br label %301, !dbg !982

301:                                              ; preds = %220, %293
  %302 = load i8*, i8** %21, align 8, !dbg !982
  %303 = getelementptr inbounds i8, i8* %302, i64 1, !dbg !982
  %304 = load i8, i8* %303, align 1, !dbg !982
  %305 = zext i8 %304 to i32, !dbg !982
  %306 = shl i32 %305, 8, !dbg !982
  %307 = load i32, i32* %18, align 4, !dbg !982
  %308 = add i32 %307, %306, !dbg !982
  store i32 %308, i32* %18, align 4, !dbg !982
  br label %309, !dbg !982

309:                                              ; preds = %220, %301
  %310 = load i8*, i8** %21, align 8, !dbg !982
  %311 = getelementptr inbounds i8, i8* %310, i64 0, !dbg !982
  %312 = load i8, i8* %311, align 1, !dbg !982
  %313 = zext i8 %312 to i32, !dbg !982
  %314 = load i32, i32* %18, align 4, !dbg !982
  %315 = add i32 %314, %313, !dbg !982
  store i32 %315, i32* %18, align 4, !dbg !982
  br label %316, !dbg !982

316:                                              ; preds = %309, %220
  br label %317, !dbg !972, !llvm.loop !984

317:                                              ; preds = %316
  %318 = load i32, i32* %19, align 4, !dbg !985
  %319 = load i32, i32* %18, align 4, !dbg !985
  %320 = sub i32 %319, %318, !dbg !985
  store i32 %320, i32* %18, align 4, !dbg !985
  %321 = load i32, i32* %17, align 4, !dbg !985
  %322 = load i32, i32* %18, align 4, !dbg !985
  %323 = sub i32 %322, %321, !dbg !985
  store i32 %323, i32* %18, align 4, !dbg !985
  %324 = load i32, i32* %17, align 4, !dbg !985
  %325 = lshr i32 %324, 13, !dbg !985
  %326 = load i32, i32* %18, align 4, !dbg !985
  %327 = xor i32 %326, %325, !dbg !985
  store i32 %327, i32* %18, align 4, !dbg !985
  %328 = load i32, i32* %17, align 4, !dbg !985
  %329 = load i32, i32* %19, align 4, !dbg !985
  %330 = sub i32 %329, %328, !dbg !985
  store i32 %330, i32* %19, align 4, !dbg !985
  %331 = load i32, i32* %18, align 4, !dbg !985
  %332 = load i32, i32* %19, align 4, !dbg !985
  %333 = sub i32 %332, %331, !dbg !985
  store i32 %333, i32* %19, align 4, !dbg !985
  %334 = load i32, i32* %18, align 4, !dbg !985
  %335 = shl i32 %334, 8, !dbg !985
  %336 = load i32, i32* %19, align 4, !dbg !985
  %337 = xor i32 %336, %335, !dbg !985
  store i32 %337, i32* %19, align 4, !dbg !985
  %338 = load i32, i32* %18, align 4, !dbg !985
  %339 = load i32, i32* %17, align 4, !dbg !985
  %340 = sub i32 %339, %338, !dbg !985
  store i32 %340, i32* %17, align 4, !dbg !985
  %341 = load i32, i32* %19, align 4, !dbg !985
  %342 = load i32, i32* %17, align 4, !dbg !985
  %343 = sub i32 %342, %341, !dbg !985
  store i32 %343, i32* %17, align 4, !dbg !985
  %344 = load i32, i32* %19, align 4, !dbg !985
  %345 = lshr i32 %344, 13, !dbg !985
  %346 = load i32, i32* %17, align 4, !dbg !985
  %347 = xor i32 %346, %345, !dbg !985
  store i32 %347, i32* %17, align 4, !dbg !985
  %348 = load i32, i32* %19, align 4, !dbg !985
  %349 = load i32, i32* %18, align 4, !dbg !985
  %350 = sub i32 %349, %348, !dbg !985
  store i32 %350, i32* %18, align 4, !dbg !985
  %351 = load i32, i32* %17, align 4, !dbg !985
  %352 = load i32, i32* %18, align 4, !dbg !985
  %353 = sub i32 %352, %351, !dbg !985
  store i32 %353, i32* %18, align 4, !dbg !985
  %354 = load i32, i32* %17, align 4, !dbg !985
  %355 = lshr i32 %354, 12, !dbg !985
  %356 = load i32, i32* %18, align 4, !dbg !985
  %357 = xor i32 %356, %355, !dbg !985
  store i32 %357, i32* %18, align 4, !dbg !985
  %358 = load i32, i32* %17, align 4, !dbg !985
  %359 = load i32, i32* %19, align 4, !dbg !985
  %360 = sub i32 %359, %358, !dbg !985
  store i32 %360, i32* %19, align 4, !dbg !985
  %361 = load i32, i32* %18, align 4, !dbg !985
  %362 = load i32, i32* %19, align 4, !dbg !985
  %363 = sub i32 %362, %361, !dbg !985
  store i32 %363, i32* %19, align 4, !dbg !985
  %364 = load i32, i32* %18, align 4, !dbg !985
  %365 = shl i32 %364, 16, !dbg !985
  %366 = load i32, i32* %19, align 4, !dbg !985
  %367 = xor i32 %366, %365, !dbg !985
  store i32 %367, i32* %19, align 4, !dbg !985
  %368 = load i32, i32* %18, align 4, !dbg !985
  %369 = load i32, i32* %17, align 4, !dbg !985
  %370 = sub i32 %369, %368, !dbg !985
  store i32 %370, i32* %17, align 4, !dbg !985
  %371 = load i32, i32* %19, align 4, !dbg !985
  %372 = load i32, i32* %17, align 4, !dbg !985
  %373 = sub i32 %372, %371, !dbg !985
  store i32 %373, i32* %17, align 4, !dbg !985
  %374 = load i32, i32* %19, align 4, !dbg !985
  %375 = lshr i32 %374, 5, !dbg !985
  %376 = load i32, i32* %17, align 4, !dbg !985
  %377 = xor i32 %376, %375, !dbg !985
  store i32 %377, i32* %17, align 4, !dbg !985
  %378 = load i32, i32* %19, align 4, !dbg !985
  %379 = load i32, i32* %18, align 4, !dbg !985
  %380 = sub i32 %379, %378, !dbg !985
  store i32 %380, i32* %18, align 4, !dbg !985
  %381 = load i32, i32* %17, align 4, !dbg !985
  %382 = load i32, i32* %18, align 4, !dbg !985
  %383 = sub i32 %382, %381, !dbg !985
  store i32 %383, i32* %18, align 4, !dbg !985
  %384 = load i32, i32* %17, align 4, !dbg !985
  %385 = lshr i32 %384, 3, !dbg !985
  %386 = load i32, i32* %18, align 4, !dbg !985
  %387 = xor i32 %386, %385, !dbg !985
  store i32 %387, i32* %18, align 4, !dbg !985
  %388 = load i32, i32* %17, align 4, !dbg !985
  %389 = load i32, i32* %19, align 4, !dbg !985
  %390 = sub i32 %389, %388, !dbg !985
  store i32 %390, i32* %19, align 4, !dbg !985
  %391 = load i32, i32* %18, align 4, !dbg !985
  %392 = load i32, i32* %19, align 4, !dbg !985
  %393 = sub i32 %392, %391, !dbg !985
  store i32 %393, i32* %19, align 4, !dbg !985
  %394 = load i32, i32* %18, align 4, !dbg !985
  %395 = shl i32 %394, 10, !dbg !985
  %396 = load i32, i32* %19, align 4, !dbg !985
  %397 = xor i32 %396, %395, !dbg !985
  store i32 %397, i32* %19, align 4, !dbg !985
  %398 = load i32, i32* %18, align 4, !dbg !985
  %399 = load i32, i32* %17, align 4, !dbg !985
  %400 = sub i32 %399, %398, !dbg !985
  store i32 %400, i32* %17, align 4, !dbg !985
  %401 = load i32, i32* %19, align 4, !dbg !985
  %402 = load i32, i32* %17, align 4, !dbg !985
  %403 = sub i32 %402, %401, !dbg !985
  store i32 %403, i32* %17, align 4, !dbg !985
  %404 = load i32, i32* %19, align 4, !dbg !985
  %405 = lshr i32 %404, 15, !dbg !985
  %406 = load i32, i32* %17, align 4, !dbg !985
  %407 = xor i32 %406, %405, !dbg !985
  store i32 %407, i32* %17, align 4, !dbg !985
  br label %408, !dbg !985

408:                                              ; preds = %317
  %409 = load i32, i32* %17, align 4, !dbg !972
  %410 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !972
  %411 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %410, i32 0, i32 4, !dbg !972
  %412 = load %struct.mosquitto*, %struct.mosquitto** %411, align 8, !dbg !972
  %413 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %412, i32 0, i32 45, !dbg !972
  %414 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %413, i32 0, i32 0, !dbg !972
  %415 = load %struct.UT_hash_table*, %struct.UT_hash_table** %414, align 8, !dbg !972
  %416 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %415, i32 0, i32 1, !dbg !972
  %417 = load i32, i32* %416, align 8, !dbg !972
  %418 = sub i32 %417, 1, !dbg !972
  %419 = and i32 %409, %418, !dbg !972
  store i32 %419, i32* %16, align 4, !dbg !972
  br label %420, !dbg !972

420:                                              ; preds = %408
  br label %421, !dbg !987, !llvm.loop !990

421:                                              ; preds = %420
  %422 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !991
  %423 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %422, i32 0, i32 4, !dbg !991
  %424 = load %struct.mosquitto*, %struct.mosquitto** %423, align 8, !dbg !991
  %425 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %424, i32 0, i32 45, !dbg !991
  %426 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %425, i32 0, i32 0, !dbg !991
  %427 = load %struct.UT_hash_table*, %struct.UT_hash_table** %426, align 8, !dbg !991
  %428 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %427, i32 0, i32 0, !dbg !991
  %429 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %428, align 8, !dbg !991
  %430 = load i32, i32* %16, align 4, !dbg !991
  %431 = zext i32 %430 to i64, !dbg !991
  %432 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %429, i64 %431, !dbg !991
  %433 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %432, i32 0, i32 0, !dbg !991
  %434 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %433, align 8, !dbg !991
  %435 = icmp ne %struct.UT_hash_handle* %434, null, !dbg !991
  br i1 %435, label %436, label %464, !dbg !994

436:                                              ; preds = %421
  br label %437, !dbg !991, !llvm.loop !995

437:                                              ; preds = %436
  %438 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !996
  %439 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %438, i32 0, i32 4, !dbg !996
  %440 = load %struct.mosquitto*, %struct.mosquitto** %439, align 8, !dbg !996
  %441 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %440, i32 0, i32 45, !dbg !996
  %442 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %441, i32 0, i32 0, !dbg !996
  %443 = load %struct.UT_hash_table*, %struct.UT_hash_table** %442, align 8, !dbg !996
  %444 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %443, i32 0, i32 0, !dbg !996
  %445 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %444, align 8, !dbg !996
  %446 = load i32, i32* %16, align 4, !dbg !996
  %447 = zext i32 %446 to i64, !dbg !996
  %448 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %445, i64 %447, !dbg !996
  %449 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %448, i32 0, i32 0, !dbg !996
  %450 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %449, align 8, !dbg !996
  %451 = bitcast %struct.UT_hash_handle* %450 to i8*, !dbg !996
  %452 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !996
  %453 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %452, i32 0, i32 4, !dbg !996
  %454 = load %struct.mosquitto*, %struct.mosquitto** %453, align 8, !dbg !996
  %455 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %454, i32 0, i32 45, !dbg !996
  %456 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %455, i32 0, i32 0, !dbg !996
  %457 = load %struct.UT_hash_table*, %struct.UT_hash_table** %456, align 8, !dbg !996
  %458 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %457, i32 0, i32 5, !dbg !996
  %459 = load i64, i64* %458, align 8, !dbg !996
  %460 = sub i64 0, %459, !dbg !996
  %461 = getelementptr inbounds i8, i8* %451, i64 %460, !dbg !996
  %462 = bitcast i8* %461 to %struct.mosquitto*, !dbg !996
  store %struct.mosquitto* %462, %struct.mosquitto** %10, align 8, !dbg !996
  br label %463, !dbg !996

463:                                              ; preds = %437
  br label %465, !dbg !996

464:                                              ; preds = %421
  store %struct.mosquitto* null, %struct.mosquitto** %10, align 8, !dbg !991
  br label %465

465:                                              ; preds = %464, %463
  br label %466, !dbg !994

466:                                              ; preds = %522, %465
  %467 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !994
  %468 = icmp ne %struct.mosquitto* %467, null, !dbg !994
  br i1 %468, label %469, label %523, !dbg !994

469:                                              ; preds = %466
  %470 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !998
  %471 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %470, i32 0, i32 45, !dbg !998
  %472 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %471, i32 0, i32 6, !dbg !998
  %473 = load i32, i32* %472, align 8, !dbg !998
  %474 = zext i32 %473 to i64, !dbg !998
  %475 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !998
  %476 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %475, i32 0, i32 3, !dbg !998
  %477 = load i8*, i8** %476, align 8, !dbg !998
  %478 = call i64 @strlen(i8* %477) #9, !dbg !998
  %479 = icmp eq i64 %474, %478, !dbg !998
  br i1 %479, label %480, label %496, !dbg !1001

480:                                              ; preds = %469
  %481 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1002
  %482 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %481, i32 0, i32 45, !dbg !1002
  %483 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %482, i32 0, i32 5, !dbg !1002
  %484 = load i8*, i8** %483, align 8, !dbg !1002
  %485 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1002
  %486 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %485, i32 0, i32 3, !dbg !1002
  %487 = load i8*, i8** %486, align 8, !dbg !1002
  %488 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1002
  %489 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %488, i32 0, i32 3, !dbg !1002
  %490 = load i8*, i8** %489, align 8, !dbg !1002
  %491 = call i64 @strlen(i8* %490) #9, !dbg !1002
  %492 = call i32 @memcmp(i8* %484, i8* %487, i64 %491) #9, !dbg !1002
  %493 = icmp eq i32 %492, 0, !dbg !1002
  br i1 %493, label %494, label %495, !dbg !1005

494:                                              ; preds = %480
  br label %523, !dbg !1002

495:                                              ; preds = %480
  br label %496, !dbg !1005

496:                                              ; preds = %495, %469
  %497 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1006
  %498 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %497, i32 0, i32 45, !dbg !1006
  %499 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %498, i32 0, i32 4, !dbg !1006
  %500 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %499, align 8, !dbg !1006
  %501 = icmp ne %struct.UT_hash_handle* %500, null, !dbg !1006
  br i1 %501, label %502, label %521, !dbg !1001

502:                                              ; preds = %496
  br label %503, !dbg !1006, !llvm.loop !1008

503:                                              ; preds = %502
  %504 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1009
  %505 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %504, i32 0, i32 45, !dbg !1009
  %506 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %505, i32 0, i32 4, !dbg !1009
  %507 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %506, align 8, !dbg !1009
  %508 = bitcast %struct.UT_hash_handle* %507 to i8*, !dbg !1009
  %509 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1009
  %510 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %509, i32 0, i32 4, !dbg !1009
  %511 = load %struct.mosquitto*, %struct.mosquitto** %510, align 8, !dbg !1009
  %512 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %511, i32 0, i32 45, !dbg !1009
  %513 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %512, i32 0, i32 0, !dbg !1009
  %514 = load %struct.UT_hash_table*, %struct.UT_hash_table** %513, align 8, !dbg !1009
  %515 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %514, i32 0, i32 5, !dbg !1009
  %516 = load i64, i64* %515, align 8, !dbg !1009
  %517 = sub i64 0, %516, !dbg !1009
  %518 = getelementptr inbounds i8, i8* %508, i64 %517, !dbg !1009
  %519 = bitcast i8* %518 to %struct.mosquitto*, !dbg !1009
  store %struct.mosquitto* %519, %struct.mosquitto** %10, align 8, !dbg !1009
  br label %520, !dbg !1009

520:                                              ; preds = %503
  br label %522, !dbg !1009

521:                                              ; preds = %496
  store %struct.mosquitto* null, %struct.mosquitto** %10, align 8, !dbg !1006
  br label %522

522:                                              ; preds = %521, %520
  br label %466, !dbg !994, !llvm.loop !1011

523:                                              ; preds = %494, %466
  br label %524, !dbg !994

524:                                              ; preds = %523
  br label %525, !dbg !967

525:                                              ; preds = %524, %33
  br label %526, !dbg !963

526:                                              ; preds = %525
  %527 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1012
  %528 = icmp ne %struct.mosquitto* %527, null, !dbg !1012
  br i1 %528, label %529, label %704, !dbg !1014

529:                                              ; preds = %526
  %530 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1015
  %531 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %530, i32 0, i32 0, !dbg !1018
  %532 = load i32, i32* %531, align 8, !dbg !1018
  %533 = icmp eq i32 %532, -1, !dbg !1019
  br i1 %533, label %534, label %535, !dbg !1020

534:                                              ; preds = %529
  br label %550, !dbg !1021

535:                                              ; preds = %529
  %536 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1023
  %537 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %536, i32 0, i32 13, !dbg !1026
  %538 = load %struct.mosquitto__config*, %struct.mosquitto__config** %537, align 8, !dbg !1026
  %539 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %538, i32 0, i32 5, !dbg !1027
  %540 = load i8, i8* %539, align 8, !dbg !1027
  %541 = trunc i8 %540 to i1, !dbg !1027
  %542 = zext i1 %541 to i32, !dbg !1023
  %543 = icmp eq i32 %542, 1, !dbg !1028
  br i1 %543, label %544, label %549, !dbg !1029

544:                                              ; preds = %535
  %545 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1030
  %546 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %545, i32 0, i32 3, !dbg !1032
  %547 = load i8*, i8** %546, align 8, !dbg !1032
  %548 = call i32 (%struct.mosquitto*, i32, i8*, ...) @log__printf(%struct.mosquitto* null, i32 8, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i32 0, i32 0), i8* %547), !dbg !1033
  br label %549, !dbg !1034

549:                                              ; preds = %544, %535
  br label %550

550:                                              ; preds = %549, %534
  %551 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1035
  %552 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %551, i32 0, i32 24, !dbg !1037
  %553 = load i8, i8* %552, align 2, !dbg !1037
  %554 = trunc i8 %553 to i1, !dbg !1037
  %555 = zext i1 %554 to i32, !dbg !1035
  %556 = icmp eq i32 %555, 0, !dbg !1038
  br i1 %556, label %557, label %691, !dbg !1039

557:                                              ; preds = %550
  %558 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1040
  %559 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %558, i32 0, i32 25, !dbg !1041
  %560 = load i32, i32* %559, align 4, !dbg !1041
  %561 = icmp ugt i32 %560, 0, !dbg !1042
  br i1 %561, label %562, label %691, !dbg !1043

562:                                              ; preds = %557
  %563 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1044
  %564 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %563, i32 0, i32 1, !dbg !1047
  %565 = load i32, i32* %564, align 4, !dbg !1047
  %566 = icmp eq i32 %565, 2, !dbg !1048
  br i1 %566, label %572, label %567, !dbg !1049

567:                                              ; preds = %562
  %568 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1050
  %569 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %568, i32 0, i32 1, !dbg !1051
  %570 = load i32, i32* %569, align 4, !dbg !1051
  %571 = icmp eq i32 %570, 5, !dbg !1052
  br i1 %571, label %572, label %577, !dbg !1053

572:                                              ; preds = %567, %562
  %573 = load i8, i8* %13, align 1, !dbg !1054
  %574 = zext i8 %573 to i32, !dbg !1054
  %575 = or i32 %574, 1, !dbg !1054
  %576 = trunc i32 %575 to i8, !dbg !1054
  store i8 %576, i8* %13, align 1, !dbg !1054
  br label %577, !dbg !1056

577:                                              ; preds = %572, %567
  %578 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1057
  %579 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %578, i32 0, i32 31, !dbg !1059
  %580 = getelementptr inbounds %struct.mosquitto_msg_data, %struct.mosquitto_msg_data* %579, i32 0, i32 0, !dbg !1060
  %581 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %580, align 8, !dbg !1060
  %582 = icmp ne %struct.mosquitto_client_msg* %581, null, !dbg !1057
  br i1 %582, label %601, label %583, !dbg !1061

583:                                              ; preds = %577
  %584 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1062
  %585 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %584, i32 0, i32 31, !dbg !1063
  %586 = getelementptr inbounds %struct.mosquitto_msg_data, %struct.mosquitto_msg_data* %585, i32 0, i32 1, !dbg !1064
  %587 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %586, align 8, !dbg !1064
  %588 = icmp ne %struct.mosquitto_client_msg* %587, null, !dbg !1062
  br i1 %588, label %601, label %589, !dbg !1065

589:                                              ; preds = %583
  %590 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1066
  %591 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %590, i32 0, i32 32, !dbg !1067
  %592 = getelementptr inbounds %struct.mosquitto_msg_data, %struct.mosquitto_msg_data* %591, i32 0, i32 0, !dbg !1068
  %593 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %592, align 8, !dbg !1068
  %594 = icmp ne %struct.mosquitto_client_msg* %593, null, !dbg !1066
  br i1 %594, label %601, label %595, !dbg !1069

595:                                              ; preds = %589
  %596 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1070
  %597 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %596, i32 0, i32 32, !dbg !1071
  %598 = getelementptr inbounds %struct.mosquitto_msg_data, %struct.mosquitto_msg_data* %597, i32 0, i32 1, !dbg !1072
  %599 = load %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg** %598, align 8, !dbg !1072
  %600 = icmp ne %struct.mosquitto_client_msg* %599, null, !dbg !1070
  br i1 %600, label %601, label %623, !dbg !1073

601:                                              ; preds = %595, %589, %583, %577
  %602 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1074
  %603 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %602, i32 0, i32 31, !dbg !1076
  %604 = bitcast %struct.mosquitto_msg_data* %603 to i8*, !dbg !1077
  %605 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1078
  %606 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %605, i32 0, i32 31, !dbg !1079
  %607 = bitcast %struct.mosquitto_msg_data* %606 to i8*, !dbg !1077
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %604, i8* align 8 %607, i64 48, i1 false), !dbg !1077
  %608 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1080
  %609 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %608, i32 0, i32 32, !dbg !1081
  %610 = bitcast %struct.mosquitto_msg_data* %609 to i8*, !dbg !1082
  %611 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1083
  %612 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %611, i32 0, i32 32, !dbg !1084
  %613 = bitcast %struct.mosquitto_msg_data* %612 to i8*, !dbg !1082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %610, i8* align 8 %613, i64 48, i1 false), !dbg !1082
  %614 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1085
  %615 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %614, i32 0, i32 31, !dbg !1086
  %616 = bitcast %struct.mosquitto_msg_data* %615 to i8*, !dbg !1087
  call void @llvm.memset.p0i8.i64(i8* align 8 %616, i8 0, i64 48, i1 false), !dbg !1087
  %617 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1088
  %618 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %617, i32 0, i32 32, !dbg !1089
  %619 = bitcast %struct.mosquitto_msg_data* %618 to i8*, !dbg !1090
  call void @llvm.memset.p0i8.i64(i8* align 8 %619, i8 0, i64 48, i1 false), !dbg !1090
  %620 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1091
  %621 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1092
  %622 = call i32 @db__message_reconnect_reset(%struct.mosquitto_db* %620, %struct.mosquitto* %621), !dbg !1093
  br label %623, !dbg !1094

623:                                              ; preds = %601, %595
  %624 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1095
  %625 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %624, i32 0, i32 36, !dbg !1096
  %626 = load %struct.mosquitto__subhier**, %struct.mosquitto__subhier*** %625, align 8, !dbg !1096
  %627 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1097
  %628 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %627, i32 0, i32 36, !dbg !1098
  store %struct.mosquitto__subhier** %626, %struct.mosquitto__subhier*** %628, align 8, !dbg !1099
  %629 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1100
  %630 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %629, i32 0, i32 36, !dbg !1101
  store %struct.mosquitto__subhier** null, %struct.mosquitto__subhier*** %630, align 8, !dbg !1102
  %631 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1103
  %632 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %631, i32 0, i32 39, !dbg !1104
  %633 = load i32, i32* %632, align 8, !dbg !1104
  %634 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1105
  %635 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %634, i32 0, i32 39, !dbg !1106
  store i32 %633, i32* %635, align 8, !dbg !1107
  %636 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1108
  %637 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %636, i32 0, i32 39, !dbg !1109
  store i32 0, i32* %637, align 8, !dbg !1110
  %638 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1111
  %639 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %638, i32 0, i32 7, !dbg !1112
  %640 = load i16, i16* %639, align 2, !dbg !1112
  %641 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1113
  %642 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %641, i32 0, i32 7, !dbg !1114
  store i16 %640, i16* %642, align 2, !dbg !1115
  store i32 0, i32* %14, align 4, !dbg !1116
  br label %643, !dbg !1118

643:                                              ; preds = %687, %623
  %644 = load i32, i32* %14, align 4, !dbg !1119
  %645 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1121
  %646 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %645, i32 0, i32 39, !dbg !1122
  %647 = load i32, i32* %646, align 8, !dbg !1122
  %648 = icmp slt i32 %644, %647, !dbg !1123
  br i1 %648, label %649, label %690, !dbg !1124

649:                                              ; preds = %643
  %650 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1125
  %651 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %650, i32 0, i32 36, !dbg !1128
  %652 = load %struct.mosquitto__subhier**, %struct.mosquitto__subhier*** %651, align 8, !dbg !1128
  %653 = load i32, i32* %14, align 4, !dbg !1129
  %654 = sext i32 %653 to i64, !dbg !1125
  %655 = getelementptr inbounds %struct.mosquitto__subhier*, %struct.mosquitto__subhier** %652, i64 %654, !dbg !1125
  %656 = load %struct.mosquitto__subhier*, %struct.mosquitto__subhier** %655, align 8, !dbg !1125
  %657 = icmp ne %struct.mosquitto__subhier* %656, null, !dbg !1125
  br i1 %657, label %658, label %686, !dbg !1130

658:                                              ; preds = %649
  %659 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1131
  %660 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %659, i32 0, i32 36, !dbg !1133
  %661 = load %struct.mosquitto__subhier**, %struct.mosquitto__subhier*** %660, align 8, !dbg !1133
  %662 = load i32, i32* %14, align 4, !dbg !1134
  %663 = sext i32 %662 to i64, !dbg !1131
  %664 = getelementptr inbounds %struct.mosquitto__subhier*, %struct.mosquitto__subhier** %661, i64 %663, !dbg !1131
  %665 = load %struct.mosquitto__subhier*, %struct.mosquitto__subhier** %664, align 8, !dbg !1131
  %666 = getelementptr inbounds %struct.mosquitto__subhier, %struct.mosquitto__subhier* %665, i32 0, i32 3, !dbg !1135
  %667 = load %struct.mosquitto__subleaf*, %struct.mosquitto__subleaf** %666, align 8, !dbg !1135
  store %struct.mosquitto__subleaf* %667, %struct.mosquitto__subleaf** %11, align 8, !dbg !1136
  br label %668, !dbg !1137

668:                                              ; preds = %681, %658
  %669 = load %struct.mosquitto__subleaf*, %struct.mosquitto__subleaf** %11, align 8, !dbg !1138
  %670 = icmp ne %struct.mosquitto__subleaf* %669, null, !dbg !1137
  br i1 %670, label %671, label %685, !dbg !1137

671:                                              ; preds = %668
  %672 = load %struct.mosquitto__subleaf*, %struct.mosquitto__subleaf** %11, align 8, !dbg !1139
  %673 = getelementptr inbounds %struct.mosquitto__subleaf, %struct.mosquitto__subleaf* %672, i32 0, i32 2, !dbg !1142
  %674 = load %struct.mosquitto*, %struct.mosquitto** %673, align 8, !dbg !1142
  %675 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1143
  %676 = icmp eq %struct.mosquitto* %674, %675, !dbg !1144
  br i1 %676, label %677, label %681, !dbg !1145

677:                                              ; preds = %671
  %678 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1146
  %679 = load %struct.mosquitto__subleaf*, %struct.mosquitto__subleaf** %11, align 8, !dbg !1148
  %680 = getelementptr inbounds %struct.mosquitto__subleaf, %struct.mosquitto__subleaf* %679, i32 0, i32 2, !dbg !1149
  store %struct.mosquitto* %678, %struct.mosquitto** %680, align 8, !dbg !1150
  br label %681, !dbg !1151

681:                                              ; preds = %677, %671
  %682 = load %struct.mosquitto__subleaf*, %struct.mosquitto__subleaf** %11, align 8, !dbg !1152
  %683 = getelementptr inbounds %struct.mosquitto__subleaf, %struct.mosquitto__subleaf* %682, i32 0, i32 1, !dbg !1153
  %684 = load %struct.mosquitto__subleaf*, %struct.mosquitto__subleaf** %683, align 8, !dbg !1153
  store %struct.mosquitto__subleaf* %684, %struct.mosquitto__subleaf** %11, align 8, !dbg !1154
  br label %668, !dbg !1137, !llvm.loop !1155

685:                                              ; preds = %668
  br label %686, !dbg !1157

686:                                              ; preds = %685, %649
  br label %687, !dbg !1158

687:                                              ; preds = %686
  %688 = load i32, i32* %14, align 4, !dbg !1159
  %689 = add nsw i32 %688, 1, !dbg !1159
  store i32 %689, i32* %14, align 4, !dbg !1159
  br label %643, !dbg !1160, !llvm.loop !1161

690:                                              ; preds = %643
  br label %691, !dbg !1163

691:                                              ; preds = %690, %557, %550
  %692 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1164
  call void @session_expiry__remove(%struct.mosquitto* %692), !dbg !1165
  %693 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1166
  call void @will_delay__remove(%struct.mosquitto* %693), !dbg !1167
  %694 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1168
  %695 = call i32 @will__clear(%struct.mosquitto* %694), !dbg !1169
  %696 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1170
  %697 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %696, i32 0, i32 24, !dbg !1171
  store i8 1, i8* %697, align 2, !dbg !1172
  %698 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1173
  %699 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %698, i32 0, i32 25, !dbg !1174
  store i32 0, i32* %699, align 4, !dbg !1175
  %700 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1176
  %701 = call i32 @mosquitto__set_state(%struct.mosquitto* %700, i32 17), !dbg !1177
  %702 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1178
  %703 = load %struct.mosquitto*, %struct.mosquitto** %10, align 8, !dbg !1179
  call void @do_disconnect(%struct.mosquitto_db* %702, %struct.mosquitto* %703, i32 0), !dbg !1180
  br label %704, !dbg !1181

704:                                              ; preds = %691, %526
  %705 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1182
  %706 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1183
  %707 = call i32 @acl__find_acls(%struct.mosquitto_db* %705, %struct.mosquitto* %706), !dbg !1184
  store i32 %707, i32* %15, align 4, !dbg !1185
  %708 = load i32, i32* %15, align 4, !dbg !1186
  %709 = icmp ne i32 %708, 0, !dbg !1186
  br i1 %709, label %710, label %713, !dbg !1188

710:                                              ; preds = %704
  %711 = load i8*, i8** %8, align 8, !dbg !1189
  call void @free(i8* %711) #10, !dbg !1191
  %712 = load i32, i32* %15, align 4, !dbg !1192
  store i32 %712, i32* %5, align 4, !dbg !1193
  br label %2090, !dbg !1193

713:                                              ; preds = %704
  %714 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1194
  %715 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %714, i32 0, i32 13, !dbg !1196
  %716 = load %struct.mosquitto__config*, %struct.mosquitto__config** %715, align 8, !dbg !1196
  %717 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %716, i32 0, i32 5, !dbg !1197
  %718 = load i8, i8* %717, align 8, !dbg !1197
  %719 = trunc i8 %718 to i1, !dbg !1197
  %720 = zext i1 %719 to i32, !dbg !1194
  %721 = icmp eq i32 %720, 1, !dbg !1198
  br i1 %721, label %722, label %863, !dbg !1199

722:                                              ; preds = %713
  %723 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1200
  %724 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %723, i32 0, i32 29, !dbg !1203
  %725 = load i8, i8* %724, align 2, !dbg !1203
  %726 = trunc i8 %725 to i1, !dbg !1203
  br i1 %726, label %727, label %776, !dbg !1204

727:                                              ; preds = %722
  %728 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1205
  %729 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %728, i32 0, i32 4, !dbg !1208
  %730 = load i8*, i8** %729, align 8, !dbg !1208
  %731 = icmp ne i8* %730, null, !dbg !1205
  br i1 %731, label %732, label %755, !dbg !1209

732:                                              ; preds = %727
  %733 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1210
  %734 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %733, i32 0, i32 2, !dbg !1212
  %735 = load i8*, i8** %734, align 8, !dbg !1212
  %736 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1213
  %737 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %736, i32 0, i32 3, !dbg !1214
  %738 = load i8*, i8** %737, align 8, !dbg !1214
  %739 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1215
  %740 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %739, i32 0, i32 1, !dbg !1216
  %741 = load i32, i32* %740, align 4, !dbg !1216
  %742 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1217
  %743 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %742, i32 0, i32 24, !dbg !1218
  %744 = load i8, i8* %743, align 2, !dbg !1218
  %745 = trunc i8 %744 to i1, !dbg !1218
  %746 = zext i1 %745 to i32, !dbg !1217
  %747 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1219
  %748 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %747, i32 0, i32 6, !dbg !1220
  %749 = load i16, i16* %748, align 8, !dbg !1220
  %750 = zext i16 %749 to i32, !dbg !1219
  %751 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1221
  %752 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %751, i32 0, i32 4, !dbg !1222
  %753 = load i8*, i8** %752, align 8, !dbg !1222
  %754 = call i32 (%struct.mosquitto*, i32, i8*, ...) @log__printf(%struct.mosquitto* null, i32 2, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i32 0, i32 0), i8* %735, i8* %738, i32 %741, i32 %746, i32 %750, i8* %753), !dbg !1223
  br label %775, !dbg !1224

755:                                              ; preds = %727
  %756 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1225
  %757 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %756, i32 0, i32 2, !dbg !1227
  %758 = load i8*, i8** %757, align 8, !dbg !1227
  %759 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1228
  %760 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %759, i32 0, i32 3, !dbg !1229
  %761 = load i8*, i8** %760, align 8, !dbg !1229
  %762 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1230
  %763 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %762, i32 0, i32 1, !dbg !1231
  %764 = load i32, i32* %763, align 4, !dbg !1231
  %765 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1232
  %766 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %765, i32 0, i32 24, !dbg !1233
  %767 = load i8, i8* %766, align 2, !dbg !1233
  %768 = trunc i8 %767 to i1, !dbg !1233
  %769 = zext i1 %768 to i32, !dbg !1232
  %770 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1234
  %771 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %770, i32 0, i32 6, !dbg !1235
  %772 = load i16, i16* %771, align 8, !dbg !1235
  %773 = zext i16 %772 to i32, !dbg !1234
  %774 = call i32 (%struct.mosquitto*, i32, i8*, ...) @log__printf(%struct.mosquitto* null, i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i32 0, i32 0), i8* %758, i8* %761, i32 %764, i32 %769, i32 %773), !dbg !1236
  br label %775

775:                                              ; preds = %755, %732
  br label %825, !dbg !1237

776:                                              ; preds = %722
  %777 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1238
  %778 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %777, i32 0, i32 4, !dbg !1241
  %779 = load i8*, i8** %778, align 8, !dbg !1241
  %780 = icmp ne i8* %779, null, !dbg !1238
  br i1 %780, label %781, label %804, !dbg !1242

781:                                              ; preds = %776
  %782 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1243
  %783 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %782, i32 0, i32 2, !dbg !1245
  %784 = load i8*, i8** %783, align 8, !dbg !1245
  %785 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1246
  %786 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %785, i32 0, i32 3, !dbg !1247
  %787 = load i8*, i8** %786, align 8, !dbg !1247
  %788 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1248
  %789 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %788, i32 0, i32 1, !dbg !1249
  %790 = load i32, i32* %789, align 4, !dbg !1249
  %791 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1250
  %792 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %791, i32 0, i32 24, !dbg !1251
  %793 = load i8, i8* %792, align 2, !dbg !1251
  %794 = trunc i8 %793 to i1, !dbg !1251
  %795 = zext i1 %794 to i32, !dbg !1250
  %796 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1252
  %797 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %796, i32 0, i32 6, !dbg !1253
  %798 = load i16, i16* %797, align 8, !dbg !1253
  %799 = zext i16 %798 to i32, !dbg !1252
  %800 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1254
  %801 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %800, i32 0, i32 4, !dbg !1255
  %802 = load i8*, i8** %801, align 8, !dbg !1255
  %803 = call i32 (%struct.mosquitto*, i32, i8*, ...) @log__printf(%struct.mosquitto* null, i32 2, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i32 0, i32 0), i8* %784, i8* %787, i32 %790, i32 %795, i32 %799, i8* %802), !dbg !1256
  br label %824, !dbg !1257

804:                                              ; preds = %776
  %805 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1258
  %806 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %805, i32 0, i32 2, !dbg !1260
  %807 = load i8*, i8** %806, align 8, !dbg !1260
  %808 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1261
  %809 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %808, i32 0, i32 3, !dbg !1262
  %810 = load i8*, i8** %809, align 8, !dbg !1262
  %811 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1263
  %812 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %811, i32 0, i32 1, !dbg !1264
  %813 = load i32, i32* %812, align 4, !dbg !1264
  %814 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1265
  %815 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %814, i32 0, i32 24, !dbg !1266
  %816 = load i8, i8* %815, align 2, !dbg !1266
  %817 = trunc i8 %816 to i1, !dbg !1266
  %818 = zext i1 %817 to i32, !dbg !1265
  %819 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1267
  %820 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %819, i32 0, i32 6, !dbg !1268
  %821 = load i16, i16* %820, align 8, !dbg !1268
  %822 = zext i16 %821 to i32, !dbg !1267
  %823 = call i32 (%struct.mosquitto*, i32, i8*, ...) @log__printf(%struct.mosquitto* null, i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i32 0, i32 0), i8* %807, i8* %810, i32 %813, i32 %818, i32 %822), !dbg !1269
  br label %824

824:                                              ; preds = %804, %781
  br label %825

825:                                              ; preds = %824, %775
  %826 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1270
  %827 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %826, i32 0, i32 15, !dbg !1272
  %828 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %827, align 8, !dbg !1272
  %829 = icmp ne %struct.mosquitto_message_all* %828, null, !dbg !1270
  br i1 %829, label %830, label %860, !dbg !1273

830:                                              ; preds = %825
  %831 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1274
  %832 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %831, i32 0, i32 15, !dbg !1276
  %833 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %832, align 8, !dbg !1276
  %834 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %833, i32 0, i32 6, !dbg !1277
  %835 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %834, i32 0, i32 3, !dbg !1278
  %836 = load i32, i32* %835, align 8, !dbg !1278
  %837 = sext i32 %836 to i64, !dbg !1279
  %838 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1280
  %839 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %838, i32 0, i32 15, !dbg !1281
  %840 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %839, align 8, !dbg !1281
  %841 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %840, i32 0, i32 6, !dbg !1282
  %842 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %841, i32 0, i32 5, !dbg !1283
  %843 = load i8, i8* %842, align 8, !dbg !1283
  %844 = trunc i8 %843 to i1, !dbg !1283
  %845 = zext i1 %844 to i32, !dbg !1280
  %846 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1284
  %847 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %846, i32 0, i32 15, !dbg !1285
  %848 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %847, align 8, !dbg !1285
  %849 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %848, i32 0, i32 6, !dbg !1286
  %850 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %849, i32 0, i32 4, !dbg !1287
  %851 = load i32, i32* %850, align 4, !dbg !1287
  %852 = call i32 (%struct.mosquitto*, i32, i8*, ...) @log__printf(%struct.mosquitto* null, i32 16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i32 0, i32 0), i64 %837, i32 %845, i32 %851), !dbg !1288
  %853 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1289
  %854 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %853, i32 0, i32 15, !dbg !1290
  %855 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %854, align 8, !dbg !1290
  %856 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %855, i32 0, i32 6, !dbg !1291
  %857 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %856, i32 0, i32 1, !dbg !1292
  %858 = load i8*, i8** %857, align 8, !dbg !1292
  %859 = call i32 (%struct.mosquitto*, i32, i8*, ...) @log__printf(%struct.mosquitto* null, i32 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* %858), !dbg !1293
  br label %862, !dbg !1294

860:                                              ; preds = %825
  %861 = call i32 (%struct.mosquitto*, i32, i8*, ...) @log__printf(%struct.mosquitto* null, i32 16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0)), !dbg !1295
  br label %862

862:                                              ; preds = %860, %830
  br label %863, !dbg !1297

863:                                              ; preds = %862, %713
  %864 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1298
  %865 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %864, i32 0, i32 11, !dbg !1299
  store i64 0, i64* %865, align 8, !dbg !1300
  %866 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1301
  %867 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %866, i32 0, i32 28, !dbg !1302
  store i8 0, i8* %867, align 1, !dbg !1303
  %868 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1304
  %869 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1305
  %870 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1306
  %871 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %870, i32 0, i32 31, !dbg !1307
  %872 = getelementptr inbounds %struct.mosquitto_msg_data, %struct.mosquitto_msg_data* %871, i32 0, i32 0, !dbg !1308
  call void @connection_check_acl(%struct.mosquitto_db* %868, %struct.mosquitto* %869, %struct.mosquitto_client_msg** %872), !dbg !1309
  %873 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1310
  %874 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1311
  %875 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1312
  %876 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %875, i32 0, i32 31, !dbg !1313
  %877 = getelementptr inbounds %struct.mosquitto_msg_data, %struct.mosquitto_msg_data* %876, i32 0, i32 1, !dbg !1314
  call void @connection_check_acl(%struct.mosquitto_db* %873, %struct.mosquitto* %874, %struct.mosquitto_client_msg** %877), !dbg !1315
  %878 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1316
  %879 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1317
  %880 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1318
  %881 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %880, i32 0, i32 32, !dbg !1319
  %882 = getelementptr inbounds %struct.mosquitto_msg_data, %struct.mosquitto_msg_data* %881, i32 0, i32 0, !dbg !1320
  call void @connection_check_acl(%struct.mosquitto_db* %878, %struct.mosquitto* %879, %struct.mosquitto_client_msg** %882), !dbg !1321
  %883 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1322
  %884 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1323
  %885 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1324
  %886 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %885, i32 0, i32 32, !dbg !1325
  %887 = getelementptr inbounds %struct.mosquitto_msg_data, %struct.mosquitto_msg_data* %886, i32 0, i32 1, !dbg !1326
  call void @connection_check_acl(%struct.mosquitto_db* %883, %struct.mosquitto* %884, %struct.mosquitto_client_msg** %887), !dbg !1327
  br label %888, !dbg !1328, !llvm.loop !1329

888:                                              ; preds = %863
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1330, metadata !DIExpression()), !dbg !1332
  %889 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1332
  %890 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %889, i32 0, i32 45, !dbg !1332
  %891 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %890, i32 0, i32 2, !dbg !1332
  store i8* null, i8** %891, align 8, !dbg !1332
  %892 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1332
  %893 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %892, i32 0, i32 3, !dbg !1332
  %894 = load i8*, i8** %893, align 8, !dbg !1332
  %895 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1332
  %896 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %895, i32 0, i32 45, !dbg !1332
  %897 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %896, i32 0, i32 5, !dbg !1332
  store i8* %894, i8** %897, align 8, !dbg !1332
  %898 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1332
  %899 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %898, i32 0, i32 3, !dbg !1332
  %900 = load i8*, i8** %899, align 8, !dbg !1332
  %901 = call i64 @strlen(i8* %900) #9, !dbg !1332
  %902 = trunc i64 %901 to i32, !dbg !1332
  %903 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1332
  %904 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %903, i32 0, i32 45, !dbg !1332
  %905 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %904, i32 0, i32 6, !dbg !1332
  store i32 %902, i32* %905, align 8, !dbg !1332
  %906 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1333
  %907 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %906, i32 0, i32 4, !dbg !1333
  %908 = load %struct.mosquitto*, %struct.mosquitto** %907, align 8, !dbg !1333
  %909 = icmp ne %struct.mosquitto* %908, null, !dbg !1333
  br i1 %909, label %1024, label %910, !dbg !1332

910:                                              ; preds = %888
  %911 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1335
  %912 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1335
  %913 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %912, i32 0, i32 4, !dbg !1335
  store %struct.mosquitto* %911, %struct.mosquitto** %913, align 8, !dbg !1335
  %914 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1335
  %915 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %914, i32 0, i32 4, !dbg !1335
  %916 = load %struct.mosquitto*, %struct.mosquitto** %915, align 8, !dbg !1335
  %917 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %916, i32 0, i32 45, !dbg !1335
  %918 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %917, i32 0, i32 1, !dbg !1335
  store i8* null, i8** %918, align 8, !dbg !1335
  br label %919, !dbg !1335, !llvm.loop !1337

919:                                              ; preds = %910
  %920 = call i8* @mosquitto__malloc(i64 64), !dbg !1338
  %921 = bitcast i8* %920 to %struct.UT_hash_table*, !dbg !1338
  %922 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1338
  %923 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %922, i32 0, i32 4, !dbg !1338
  %924 = load %struct.mosquitto*, %struct.mosquitto** %923, align 8, !dbg !1338
  %925 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %924, i32 0, i32 45, !dbg !1338
  %926 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %925, i32 0, i32 0, !dbg !1338
  store %struct.UT_hash_table* %921, %struct.UT_hash_table** %926, align 8, !dbg !1338
  %927 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1340
  %928 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %927, i32 0, i32 4, !dbg !1340
  %929 = load %struct.mosquitto*, %struct.mosquitto** %928, align 8, !dbg !1340
  %930 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %929, i32 0, i32 45, !dbg !1340
  %931 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %930, i32 0, i32 0, !dbg !1340
  %932 = load %struct.UT_hash_table*, %struct.UT_hash_table** %931, align 8, !dbg !1340
  %933 = icmp ne %struct.UT_hash_table* %932, null, !dbg !1340
  br i1 %933, label %935, label %934, !dbg !1338

934:                                              ; preds = %919
  call void @exit(i32 -1) #8, !dbg !1342
  unreachable, !dbg !1342

935:                                              ; preds = %919
  %936 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1338
  %937 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %936, i32 0, i32 4, !dbg !1338
  %938 = load %struct.mosquitto*, %struct.mosquitto** %937, align 8, !dbg !1338
  %939 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %938, i32 0, i32 45, !dbg !1338
  %940 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %939, i32 0, i32 0, !dbg !1338
  %941 = load %struct.UT_hash_table*, %struct.UT_hash_table** %940, align 8, !dbg !1338
  %942 = bitcast %struct.UT_hash_table* %941 to i8*, !dbg !1338
  call void @llvm.memset.p0i8.i64(i8* align 8 %942, i8 0, i64 64, i1 false), !dbg !1338
  %943 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1338
  %944 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %943, i32 0, i32 4, !dbg !1338
  %945 = load %struct.mosquitto*, %struct.mosquitto** %944, align 8, !dbg !1338
  %946 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %945, i32 0, i32 45, !dbg !1338
  %947 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1338
  %948 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %947, i32 0, i32 4, !dbg !1338
  %949 = load %struct.mosquitto*, %struct.mosquitto** %948, align 8, !dbg !1338
  %950 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %949, i32 0, i32 45, !dbg !1338
  %951 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %950, i32 0, i32 0, !dbg !1338
  %952 = load %struct.UT_hash_table*, %struct.UT_hash_table** %951, align 8, !dbg !1338
  %953 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %952, i32 0, i32 4, !dbg !1338
  store %struct.UT_hash_handle* %946, %struct.UT_hash_handle** %953, align 8, !dbg !1338
  %954 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1338
  %955 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %954, i32 0, i32 4, !dbg !1338
  %956 = load %struct.mosquitto*, %struct.mosquitto** %955, align 8, !dbg !1338
  %957 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %956, i32 0, i32 45, !dbg !1338
  %958 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %957, i32 0, i32 0, !dbg !1338
  %959 = load %struct.UT_hash_table*, %struct.UT_hash_table** %958, align 8, !dbg !1338
  %960 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %959, i32 0, i32 1, !dbg !1338
  store i32 32, i32* %960, align 8, !dbg !1338
  %961 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1338
  %962 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %961, i32 0, i32 4, !dbg !1338
  %963 = load %struct.mosquitto*, %struct.mosquitto** %962, align 8, !dbg !1338
  %964 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %963, i32 0, i32 45, !dbg !1338
  %965 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %964, i32 0, i32 0, !dbg !1338
  %966 = load %struct.UT_hash_table*, %struct.UT_hash_table** %965, align 8, !dbg !1338
  %967 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %966, i32 0, i32 2, !dbg !1338
  store i32 5, i32* %967, align 4, !dbg !1338
  %968 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1338
  %969 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %968, i32 0, i32 4, !dbg !1338
  %970 = load %struct.mosquitto*, %struct.mosquitto** %969, align 8, !dbg !1338
  %971 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %970, i32 0, i32 45, !dbg !1338
  %972 = bitcast %struct.UT_hash_handle* %971 to i8*, !dbg !1338
  %973 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1338
  %974 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %973, i32 0, i32 4, !dbg !1338
  %975 = load %struct.mosquitto*, %struct.mosquitto** %974, align 8, !dbg !1338
  %976 = bitcast %struct.mosquitto* %975 to i8*, !dbg !1338
  %977 = ptrtoint i8* %972 to i64, !dbg !1338
  %978 = ptrtoint i8* %976 to i64, !dbg !1338
  %979 = sub i64 %977, %978, !dbg !1338
  %980 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1338
  %981 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %980, i32 0, i32 4, !dbg !1338
  %982 = load %struct.mosquitto*, %struct.mosquitto** %981, align 8, !dbg !1338
  %983 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %982, i32 0, i32 45, !dbg !1338
  %984 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %983, i32 0, i32 0, !dbg !1338
  %985 = load %struct.UT_hash_table*, %struct.UT_hash_table** %984, align 8, !dbg !1338
  %986 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %985, i32 0, i32 5, !dbg !1338
  store i64 %979, i64* %986, align 8, !dbg !1338
  %987 = call i8* @mosquitto__malloc(i64 512), !dbg !1338
  %988 = bitcast i8* %987 to %struct.UT_hash_bucket*, !dbg !1338
  %989 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1338
  %990 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %989, i32 0, i32 4, !dbg !1338
  %991 = load %struct.mosquitto*, %struct.mosquitto** %990, align 8, !dbg !1338
  %992 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %991, i32 0, i32 45, !dbg !1338
  %993 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %992, i32 0, i32 0, !dbg !1338
  %994 = load %struct.UT_hash_table*, %struct.UT_hash_table** %993, align 8, !dbg !1338
  %995 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %994, i32 0, i32 0, !dbg !1338
  store %struct.UT_hash_bucket* %988, %struct.UT_hash_bucket** %995, align 8, !dbg !1338
  %996 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1344
  %997 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %996, i32 0, i32 4, !dbg !1344
  %998 = load %struct.mosquitto*, %struct.mosquitto** %997, align 8, !dbg !1344
  %999 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %998, i32 0, i32 45, !dbg !1344
  %1000 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %999, i32 0, i32 0, !dbg !1344
  %1001 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1000, align 8, !dbg !1344
  %1002 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1001, i32 0, i32 0, !dbg !1344
  %1003 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %1002, align 8, !dbg !1344
  %1004 = icmp ne %struct.UT_hash_bucket* %1003, null, !dbg !1344
  br i1 %1004, label %1006, label %1005, !dbg !1338

1005:                                             ; preds = %935
  call void @exit(i32 -1) #8, !dbg !1346
  unreachable, !dbg !1346

1006:                                             ; preds = %935
  %1007 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1338
  %1008 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %1007, i32 0, i32 4, !dbg !1338
  %1009 = load %struct.mosquitto*, %struct.mosquitto** %1008, align 8, !dbg !1338
  %1010 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1009, i32 0, i32 45, !dbg !1338
  %1011 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1010, i32 0, i32 0, !dbg !1338
  %1012 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1011, align 8, !dbg !1338
  %1013 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1012, i32 0, i32 0, !dbg !1338
  %1014 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %1013, align 8, !dbg !1338
  %1015 = bitcast %struct.UT_hash_bucket* %1014 to i8*, !dbg !1338
  call void @llvm.memset.p0i8.i64(i8* align 8 %1015, i8 0, i64 512, i1 false), !dbg !1338
  %1016 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1338
  %1017 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %1016, i32 0, i32 4, !dbg !1338
  %1018 = load %struct.mosquitto*, %struct.mosquitto** %1017, align 8, !dbg !1338
  %1019 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1018, i32 0, i32 45, !dbg !1338
  %1020 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1019, i32 0, i32 0, !dbg !1338
  %1021 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1020, align 8, !dbg !1338
  %1022 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1021, i32 0, i32 10, !dbg !1338
  store i32 -1609490463, i32* %1022, align 8, !dbg !1338
  br label %1023, !dbg !1338

1023:                                             ; preds = %1006
  br label %1067, !dbg !1335

1024:                                             ; preds = %888
  %1025 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1348
  %1026 = bitcast %struct.mosquitto* %1025 to i8*, !dbg !1348
  %1027 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1348
  %1028 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %1027, i32 0, i32 4, !dbg !1348
  %1029 = load %struct.mosquitto*, %struct.mosquitto** %1028, align 8, !dbg !1348
  %1030 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1029, i32 0, i32 45, !dbg !1348
  %1031 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1030, i32 0, i32 0, !dbg !1348
  %1032 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1031, align 8, !dbg !1348
  %1033 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1032, i32 0, i32 4, !dbg !1348
  %1034 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %1033, align 8, !dbg !1348
  %1035 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1034, i32 0, i32 2, !dbg !1348
  store i8* %1026, i8** %1035, align 8, !dbg !1348
  %1036 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1348
  %1037 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %1036, i32 0, i32 4, !dbg !1348
  %1038 = load %struct.mosquitto*, %struct.mosquitto** %1037, align 8, !dbg !1348
  %1039 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1038, i32 0, i32 45, !dbg !1348
  %1040 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1039, i32 0, i32 0, !dbg !1348
  %1041 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1040, align 8, !dbg !1348
  %1042 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1041, i32 0, i32 4, !dbg !1348
  %1043 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %1042, align 8, !dbg !1348
  %1044 = bitcast %struct.UT_hash_handle* %1043 to i8*, !dbg !1348
  %1045 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1348
  %1046 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %1045, i32 0, i32 4, !dbg !1348
  %1047 = load %struct.mosquitto*, %struct.mosquitto** %1046, align 8, !dbg !1348
  %1048 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1047, i32 0, i32 45, !dbg !1348
  %1049 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1048, i32 0, i32 0, !dbg !1348
  %1050 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1049, align 8, !dbg !1348
  %1051 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1050, i32 0, i32 5, !dbg !1348
  %1052 = load i64, i64* %1051, align 8, !dbg !1348
  %1053 = sub i64 0, %1052, !dbg !1348
  %1054 = getelementptr inbounds i8, i8* %1044, i64 %1053, !dbg !1348
  %1055 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1348
  %1056 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1055, i32 0, i32 45, !dbg !1348
  %1057 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1056, i32 0, i32 1, !dbg !1348
  store i8* %1054, i8** %1057, align 8, !dbg !1348
  %1058 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1348
  %1059 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1058, i32 0, i32 45, !dbg !1348
  %1060 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1348
  %1061 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %1060, i32 0, i32 4, !dbg !1348
  %1062 = load %struct.mosquitto*, %struct.mosquitto** %1061, align 8, !dbg !1348
  %1063 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1062, i32 0, i32 45, !dbg !1348
  %1064 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1063, i32 0, i32 0, !dbg !1348
  %1065 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1064, align 8, !dbg !1348
  %1066 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1065, i32 0, i32 4, !dbg !1348
  store %struct.UT_hash_handle* %1059, %struct.UT_hash_handle** %1066, align 8, !dbg !1348
  br label %1067

1067:                                             ; preds = %1024, %1023
  %1068 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1332
  %1069 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %1068, i32 0, i32 4, !dbg !1332
  %1070 = load %struct.mosquitto*, %struct.mosquitto** %1069, align 8, !dbg !1332
  %1071 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1070, i32 0, i32 45, !dbg !1332
  %1072 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1071, i32 0, i32 0, !dbg !1332
  %1073 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1072, align 8, !dbg !1332
  %1074 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1073, i32 0, i32 3, !dbg !1332
  %1075 = load i32, i32* %1074, align 8, !dbg !1332
  %1076 = add i32 %1075, 1, !dbg !1332
  store i32 %1076, i32* %1074, align 8, !dbg !1332
  %1077 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1332
  %1078 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %1077, i32 0, i32 4, !dbg !1332
  %1079 = load %struct.mosquitto*, %struct.mosquitto** %1078, align 8, !dbg !1332
  %1080 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1079, i32 0, i32 45, !dbg !1332
  %1081 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1080, i32 0, i32 0, !dbg !1332
  %1082 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1081, align 8, !dbg !1332
  %1083 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1332
  %1084 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1083, i32 0, i32 45, !dbg !1332
  %1085 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1084, i32 0, i32 0, !dbg !1332
  store %struct.UT_hash_table* %1082, %struct.UT_hash_table** %1085, align 8, !dbg !1332
  br label %1086, !dbg !1332, !llvm.loop !1350

1086:                                             ; preds = %1067
  call void @llvm.dbg.declare(metadata i32* %23, metadata !1351, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1354, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.declare(metadata i32* %25, metadata !1355, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.declare(metadata i8** %26, metadata !1356, metadata !DIExpression()), !dbg !1353
  %1087 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1353
  %1088 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1087, i32 0, i32 3, !dbg !1353
  %1089 = load i8*, i8** %1088, align 8, !dbg !1353
  store i8* %1089, i8** %26, align 8, !dbg !1353
  %1090 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1353
  %1091 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1090, i32 0, i32 45, !dbg !1353
  %1092 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1091, i32 0, i32 7, !dbg !1353
  store i32 -17973521, i32* %1092, align 4, !dbg !1353
  store i32 -1640531527, i32* %24, align 4, !dbg !1353
  store i32 -1640531527, i32* %23, align 4, !dbg !1353
  %1093 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1353
  %1094 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1093, i32 0, i32 3, !dbg !1353
  %1095 = load i8*, i8** %1094, align 8, !dbg !1353
  %1096 = call i64 @strlen(i8* %1095) #9, !dbg !1353
  %1097 = trunc i64 %1096 to i32, !dbg !1353
  store i32 %1097, i32* %25, align 4, !dbg !1353
  br label %1098, !dbg !1353

1098:                                             ; preds = %1322, %1086
  %1099 = load i32, i32* %25, align 4, !dbg !1353
  %1100 = icmp uge i32 %1099, 12, !dbg !1353
  br i1 %1100, label %1101, label %1327, !dbg !1353

1101:                                             ; preds = %1098
  %1102 = load i8*, i8** %26, align 8, !dbg !1357
  %1103 = getelementptr inbounds i8, i8* %1102, i64 0, !dbg !1357
  %1104 = load i8, i8* %1103, align 1, !dbg !1357
  %1105 = zext i8 %1104 to i32, !dbg !1357
  %1106 = load i8*, i8** %26, align 8, !dbg !1357
  %1107 = getelementptr inbounds i8, i8* %1106, i64 1, !dbg !1357
  %1108 = load i8, i8* %1107, align 1, !dbg !1357
  %1109 = zext i8 %1108 to i32, !dbg !1357
  %1110 = shl i32 %1109, 8, !dbg !1357
  %1111 = add i32 %1105, %1110, !dbg !1357
  %1112 = load i8*, i8** %26, align 8, !dbg !1357
  %1113 = getelementptr inbounds i8, i8* %1112, i64 2, !dbg !1357
  %1114 = load i8, i8* %1113, align 1, !dbg !1357
  %1115 = zext i8 %1114 to i32, !dbg !1357
  %1116 = shl i32 %1115, 16, !dbg !1357
  %1117 = add i32 %1111, %1116, !dbg !1357
  %1118 = load i8*, i8** %26, align 8, !dbg !1357
  %1119 = getelementptr inbounds i8, i8* %1118, i64 3, !dbg !1357
  %1120 = load i8, i8* %1119, align 1, !dbg !1357
  %1121 = zext i8 %1120 to i32, !dbg !1357
  %1122 = shl i32 %1121, 24, !dbg !1357
  %1123 = add i32 %1117, %1122, !dbg !1357
  %1124 = load i32, i32* %23, align 4, !dbg !1357
  %1125 = add i32 %1124, %1123, !dbg !1357
  store i32 %1125, i32* %23, align 4, !dbg !1357
  %1126 = load i8*, i8** %26, align 8, !dbg !1357
  %1127 = getelementptr inbounds i8, i8* %1126, i64 4, !dbg !1357
  %1128 = load i8, i8* %1127, align 1, !dbg !1357
  %1129 = zext i8 %1128 to i32, !dbg !1357
  %1130 = load i8*, i8** %26, align 8, !dbg !1357
  %1131 = getelementptr inbounds i8, i8* %1130, i64 5, !dbg !1357
  %1132 = load i8, i8* %1131, align 1, !dbg !1357
  %1133 = zext i8 %1132 to i32, !dbg !1357
  %1134 = shl i32 %1133, 8, !dbg !1357
  %1135 = add i32 %1129, %1134, !dbg !1357
  %1136 = load i8*, i8** %26, align 8, !dbg !1357
  %1137 = getelementptr inbounds i8, i8* %1136, i64 6, !dbg !1357
  %1138 = load i8, i8* %1137, align 1, !dbg !1357
  %1139 = zext i8 %1138 to i32, !dbg !1357
  %1140 = shl i32 %1139, 16, !dbg !1357
  %1141 = add i32 %1135, %1140, !dbg !1357
  %1142 = load i8*, i8** %26, align 8, !dbg !1357
  %1143 = getelementptr inbounds i8, i8* %1142, i64 7, !dbg !1357
  %1144 = load i8, i8* %1143, align 1, !dbg !1357
  %1145 = zext i8 %1144 to i32, !dbg !1357
  %1146 = shl i32 %1145, 24, !dbg !1357
  %1147 = add i32 %1141, %1146, !dbg !1357
  %1148 = load i32, i32* %24, align 4, !dbg !1357
  %1149 = add i32 %1148, %1147, !dbg !1357
  store i32 %1149, i32* %24, align 4, !dbg !1357
  %1150 = load i8*, i8** %26, align 8, !dbg !1357
  %1151 = getelementptr inbounds i8, i8* %1150, i64 8, !dbg !1357
  %1152 = load i8, i8* %1151, align 1, !dbg !1357
  %1153 = zext i8 %1152 to i32, !dbg !1357
  %1154 = load i8*, i8** %26, align 8, !dbg !1357
  %1155 = getelementptr inbounds i8, i8* %1154, i64 9, !dbg !1357
  %1156 = load i8, i8* %1155, align 1, !dbg !1357
  %1157 = zext i8 %1156 to i32, !dbg !1357
  %1158 = shl i32 %1157, 8, !dbg !1357
  %1159 = add i32 %1153, %1158, !dbg !1357
  %1160 = load i8*, i8** %26, align 8, !dbg !1357
  %1161 = getelementptr inbounds i8, i8* %1160, i64 10, !dbg !1357
  %1162 = load i8, i8* %1161, align 1, !dbg !1357
  %1163 = zext i8 %1162 to i32, !dbg !1357
  %1164 = shl i32 %1163, 16, !dbg !1357
  %1165 = add i32 %1159, %1164, !dbg !1357
  %1166 = load i8*, i8** %26, align 8, !dbg !1357
  %1167 = getelementptr inbounds i8, i8* %1166, i64 11, !dbg !1357
  %1168 = load i8, i8* %1167, align 1, !dbg !1357
  %1169 = zext i8 %1168 to i32, !dbg !1357
  %1170 = shl i32 %1169, 24, !dbg !1357
  %1171 = add i32 %1165, %1170, !dbg !1357
  %1172 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1357
  %1173 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1172, i32 0, i32 45, !dbg !1357
  %1174 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1173, i32 0, i32 7, !dbg !1357
  %1175 = load i32, i32* %1174, align 4, !dbg !1357
  %1176 = add i32 %1175, %1171, !dbg !1357
  store i32 %1176, i32* %1174, align 4, !dbg !1357
  br label %1177, !dbg !1357, !llvm.loop !1359

1177:                                             ; preds = %1101
  %1178 = load i32, i32* %24, align 4, !dbg !1360
  %1179 = load i32, i32* %23, align 4, !dbg !1360
  %1180 = sub i32 %1179, %1178, !dbg !1360
  store i32 %1180, i32* %23, align 4, !dbg !1360
  %1181 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1360
  %1182 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1181, i32 0, i32 45, !dbg !1360
  %1183 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1182, i32 0, i32 7, !dbg !1360
  %1184 = load i32, i32* %1183, align 4, !dbg !1360
  %1185 = load i32, i32* %23, align 4, !dbg !1360
  %1186 = sub i32 %1185, %1184, !dbg !1360
  store i32 %1186, i32* %23, align 4, !dbg !1360
  %1187 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1360
  %1188 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1187, i32 0, i32 45, !dbg !1360
  %1189 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1188, i32 0, i32 7, !dbg !1360
  %1190 = load i32, i32* %1189, align 4, !dbg !1360
  %1191 = lshr i32 %1190, 13, !dbg !1360
  %1192 = load i32, i32* %23, align 4, !dbg !1360
  %1193 = xor i32 %1192, %1191, !dbg !1360
  store i32 %1193, i32* %23, align 4, !dbg !1360
  %1194 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1360
  %1195 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1194, i32 0, i32 45, !dbg !1360
  %1196 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1195, i32 0, i32 7, !dbg !1360
  %1197 = load i32, i32* %1196, align 4, !dbg !1360
  %1198 = load i32, i32* %24, align 4, !dbg !1360
  %1199 = sub i32 %1198, %1197, !dbg !1360
  store i32 %1199, i32* %24, align 4, !dbg !1360
  %1200 = load i32, i32* %23, align 4, !dbg !1360
  %1201 = load i32, i32* %24, align 4, !dbg !1360
  %1202 = sub i32 %1201, %1200, !dbg !1360
  store i32 %1202, i32* %24, align 4, !dbg !1360
  %1203 = load i32, i32* %23, align 4, !dbg !1360
  %1204 = shl i32 %1203, 8, !dbg !1360
  %1205 = load i32, i32* %24, align 4, !dbg !1360
  %1206 = xor i32 %1205, %1204, !dbg !1360
  store i32 %1206, i32* %24, align 4, !dbg !1360
  %1207 = load i32, i32* %23, align 4, !dbg !1360
  %1208 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1360
  %1209 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1208, i32 0, i32 45, !dbg !1360
  %1210 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1209, i32 0, i32 7, !dbg !1360
  %1211 = load i32, i32* %1210, align 4, !dbg !1360
  %1212 = sub i32 %1211, %1207, !dbg !1360
  store i32 %1212, i32* %1210, align 4, !dbg !1360
  %1213 = load i32, i32* %24, align 4, !dbg !1360
  %1214 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1360
  %1215 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1214, i32 0, i32 45, !dbg !1360
  %1216 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1215, i32 0, i32 7, !dbg !1360
  %1217 = load i32, i32* %1216, align 4, !dbg !1360
  %1218 = sub i32 %1217, %1213, !dbg !1360
  store i32 %1218, i32* %1216, align 4, !dbg !1360
  %1219 = load i32, i32* %24, align 4, !dbg !1360
  %1220 = lshr i32 %1219, 13, !dbg !1360
  %1221 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1360
  %1222 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1221, i32 0, i32 45, !dbg !1360
  %1223 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1222, i32 0, i32 7, !dbg !1360
  %1224 = load i32, i32* %1223, align 4, !dbg !1360
  %1225 = xor i32 %1224, %1220, !dbg !1360
  store i32 %1225, i32* %1223, align 4, !dbg !1360
  %1226 = load i32, i32* %24, align 4, !dbg !1360
  %1227 = load i32, i32* %23, align 4, !dbg !1360
  %1228 = sub i32 %1227, %1226, !dbg !1360
  store i32 %1228, i32* %23, align 4, !dbg !1360
  %1229 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1360
  %1230 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1229, i32 0, i32 45, !dbg !1360
  %1231 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1230, i32 0, i32 7, !dbg !1360
  %1232 = load i32, i32* %1231, align 4, !dbg !1360
  %1233 = load i32, i32* %23, align 4, !dbg !1360
  %1234 = sub i32 %1233, %1232, !dbg !1360
  store i32 %1234, i32* %23, align 4, !dbg !1360
  %1235 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1360
  %1236 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1235, i32 0, i32 45, !dbg !1360
  %1237 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1236, i32 0, i32 7, !dbg !1360
  %1238 = load i32, i32* %1237, align 4, !dbg !1360
  %1239 = lshr i32 %1238, 12, !dbg !1360
  %1240 = load i32, i32* %23, align 4, !dbg !1360
  %1241 = xor i32 %1240, %1239, !dbg !1360
  store i32 %1241, i32* %23, align 4, !dbg !1360
  %1242 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1360
  %1243 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1242, i32 0, i32 45, !dbg !1360
  %1244 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1243, i32 0, i32 7, !dbg !1360
  %1245 = load i32, i32* %1244, align 4, !dbg !1360
  %1246 = load i32, i32* %24, align 4, !dbg !1360
  %1247 = sub i32 %1246, %1245, !dbg !1360
  store i32 %1247, i32* %24, align 4, !dbg !1360
  %1248 = load i32, i32* %23, align 4, !dbg !1360
  %1249 = load i32, i32* %24, align 4, !dbg !1360
  %1250 = sub i32 %1249, %1248, !dbg !1360
  store i32 %1250, i32* %24, align 4, !dbg !1360
  %1251 = load i32, i32* %23, align 4, !dbg !1360
  %1252 = shl i32 %1251, 16, !dbg !1360
  %1253 = load i32, i32* %24, align 4, !dbg !1360
  %1254 = xor i32 %1253, %1252, !dbg !1360
  store i32 %1254, i32* %24, align 4, !dbg !1360
  %1255 = load i32, i32* %23, align 4, !dbg !1360
  %1256 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1360
  %1257 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1256, i32 0, i32 45, !dbg !1360
  %1258 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1257, i32 0, i32 7, !dbg !1360
  %1259 = load i32, i32* %1258, align 4, !dbg !1360
  %1260 = sub i32 %1259, %1255, !dbg !1360
  store i32 %1260, i32* %1258, align 4, !dbg !1360
  %1261 = load i32, i32* %24, align 4, !dbg !1360
  %1262 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1360
  %1263 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1262, i32 0, i32 45, !dbg !1360
  %1264 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1263, i32 0, i32 7, !dbg !1360
  %1265 = load i32, i32* %1264, align 4, !dbg !1360
  %1266 = sub i32 %1265, %1261, !dbg !1360
  store i32 %1266, i32* %1264, align 4, !dbg !1360
  %1267 = load i32, i32* %24, align 4, !dbg !1360
  %1268 = lshr i32 %1267, 5, !dbg !1360
  %1269 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1360
  %1270 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1269, i32 0, i32 45, !dbg !1360
  %1271 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1270, i32 0, i32 7, !dbg !1360
  %1272 = load i32, i32* %1271, align 4, !dbg !1360
  %1273 = xor i32 %1272, %1268, !dbg !1360
  store i32 %1273, i32* %1271, align 4, !dbg !1360
  %1274 = load i32, i32* %24, align 4, !dbg !1360
  %1275 = load i32, i32* %23, align 4, !dbg !1360
  %1276 = sub i32 %1275, %1274, !dbg !1360
  store i32 %1276, i32* %23, align 4, !dbg !1360
  %1277 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1360
  %1278 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1277, i32 0, i32 45, !dbg !1360
  %1279 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1278, i32 0, i32 7, !dbg !1360
  %1280 = load i32, i32* %1279, align 4, !dbg !1360
  %1281 = load i32, i32* %23, align 4, !dbg !1360
  %1282 = sub i32 %1281, %1280, !dbg !1360
  store i32 %1282, i32* %23, align 4, !dbg !1360
  %1283 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1360
  %1284 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1283, i32 0, i32 45, !dbg !1360
  %1285 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1284, i32 0, i32 7, !dbg !1360
  %1286 = load i32, i32* %1285, align 4, !dbg !1360
  %1287 = lshr i32 %1286, 3, !dbg !1360
  %1288 = load i32, i32* %23, align 4, !dbg !1360
  %1289 = xor i32 %1288, %1287, !dbg !1360
  store i32 %1289, i32* %23, align 4, !dbg !1360
  %1290 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1360
  %1291 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1290, i32 0, i32 45, !dbg !1360
  %1292 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1291, i32 0, i32 7, !dbg !1360
  %1293 = load i32, i32* %1292, align 4, !dbg !1360
  %1294 = load i32, i32* %24, align 4, !dbg !1360
  %1295 = sub i32 %1294, %1293, !dbg !1360
  store i32 %1295, i32* %24, align 4, !dbg !1360
  %1296 = load i32, i32* %23, align 4, !dbg !1360
  %1297 = load i32, i32* %24, align 4, !dbg !1360
  %1298 = sub i32 %1297, %1296, !dbg !1360
  store i32 %1298, i32* %24, align 4, !dbg !1360
  %1299 = load i32, i32* %23, align 4, !dbg !1360
  %1300 = shl i32 %1299, 10, !dbg !1360
  %1301 = load i32, i32* %24, align 4, !dbg !1360
  %1302 = xor i32 %1301, %1300, !dbg !1360
  store i32 %1302, i32* %24, align 4, !dbg !1360
  %1303 = load i32, i32* %23, align 4, !dbg !1360
  %1304 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1360
  %1305 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1304, i32 0, i32 45, !dbg !1360
  %1306 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1305, i32 0, i32 7, !dbg !1360
  %1307 = load i32, i32* %1306, align 4, !dbg !1360
  %1308 = sub i32 %1307, %1303, !dbg !1360
  store i32 %1308, i32* %1306, align 4, !dbg !1360
  %1309 = load i32, i32* %24, align 4, !dbg !1360
  %1310 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1360
  %1311 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1310, i32 0, i32 45, !dbg !1360
  %1312 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1311, i32 0, i32 7, !dbg !1360
  %1313 = load i32, i32* %1312, align 4, !dbg !1360
  %1314 = sub i32 %1313, %1309, !dbg !1360
  store i32 %1314, i32* %1312, align 4, !dbg !1360
  %1315 = load i32, i32* %24, align 4, !dbg !1360
  %1316 = lshr i32 %1315, 15, !dbg !1360
  %1317 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1360
  %1318 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1317, i32 0, i32 45, !dbg !1360
  %1319 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1318, i32 0, i32 7, !dbg !1360
  %1320 = load i32, i32* %1319, align 4, !dbg !1360
  %1321 = xor i32 %1320, %1316, !dbg !1360
  store i32 %1321, i32* %1319, align 4, !dbg !1360
  br label %1322, !dbg !1360

1322:                                             ; preds = %1177
  %1323 = load i8*, i8** %26, align 8, !dbg !1357
  %1324 = getelementptr inbounds i8, i8* %1323, i64 12, !dbg !1357
  store i8* %1324, i8** %26, align 8, !dbg !1357
  %1325 = load i32, i32* %25, align 4, !dbg !1357
  %1326 = sub i32 %1325, 12, !dbg !1357
  store i32 %1326, i32* %25, align 4, !dbg !1357
  br label %1098, !dbg !1353, !llvm.loop !1362

1327:                                             ; preds = %1098
  %1328 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1353
  %1329 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1328, i32 0, i32 3, !dbg !1353
  %1330 = load i8*, i8** %1329, align 8, !dbg !1353
  %1331 = call i64 @strlen(i8* %1330) #9, !dbg !1353
  %1332 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1353
  %1333 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1332, i32 0, i32 45, !dbg !1353
  %1334 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1333, i32 0, i32 7, !dbg !1353
  %1335 = load i32, i32* %1334, align 4, !dbg !1353
  %1336 = zext i32 %1335 to i64, !dbg !1353
  %1337 = add i64 %1336, %1331, !dbg !1353
  %1338 = trunc i64 %1337 to i32, !dbg !1353
  store i32 %1338, i32* %1334, align 4, !dbg !1353
  %1339 = load i32, i32* %25, align 4, !dbg !1353
  switch i32 %1339, label %1435 [
    i32 11, label %1340
    i32 10, label %1351
    i32 9, label %1362
    i32 8, label %1373
    i32 7, label %1381
    i32 6, label %1389
    i32 5, label %1397
    i32 4, label %1404
    i32 3, label %1412
    i32 2, label %1420
    i32 1, label %1428
  ], !dbg !1353

1340:                                             ; preds = %1327
  %1341 = load i8*, i8** %26, align 8, !dbg !1363
  %1342 = getelementptr inbounds i8, i8* %1341, i64 10, !dbg !1363
  %1343 = load i8, i8* %1342, align 1, !dbg !1363
  %1344 = zext i8 %1343 to i32, !dbg !1363
  %1345 = shl i32 %1344, 24, !dbg !1363
  %1346 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1363
  %1347 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1346, i32 0, i32 45, !dbg !1363
  %1348 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1347, i32 0, i32 7, !dbg !1363
  %1349 = load i32, i32* %1348, align 4, !dbg !1363
  %1350 = add i32 %1349, %1345, !dbg !1363
  store i32 %1350, i32* %1348, align 4, !dbg !1363
  br label %1351, !dbg !1363

1351:                                             ; preds = %1327, %1340
  %1352 = load i8*, i8** %26, align 8, !dbg !1363
  %1353 = getelementptr inbounds i8, i8* %1352, i64 9, !dbg !1363
  %1354 = load i8, i8* %1353, align 1, !dbg !1363
  %1355 = zext i8 %1354 to i32, !dbg !1363
  %1356 = shl i32 %1355, 16, !dbg !1363
  %1357 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1363
  %1358 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1357, i32 0, i32 45, !dbg !1363
  %1359 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1358, i32 0, i32 7, !dbg !1363
  %1360 = load i32, i32* %1359, align 4, !dbg !1363
  %1361 = add i32 %1360, %1356, !dbg !1363
  store i32 %1361, i32* %1359, align 4, !dbg !1363
  br label %1362, !dbg !1363

1362:                                             ; preds = %1327, %1351
  %1363 = load i8*, i8** %26, align 8, !dbg !1363
  %1364 = getelementptr inbounds i8, i8* %1363, i64 8, !dbg !1363
  %1365 = load i8, i8* %1364, align 1, !dbg !1363
  %1366 = zext i8 %1365 to i32, !dbg !1363
  %1367 = shl i32 %1366, 8, !dbg !1363
  %1368 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1363
  %1369 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1368, i32 0, i32 45, !dbg !1363
  %1370 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1369, i32 0, i32 7, !dbg !1363
  %1371 = load i32, i32* %1370, align 4, !dbg !1363
  %1372 = add i32 %1371, %1367, !dbg !1363
  store i32 %1372, i32* %1370, align 4, !dbg !1363
  br label %1373, !dbg !1363

1373:                                             ; preds = %1327, %1362
  %1374 = load i8*, i8** %26, align 8, !dbg !1363
  %1375 = getelementptr inbounds i8, i8* %1374, i64 7, !dbg !1363
  %1376 = load i8, i8* %1375, align 1, !dbg !1363
  %1377 = zext i8 %1376 to i32, !dbg !1363
  %1378 = shl i32 %1377, 24, !dbg !1363
  %1379 = load i32, i32* %24, align 4, !dbg !1363
  %1380 = add i32 %1379, %1378, !dbg !1363
  store i32 %1380, i32* %24, align 4, !dbg !1363
  br label %1381, !dbg !1363

1381:                                             ; preds = %1327, %1373
  %1382 = load i8*, i8** %26, align 8, !dbg !1363
  %1383 = getelementptr inbounds i8, i8* %1382, i64 6, !dbg !1363
  %1384 = load i8, i8* %1383, align 1, !dbg !1363
  %1385 = zext i8 %1384 to i32, !dbg !1363
  %1386 = shl i32 %1385, 16, !dbg !1363
  %1387 = load i32, i32* %24, align 4, !dbg !1363
  %1388 = add i32 %1387, %1386, !dbg !1363
  store i32 %1388, i32* %24, align 4, !dbg !1363
  br label %1389, !dbg !1363

1389:                                             ; preds = %1327, %1381
  %1390 = load i8*, i8** %26, align 8, !dbg !1363
  %1391 = getelementptr inbounds i8, i8* %1390, i64 5, !dbg !1363
  %1392 = load i8, i8* %1391, align 1, !dbg !1363
  %1393 = zext i8 %1392 to i32, !dbg !1363
  %1394 = shl i32 %1393, 8, !dbg !1363
  %1395 = load i32, i32* %24, align 4, !dbg !1363
  %1396 = add i32 %1395, %1394, !dbg !1363
  store i32 %1396, i32* %24, align 4, !dbg !1363
  br label %1397, !dbg !1363

1397:                                             ; preds = %1327, %1389
  %1398 = load i8*, i8** %26, align 8, !dbg !1363
  %1399 = getelementptr inbounds i8, i8* %1398, i64 4, !dbg !1363
  %1400 = load i8, i8* %1399, align 1, !dbg !1363
  %1401 = zext i8 %1400 to i32, !dbg !1363
  %1402 = load i32, i32* %24, align 4, !dbg !1363
  %1403 = add i32 %1402, %1401, !dbg !1363
  store i32 %1403, i32* %24, align 4, !dbg !1363
  br label %1404, !dbg !1363

1404:                                             ; preds = %1327, %1397
  %1405 = load i8*, i8** %26, align 8, !dbg !1363
  %1406 = getelementptr inbounds i8, i8* %1405, i64 3, !dbg !1363
  %1407 = load i8, i8* %1406, align 1, !dbg !1363
  %1408 = zext i8 %1407 to i32, !dbg !1363
  %1409 = shl i32 %1408, 24, !dbg !1363
  %1410 = load i32, i32* %23, align 4, !dbg !1363
  %1411 = add i32 %1410, %1409, !dbg !1363
  store i32 %1411, i32* %23, align 4, !dbg !1363
  br label %1412, !dbg !1363

1412:                                             ; preds = %1327, %1404
  %1413 = load i8*, i8** %26, align 8, !dbg !1363
  %1414 = getelementptr inbounds i8, i8* %1413, i64 2, !dbg !1363
  %1415 = load i8, i8* %1414, align 1, !dbg !1363
  %1416 = zext i8 %1415 to i32, !dbg !1363
  %1417 = shl i32 %1416, 16, !dbg !1363
  %1418 = load i32, i32* %23, align 4, !dbg !1363
  %1419 = add i32 %1418, %1417, !dbg !1363
  store i32 %1419, i32* %23, align 4, !dbg !1363
  br label %1420, !dbg !1363

1420:                                             ; preds = %1327, %1412
  %1421 = load i8*, i8** %26, align 8, !dbg !1363
  %1422 = getelementptr inbounds i8, i8* %1421, i64 1, !dbg !1363
  %1423 = load i8, i8* %1422, align 1, !dbg !1363
  %1424 = zext i8 %1423 to i32, !dbg !1363
  %1425 = shl i32 %1424, 8, !dbg !1363
  %1426 = load i32, i32* %23, align 4, !dbg !1363
  %1427 = add i32 %1426, %1425, !dbg !1363
  store i32 %1427, i32* %23, align 4, !dbg !1363
  br label %1428, !dbg !1363

1428:                                             ; preds = %1327, %1420
  %1429 = load i8*, i8** %26, align 8, !dbg !1363
  %1430 = getelementptr inbounds i8, i8* %1429, i64 0, !dbg !1363
  %1431 = load i8, i8* %1430, align 1, !dbg !1363
  %1432 = zext i8 %1431 to i32, !dbg !1363
  %1433 = load i32, i32* %23, align 4, !dbg !1363
  %1434 = add i32 %1433, %1432, !dbg !1363
  store i32 %1434, i32* %23, align 4, !dbg !1363
  br label %1435, !dbg !1363

1435:                                             ; preds = %1428, %1327
  br label %1436, !dbg !1353, !llvm.loop !1365

1436:                                             ; preds = %1435
  %1437 = load i32, i32* %24, align 4, !dbg !1366
  %1438 = load i32, i32* %23, align 4, !dbg !1366
  %1439 = sub i32 %1438, %1437, !dbg !1366
  store i32 %1439, i32* %23, align 4, !dbg !1366
  %1440 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1366
  %1441 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1440, i32 0, i32 45, !dbg !1366
  %1442 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1441, i32 0, i32 7, !dbg !1366
  %1443 = load i32, i32* %1442, align 4, !dbg !1366
  %1444 = load i32, i32* %23, align 4, !dbg !1366
  %1445 = sub i32 %1444, %1443, !dbg !1366
  store i32 %1445, i32* %23, align 4, !dbg !1366
  %1446 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1366
  %1447 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1446, i32 0, i32 45, !dbg !1366
  %1448 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1447, i32 0, i32 7, !dbg !1366
  %1449 = load i32, i32* %1448, align 4, !dbg !1366
  %1450 = lshr i32 %1449, 13, !dbg !1366
  %1451 = load i32, i32* %23, align 4, !dbg !1366
  %1452 = xor i32 %1451, %1450, !dbg !1366
  store i32 %1452, i32* %23, align 4, !dbg !1366
  %1453 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1366
  %1454 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1453, i32 0, i32 45, !dbg !1366
  %1455 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1454, i32 0, i32 7, !dbg !1366
  %1456 = load i32, i32* %1455, align 4, !dbg !1366
  %1457 = load i32, i32* %24, align 4, !dbg !1366
  %1458 = sub i32 %1457, %1456, !dbg !1366
  store i32 %1458, i32* %24, align 4, !dbg !1366
  %1459 = load i32, i32* %23, align 4, !dbg !1366
  %1460 = load i32, i32* %24, align 4, !dbg !1366
  %1461 = sub i32 %1460, %1459, !dbg !1366
  store i32 %1461, i32* %24, align 4, !dbg !1366
  %1462 = load i32, i32* %23, align 4, !dbg !1366
  %1463 = shl i32 %1462, 8, !dbg !1366
  %1464 = load i32, i32* %24, align 4, !dbg !1366
  %1465 = xor i32 %1464, %1463, !dbg !1366
  store i32 %1465, i32* %24, align 4, !dbg !1366
  %1466 = load i32, i32* %23, align 4, !dbg !1366
  %1467 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1366
  %1468 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1467, i32 0, i32 45, !dbg !1366
  %1469 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1468, i32 0, i32 7, !dbg !1366
  %1470 = load i32, i32* %1469, align 4, !dbg !1366
  %1471 = sub i32 %1470, %1466, !dbg !1366
  store i32 %1471, i32* %1469, align 4, !dbg !1366
  %1472 = load i32, i32* %24, align 4, !dbg !1366
  %1473 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1366
  %1474 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1473, i32 0, i32 45, !dbg !1366
  %1475 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1474, i32 0, i32 7, !dbg !1366
  %1476 = load i32, i32* %1475, align 4, !dbg !1366
  %1477 = sub i32 %1476, %1472, !dbg !1366
  store i32 %1477, i32* %1475, align 4, !dbg !1366
  %1478 = load i32, i32* %24, align 4, !dbg !1366
  %1479 = lshr i32 %1478, 13, !dbg !1366
  %1480 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1366
  %1481 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1480, i32 0, i32 45, !dbg !1366
  %1482 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1481, i32 0, i32 7, !dbg !1366
  %1483 = load i32, i32* %1482, align 4, !dbg !1366
  %1484 = xor i32 %1483, %1479, !dbg !1366
  store i32 %1484, i32* %1482, align 4, !dbg !1366
  %1485 = load i32, i32* %24, align 4, !dbg !1366
  %1486 = load i32, i32* %23, align 4, !dbg !1366
  %1487 = sub i32 %1486, %1485, !dbg !1366
  store i32 %1487, i32* %23, align 4, !dbg !1366
  %1488 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1366
  %1489 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1488, i32 0, i32 45, !dbg !1366
  %1490 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1489, i32 0, i32 7, !dbg !1366
  %1491 = load i32, i32* %1490, align 4, !dbg !1366
  %1492 = load i32, i32* %23, align 4, !dbg !1366
  %1493 = sub i32 %1492, %1491, !dbg !1366
  store i32 %1493, i32* %23, align 4, !dbg !1366
  %1494 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1366
  %1495 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1494, i32 0, i32 45, !dbg !1366
  %1496 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1495, i32 0, i32 7, !dbg !1366
  %1497 = load i32, i32* %1496, align 4, !dbg !1366
  %1498 = lshr i32 %1497, 12, !dbg !1366
  %1499 = load i32, i32* %23, align 4, !dbg !1366
  %1500 = xor i32 %1499, %1498, !dbg !1366
  store i32 %1500, i32* %23, align 4, !dbg !1366
  %1501 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1366
  %1502 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1501, i32 0, i32 45, !dbg !1366
  %1503 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1502, i32 0, i32 7, !dbg !1366
  %1504 = load i32, i32* %1503, align 4, !dbg !1366
  %1505 = load i32, i32* %24, align 4, !dbg !1366
  %1506 = sub i32 %1505, %1504, !dbg !1366
  store i32 %1506, i32* %24, align 4, !dbg !1366
  %1507 = load i32, i32* %23, align 4, !dbg !1366
  %1508 = load i32, i32* %24, align 4, !dbg !1366
  %1509 = sub i32 %1508, %1507, !dbg !1366
  store i32 %1509, i32* %24, align 4, !dbg !1366
  %1510 = load i32, i32* %23, align 4, !dbg !1366
  %1511 = shl i32 %1510, 16, !dbg !1366
  %1512 = load i32, i32* %24, align 4, !dbg !1366
  %1513 = xor i32 %1512, %1511, !dbg !1366
  store i32 %1513, i32* %24, align 4, !dbg !1366
  %1514 = load i32, i32* %23, align 4, !dbg !1366
  %1515 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1366
  %1516 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1515, i32 0, i32 45, !dbg !1366
  %1517 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1516, i32 0, i32 7, !dbg !1366
  %1518 = load i32, i32* %1517, align 4, !dbg !1366
  %1519 = sub i32 %1518, %1514, !dbg !1366
  store i32 %1519, i32* %1517, align 4, !dbg !1366
  %1520 = load i32, i32* %24, align 4, !dbg !1366
  %1521 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1366
  %1522 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1521, i32 0, i32 45, !dbg !1366
  %1523 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1522, i32 0, i32 7, !dbg !1366
  %1524 = load i32, i32* %1523, align 4, !dbg !1366
  %1525 = sub i32 %1524, %1520, !dbg !1366
  store i32 %1525, i32* %1523, align 4, !dbg !1366
  %1526 = load i32, i32* %24, align 4, !dbg !1366
  %1527 = lshr i32 %1526, 5, !dbg !1366
  %1528 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1366
  %1529 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1528, i32 0, i32 45, !dbg !1366
  %1530 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1529, i32 0, i32 7, !dbg !1366
  %1531 = load i32, i32* %1530, align 4, !dbg !1366
  %1532 = xor i32 %1531, %1527, !dbg !1366
  store i32 %1532, i32* %1530, align 4, !dbg !1366
  %1533 = load i32, i32* %24, align 4, !dbg !1366
  %1534 = load i32, i32* %23, align 4, !dbg !1366
  %1535 = sub i32 %1534, %1533, !dbg !1366
  store i32 %1535, i32* %23, align 4, !dbg !1366
  %1536 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1366
  %1537 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1536, i32 0, i32 45, !dbg !1366
  %1538 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1537, i32 0, i32 7, !dbg !1366
  %1539 = load i32, i32* %1538, align 4, !dbg !1366
  %1540 = load i32, i32* %23, align 4, !dbg !1366
  %1541 = sub i32 %1540, %1539, !dbg !1366
  store i32 %1541, i32* %23, align 4, !dbg !1366
  %1542 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1366
  %1543 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1542, i32 0, i32 45, !dbg !1366
  %1544 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1543, i32 0, i32 7, !dbg !1366
  %1545 = load i32, i32* %1544, align 4, !dbg !1366
  %1546 = lshr i32 %1545, 3, !dbg !1366
  %1547 = load i32, i32* %23, align 4, !dbg !1366
  %1548 = xor i32 %1547, %1546, !dbg !1366
  store i32 %1548, i32* %23, align 4, !dbg !1366
  %1549 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1366
  %1550 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1549, i32 0, i32 45, !dbg !1366
  %1551 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1550, i32 0, i32 7, !dbg !1366
  %1552 = load i32, i32* %1551, align 4, !dbg !1366
  %1553 = load i32, i32* %24, align 4, !dbg !1366
  %1554 = sub i32 %1553, %1552, !dbg !1366
  store i32 %1554, i32* %24, align 4, !dbg !1366
  %1555 = load i32, i32* %23, align 4, !dbg !1366
  %1556 = load i32, i32* %24, align 4, !dbg !1366
  %1557 = sub i32 %1556, %1555, !dbg !1366
  store i32 %1557, i32* %24, align 4, !dbg !1366
  %1558 = load i32, i32* %23, align 4, !dbg !1366
  %1559 = shl i32 %1558, 10, !dbg !1366
  %1560 = load i32, i32* %24, align 4, !dbg !1366
  %1561 = xor i32 %1560, %1559, !dbg !1366
  store i32 %1561, i32* %24, align 4, !dbg !1366
  %1562 = load i32, i32* %23, align 4, !dbg !1366
  %1563 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1366
  %1564 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1563, i32 0, i32 45, !dbg !1366
  %1565 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1564, i32 0, i32 7, !dbg !1366
  %1566 = load i32, i32* %1565, align 4, !dbg !1366
  %1567 = sub i32 %1566, %1562, !dbg !1366
  store i32 %1567, i32* %1565, align 4, !dbg !1366
  %1568 = load i32, i32* %24, align 4, !dbg !1366
  %1569 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1366
  %1570 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1569, i32 0, i32 45, !dbg !1366
  %1571 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1570, i32 0, i32 7, !dbg !1366
  %1572 = load i32, i32* %1571, align 4, !dbg !1366
  %1573 = sub i32 %1572, %1568, !dbg !1366
  store i32 %1573, i32* %1571, align 4, !dbg !1366
  %1574 = load i32, i32* %24, align 4, !dbg !1366
  %1575 = lshr i32 %1574, 15, !dbg !1366
  %1576 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1366
  %1577 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1576, i32 0, i32 45, !dbg !1366
  %1578 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1577, i32 0, i32 7, !dbg !1366
  %1579 = load i32, i32* %1578, align 4, !dbg !1366
  %1580 = xor i32 %1579, %1575, !dbg !1366
  store i32 %1580, i32* %1578, align 4, !dbg !1366
  br label %1581, !dbg !1366

1581:                                             ; preds = %1436
  %1582 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1353
  %1583 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1582, i32 0, i32 45, !dbg !1353
  %1584 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1583, i32 0, i32 7, !dbg !1353
  %1585 = load i32, i32* %1584, align 4, !dbg !1353
  %1586 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1353
  %1587 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %1586, i32 0, i32 4, !dbg !1353
  %1588 = load %struct.mosquitto*, %struct.mosquitto** %1587, align 8, !dbg !1353
  %1589 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1588, i32 0, i32 45, !dbg !1353
  %1590 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1589, i32 0, i32 0, !dbg !1353
  %1591 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1590, align 8, !dbg !1353
  %1592 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1591, i32 0, i32 1, !dbg !1353
  %1593 = load i32, i32* %1592, align 8, !dbg !1353
  %1594 = sub i32 %1593, 1, !dbg !1353
  %1595 = and i32 %1585, %1594, !dbg !1353
  store i32 %1595, i32* %22, align 4, !dbg !1353
  br label %1596, !dbg !1353

1596:                                             ; preds = %1581
  br label %1597, !dbg !1332, !llvm.loop !1368

1597:                                             ; preds = %1596
  %1598 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1369
  %1599 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %1598, i32 0, i32 4, !dbg !1369
  %1600 = load %struct.mosquitto*, %struct.mosquitto** %1599, align 8, !dbg !1369
  %1601 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1600, i32 0, i32 45, !dbg !1369
  %1602 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1601, i32 0, i32 0, !dbg !1369
  %1603 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1602, align 8, !dbg !1369
  %1604 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1603, i32 0, i32 0, !dbg !1369
  %1605 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %1604, align 8, !dbg !1369
  %1606 = load i32, i32* %22, align 4, !dbg !1369
  %1607 = zext i32 %1606 to i64, !dbg !1369
  %1608 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1605, i64 %1607, !dbg !1369
  %1609 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1608, i32 0, i32 1, !dbg !1369
  %1610 = load i32, i32* %1609, align 8, !dbg !1369
  %1611 = add i32 %1610, 1, !dbg !1369
  store i32 %1611, i32* %1609, align 8, !dbg !1369
  %1612 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1369
  %1613 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %1612, i32 0, i32 4, !dbg !1369
  %1614 = load %struct.mosquitto*, %struct.mosquitto** %1613, align 8, !dbg !1369
  %1615 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1614, i32 0, i32 45, !dbg !1369
  %1616 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1615, i32 0, i32 0, !dbg !1369
  %1617 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1616, align 8, !dbg !1369
  %1618 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1617, i32 0, i32 0, !dbg !1369
  %1619 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %1618, align 8, !dbg !1369
  %1620 = load i32, i32* %22, align 4, !dbg !1369
  %1621 = zext i32 %1620 to i64, !dbg !1369
  %1622 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1619, i64 %1621, !dbg !1369
  %1623 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1622, i32 0, i32 0, !dbg !1369
  %1624 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %1623, align 8, !dbg !1369
  %1625 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1369
  %1626 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1625, i32 0, i32 45, !dbg !1369
  %1627 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1626, i32 0, i32 4, !dbg !1369
  store %struct.UT_hash_handle* %1624, %struct.UT_hash_handle** %1627, align 8, !dbg !1369
  %1628 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1369
  %1629 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1628, i32 0, i32 45, !dbg !1369
  %1630 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1629, i32 0, i32 3, !dbg !1369
  store %struct.UT_hash_handle* null, %struct.UT_hash_handle** %1630, align 8, !dbg !1369
  %1631 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1371
  %1632 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %1631, i32 0, i32 4, !dbg !1371
  %1633 = load %struct.mosquitto*, %struct.mosquitto** %1632, align 8, !dbg !1371
  %1634 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1633, i32 0, i32 45, !dbg !1371
  %1635 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1634, i32 0, i32 0, !dbg !1371
  %1636 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1635, align 8, !dbg !1371
  %1637 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1636, i32 0, i32 0, !dbg !1371
  %1638 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %1637, align 8, !dbg !1371
  %1639 = load i32, i32* %22, align 4, !dbg !1371
  %1640 = zext i32 %1639 to i64, !dbg !1371
  %1641 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1638, i64 %1640, !dbg !1371
  %1642 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1641, i32 0, i32 0, !dbg !1371
  %1643 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %1642, align 8, !dbg !1371
  %1644 = icmp ne %struct.UT_hash_handle* %1643, null, !dbg !1371
  br i1 %1644, label %1645, label %1662, !dbg !1369

1645:                                             ; preds = %1597
  %1646 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1373
  %1647 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1646, i32 0, i32 45, !dbg !1373
  %1648 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1373
  %1649 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %1648, i32 0, i32 4, !dbg !1373
  %1650 = load %struct.mosquitto*, %struct.mosquitto** %1649, align 8, !dbg !1373
  %1651 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1650, i32 0, i32 45, !dbg !1373
  %1652 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1651, i32 0, i32 0, !dbg !1373
  %1653 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1652, align 8, !dbg !1373
  %1654 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1653, i32 0, i32 0, !dbg !1373
  %1655 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %1654, align 8, !dbg !1373
  %1656 = load i32, i32* %22, align 4, !dbg !1373
  %1657 = zext i32 %1656 to i64, !dbg !1373
  %1658 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1655, i64 %1657, !dbg !1373
  %1659 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1658, i32 0, i32 0, !dbg !1373
  %1660 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %1659, align 8, !dbg !1373
  %1661 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1660, i32 0, i32 3, !dbg !1373
  store %struct.UT_hash_handle* %1647, %struct.UT_hash_handle** %1661, align 8, !dbg !1373
  br label %1662, !dbg !1373

1662:                                             ; preds = %1645, %1597
  %1663 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1369
  %1664 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1663, i32 0, i32 45, !dbg !1369
  %1665 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1369
  %1666 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %1665, i32 0, i32 4, !dbg !1369
  %1667 = load %struct.mosquitto*, %struct.mosquitto** %1666, align 8, !dbg !1369
  %1668 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1667, i32 0, i32 45, !dbg !1369
  %1669 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1668, i32 0, i32 0, !dbg !1369
  %1670 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1669, align 8, !dbg !1369
  %1671 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1670, i32 0, i32 0, !dbg !1369
  %1672 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %1671, align 8, !dbg !1369
  %1673 = load i32, i32* %22, align 4, !dbg !1369
  %1674 = zext i32 %1673 to i64, !dbg !1369
  %1675 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1672, i64 %1674, !dbg !1369
  %1676 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1675, i32 0, i32 0, !dbg !1369
  store %struct.UT_hash_handle* %1664, %struct.UT_hash_handle** %1676, align 8, !dbg !1369
  %1677 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1375
  %1678 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %1677, i32 0, i32 4, !dbg !1375
  %1679 = load %struct.mosquitto*, %struct.mosquitto** %1678, align 8, !dbg !1375
  %1680 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1679, i32 0, i32 45, !dbg !1375
  %1681 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1680, i32 0, i32 0, !dbg !1375
  %1682 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1681, align 8, !dbg !1375
  %1683 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1682, i32 0, i32 0, !dbg !1375
  %1684 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %1683, align 8, !dbg !1375
  %1685 = load i32, i32* %22, align 4, !dbg !1375
  %1686 = zext i32 %1685 to i64, !dbg !1375
  %1687 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1684, i64 %1686, !dbg !1375
  %1688 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1687, i32 0, i32 1, !dbg !1375
  %1689 = load i32, i32* %1688, align 8, !dbg !1375
  %1690 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1375
  %1691 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %1690, i32 0, i32 4, !dbg !1375
  %1692 = load %struct.mosquitto*, %struct.mosquitto** %1691, align 8, !dbg !1375
  %1693 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1692, i32 0, i32 45, !dbg !1375
  %1694 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1693, i32 0, i32 0, !dbg !1375
  %1695 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1694, align 8, !dbg !1375
  %1696 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1695, i32 0, i32 0, !dbg !1375
  %1697 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %1696, align 8, !dbg !1375
  %1698 = load i32, i32* %22, align 4, !dbg !1375
  %1699 = zext i32 %1698 to i64, !dbg !1375
  %1700 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1697, i64 %1699, !dbg !1375
  %1701 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1700, i32 0, i32 2, !dbg !1375
  %1702 = load i32, i32* %1701, align 4, !dbg !1375
  %1703 = add i32 %1702, 1, !dbg !1375
  %1704 = mul i32 %1703, 10, !dbg !1375
  %1705 = icmp uge i32 %1689, %1704, !dbg !1375
  br i1 %1705, label %1706, label %1962, !dbg !1375

1706:                                             ; preds = %1662
  %1707 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1375
  %1708 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1707, i32 0, i32 45, !dbg !1375
  %1709 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1708, i32 0, i32 0, !dbg !1375
  %1710 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1709, align 8, !dbg !1375
  %1711 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1710, i32 0, i32 9, !dbg !1375
  %1712 = load i32, i32* %1711, align 4, !dbg !1375
  %1713 = icmp ne i32 %1712, 1, !dbg !1375
  br i1 %1713, label %1714, label %1962, !dbg !1369

1714:                                             ; preds = %1706
  br label %1715, !dbg !1377, !llvm.loop !1379

1715:                                             ; preds = %1714
  call void @llvm.dbg.declare(metadata i32* %27, metadata !1380, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.declare(metadata i32* %28, metadata !1383, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.declare(metadata %struct.UT_hash_handle** %29, metadata !1384, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.declare(metadata %struct.UT_hash_handle** %30, metadata !1385, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.declare(metadata %struct.UT_hash_bucket** %31, metadata !1386, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.declare(metadata %struct.UT_hash_bucket** %32, metadata !1387, metadata !DIExpression()), !dbg !1382
  %1716 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1382
  %1717 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1716, i32 0, i32 45, !dbg !1382
  %1718 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1717, i32 0, i32 0, !dbg !1382
  %1719 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1718, align 8, !dbg !1382
  %1720 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1719, i32 0, i32 1, !dbg !1382
  %1721 = load i32, i32* %1720, align 8, !dbg !1382
  %1722 = mul i32 2, %1721, !dbg !1382
  %1723 = zext i32 %1722 to i64, !dbg !1382
  %1724 = mul i64 %1723, 16, !dbg !1382
  %1725 = call i8* @mosquitto__malloc(i64 %1724), !dbg !1382
  %1726 = bitcast i8* %1725 to %struct.UT_hash_bucket*, !dbg !1382
  store %struct.UT_hash_bucket* %1726, %struct.UT_hash_bucket** %31, align 8, !dbg !1382
  %1727 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %31, align 8, !dbg !1388
  %1728 = icmp ne %struct.UT_hash_bucket* %1727, null, !dbg !1388
  br i1 %1728, label %1730, label %1729, !dbg !1382

1729:                                             ; preds = %1715
  call void @exit(i32 -1) #8, !dbg !1390
  unreachable, !dbg !1390

1730:                                             ; preds = %1715
  %1731 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %31, align 8, !dbg !1382
  %1732 = bitcast %struct.UT_hash_bucket* %1731 to i8*, !dbg !1382
  %1733 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1382
  %1734 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1733, i32 0, i32 45, !dbg !1382
  %1735 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1734, i32 0, i32 0, !dbg !1382
  %1736 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1735, align 8, !dbg !1382
  %1737 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1736, i32 0, i32 1, !dbg !1382
  %1738 = load i32, i32* %1737, align 8, !dbg !1382
  %1739 = mul i32 2, %1738, !dbg !1382
  %1740 = zext i32 %1739 to i64, !dbg !1382
  %1741 = mul i64 %1740, 16, !dbg !1382
  call void @llvm.memset.p0i8.i64(i8* align 8 %1732, i8 0, i64 %1741, i1 false), !dbg !1382
  %1742 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1382
  %1743 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1742, i32 0, i32 45, !dbg !1382
  %1744 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1743, i32 0, i32 0, !dbg !1382
  %1745 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1744, align 8, !dbg !1382
  %1746 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1745, i32 0, i32 3, !dbg !1382
  %1747 = load i32, i32* %1746, align 8, !dbg !1382
  %1748 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1382
  %1749 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1748, i32 0, i32 45, !dbg !1382
  %1750 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1749, i32 0, i32 0, !dbg !1382
  %1751 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1750, align 8, !dbg !1382
  %1752 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1751, i32 0, i32 2, !dbg !1382
  %1753 = load i32, i32* %1752, align 4, !dbg !1382
  %1754 = add i32 %1753, 1, !dbg !1382
  %1755 = lshr i32 %1747, %1754, !dbg !1382
  %1756 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1382
  %1757 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1756, i32 0, i32 45, !dbg !1382
  %1758 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1757, i32 0, i32 0, !dbg !1382
  %1759 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1758, align 8, !dbg !1382
  %1760 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1759, i32 0, i32 3, !dbg !1382
  %1761 = load i32, i32* %1760, align 8, !dbg !1382
  %1762 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1382
  %1763 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1762, i32 0, i32 45, !dbg !1382
  %1764 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1763, i32 0, i32 0, !dbg !1382
  %1765 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1764, align 8, !dbg !1382
  %1766 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1765, i32 0, i32 1, !dbg !1382
  %1767 = load i32, i32* %1766, align 8, !dbg !1382
  %1768 = mul i32 %1767, 2, !dbg !1382
  %1769 = sub i32 %1768, 1, !dbg !1382
  %1770 = and i32 %1761, %1769, !dbg !1382
  %1771 = icmp ne i32 %1770, 0, !dbg !1382
  %1772 = zext i1 %1771 to i64, !dbg !1382
  %1773 = select i1 %1771, i32 1, i32 0, !dbg !1382
  %1774 = add i32 %1755, %1773, !dbg !1382
  %1775 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1382
  %1776 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1775, i32 0, i32 45, !dbg !1382
  %1777 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1776, i32 0, i32 0, !dbg !1382
  %1778 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1777, align 8, !dbg !1382
  %1779 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1778, i32 0, i32 6, !dbg !1382
  store i32 %1774, i32* %1779, align 8, !dbg !1382
  %1780 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1382
  %1781 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1780, i32 0, i32 45, !dbg !1382
  %1782 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1781, i32 0, i32 0, !dbg !1382
  %1783 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1782, align 8, !dbg !1382
  %1784 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1783, i32 0, i32 7, !dbg !1382
  store i32 0, i32* %1784, align 4, !dbg !1382
  store i32 0, i32* %28, align 4, !dbg !1392
  br label %1785, !dbg !1392

1785:                                             ; preds = %1886, %1730
  %1786 = load i32, i32* %28, align 4, !dbg !1394
  %1787 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1394
  %1788 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1787, i32 0, i32 45, !dbg !1394
  %1789 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1788, i32 0, i32 0, !dbg !1394
  %1790 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1789, align 8, !dbg !1394
  %1791 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1790, i32 0, i32 1, !dbg !1394
  %1792 = load i32, i32* %1791, align 8, !dbg !1394
  %1793 = icmp ult i32 %1786, %1792, !dbg !1394
  br i1 %1793, label %1794, label %1889, !dbg !1392

1794:                                             ; preds = %1785
  %1795 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1396
  %1796 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1795, i32 0, i32 45, !dbg !1396
  %1797 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1796, i32 0, i32 0, !dbg !1396
  %1798 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1797, align 8, !dbg !1396
  %1799 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1798, i32 0, i32 0, !dbg !1396
  %1800 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %1799, align 8, !dbg !1396
  %1801 = load i32, i32* %28, align 4, !dbg !1396
  %1802 = zext i32 %1801 to i64, !dbg !1396
  %1803 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1800, i64 %1802, !dbg !1396
  %1804 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1803, i32 0, i32 0, !dbg !1396
  %1805 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %1804, align 8, !dbg !1396
  store %struct.UT_hash_handle* %1805, %struct.UT_hash_handle** %29, align 8, !dbg !1396
  br label %1806, !dbg !1396

1806:                                             ; preds = %1880, %1794
  %1807 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %29, align 8, !dbg !1396
  %1808 = icmp ne %struct.UT_hash_handle* %1807, null, !dbg !1396
  br i1 %1808, label %1809, label %1885, !dbg !1396

1809:                                             ; preds = %1806
  %1810 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %29, align 8, !dbg !1398
  %1811 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1810, i32 0, i32 4, !dbg !1398
  %1812 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %1811, align 8, !dbg !1398
  store %struct.UT_hash_handle* %1812, %struct.UT_hash_handle** %30, align 8, !dbg !1398
  br label %1813, !dbg !1398, !llvm.loop !1400

1813:                                             ; preds = %1809
  %1814 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %29, align 8, !dbg !1401
  %1815 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1814, i32 0, i32 7, !dbg !1401
  %1816 = load i32, i32* %1815, align 4, !dbg !1401
  %1817 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1401
  %1818 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1817, i32 0, i32 45, !dbg !1401
  %1819 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1818, i32 0, i32 0, !dbg !1401
  %1820 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1819, align 8, !dbg !1401
  %1821 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1820, i32 0, i32 1, !dbg !1401
  %1822 = load i32, i32* %1821, align 8, !dbg !1401
  %1823 = mul i32 %1822, 2, !dbg !1401
  %1824 = sub i32 %1823, 1, !dbg !1401
  %1825 = and i32 %1816, %1824, !dbg !1401
  store i32 %1825, i32* %27, align 4, !dbg !1401
  br label %1826, !dbg !1401

1826:                                             ; preds = %1813
  %1827 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %31, align 8, !dbg !1398
  %1828 = load i32, i32* %27, align 4, !dbg !1398
  %1829 = zext i32 %1828 to i64, !dbg !1398
  %1830 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1827, i64 %1829, !dbg !1398
  store %struct.UT_hash_bucket* %1830, %struct.UT_hash_bucket** %32, align 8, !dbg !1398
  %1831 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %32, align 8, !dbg !1403
  %1832 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1831, i32 0, i32 1, !dbg !1403
  %1833 = load i32, i32* %1832, align 8, !dbg !1403
  %1834 = add i32 %1833, 1, !dbg !1403
  store i32 %1834, i32* %1832, align 8, !dbg !1403
  %1835 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1403
  %1836 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1835, i32 0, i32 45, !dbg !1403
  %1837 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1836, i32 0, i32 0, !dbg !1403
  %1838 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1837, align 8, !dbg !1403
  %1839 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1838, i32 0, i32 6, !dbg !1403
  %1840 = load i32, i32* %1839, align 8, !dbg !1403
  %1841 = icmp ugt i32 %1834, %1840, !dbg !1403
  br i1 %1841, label %1842, label %1862, !dbg !1398

1842:                                             ; preds = %1826
  %1843 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1405
  %1844 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1843, i32 0, i32 45, !dbg !1405
  %1845 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1844, i32 0, i32 0, !dbg !1405
  %1846 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1845, align 8, !dbg !1405
  %1847 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1846, i32 0, i32 7, !dbg !1405
  %1848 = load i32, i32* %1847, align 4, !dbg !1405
  %1849 = add i32 %1848, 1, !dbg !1405
  store i32 %1849, i32* %1847, align 4, !dbg !1405
  %1850 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %32, align 8, !dbg !1405
  %1851 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1850, i32 0, i32 1, !dbg !1405
  %1852 = load i32, i32* %1851, align 8, !dbg !1405
  %1853 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1405
  %1854 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1853, i32 0, i32 45, !dbg !1405
  %1855 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1854, i32 0, i32 0, !dbg !1405
  %1856 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1855, align 8, !dbg !1405
  %1857 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1856, i32 0, i32 6, !dbg !1405
  %1858 = load i32, i32* %1857, align 8, !dbg !1405
  %1859 = udiv i32 %1852, %1858, !dbg !1405
  %1860 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %32, align 8, !dbg !1405
  %1861 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1860, i32 0, i32 2, !dbg !1405
  store i32 %1859, i32* %1861, align 4, !dbg !1405
  br label %1862, !dbg !1405

1862:                                             ; preds = %1842, %1826
  %1863 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %29, align 8, !dbg !1398
  %1864 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1863, i32 0, i32 3, !dbg !1398
  store %struct.UT_hash_handle* null, %struct.UT_hash_handle** %1864, align 8, !dbg !1398
  %1865 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %32, align 8, !dbg !1398
  %1866 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1865, i32 0, i32 0, !dbg !1398
  %1867 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %1866, align 8, !dbg !1398
  %1868 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %29, align 8, !dbg !1398
  %1869 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1868, i32 0, i32 4, !dbg !1398
  store %struct.UT_hash_handle* %1867, %struct.UT_hash_handle** %1869, align 8, !dbg !1398
  %1870 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %32, align 8, !dbg !1407
  %1871 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1870, i32 0, i32 0, !dbg !1407
  %1872 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %1871, align 8, !dbg !1407
  %1873 = icmp ne %struct.UT_hash_handle* %1872, null, !dbg !1407
  br i1 %1873, label %1874, label %1880, !dbg !1398

1874:                                             ; preds = %1862
  %1875 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %29, align 8, !dbg !1407
  %1876 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %32, align 8, !dbg !1407
  %1877 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1876, i32 0, i32 0, !dbg !1407
  %1878 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %1877, align 8, !dbg !1407
  %1879 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1878, i32 0, i32 3, !dbg !1407
  store %struct.UT_hash_handle* %1875, %struct.UT_hash_handle** %1879, align 8, !dbg !1407
  br label %1880, !dbg !1407

1880:                                             ; preds = %1874, %1862
  %1881 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %29, align 8, !dbg !1398
  %1882 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %32, align 8, !dbg !1398
  %1883 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1882, i32 0, i32 0, !dbg !1398
  store %struct.UT_hash_handle* %1881, %struct.UT_hash_handle** %1883, align 8, !dbg !1398
  %1884 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %30, align 8, !dbg !1398
  store %struct.UT_hash_handle* %1884, %struct.UT_hash_handle** %29, align 8, !dbg !1398
  br label %1806, !dbg !1396, !llvm.loop !1409

1885:                                             ; preds = %1806
  br label %1886, !dbg !1396

1886:                                             ; preds = %1885
  %1887 = load i32, i32* %28, align 4, !dbg !1394
  %1888 = add i32 %1887, 1, !dbg !1394
  store i32 %1888, i32* %28, align 4, !dbg !1394
  br label %1785, !dbg !1394, !llvm.loop !1410

1889:                                             ; preds = %1785
  %1890 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1382
  %1891 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1890, i32 0, i32 45, !dbg !1382
  %1892 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1891, i32 0, i32 0, !dbg !1382
  %1893 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1892, align 8, !dbg !1382
  %1894 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1893, i32 0, i32 0, !dbg !1382
  %1895 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %1894, align 8, !dbg !1382
  %1896 = bitcast %struct.UT_hash_bucket* %1895 to i8*, !dbg !1382
  call void @mosquitto__free(i8* %1896), !dbg !1382
  %1897 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1382
  %1898 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1897, i32 0, i32 45, !dbg !1382
  %1899 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1898, i32 0, i32 0, !dbg !1382
  %1900 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1899, align 8, !dbg !1382
  %1901 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1900, i32 0, i32 1, !dbg !1382
  %1902 = load i32, i32* %1901, align 8, !dbg !1382
  %1903 = mul i32 %1902, 2, !dbg !1382
  store i32 %1903, i32* %1901, align 8, !dbg !1382
  %1904 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1382
  %1905 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1904, i32 0, i32 45, !dbg !1382
  %1906 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1905, i32 0, i32 0, !dbg !1382
  %1907 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1906, align 8, !dbg !1382
  %1908 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1907, i32 0, i32 2, !dbg !1382
  %1909 = load i32, i32* %1908, align 4, !dbg !1382
  %1910 = add i32 %1909, 1, !dbg !1382
  store i32 %1910, i32* %1908, align 4, !dbg !1382
  %1911 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %31, align 8, !dbg !1382
  %1912 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1382
  %1913 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1912, i32 0, i32 45, !dbg !1382
  %1914 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1913, i32 0, i32 0, !dbg !1382
  %1915 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1914, align 8, !dbg !1382
  %1916 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1915, i32 0, i32 0, !dbg !1382
  store %struct.UT_hash_bucket* %1911, %struct.UT_hash_bucket** %1916, align 8, !dbg !1382
  %1917 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1382
  %1918 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1917, i32 0, i32 45, !dbg !1382
  %1919 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1918, i32 0, i32 0, !dbg !1382
  %1920 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1919, align 8, !dbg !1382
  %1921 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1920, i32 0, i32 7, !dbg !1382
  %1922 = load i32, i32* %1921, align 4, !dbg !1382
  %1923 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1382
  %1924 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1923, i32 0, i32 45, !dbg !1382
  %1925 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1924, i32 0, i32 0, !dbg !1382
  %1926 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1925, align 8, !dbg !1382
  %1927 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1926, i32 0, i32 3, !dbg !1382
  %1928 = load i32, i32* %1927, align 8, !dbg !1382
  %1929 = lshr i32 %1928, 1, !dbg !1382
  %1930 = icmp ugt i32 %1922, %1929, !dbg !1382
  br i1 %1930, label %1931, label %1939, !dbg !1382

1931:                                             ; preds = %1889
  %1932 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1382
  %1933 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1932, i32 0, i32 45, !dbg !1382
  %1934 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1933, i32 0, i32 0, !dbg !1382
  %1935 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1934, align 8, !dbg !1382
  %1936 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1935, i32 0, i32 8, !dbg !1382
  %1937 = load i32, i32* %1936, align 8, !dbg !1382
  %1938 = add i32 %1937, 1, !dbg !1382
  br label %1940, !dbg !1382

1939:                                             ; preds = %1889
  br label %1940, !dbg !1382

1940:                                             ; preds = %1939, %1931
  %1941 = phi i32 [ %1938, %1931 ], [ 0, %1939 ], !dbg !1382
  %1942 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1382
  %1943 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1942, i32 0, i32 45, !dbg !1382
  %1944 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1943, i32 0, i32 0, !dbg !1382
  %1945 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1944, align 8, !dbg !1382
  %1946 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1945, i32 0, i32 8, !dbg !1382
  store i32 %1941, i32* %1946, align 8, !dbg !1382
  %1947 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1411
  %1948 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1947, i32 0, i32 45, !dbg !1411
  %1949 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1948, i32 0, i32 0, !dbg !1411
  %1950 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1949, align 8, !dbg !1411
  %1951 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1950, i32 0, i32 8, !dbg !1411
  %1952 = load i32, i32* %1951, align 8, !dbg !1411
  %1953 = icmp ugt i32 %1952, 1, !dbg !1411
  br i1 %1953, label %1954, label %1960, !dbg !1382

1954:                                             ; preds = %1940
  %1955 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1413
  %1956 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1955, i32 0, i32 45, !dbg !1413
  %1957 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1956, i32 0, i32 0, !dbg !1413
  %1958 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1957, align 8, !dbg !1413
  %1959 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1958, i32 0, i32 9, !dbg !1413
  store i32 1, i32* %1959, align 4, !dbg !1413
  br label %1960, !dbg !1413

1960:                                             ; preds = %1954, %1940
  br label %1961, !dbg !1382

1961:                                             ; preds = %1960
  br label %1962, !dbg !1377

1962:                                             ; preds = %1961, %1706, %1662
  br label %1963, !dbg !1369

1963:                                             ; preds = %1962
  br label %1964, !dbg !1332

1964:                                             ; preds = %1963
  %1965 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1415
  %1966 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1965, i32 0, i32 34, !dbg !1416
  %1967 = load %struct.mosquitto__listener*, %struct.mosquitto__listener** %1966, align 8, !dbg !1416
  %1968 = getelementptr inbounds %struct.mosquitto__listener, %struct.mosquitto__listener* %1967, i32 0, i32 12, !dbg !1417
  %1969 = load i8, i8* %1968, align 1, !dbg !1417
  %1970 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1418
  %1971 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1970, i32 0, i32 44, !dbg !1419
  store i8 %1969, i8* %1971, align 2, !dbg !1420
  %1972 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1421
  %1973 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1972, i32 0, i32 1, !dbg !1423
  %1974 = load i32, i32* %1973, align 4, !dbg !1423
  %1975 = icmp eq i32 %1974, 5, !dbg !1424
  br i1 %1975, label %1976, label %2076, !dbg !1425

1976:                                             ; preds = %1964
  %1977 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1426
  %1978 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1977, i32 0, i32 44, !dbg !1429
  %1979 = load i8, i8* %1978, align 2, !dbg !1429
  %1980 = zext i8 %1979 to i32, !dbg !1426
  %1981 = icmp ne i32 %1980, 2, !dbg !1430
  br i1 %1981, label %1982, label %1990, !dbg !1431

1982:                                             ; preds = %1976
  %1983 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1432
  %1984 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1983, i32 0, i32 44, !dbg !1435
  %1985 = load i8, i8* %1984, align 2, !dbg !1435
  %1986 = call i32 @mosquitto_property_add_byte(%struct.mqtt5__property** %12, i32 36, i8 zeroext %1985), !dbg !1436
  %1987 = icmp ne i32 %1986, 0, !dbg !1436
  br i1 %1987, label %1988, label %1989, !dbg !1437

1988:                                             ; preds = %1982
  store i32 1, i32* %15, align 4, !dbg !1438
  br label %2087, !dbg !1440

1989:                                             ; preds = %1982
  br label %1990, !dbg !1441

1990:                                             ; preds = %1989, %1976
  %1991 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1442
  %1992 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1991, i32 0, i32 34, !dbg !1444
  %1993 = load %struct.mosquitto__listener*, %struct.mosquitto__listener** %1992, align 8, !dbg !1444
  %1994 = getelementptr inbounds %struct.mosquitto__listener, %struct.mosquitto__listener* %1993, i32 0, i32 13, !dbg !1445
  %1995 = load i16, i16* %1994, align 2, !dbg !1445
  %1996 = zext i16 %1995 to i32, !dbg !1442
  %1997 = icmp sgt i32 %1996, 0, !dbg !1446
  br i1 %1997, label %1998, label %2008, !dbg !1447

1998:                                             ; preds = %1990
  %1999 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1448
  %2000 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %1999, i32 0, i32 34, !dbg !1451
  %2001 = load %struct.mosquitto__listener*, %struct.mosquitto__listener** %2000, align 8, !dbg !1451
  %2002 = getelementptr inbounds %struct.mosquitto__listener, %struct.mosquitto__listener* %2001, i32 0, i32 13, !dbg !1452
  %2003 = load i16, i16* %2002, align 2, !dbg !1452
  %2004 = call i32 @mosquitto_property_add_int16(%struct.mqtt5__property** %12, i32 34, i16 zeroext %2003), !dbg !1453
  %2005 = icmp ne i32 %2004, 0, !dbg !1453
  br i1 %2005, label %2006, label %2007, !dbg !1454

2006:                                             ; preds = %1998
  store i32 1, i32* %15, align 4, !dbg !1455
  br label %2087, !dbg !1457

2007:                                             ; preds = %1998
  br label %2008, !dbg !1458

2008:                                             ; preds = %2007, %1990
  %2009 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1459
  %2010 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %2009, i32 0, i32 6, !dbg !1461
  %2011 = load i16, i16* %2010, align 8, !dbg !1461
  %2012 = zext i16 %2011 to i32, !dbg !1459
  %2013 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1462
  %2014 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %2013, i32 0, i32 13, !dbg !1463
  %2015 = load %struct.mosquitto__config*, %struct.mosquitto__config** %2014, align 8, !dbg !1463
  %2016 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %2015, i32 0, i32 18, !dbg !1464
  %2017 = load i16, i16* %2016, align 2, !dbg !1464
  %2018 = zext i16 %2017 to i32, !dbg !1462
  %2019 = icmp sgt i32 %2012, %2018, !dbg !1465
  br i1 %2019, label %2020, label %2035, !dbg !1466

2020:                                             ; preds = %2008
  %2021 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1467
  %2022 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %2021, i32 0, i32 13, !dbg !1469
  %2023 = load %struct.mosquitto__config*, %struct.mosquitto__config** %2022, align 8, !dbg !1469
  %2024 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %2023, i32 0, i32 18, !dbg !1470
  %2025 = load i16, i16* %2024, align 2, !dbg !1470
  %2026 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1471
  %2027 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %2026, i32 0, i32 6, !dbg !1472
  store i16 %2025, i16* %2027, align 8, !dbg !1473
  %2028 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1474
  %2029 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %2028, i32 0, i32 6, !dbg !1476
  %2030 = load i16, i16* %2029, align 8, !dbg !1476
  %2031 = call i32 @mosquitto_property_add_int16(%struct.mqtt5__property** %12, i32 19, i16 zeroext %2030), !dbg !1477
  %2032 = icmp ne i32 %2031, 0, !dbg !1477
  br i1 %2032, label %2033, label %2034, !dbg !1478

2033:                                             ; preds = %2020
  store i32 1, i32* %15, align 4, !dbg !1479
  br label %2087, !dbg !1481

2034:                                             ; preds = %2020
  br label %2035, !dbg !1482

2035:                                             ; preds = %2034, %2008
  %2036 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1483
  %2037 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %2036, i32 0, i32 43, !dbg !1485
  %2038 = load i8, i8* %2037, align 1, !dbg !1485
  %2039 = trunc i8 %2038 to i1, !dbg !1485
  br i1 %2039, label %2040, label %2048, !dbg !1486

2040:                                             ; preds = %2035
  %2041 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1487
  %2042 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %2041, i32 0, i32 3, !dbg !1490
  %2043 = load i8*, i8** %2042, align 8, !dbg !1490
  %2044 = call i32 @mosquitto_property_add_string(%struct.mqtt5__property** %12, i32 18, i8* %2043), !dbg !1491
  %2045 = icmp ne i32 %2044, 0, !dbg !1491
  br i1 %2045, label %2046, label %2047, !dbg !1492

2046:                                             ; preds = %2040
  store i32 1, i32* %15, align 4, !dbg !1493
  br label %2087, !dbg !1495

2047:                                             ; preds = %2040
  br label %2048, !dbg !1496

2048:                                             ; preds = %2047, %2035
  %2049 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1497
  %2050 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %2049, i32 0, i32 38, !dbg !1499
  %2051 = load i8*, i8** %2050, align 8, !dbg !1499
  %2052 = icmp ne i8* %2051, null, !dbg !1497
  br i1 %2052, label %2053, label %2075, !dbg !1500

2053:                                             ; preds = %2048
  %2054 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1501
  %2055 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %2054, i32 0, i32 38, !dbg !1504
  %2056 = load i8*, i8** %2055, align 8, !dbg !1504
  %2057 = call i32 @mosquitto_property_add_string(%struct.mqtt5__property** %12, i32 21, i8* %2056), !dbg !1505
  %2058 = icmp ne i32 %2057, 0, !dbg !1505
  br i1 %2058, label %2059, label %2060, !dbg !1506

2059:                                             ; preds = %2053
  store i32 1, i32* %15, align 4, !dbg !1507
  br label %2087, !dbg !1509

2060:                                             ; preds = %2053
  %2061 = load i8*, i8** %8, align 8, !dbg !1510
  %2062 = icmp ne i8* %2061, null, !dbg !1510
  br i1 %2062, label %2063, label %2074, !dbg !1512

2063:                                             ; preds = %2060
  %2064 = load i16, i16* %9, align 2, !dbg !1513
  %2065 = zext i16 %2064 to i32, !dbg !1513
  %2066 = icmp sgt i32 %2065, 0, !dbg !1514
  br i1 %2066, label %2067, label %2074, !dbg !1515

2067:                                             ; preds = %2063
  %2068 = load i8*, i8** %8, align 8, !dbg !1516
  %2069 = load i16, i16* %9, align 2, !dbg !1519
  %2070 = call i32 @mosquitto_property_add_binary(%struct.mqtt5__property** %12, i32 22, i8* %2068, i16 zeroext %2069), !dbg !1520
  %2071 = icmp ne i32 %2070, 0, !dbg !1520
  br i1 %2071, label %2072, label %2073, !dbg !1521

2072:                                             ; preds = %2067
  store i32 1, i32* %15, align 4, !dbg !1522
  br label %2087, !dbg !1524

2073:                                             ; preds = %2067
  br label %2074, !dbg !1525

2074:                                             ; preds = %2073, %2063, %2060
  br label %2075, !dbg !1526

2075:                                             ; preds = %2074, %2048
  br label %2076, !dbg !1527

2076:                                             ; preds = %2075, %1964
  %2077 = load i8*, i8** %8, align 8, !dbg !1528
  call void @free(i8* %2077) #10, !dbg !1529
  %2078 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1530
  %2079 = call i32 @mosquitto__set_state(%struct.mosquitto* %2078, i32 3), !dbg !1531
  %2080 = load %struct.mosquitto_db*, %struct.mosquitto_db** %6, align 8, !dbg !1532
  %2081 = load %struct.mosquitto*, %struct.mosquitto** %7, align 8, !dbg !1533
  %2082 = load i8, i8* %13, align 1, !dbg !1534
  %2083 = zext i8 %2082 to i32, !dbg !1534
  %2084 = load %struct.mqtt5__property*, %struct.mqtt5__property** %12, align 8, !dbg !1535
  %2085 = call i32 @send__connack(%struct.mosquitto_db* %2080, %struct.mosquitto* %2081, i32 %2083, i32 0, %struct.mqtt5__property* %2084), !dbg !1536
  store i32 %2085, i32* %15, align 4, !dbg !1537
  call void @mosquitto_property_free_all(%struct.mqtt5__property** %12), !dbg !1538
  %2086 = load i32, i32* %15, align 4, !dbg !1539
  store i32 %2086, i32* %5, align 4, !dbg !1540
  br label %2090, !dbg !1540

2087:                                             ; preds = %2072, %2059, %2046, %2033, %2006, %1988
  %2088 = load i8*, i8** %8, align 8, !dbg !1541
  call void @free(i8* %2088) #10, !dbg !1542
  call void @mosquitto_property_free_all(%struct.mqtt5__property** %12), !dbg !1543
  %2089 = load i32, i32* %15, align 4, !dbg !1544
  store i32 %2089, i32* %5, align 4, !dbg !1545
  br label %2090, !dbg !1545

2090:                                             ; preds = %2087, %2076, %710
  %2091 = load i32, i32* %5, align 4, !dbg !1546
  ret i32 %2091, !dbg !1546
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i32 @log__printf(%struct.mosquitto*, i32, i8*, ...) #2

declare i32 @db__message_reconnect_reset(%struct.mosquitto_db*, %struct.mosquitto*) #2

declare void @session_expiry__remove(%struct.mosquitto*) #2

declare void @will_delay__remove(%struct.mosquitto*) #2

declare i32 @will__clear(%struct.mosquitto*) #2

declare i32 @mosquitto__set_state(%struct.mosquitto*, i32) #2

declare void @do_disconnect(%struct.mosquitto_db*, %struct.mosquitto*, i32) #2

declare i32 @acl__find_acls(%struct.mosquitto_db*, %struct.mosquitto*) #2

; Function Attrs: nounwind
declare void @free(i8*) #5

declare i8* @mosquitto__malloc(i64) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @mosquitto_property_add_byte(%struct.mqtt5__property**, i32, i8 zeroext) #2

declare i32 @mosquitto_property_add_int16(%struct.mqtt5__property**, i32, i16 zeroext) #2

declare i32 @mosquitto_property_add_string(%struct.mqtt5__property**, i32, i8*) #2

declare i32 @mosquitto_property_add_binary(%struct.mqtt5__property**, i32, i8*, i16 zeroext) #2

declare i32 @send__connack(%struct.mosquitto_db*, %struct.mosquitto*, i32, i32, %struct.mqtt5__property*) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @simple_decrypt(i32 %0) #0 !dbg !1547 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1550, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1552, metadata !DIExpression()), !dbg !1553
  store i32 1234182, i32* %3, align 4, !dbg !1553
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1554, metadata !DIExpression()), !dbg !1555
  %5 = load i32, i32* %2, align 4, !dbg !1556
  %6 = load i32, i32* %3, align 4, !dbg !1557
  %7 = xor i32 %5, %6, !dbg !1558
  store i32 %7, i32* %4, align 4, !dbg !1555
  %8 = load i32, i32* %4, align 4, !dbg !1559
  ret i32 %8, !dbg !1560
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @nonce_verify(i32 %0, i32 %1, i32 %2) #0 !dbg !1561 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1564, metadata !DIExpression()), !dbg !1565
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1566, metadata !DIExpression()), !dbg !1567
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1568, metadata !DIExpression()), !dbg !1569
  %8 = load i32, i32* %5, align 4, !dbg !1570
  %9 = load i32, i32* %7, align 4, !dbg !1572
  %10 = sub nsw i32 %8, %9, !dbg !1573
  %11 = load i32, i32* %6, align 4, !dbg !1574
  %12 = icmp ne i32 %10, %11, !dbg !1575
  br i1 %12, label %13, label %14, !dbg !1576

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !1577
  br label %20, !dbg !1577

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4, !dbg !1579
  %16 = load i32, i32* %6, align 4, !dbg !1581
  %17 = sub nsw i32 %15, %16, !dbg !1582
  %18 = sdiv i32 %17, 2, !dbg !1583
  store i32 %18, i32* %5, align 4, !dbg !1584
  %19 = load i32, i32* %5, align 4, !dbg !1585
  store i32 %19, i32* %4, align 4, !dbg !1586
  br label %20, !dbg !1586

20:                                               ; preds = %14, %13
  %21 = load i32, i32* %4, align 4, !dbg !1587
  ret i32 %21, !dbg !1587
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @handle__connect_wrap(%struct.mosquitto_db* %0, %struct.mosquitto* %1) #0 !dbg !1588 {
  %3 = alloca %struct.mosquitto_db*, align 8
  %4 = alloca %struct.mosquitto*, align 8
  %5 = alloca %struct.mosquitto_container, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca i64, align 8
  %8 = alloca %struct.tm*, align 8
  store %struct.mosquitto_db* %0, %struct.mosquitto_db** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.mosquitto_db** %3, metadata !1591, metadata !DIExpression()), !dbg !1592
  store %struct.mosquitto* %1, %struct.mosquitto** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mosquitto** %4, metadata !1593, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.declare(metadata %struct.mosquitto_container* %5, metadata !1595, metadata !DIExpression()), !dbg !1601
  %9 = getelementptr inbounds %struct.mosquitto_container, %struct.mosquitto_container* %5, i32 0, i32 1, !dbg !1602
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8** %9, align 8, !dbg !1603
  %10 = load %struct.mosquitto*, %struct.mosquitto** %4, align 8, !dbg !1604
  %11 = getelementptr inbounds %struct.mosquitto_container, %struct.mosquitto_container* %5, i32 0, i32 0, !dbg !1605
  store %struct.mosquitto* %10, %struct.mosquitto** %11, align 8, !dbg !1606
  call void @llvm.dbg.declare(metadata [4 x i32]* %6, metadata !1607, metadata !DIExpression()), !dbg !1611
  %12 = bitcast [4 x i32]* %6 to i8*, !dbg !1611
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([4 x i32]* @handle__connect_wrap.nonce_list to i8*), i64 16, i1 false), !dbg !1611
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1612, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.declare(metadata %struct.tm** %8, metadata !1614, metadata !DIExpression()), !dbg !1630
  %13 = call i64 @time(i64* %7) #10, !dbg !1631
  %14 = call %struct.tm* @gmtime(i64* %7) #10, !dbg !1632
  store %struct.tm* %14, %struct.tm** %8, align 8, !dbg !1633
  %15 = load %struct.tm*, %struct.tm** %8, align 8, !dbg !1634
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %15, i32 0, i32 2, !dbg !1636
  %17 = load i32, i32* %16, align 8, !dbg !1636
  %18 = srem i32 %17, 24, !dbg !1637
  %19 = icmp sgt i32 %18, 12, !dbg !1638
  br i1 %19, label %20, label %24, !dbg !1639

20:                                               ; preds = %2
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !1640
  %22 = load i32, i32* %21, align 16, !dbg !1640
  %23 = getelementptr inbounds %struct.mosquitto_container, %struct.mosquitto_container* %5, i32 0, i32 2, !dbg !1642
  store i32 %22, i32* %23, align 8, !dbg !1643
  br label %28, !dbg !1644

24:                                               ; preds = %2
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2, !dbg !1645
  %26 = load i32, i32* %25, align 8, !dbg !1645
  %27 = getelementptr inbounds %struct.mosquitto_container, %struct.mosquitto_container* %5, i32 0, i32 2, !dbg !1647
  store i32 %26, i32* %27, align 8, !dbg !1648
  br label %28

28:                                               ; preds = %24, %20
  %29 = getelementptr inbounds %struct.mosquitto_container, %struct.mosquitto_container* %5, i32 0, i32 0, !dbg !1649
  %30 = load %struct.mosquitto*, %struct.mosquitto** %29, align 8, !dbg !1649
  %31 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %30, i32 0, i32 12, !dbg !1650
  %32 = getelementptr inbounds %struct.mosquitto__packet, %struct.mosquitto__packet* %31, i32 0, i32 3, !dbg !1651
  %33 = load i32, i32* %32, align 4, !dbg !1651
  %34 = getelementptr inbounds %struct.mosquitto_container, %struct.mosquitto_container* %5, i32 0, i32 2, !dbg !1652
  %35 = load i32, i32* %34, align 8, !dbg !1652
  %36 = call i32 @nonce_verify(i32 %33, i32 %35, i32 70), !dbg !1653
  %37 = getelementptr inbounds %struct.mosquitto_container, %struct.mosquitto_container* %5, i32 0, i32 0, !dbg !1654
  %38 = load %struct.mosquitto*, %struct.mosquitto** %37, align 8, !dbg !1654
  %39 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %38, i32 0, i32 12, !dbg !1655
  %40 = getelementptr inbounds %struct.mosquitto__packet, %struct.mosquitto__packet* %39, i32 0, i32 3, !dbg !1656
  store i32 %36, i32* %40, align 4, !dbg !1657
  %41 = load %struct.mosquitto_db*, %struct.mosquitto_db** %3, align 8, !dbg !1658
  %42 = getelementptr inbounds %struct.mosquitto_container, %struct.mosquitto_container* %5, i32 0, i32 0, !dbg !1659
  %43 = load %struct.mosquitto*, %struct.mosquitto** %42, align 8, !dbg !1659
  %44 = call i32 @handle__connect(%struct.mosquitto_db* %41, %struct.mosquitto* %43), !dbg !1660
  ret i32 %44, !dbg !1661
}

; Function Attrs: nounwind
declare i64 @time(i64*) #5

; Function Attrs: nounwind
declare %struct.tm* @gmtime(i64*) #5

; Function Attrs: noinline nounwind optnone uwtable
define i32 @handle__connect(%struct.mosquitto_db* %0, %struct.mosquitto* %1) #0 !dbg !1662 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mosquitto_db*, align 8
  %5 = alloca %struct.mosquitto*, align 8
  %6 = alloca [7 x i8], align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mosquitto_message_all*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i16, align 2
  %22 = alloca %struct.mqtt5__property*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i16, align 2
  %25 = alloca i8*, align 8
  %26 = alloca i16, align 2
  %27 = alloca i8, align 1
  store %struct.mosquitto_db* %0, %struct.mosquitto_db** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mosquitto_db** %4, metadata !1663, metadata !DIExpression()), !dbg !1664
  store %struct.mosquitto* %1, %struct.mosquitto** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.mosquitto** %5, metadata !1665, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.declare(metadata [7 x i8]* %6, metadata !1667, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1672, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1674, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1676, metadata !DIExpression()), !dbg !1677
  store i8* null, i8** %9, align 8, !dbg !1677
  call void @llvm.dbg.declare(metadata %struct.mosquitto_message_all** %10, metadata !1678, metadata !DIExpression()), !dbg !1679
  store %struct.mosquitto_message_all* null, %struct.mosquitto_message_all** %10, align 8, !dbg !1679
  call void @llvm.dbg.declare(metadata i8* %11, metadata !1680, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1682, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.declare(metadata i8* %13, metadata !1684, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.declare(metadata i8* %14, metadata !1686, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.declare(metadata i8* %15, metadata !1688, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.declare(metadata i8* %16, metadata !1690, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.declare(metadata i8** %17, metadata !1692, metadata !DIExpression()), !dbg !1693
  store i8* null, i8** %17, align 8, !dbg !1693
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1694, metadata !DIExpression()), !dbg !1695
  store i8* null, i8** %18, align 8, !dbg !1695
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1696, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1698, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.declare(metadata i16* %21, metadata !1700, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.declare(metadata %struct.mqtt5__property** %22, metadata !1702, metadata !DIExpression()), !dbg !1703
  store %struct.mqtt5__property* null, %struct.mqtt5__property** %22, align 8, !dbg !1703
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1704, metadata !DIExpression()), !dbg !1705
  store i8* null, i8** %23, align 8, !dbg !1705
  call void @llvm.dbg.declare(metadata i16* %24, metadata !1706, metadata !DIExpression()), !dbg !1707
  store i16 0, i16* %24, align 2, !dbg !1707
  call void @llvm.dbg.declare(metadata i8** %25, metadata !1708, metadata !DIExpression()), !dbg !1709
  store i8* null, i8** %25, align 8, !dbg !1709
  call void @llvm.dbg.declare(metadata i16* %26, metadata !1710, metadata !DIExpression()), !dbg !1711
  store i16 0, i16* %26, align 2, !dbg !1711
  %28 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1712
  %29 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %28, i32 0, i32 34, !dbg !1714
  %30 = load %struct.mosquitto__listener*, %struct.mosquitto__listener** %29, align 8, !dbg !1714
  %31 = icmp ne %struct.mosquitto__listener* %30, null, !dbg !1712
  br i1 %31, label %33, label %32, !dbg !1715

32:                                               ; preds = %2
  store i32 3, i32* %3, align 4, !dbg !1716
  br label %824, !dbg !1716

33:                                               ; preds = %2
  %34 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1718
  %35 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %34, i32 0, i32 8, !dbg !1720
  %36 = load i32, i32* %35, align 4, !dbg !1720
  %37 = icmp ne i32 %36, 0, !dbg !1721
  br i1 %37, label %38, label %43, !dbg !1722

38:                                               ; preds = %33
  %39 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1723
  %40 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %39, i32 0, i32 3, !dbg !1725
  %41 = load i8*, i8** %40, align 8, !dbg !1725
  %42 = call i32 (%struct.mosquitto*, i32, i8*, ...) @log__printf(%struct.mosquitto* null, i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i32 0, i32 0), i8* %41), !dbg !1726
  store i32 2, i32* %19, align 4, !dbg !1727
  br label %802, !dbg !1728

43:                                               ; preds = %33
  %44 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1729
  %45 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %44, i32 0, i32 12, !dbg !1731
  %46 = call i32 @packet__read_uint16(%struct.mosquitto__packet* %45, i16* %21), !dbg !1732
  %47 = icmp ne i32 %46, 0, !dbg !1732
  br i1 %47, label %48, label %49, !dbg !1733

48:                                               ; preds = %43
  store i32 1, i32* %19, align 4, !dbg !1734
  br label %802, !dbg !1736

49:                                               ; preds = %43
  %50 = load i16, i16* %21, align 2, !dbg !1737
  %51 = zext i16 %50 to i32, !dbg !1737
  store i32 %51, i32* %20, align 4, !dbg !1738
  %52 = load i32, i32* %20, align 4, !dbg !1739
  %53 = icmp ne i32 %52, 4, !dbg !1741
  br i1 %53, label %54, label %58, !dbg !1742

54:                                               ; preds = %49
  %55 = load i32, i32* %20, align 4, !dbg !1743
  %56 = icmp ne i32 %55, 6, !dbg !1744
  br i1 %56, label %57, label %58, !dbg !1745

57:                                               ; preds = %54
  store i32 2, i32* %19, align 4, !dbg !1746
  br label %802, !dbg !1748

58:                                               ; preds = %54, %49
  %59 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1749
  %60 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %59, i32 0, i32 12, !dbg !1751
  %61 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i32 0, i32 0, !dbg !1752
  %62 = load i32, i32* %20, align 4, !dbg !1753
  %63 = call i32 @packet__read_bytes(%struct.mosquitto__packet* %60, i8* %61, i32 %62), !dbg !1754
  %64 = icmp ne i32 %63, 0, !dbg !1754
  br i1 %64, label %65, label %66, !dbg !1755

65:                                               ; preds = %58
  store i32 2, i32* %19, align 4, !dbg !1756
  br label %802, !dbg !1758

66:                                               ; preds = %58
  %67 = load i32, i32* %20, align 4, !dbg !1759
  %68 = sext i32 %67 to i64, !dbg !1760
  %69 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 %68, !dbg !1760
  store i8 0, i8* %69, align 1, !dbg !1761
  %70 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1762
  %71 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %70, i32 0, i32 12, !dbg !1764
  %72 = call i32 @packet__read_byte(%struct.mosquitto__packet* %71, i8* %7), !dbg !1765
  %73 = icmp ne i32 %72, 0, !dbg !1765
  br i1 %73, label %74, label %75, !dbg !1766

74:                                               ; preds = %66
  store i32 1, i32* %19, align 4, !dbg !1767
  br label %802, !dbg !1769

75:                                               ; preds = %66
  %76 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i32 0, i32 0, !dbg !1770
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)) #9, !dbg !1772
  %78 = icmp ne i32 %77, 0, !dbg !1772
  br i1 %78, label %115, label %79, !dbg !1773

79:                                               ; preds = %75
  %80 = load i8, i8* %7, align 1, !dbg !1774
  %81 = zext i8 %80 to i32, !dbg !1774
  %82 = and i32 %81, 127, !dbg !1777
  %83 = icmp ne i32 %82, 3, !dbg !1778
  br i1 %83, label %84, label %104, !dbg !1779

84:                                               ; preds = %79
  %85 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !1780
  %86 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %85, i32 0, i32 13, !dbg !1783
  %87 = load %struct.mosquitto__config*, %struct.mosquitto__config** %86, align 8, !dbg !1783
  %88 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %87, i32 0, i32 5, !dbg !1784
  %89 = load i8, i8* %88, align 8, !dbg !1784
  %90 = trunc i8 %89 to i1, !dbg !1784
  %91 = zext i1 %90 to i32, !dbg !1780
  %92 = icmp eq i32 %91, 1, !dbg !1785
  br i1 %92, label %93, label %100, !dbg !1786

93:                                               ; preds = %84
  %94 = load i8, i8* %7, align 1, !dbg !1787
  %95 = zext i8 %94 to i32, !dbg !1787
  %96 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1789
  %97 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %96, i32 0, i32 2, !dbg !1790
  %98 = load i8*, i8** %97, align 8, !dbg !1790
  %99 = call i32 (%struct.mosquitto*, i32, i8*, ...) @log__printf(%struct.mosquitto* null, i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i32 0, i32 0), i32 %95, i8* %98), !dbg !1791
  br label %100, !dbg !1792

100:                                              ; preds = %93, %84
  %101 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !1793
  %102 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1794
  %103 = call i32 @send__connack(%struct.mosquitto_db* %101, %struct.mosquitto* %102, i32 0, i32 1, %struct.mqtt5__property* null), !dbg !1795
  store i32 2, i32* %19, align 4, !dbg !1796
  br label %802, !dbg !1797

104:                                              ; preds = %79
  %105 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1798
  %106 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %105, i32 0, i32 1, !dbg !1799
  store i32 1, i32* %106, align 4, !dbg !1800
  %107 = load i8, i8* %7, align 1, !dbg !1801
  %108 = zext i8 %107 to i32, !dbg !1801
  %109 = and i32 %108, 128, !dbg !1803
  %110 = icmp eq i32 %109, 128, !dbg !1804
  br i1 %110, label %111, label %114, !dbg !1805

111:                                              ; preds = %104
  %112 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1806
  %113 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %112, i32 0, i32 29, !dbg !1808
  store i8 1, i8* %113, align 2, !dbg !1809
  br label %114, !dbg !1810

114:                                              ; preds = %111, %104
  br label %191, !dbg !1811

115:                                              ; preds = %75
  %116 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i32 0, i32 0, !dbg !1812
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)) #9, !dbg !1814
  %118 = icmp ne i32 %117, 0, !dbg !1814
  br i1 %118, label %174, label %119, !dbg !1815

119:                                              ; preds = %115
  %120 = load i8, i8* %7, align 1, !dbg !1816
  %121 = zext i8 %120 to i32, !dbg !1816
  %122 = and i32 %121, 127, !dbg !1819
  %123 = icmp eq i32 %122, 4, !dbg !1820
  br i1 %123, label %124, label %135, !dbg !1821

124:                                              ; preds = %119
  %125 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1822
  %126 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %125, i32 0, i32 1, !dbg !1824
  store i32 2, i32* %126, align 4, !dbg !1825
  %127 = load i8, i8* %7, align 1, !dbg !1826
  %128 = zext i8 %127 to i32, !dbg !1826
  %129 = and i32 %128, 128, !dbg !1828
  %130 = icmp eq i32 %129, 128, !dbg !1829
  br i1 %130, label %131, label %134, !dbg !1830

131:                                              ; preds = %124
  %132 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1831
  %133 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %132, i32 0, i32 29, !dbg !1833
  store i8 1, i8* %133, align 2, !dbg !1834
  br label %134, !dbg !1835

134:                                              ; preds = %131, %124
  br label %164, !dbg !1836

135:                                              ; preds = %119
  %136 = load i8, i8* %7, align 1, !dbg !1837
  %137 = zext i8 %136 to i32, !dbg !1837
  %138 = and i32 %137, 127, !dbg !1839
  %139 = icmp eq i32 %138, 5, !dbg !1840
  br i1 %139, label %140, label %143, !dbg !1841

140:                                              ; preds = %135
  %141 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1842
  %142 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %141, i32 0, i32 1, !dbg !1844
  store i32 5, i32* %142, align 4, !dbg !1845
  br label %163, !dbg !1846

143:                                              ; preds = %135
  %144 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !1847
  %145 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %144, i32 0, i32 13, !dbg !1850
  %146 = load %struct.mosquitto__config*, %struct.mosquitto__config** %145, align 8, !dbg !1850
  %147 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %146, i32 0, i32 5, !dbg !1851
  %148 = load i8, i8* %147, align 8, !dbg !1851
  %149 = trunc i8 %148 to i1, !dbg !1851
  %150 = zext i1 %149 to i32, !dbg !1847
  %151 = icmp eq i32 %150, 1, !dbg !1852
  br i1 %151, label %152, label %159, !dbg !1853

152:                                              ; preds = %143
  %153 = load i8, i8* %7, align 1, !dbg !1854
  %154 = zext i8 %153 to i32, !dbg !1854
  %155 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1856
  %156 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %155, i32 0, i32 2, !dbg !1857
  %157 = load i8*, i8** %156, align 8, !dbg !1857
  %158 = call i32 (%struct.mosquitto*, i32, i8*, ...) @log__printf(%struct.mosquitto* null, i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i32 0, i32 0), i32 %154, i8* %157), !dbg !1858
  br label %159, !dbg !1859

159:                                              ; preds = %152, %143
  %160 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !1860
  %161 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1861
  %162 = call i32 @send__connack(%struct.mosquitto_db* %160, %struct.mosquitto* %161, i32 0, i32 1, %struct.mqtt5__property* null), !dbg !1862
  store i32 2, i32* %19, align 4, !dbg !1863
  br label %802, !dbg !1864

163:                                              ; preds = %140
  br label %164

164:                                              ; preds = %163, %134
  %165 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1865
  %166 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %165, i32 0, i32 12, !dbg !1867
  %167 = getelementptr inbounds %struct.mosquitto__packet, %struct.mosquitto__packet* %166, i32 0, i32 8, !dbg !1868
  %168 = load i8, i8* %167, align 2, !dbg !1868
  %169 = zext i8 %168 to i32, !dbg !1865
  %170 = and i32 %169, 15, !dbg !1869
  %171 = icmp ne i32 %170, 0, !dbg !1870
  br i1 %171, label %172, label %173, !dbg !1871

172:                                              ; preds = %164
  store i32 2, i32* %19, align 4, !dbg !1872
  br label %802, !dbg !1874

173:                                              ; preds = %164
  br label %190, !dbg !1875

174:                                              ; preds = %115
  %175 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !1876
  %176 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %175, i32 0, i32 13, !dbg !1879
  %177 = load %struct.mosquitto__config*, %struct.mosquitto__config** %176, align 8, !dbg !1879
  %178 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %177, i32 0, i32 5, !dbg !1880
  %179 = load i8, i8* %178, align 8, !dbg !1880
  %180 = trunc i8 %179 to i1, !dbg !1880
  %181 = zext i1 %180 to i32, !dbg !1876
  %182 = icmp eq i32 %181, 1, !dbg !1881
  br i1 %182, label %183, label %189, !dbg !1882

183:                                              ; preds = %174
  %184 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i32 0, i32 0, !dbg !1883
  %185 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1885
  %186 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %185, i32 0, i32 2, !dbg !1886
  %187 = load i8*, i8** %186, align 8, !dbg !1886
  %188 = call i32 (%struct.mosquitto*, i32, i8*, ...) @log__printf(%struct.mosquitto* null, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i32 0, i32 0), i8* %184, i8* %187), !dbg !1887
  br label %189, !dbg !1888

189:                                              ; preds = %183, %174
  store i32 2, i32* %19, align 4, !dbg !1889
  br label %802, !dbg !1890

190:                                              ; preds = %173
  br label %191

191:                                              ; preds = %190, %114
  %192 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1891
  %193 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %192, i32 0, i32 12, !dbg !1893
  %194 = call i32 @packet__read_byte(%struct.mosquitto__packet* %193, i8* %8), !dbg !1894
  %195 = icmp ne i32 %194, 0, !dbg !1894
  br i1 %195, label %196, label %197, !dbg !1895

196:                                              ; preds = %191
  store i32 1, i32* %19, align 4, !dbg !1896
  br label %802, !dbg !1898

197:                                              ; preds = %191
  %198 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1899
  %199 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %198, i32 0, i32 1, !dbg !1901
  %200 = load i32, i32* %199, align 4, !dbg !1901
  %201 = icmp eq i32 %200, 2, !dbg !1902
  br i1 %201, label %207, label %202, !dbg !1903

202:                                              ; preds = %197
  %203 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1904
  %204 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %203, i32 0, i32 1, !dbg !1905
  %205 = load i32, i32* %204, align 4, !dbg !1905
  %206 = icmp eq i32 %205, 5, !dbg !1906
  br i1 %206, label %207, label %214, !dbg !1907

207:                                              ; preds = %202, %197
  %208 = load i8, i8* %8, align 1, !dbg !1908
  %209 = zext i8 %208 to i32, !dbg !1908
  %210 = and i32 %209, 1, !dbg !1911
  %211 = icmp ne i32 %210, 0, !dbg !1912
  br i1 %211, label %212, label %213, !dbg !1913

212:                                              ; preds = %207
  store i32 2, i32* %19, align 4, !dbg !1914
  br label %802, !dbg !1916

213:                                              ; preds = %207
  br label %214, !dbg !1917

214:                                              ; preds = %213, %202
  %215 = load i8, i8* %8, align 1, !dbg !1918
  %216 = zext i8 %215 to i32, !dbg !1918
  %217 = and i32 %216, 2, !dbg !1919
  %218 = ashr i32 %217, 1, !dbg !1920
  %219 = trunc i32 %218 to i8, !dbg !1921
  store i8 %219, i8* %14, align 1, !dbg !1922
  %220 = load i8, i8* %14, align 1, !dbg !1923
  %221 = zext i8 %220 to i32, !dbg !1923
  %222 = icmp eq i32 %221, 0, !dbg !1925
  br i1 %222, label %223, label %230, !dbg !1926

223:                                              ; preds = %214
  %224 = load i8, i8* %7, align 1, !dbg !1927
  %225 = zext i8 %224 to i32, !dbg !1927
  %226 = icmp ne i32 %225, 5, !dbg !1928
  br i1 %226, label %227, label %230, !dbg !1929

227:                                              ; preds = %223
  %228 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1930
  %229 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %228, i32 0, i32 25, !dbg !1932
  store i32 -1, i32* %229, align 4, !dbg !1933
  br label %233, !dbg !1934

230:                                              ; preds = %223, %214
  %231 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1935
  %232 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %231, i32 0, i32 25, !dbg !1937
  store i32 0, i32* %232, align 4, !dbg !1938
  br label %233

233:                                              ; preds = %230, %227
  %234 = load i8, i8* %8, align 1, !dbg !1939
  %235 = zext i8 %234 to i32, !dbg !1939
  %236 = and i32 %235, 4, !dbg !1940
  %237 = trunc i32 %236 to i8, !dbg !1939
  store i8 %237, i8* %11, align 1, !dbg !1941
  %238 = load i8, i8* %8, align 1, !dbg !1942
  %239 = zext i8 %238 to i32, !dbg !1942
  %240 = and i32 %239, 24, !dbg !1943
  %241 = ashr i32 %240, 3, !dbg !1944
  %242 = trunc i32 %241 to i8, !dbg !1945
  store i8 %242, i8* %13, align 1, !dbg !1946
  %243 = load i8, i8* %13, align 1, !dbg !1947
  %244 = zext i8 %243 to i32, !dbg !1947
  %245 = icmp eq i32 %244, 3, !dbg !1949
  br i1 %245, label %246, label %251, !dbg !1950

246:                                              ; preds = %233
  %247 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1951
  %248 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %247, i32 0, i32 2, !dbg !1953
  %249 = load i8*, i8** %248, align 8, !dbg !1953
  %250 = call i32 (%struct.mosquitto*, i32, i8*, ...) @log__printf(%struct.mosquitto* null, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i32 0, i32 0), i8* %249), !dbg !1954
  store i32 2, i32* %19, align 4, !dbg !1955
  br label %802, !dbg !1956

251:                                              ; preds = %233
  %252 = load i8, i8* %8, align 1, !dbg !1957
  %253 = zext i8 %252 to i32, !dbg !1957
  %254 = and i32 %253, 32, !dbg !1958
  %255 = icmp eq i32 %254, 32, !dbg !1959
  %256 = zext i1 %255 to i32, !dbg !1959
  %257 = trunc i32 %256 to i8, !dbg !1960
  store i8 %257, i8* %12, align 1, !dbg !1961
  %258 = load i8, i8* %8, align 1, !dbg !1962
  %259 = zext i8 %258 to i32, !dbg !1962
  %260 = and i32 %259, 64, !dbg !1963
  %261 = trunc i32 %260 to i8, !dbg !1962
  store i8 %261, i8* %16, align 1, !dbg !1964
  %262 = load i8, i8* %8, align 1, !dbg !1965
  %263 = zext i8 %262 to i32, !dbg !1965
  %264 = and i32 %263, 128, !dbg !1966
  %265 = trunc i32 %264 to i8, !dbg !1965
  store i8 %265, i8* %15, align 1, !dbg !1967
  %266 = load i8, i8* %11, align 1, !dbg !1968
  %267 = zext i8 %266 to i32, !dbg !1968
  %268 = icmp ne i32 %267, 0, !dbg !1968
  br i1 %268, label %269, label %291, !dbg !1970

269:                                              ; preds = %251
  %270 = load i8, i8* %12, align 1, !dbg !1971
  %271 = zext i8 %270 to i32, !dbg !1971
  %272 = icmp ne i32 %271, 0, !dbg !1971
  br i1 %272, label %273, label %291, !dbg !1972

273:                                              ; preds = %269
  %274 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !1973
  %275 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %274, i32 0, i32 13, !dbg !1974
  %276 = load %struct.mosquitto__config*, %struct.mosquitto__config** %275, align 8, !dbg !1974
  %277 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %276, i32 0, i32 29, !dbg !1975
  %278 = load i8, i8* %277, align 2, !dbg !1975
  %279 = trunc i8 %278 to i1, !dbg !1975
  %280 = zext i1 %279 to i32, !dbg !1973
  %281 = icmp eq i32 %280, 0, !dbg !1976
  br i1 %281, label %282, label %291, !dbg !1977

282:                                              ; preds = %273
  %283 = load i8, i8* %7, align 1, !dbg !1978
  %284 = zext i8 %283 to i32, !dbg !1978
  %285 = icmp eq i32 %284, 5, !dbg !1981
  br i1 %285, label %286, label %290, !dbg !1982

286:                                              ; preds = %282
  %287 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !1983
  %288 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1985
  %289 = call i32 @send__connack(%struct.mosquitto_db* %287, %struct.mosquitto* %288, i32 0, i32 154, %struct.mqtt5__property* null), !dbg !1986
  br label %290, !dbg !1987

290:                                              ; preds = %286, %282
  store i32 1, i32* %19, align 4, !dbg !1988
  br label %802, !dbg !1989

291:                                              ; preds = %273, %269, %251
  %292 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1990
  %293 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %292, i32 0, i32 12, !dbg !1992
  %294 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !1993
  %295 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %294, i32 0, i32 6, !dbg !1994
  %296 = call i32 @packet__read_uint16(%struct.mosquitto__packet* %293, i16* %295), !dbg !1995
  %297 = icmp ne i32 %296, 0, !dbg !1995
  br i1 %297, label %298, label %299, !dbg !1996

298:                                              ; preds = %291
  store i32 1, i32* %19, align 4, !dbg !1997
  br label %802, !dbg !1999

299:                                              ; preds = %291
  %300 = load i8, i8* %7, align 1, !dbg !2000
  %301 = zext i8 %300 to i32, !dbg !2000
  %302 = icmp eq i32 %301, 5, !dbg !2002
  br i1 %302, label %303, label %311, !dbg !2003

303:                                              ; preds = %299
  %304 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2004
  %305 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %304, i32 0, i32 12, !dbg !2006
  %306 = call i32 @property__read_all(i32 16, %struct.mosquitto__packet* %305, %struct.mqtt5__property** %22), !dbg !2007
  store i32 %306, i32* %19, align 4, !dbg !2008
  %307 = load i32, i32* %19, align 4, !dbg !2009
  %308 = icmp ne i32 %307, 0, !dbg !2009
  br i1 %308, label %309, label %310, !dbg !2011

309:                                              ; preds = %303
  br label %802, !dbg !2012

310:                                              ; preds = %303
  br label %311, !dbg !2013

311:                                              ; preds = %310, %299
  %312 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2014
  %313 = call i32 @property__process_connect(%struct.mosquitto* %312, %struct.mqtt5__property** %22), !dbg !2015
  %314 = load %struct.mqtt5__property*, %struct.mqtt5__property** %22, align 8, !dbg !2016
  %315 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2018
  %316 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %315, i32 0, i32 38, !dbg !2019
  %317 = call %struct.mqtt5__property* @mosquitto_property_read_string(%struct.mqtt5__property* %314, i32 21, i8** %316, i1 zeroext false), !dbg !2020
  %318 = icmp ne %struct.mqtt5__property* %317, null, !dbg !2020
  br i1 %318, label %319, label %322, !dbg !2021

319:                                              ; preds = %311
  %320 = load %struct.mqtt5__property*, %struct.mqtt5__property** %22, align 8, !dbg !2022
  %321 = call %struct.mqtt5__property* @mosquitto_property_read_binary(%struct.mqtt5__property* %320, i32 22, i8** %23, i16* %24, i1 zeroext false), !dbg !2024
  br label %322, !dbg !2025

322:                                              ; preds = %319, %311
  call void @mosquitto_property_free_all(%struct.mqtt5__property** %22), !dbg !2026
  %323 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2027
  %324 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %323, i32 0, i32 12, !dbg !2029
  %325 = call i32 @packet__read_string(%struct.mosquitto__packet* %324, i8** %9, i32* %20), !dbg !2030
  %326 = icmp ne i32 %325, 0, !dbg !2030
  br i1 %326, label %327, label %328, !dbg !2031

327:                                              ; preds = %322
  store i32 1, i32* %19, align 4, !dbg !2032
  br label %802, !dbg !2034

328:                                              ; preds = %322
  %329 = load i32, i32* %20, align 4, !dbg !2035
  %330 = icmp eq i32 %329, 0, !dbg !2037
  br i1 %330, label %331, label %438, !dbg !2038

331:                                              ; preds = %328
  %332 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2039
  %333 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %332, i32 0, i32 1, !dbg !2042
  %334 = load i32, i32* %333, align 4, !dbg !2042
  %335 = icmp eq i32 %334, 1, !dbg !2043
  br i1 %335, label %336, label %340, !dbg !2044

336:                                              ; preds = %331
  %337 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2045
  %338 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2047
  %339 = call i32 @send__connack(%struct.mosquitto_db* %337, %struct.mosquitto* %338, i32 0, i32 2, %struct.mqtt5__property* null), !dbg !2048
  store i32 2, i32* %19, align 4, !dbg !2049
  br label %802, !dbg !2050

340:                                              ; preds = %331
  %341 = load i8*, i8** %9, align 8, !dbg !2051
  call void @mosquitto__free(i8* %341), !dbg !2053
  store i8* null, i8** %9, align 8, !dbg !2054
  call void @llvm.dbg.declare(metadata i8* %27, metadata !2055, metadata !DIExpression()), !dbg !2056
  %342 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2057
  %343 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %342, i32 0, i32 13, !dbg !2059
  %344 = load %struct.mosquitto__config*, %struct.mosquitto__config** %343, align 8, !dbg !2059
  %345 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %344, i32 0, i32 28, !dbg !2060
  %346 = load i8, i8* %345, align 1, !dbg !2060
  %347 = trunc i8 %346 to i1, !dbg !2060
  br i1 %347, label %348, label %357, !dbg !2061

348:                                              ; preds = %340
  %349 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2062
  %350 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %349, i32 0, i32 34, !dbg !2064
  %351 = load %struct.mosquitto__listener*, %struct.mosquitto__listener** %350, align 8, !dbg !2064
  %352 = getelementptr inbounds %struct.mosquitto__listener, %struct.mosquitto__listener* %351, i32 0, i32 14, !dbg !2065
  %353 = getelementptr inbounds %struct.mosquitto__security_options, %struct.mosquitto__security_options* %352, i32 0, i32 8, !dbg !2066
  %354 = load i8, i8* %353, align 1, !dbg !2066
  %355 = trunc i8 %354 to i1, !dbg !2066
  %356 = zext i1 %355 to i8, !dbg !2067
  store i8 %356, i8* %27, align 1, !dbg !2067
  br label %366, !dbg !2068

357:                                              ; preds = %340
  %358 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2069
  %359 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %358, i32 0, i32 13, !dbg !2071
  %360 = load %struct.mosquitto__config*, %struct.mosquitto__config** %359, align 8, !dbg !2071
  %361 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %360, i32 0, i32 34, !dbg !2072
  %362 = getelementptr inbounds %struct.mosquitto__security_options, %struct.mosquitto__security_options* %361, i32 0, i32 8, !dbg !2073
  %363 = load i8, i8* %362, align 1, !dbg !2073
  %364 = trunc i8 %363 to i1, !dbg !2073
  %365 = zext i1 %364 to i8, !dbg !2074
  store i8 %365, i8* %27, align 1, !dbg !2074
  br label %366

366:                                              ; preds = %357, %348
  %367 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2075
  %368 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %367, i32 0, i32 1, !dbg !2077
  %369 = load i32, i32* %368, align 4, !dbg !2077
  %370 = icmp eq i32 %369, 2, !dbg !2078
  br i1 %370, label %371, label %375, !dbg !2079

371:                                              ; preds = %366
  %372 = load i8, i8* %14, align 1, !dbg !2080
  %373 = zext i8 %372 to i32, !dbg !2080
  %374 = icmp eq i32 %373, 0, !dbg !2081
  br i1 %374, label %380, label %375, !dbg !2082

375:                                              ; preds = %371, %366
  %376 = load i8, i8* %27, align 1, !dbg !2083
  %377 = trunc i8 %376 to i1, !dbg !2083
  %378 = zext i1 %377 to i32, !dbg !2083
  %379 = icmp eq i32 %378, 0, !dbg !2084
  br i1 %379, label %380, label %394, !dbg !2085

380:                                              ; preds = %375, %371
  %381 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2086
  %382 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %381, i32 0, i32 1, !dbg !2089
  %383 = load i32, i32* %382, align 4, !dbg !2089
  %384 = icmp eq i32 %383, 2, !dbg !2090
  br i1 %384, label %385, label %389, !dbg !2091

385:                                              ; preds = %380
  %386 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2092
  %387 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2094
  %388 = call i32 @send__connack(%struct.mosquitto_db* %386, %struct.mosquitto* %387, i32 0, i32 2, %struct.mqtt5__property* null), !dbg !2095
  br label %393, !dbg !2096

389:                                              ; preds = %380
  %390 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2097
  %391 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2099
  %392 = call i32 @send__connack(%struct.mosquitto_db* %390, %struct.mosquitto* %391, i32 0, i32 128, %struct.mqtt5__property* null), !dbg !2100
  br label %393

393:                                              ; preds = %389, %385
  store i32 2, i32* %19, align 4, !dbg !2101
  br label %802, !dbg !2102

394:                                              ; preds = %375
  %395 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2103
  %396 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %395, i32 0, i32 13, !dbg !2106
  %397 = load %struct.mosquitto__config*, %struct.mosquitto__config** %396, align 8, !dbg !2106
  %398 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %397, i32 0, i32 28, !dbg !2107
  %399 = load i8, i8* %398, align 1, !dbg !2107
  %400 = trunc i8 %399 to i1, !dbg !2107
  br i1 %400, label %401, label %415, !dbg !2108

401:                                              ; preds = %394
  %402 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2109
  %403 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %402, i32 0, i32 34, !dbg !2111
  %404 = load %struct.mosquitto__listener*, %struct.mosquitto__listener** %403, align 8, !dbg !2111
  %405 = getelementptr inbounds %struct.mosquitto__listener, %struct.mosquitto__listener* %404, i32 0, i32 14, !dbg !2112
  %406 = getelementptr inbounds %struct.mosquitto__security_options, %struct.mosquitto__security_options* %405, i32 0, i32 9, !dbg !2113
  %407 = load i8*, i8** %406, align 8, !dbg !2113
  %408 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2114
  %409 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %408, i32 0, i32 34, !dbg !2115
  %410 = load %struct.mosquitto__listener*, %struct.mosquitto__listener** %409, align 8, !dbg !2115
  %411 = getelementptr inbounds %struct.mosquitto__listener, %struct.mosquitto__listener* %410, i32 0, i32 14, !dbg !2116
  %412 = getelementptr inbounds %struct.mosquitto__security_options, %struct.mosquitto__security_options* %411, i32 0, i32 10, !dbg !2117
  %413 = load i32, i32* %412, align 8, !dbg !2117
  %414 = call i8* @client_id_gen(i32* %20, i8* %407, i32 %413), !dbg !2118
  store i8* %414, i8** %9, align 8, !dbg !2119
  br label %429, !dbg !2120

415:                                              ; preds = %394
  %416 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2121
  %417 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %416, i32 0, i32 13, !dbg !2123
  %418 = load %struct.mosquitto__config*, %struct.mosquitto__config** %417, align 8, !dbg !2123
  %419 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %418, i32 0, i32 34, !dbg !2124
  %420 = getelementptr inbounds %struct.mosquitto__security_options, %struct.mosquitto__security_options* %419, i32 0, i32 9, !dbg !2125
  %421 = load i8*, i8** %420, align 8, !dbg !2125
  %422 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2126
  %423 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %422, i32 0, i32 13, !dbg !2127
  %424 = load %struct.mosquitto__config*, %struct.mosquitto__config** %423, align 8, !dbg !2127
  %425 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %424, i32 0, i32 34, !dbg !2128
  %426 = getelementptr inbounds %struct.mosquitto__security_options, %struct.mosquitto__security_options* %425, i32 0, i32 10, !dbg !2129
  %427 = load i32, i32* %426, align 8, !dbg !2129
  %428 = call i8* @client_id_gen(i32* %20, i8* %421, i32 %427), !dbg !2130
  store i8* %428, i8** %9, align 8, !dbg !2131
  br label %429

429:                                              ; preds = %415, %401
  %430 = load i8*, i8** %9, align 8, !dbg !2132
  %431 = icmp ne i8* %430, null, !dbg !2132
  br i1 %431, label %433, label %432, !dbg !2134

432:                                              ; preds = %429
  store i32 1, i32* %19, align 4, !dbg !2135
  br label %802, !dbg !2137

433:                                              ; preds = %429
  %434 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2138
  %435 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %434, i32 0, i32 43, !dbg !2139
  store i8 1, i8* %435, align 1, !dbg !2140
  br label %436

436:                                              ; preds = %433
  br label %437

437:                                              ; preds = %436
  br label %438, !dbg !2141

438:                                              ; preds = %437, %328
  %439 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2142
  %440 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %439, i32 0, i32 13, !dbg !2144
  %441 = load %struct.mosquitto__config*, %struct.mosquitto__config** %440, align 8, !dbg !2144
  %442 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %441, i32 0, i32 4, !dbg !2145
  %443 = load i8*, i8** %442, align 8, !dbg !2145
  %444 = icmp ne i8* %443, null, !dbg !2142
  br i1 %444, label %445, label %475, !dbg !2146

445:                                              ; preds = %438
  %446 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2147
  %447 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %446, i32 0, i32 13, !dbg !2150
  %448 = load %struct.mosquitto__config*, %struct.mosquitto__config** %447, align 8, !dbg !2150
  %449 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %448, i32 0, i32 4, !dbg !2151
  %450 = load i8*, i8** %449, align 8, !dbg !2151
  %451 = load i8*, i8** %9, align 8, !dbg !2152
  %452 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2153
  %453 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %452, i32 0, i32 13, !dbg !2154
  %454 = load %struct.mosquitto__config*, %struct.mosquitto__config** %453, align 8, !dbg !2154
  %455 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %454, i32 0, i32 4, !dbg !2155
  %456 = load i8*, i8** %455, align 8, !dbg !2155
  %457 = call i64 @strlen(i8* %456) #9, !dbg !2156
  %458 = call i32 @strncmp(i8* %450, i8* %451, i64 %457) #9, !dbg !2157
  %459 = icmp ne i32 %458, 0, !dbg !2157
  br i1 %459, label %460, label %474, !dbg !2158

460:                                              ; preds = %445
  %461 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2159
  %462 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %461, i32 0, i32 1, !dbg !2162
  %463 = load i32, i32* %462, align 4, !dbg !2162
  %464 = icmp eq i32 %463, 5, !dbg !2163
  br i1 %464, label %465, label %469, !dbg !2164

465:                                              ; preds = %460
  %466 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2165
  %467 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2167
  %468 = call i32 @send__connack(%struct.mosquitto_db* %466, %struct.mosquitto* %467, i32 0, i32 135, %struct.mqtt5__property* null), !dbg !2168
  br label %473, !dbg !2169

469:                                              ; preds = %460
  %470 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2170
  %471 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2172
  %472 = call i32 @send__connack(%struct.mosquitto_db* %470, %struct.mosquitto* %471, i32 0, i32 5, %struct.mqtt5__property* null), !dbg !2173
  br label %473

473:                                              ; preds = %469, %465
  store i32 1, i32* %19, align 4, !dbg !2174
  br label %802, !dbg !2175

474:                                              ; preds = %445
  br label %475, !dbg !2176

475:                                              ; preds = %474, %438
  %476 = load i8, i8* %11, align 1, !dbg !2177
  %477 = icmp ne i8 %476, 0, !dbg !2177
  br i1 %477, label %478, label %488, !dbg !2179

478:                                              ; preds = %475
  %479 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2180
  %480 = load i8, i8* %13, align 1, !dbg !2182
  %481 = load i8, i8* %12, align 1, !dbg !2183
  %482 = zext i8 %481 to i32, !dbg !2183
  %483 = call i32 @will__read(%struct.mosquitto* %479, %struct.mosquitto_message_all** %10, i8 zeroext %480, i32 %482), !dbg !2184
  store i32 %483, i32* %19, align 4, !dbg !2185
  %484 = load i32, i32* %19, align 4, !dbg !2186
  %485 = icmp ne i32 %484, 0, !dbg !2186
  br i1 %485, label %486, label %487, !dbg !2188

486:                                              ; preds = %478
  br label %802, !dbg !2189

487:                                              ; preds = %478
  br label %509, !dbg !2190

488:                                              ; preds = %475
  %489 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2191
  %490 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %489, i32 0, i32 1, !dbg !2194
  %491 = load i32, i32* %490, align 4, !dbg !2194
  %492 = icmp eq i32 %491, 2, !dbg !2195
  br i1 %492, label %498, label %493, !dbg !2196

493:                                              ; preds = %488
  %494 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2197
  %495 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %494, i32 0, i32 1, !dbg !2198
  %496 = load i32, i32* %495, align 4, !dbg !2198
  %497 = icmp eq i32 %496, 5, !dbg !2199
  br i1 %497, label %498, label %508, !dbg !2200

498:                                              ; preds = %493, %488
  %499 = load i8, i8* %13, align 1, !dbg !2201
  %500 = zext i8 %499 to i32, !dbg !2201
  %501 = icmp ne i32 %500, 0, !dbg !2204
  br i1 %501, label %506, label %502, !dbg !2205

502:                                              ; preds = %498
  %503 = load i8, i8* %12, align 1, !dbg !2206
  %504 = zext i8 %503 to i32, !dbg !2206
  %505 = icmp ne i32 %504, 0, !dbg !2207
  br i1 %505, label %506, label %507, !dbg !2208

506:                                              ; preds = %502, %498
  store i32 2, i32* %19, align 4, !dbg !2209
  br label %802, !dbg !2211

507:                                              ; preds = %502
  br label %508, !dbg !2212

508:                                              ; preds = %507, %493
  br label %509

509:                                              ; preds = %508, %487
  %510 = load i8, i8* %15, align 1, !dbg !2213
  %511 = icmp ne i8 %510, 0, !dbg !2213
  br i1 %511, label %512, label %532, !dbg !2215

512:                                              ; preds = %509
  %513 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2216
  %514 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %513, i32 0, i32 12, !dbg !2218
  %515 = call i32 @packet__read_string(%struct.mosquitto__packet* %514, i8** %17, i32* %20), !dbg !2219
  store i32 %515, i32* %19, align 4, !dbg !2220
  %516 = load i32, i32* %19, align 4, !dbg !2221
  %517 = icmp eq i32 %516, 1, !dbg !2223
  br i1 %517, label %518, label %519, !dbg !2224

518:                                              ; preds = %512
  store i32 1, i32* %19, align 4, !dbg !2225
  br label %802, !dbg !2227

519:                                              ; preds = %512
  %520 = load i32, i32* %19, align 4, !dbg !2228
  %521 = icmp ne i32 %520, 0, !dbg !2230
  br i1 %521, label %522, label %530, !dbg !2231

522:                                              ; preds = %519
  %523 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2232
  %524 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %523, i32 0, i32 1, !dbg !2235
  %525 = load i32, i32* %524, align 4, !dbg !2235
  %526 = icmp eq i32 %525, 1, !dbg !2236
  br i1 %526, label %527, label %528, !dbg !2237

527:                                              ; preds = %522
  store i8 0, i8* %15, align 1, !dbg !2238
  br label %529, !dbg !2240

528:                                              ; preds = %522
  store i32 2, i32* %19, align 4, !dbg !2241
  br label %802, !dbg !2243

529:                                              ; preds = %527
  br label %530, !dbg !2244

530:                                              ; preds = %529, %519
  br label %531

531:                                              ; preds = %530
  br label %550, !dbg !2245

532:                                              ; preds = %509
  %533 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2246
  %534 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %533, i32 0, i32 1, !dbg !2249
  %535 = load i32, i32* %534, align 4, !dbg !2249
  %536 = icmp eq i32 %535, 2, !dbg !2250
  br i1 %536, label %542, label %537, !dbg !2251

537:                                              ; preds = %532
  %538 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2252
  %539 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %538, i32 0, i32 1, !dbg !2253
  %540 = load i32, i32* %539, align 4, !dbg !2253
  %541 = icmp eq i32 %540, 1, !dbg !2254
  br i1 %541, label %542, label %549, !dbg !2255

542:                                              ; preds = %537, %532
  %543 = load i8, i8* %16, align 1, !dbg !2256
  %544 = icmp ne i8 %543, 0, !dbg !2256
  br i1 %544, label %545, label %548, !dbg !2259

545:                                              ; preds = %542
  %546 = load i8*, i8** %9, align 8, !dbg !2260
  %547 = call i32 (%struct.mosquitto*, i32, i8*, ...) @log__printf(%struct.mosquitto* null, i32 8, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.18, i32 0, i32 0), i8* %546), !dbg !2262
  store i32 2, i32* %19, align 4, !dbg !2263
  br label %802, !dbg !2264

548:                                              ; preds = %542
  br label %549, !dbg !2265

549:                                              ; preds = %548, %537
  br label %550

550:                                              ; preds = %549, %531
  %551 = load i8, i8* %16, align 1, !dbg !2266
  %552 = icmp ne i8 %551, 0, !dbg !2266
  br i1 %552, label %553, label %573, !dbg !2268

553:                                              ; preds = %550
  %554 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2269
  %555 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %554, i32 0, i32 12, !dbg !2271
  %556 = call i32 @packet__read_binary(%struct.mosquitto__packet* %555, i8** %18, i32* %20), !dbg !2272
  store i32 %556, i32* %19, align 4, !dbg !2273
  %557 = load i32, i32* %19, align 4, !dbg !2274
  %558 = icmp eq i32 %557, 1, !dbg !2276
  br i1 %558, label %559, label %560, !dbg !2277

559:                                              ; preds = %553
  store i32 1, i32* %19, align 4, !dbg !2278
  br label %802, !dbg !2280

560:                                              ; preds = %553
  %561 = load i32, i32* %19, align 4, !dbg !2281
  %562 = icmp eq i32 %561, 2, !dbg !2283
  br i1 %562, label %563, label %571, !dbg !2284

563:                                              ; preds = %560
  %564 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2285
  %565 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %564, i32 0, i32 1, !dbg !2288
  %566 = load i32, i32* %565, align 4, !dbg !2288
  %567 = icmp eq i32 %566, 1, !dbg !2289
  br i1 %567, label %568, label %569, !dbg !2290

568:                                              ; preds = %563
  br label %570, !dbg !2291

569:                                              ; preds = %563
  store i32 2, i32* %19, align 4, !dbg !2293
  br label %802, !dbg !2295

570:                                              ; preds = %568
  br label %571, !dbg !2296

571:                                              ; preds = %570, %560
  br label %572

572:                                              ; preds = %571
  br label %573, !dbg !2297

573:                                              ; preds = %572, %550
  %574 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2298
  %575 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %574, i32 0, i32 12, !dbg !2300
  %576 = getelementptr inbounds %struct.mosquitto__packet, %struct.mosquitto__packet* %575, i32 0, i32 6, !dbg !2301
  %577 = load i32, i32* %576, align 8, !dbg !2301
  %578 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2302
  %579 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %578, i32 0, i32 12, !dbg !2303
  %580 = getelementptr inbounds %struct.mosquitto__packet, %struct.mosquitto__packet* %579, i32 0, i32 3, !dbg !2304
  %581 = load i32, i32* %580, align 4, !dbg !2304
  %582 = icmp ne i32 %577, %581, !dbg !2305
  br i1 %582, label %583, label %584, !dbg !2306

583:                                              ; preds = %573
  store i32 2, i32* %19, align 4, !dbg !2307
  br label %802, !dbg !2309

584:                                              ; preds = %573
  %585 = load i8, i8* %15, align 1, !dbg !2310
  %586 = zext i8 %585 to i32, !dbg !2310
  %587 = icmp ne i32 %586, 0, !dbg !2310
  br i1 %587, label %592, label %588, !dbg !2312

588:                                              ; preds = %584
  %589 = load i8, i8* %16, align 1, !dbg !2313
  %590 = zext i8 %589 to i32, !dbg !2313
  %591 = icmp ne i32 %590, 0, !dbg !2313
  br i1 %591, label %592, label %636, !dbg !2314

592:                                              ; preds = %588, %584
  %593 = load i8*, i8** %9, align 8, !dbg !2315
  %594 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2317
  %595 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %594, i32 0, i32 3, !dbg !2318
  store i8* %593, i8** %595, align 8, !dbg !2319
  %596 = load i8*, i8** %17, align 8, !dbg !2320
  %597 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2321
  %598 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %597, i32 0, i32 4, !dbg !2322
  store i8* %596, i8** %598, align 8, !dbg !2323
  %599 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2324
  %600 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2325
  %601 = load i8*, i8** %17, align 8, !dbg !2326
  %602 = load i8*, i8** %18, align 8, !dbg !2327
  %603 = call i32 @mosquitto_unpwd_check(%struct.mosquitto_db* %599, %struct.mosquitto* %600, i8* %601, i8* %602), !dbg !2328
  store i32 %603, i32* %19, align 4, !dbg !2329
  %604 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2330
  %605 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %604, i32 0, i32 4, !dbg !2331
  store i8* null, i8** %605, align 8, !dbg !2332
  %606 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2333
  %607 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %606, i32 0, i32 3, !dbg !2334
  store i8* null, i8** %607, align 8, !dbg !2335
  %608 = load i32, i32* %19, align 4, !dbg !2336
  switch i32 %608, label %626 [
    i32 0, label %609
    i32 11, label %610
  ], !dbg !2337

609:                                              ; preds = %592
  br label %629, !dbg !2338

610:                                              ; preds = %592
  %611 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2340
  %612 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %611, i32 0, i32 1, !dbg !2342
  %613 = load i32, i32* %612, align 4, !dbg !2342
  %614 = icmp eq i32 %613, 5, !dbg !2343
  br i1 %614, label %615, label %619, !dbg !2344

615:                                              ; preds = %610
  %616 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2345
  %617 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2347
  %618 = call i32 @send__connack(%struct.mosquitto_db* %616, %struct.mosquitto* %617, i32 0, i32 135, %struct.mqtt5__property* null), !dbg !2348
  br label %623, !dbg !2349

619:                                              ; preds = %610
  %620 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2350
  %621 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2352
  %622 = call i32 @send__connack(%struct.mosquitto_db* %620, %struct.mosquitto* %621, i32 0, i32 5, %struct.mqtt5__property* null), !dbg !2353
  br label %623

623:                                              ; preds = %619, %615
  %624 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2354
  %625 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2355
  call void @context__disconnect(%struct.mosquitto_db* %624, %struct.mosquitto* %625), !dbg !2356
  store i32 1, i32* %19, align 4, !dbg !2357
  br label %802, !dbg !2358

626:                                              ; preds = %592
  %627 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2359
  %628 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2360
  call void @context__disconnect(%struct.mosquitto_db* %627, %struct.mosquitto* %628), !dbg !2361
  store i32 1, i32* %19, align 4, !dbg !2362
  br label %802, !dbg !2363

629:                                              ; preds = %609
  %630 = load i8*, i8** %17, align 8, !dbg !2364
  %631 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2365
  %632 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %631, i32 0, i32 4, !dbg !2366
  store i8* %630, i8** %632, align 8, !dbg !2367
  %633 = load i8*, i8** %18, align 8, !dbg !2368
  %634 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2369
  %635 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %634, i32 0, i32 5, !dbg !2370
  store i8* %633, i8** %635, align 8, !dbg !2371
  store i8* null, i8** %17, align 8, !dbg !2372
  store i8* null, i8** %18, align 8, !dbg !2373
  br label %683, !dbg !2374

636:                                              ; preds = %588
  %637 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2375
  %638 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %637, i32 0, i32 13, !dbg !2378
  %639 = load %struct.mosquitto__config*, %struct.mosquitto__config** %638, align 8, !dbg !2378
  %640 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %639, i32 0, i32 28, !dbg !2379
  %641 = load i8, i8* %640, align 1, !dbg !2379
  %642 = trunc i8 %641 to i1, !dbg !2379
  br i1 %642, label %643, label %652, !dbg !2380

643:                                              ; preds = %636
  %644 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2381
  %645 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %644, i32 0, i32 34, !dbg !2382
  %646 = load %struct.mosquitto__listener*, %struct.mosquitto__listener** %645, align 8, !dbg !2382
  %647 = getelementptr inbounds %struct.mosquitto__listener, %struct.mosquitto__listener* %646, i32 0, i32 14, !dbg !2383
  %648 = getelementptr inbounds %struct.mosquitto__security_options, %struct.mosquitto__security_options* %647, i32 0, i32 7, !dbg !2384
  %649 = load i8, i8* %648, align 4, !dbg !2384
  %650 = sext i8 %649 to i32, !dbg !2381
  %651 = icmp eq i32 %650, 0, !dbg !2385
  br i1 %651, label %668, label %652, !dbg !2386

652:                                              ; preds = %643, %636
  %653 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2387
  %654 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %653, i32 0, i32 13, !dbg !2388
  %655 = load %struct.mosquitto__config*, %struct.mosquitto__config** %654, align 8, !dbg !2388
  %656 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %655, i32 0, i32 28, !dbg !2389
  %657 = load i8, i8* %656, align 1, !dbg !2389
  %658 = trunc i8 %657 to i1, !dbg !2389
  br i1 %658, label %682, label %659, !dbg !2390

659:                                              ; preds = %652
  %660 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2391
  %661 = getelementptr inbounds %struct.mosquitto_db, %struct.mosquitto_db* %660, i32 0, i32 13, !dbg !2392
  %662 = load %struct.mosquitto__config*, %struct.mosquitto__config** %661, align 8, !dbg !2392
  %663 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %662, i32 0, i32 34, !dbg !2393
  %664 = getelementptr inbounds %struct.mosquitto__security_options, %struct.mosquitto__security_options* %663, i32 0, i32 7, !dbg !2394
  %665 = load i8, i8* %664, align 4, !dbg !2394
  %666 = sext i8 %665 to i32, !dbg !2391
  %667 = icmp eq i32 %666, 0, !dbg !2395
  br i1 %667, label %668, label %682, !dbg !2396

668:                                              ; preds = %659, %643
  %669 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2397
  %670 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %669, i32 0, i32 1, !dbg !2400
  %671 = load i32, i32* %670, align 4, !dbg !2400
  %672 = icmp eq i32 %671, 5, !dbg !2401
  br i1 %672, label %673, label %677, !dbg !2402

673:                                              ; preds = %668
  %674 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2403
  %675 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2405
  %676 = call i32 @send__connack(%struct.mosquitto_db* %674, %struct.mosquitto* %675, i32 0, i32 135, %struct.mqtt5__property* null), !dbg !2406
  br label %681, !dbg !2407

677:                                              ; preds = %668
  %678 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2408
  %679 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2410
  %680 = call i32 @send__connack(%struct.mosquitto_db* %678, %struct.mosquitto* %679, i32 0, i32 5, %struct.mqtt5__property* null), !dbg !2411
  br label %681

681:                                              ; preds = %677, %673
  store i32 1, i32* %19, align 4, !dbg !2412
  br label %802, !dbg !2413

682:                                              ; preds = %659, %652
  br label %683

683:                                              ; preds = %682, %629
  %684 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2414
  %685 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %684, i32 0, i32 34, !dbg !2416
  %686 = load %struct.mosquitto__listener*, %struct.mosquitto__listener** %685, align 8, !dbg !2416
  %687 = getelementptr inbounds %struct.mosquitto__listener, %struct.mosquitto__listener* %686, i32 0, i32 11, !dbg !2417
  %688 = load i8, i8* %687, align 8, !dbg !2417
  %689 = trunc i8 %688 to i1, !dbg !2417
  br i1 %689, label %690, label %720, !dbg !2418

690:                                              ; preds = %683
  %691 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2419
  %692 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %691, i32 0, i32 4, !dbg !2422
  %693 = load i8*, i8** %692, align 8, !dbg !2422
  %694 = icmp ne i8* %693, null, !dbg !2419
  br i1 %694, label %695, label %705, !dbg !2423

695:                                              ; preds = %690
  %696 = load i8*, i8** %9, align 8, !dbg !2424
  call void @mosquitto__free(i8* %696), !dbg !2426
  %697 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2427
  %698 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %697, i32 0, i32 4, !dbg !2428
  %699 = load i8*, i8** %698, align 8, !dbg !2428
  %700 = call i8* @mosquitto__strdup(i8* %699), !dbg !2429
  store i8* %700, i8** %9, align 8, !dbg !2430
  %701 = load i8*, i8** %9, align 8, !dbg !2431
  %702 = icmp ne i8* %701, null, !dbg !2431
  br i1 %702, label %704, label %703, !dbg !2433

703:                                              ; preds = %695
  store i32 1, i32* %19, align 4, !dbg !2434
  br label %802, !dbg !2436

704:                                              ; preds = %695
  br label %719, !dbg !2437

705:                                              ; preds = %690
  %706 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2438
  %707 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %706, i32 0, i32 1, !dbg !2441
  %708 = load i32, i32* %707, align 4, !dbg !2441
  %709 = icmp eq i32 %708, 5, !dbg !2442
  br i1 %709, label %710, label %714, !dbg !2443

710:                                              ; preds = %705
  %711 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2444
  %712 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2446
  %713 = call i32 @send__connack(%struct.mosquitto_db* %711, %struct.mosquitto* %712, i32 0, i32 135, %struct.mqtt5__property* null), !dbg !2447
  br label %718, !dbg !2448

714:                                              ; preds = %705
  %715 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2449
  %716 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2451
  %717 = call i32 @send__connack(%struct.mosquitto_db* %715, %struct.mosquitto* %716, i32 0, i32 5, %struct.mqtt5__property* null), !dbg !2452
  br label %718

718:                                              ; preds = %714, %710
  store i32 1, i32* %19, align 4, !dbg !2453
  br label %802, !dbg !2454

719:                                              ; preds = %704
  br label %720, !dbg !2455

720:                                              ; preds = %719, %683
  %721 = load i8, i8* %14, align 1, !dbg !2456
  %722 = icmp ne i8 %721, 0, !dbg !2456
  %723 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2457
  %724 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %723, i32 0, i32 24, !dbg !2458
  %725 = zext i1 %722 to i8, !dbg !2459
  store i8 %725, i8* %724, align 2, !dbg !2459
  %726 = load i8*, i8** %9, align 8, !dbg !2460
  %727 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2461
  %728 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %727, i32 0, i32 3, !dbg !2462
  store i8* %726, i8** %728, align 8, !dbg !2463
  %729 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %10, align 8, !dbg !2464
  %730 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2465
  %731 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %730, i32 0, i32 15, !dbg !2466
  store %struct.mosquitto_message_all* %729, %struct.mosquitto_message_all** %731, align 8, !dbg !2467
  %732 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2468
  %733 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %732, i32 0, i32 38, !dbg !2470
  %734 = load i8*, i8** %733, align 8, !dbg !2470
  %735 = icmp ne i8* %734, null, !dbg !2468
  br i1 %735, label %736, label %798, !dbg !2471

736:                                              ; preds = %720
  %737 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2472
  %738 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2474
  %739 = load i8*, i8** %23, align 8, !dbg !2475
  %740 = load i16, i16* %24, align 2, !dbg !2476
  %741 = call i32 @mosquitto_security_auth_start(%struct.mosquitto_db* %737, %struct.mosquitto* %738, i1 zeroext false, i8* %739, i16 zeroext %740, i8** %25, i16* %26), !dbg !2477
  store i32 %741, i32* %19, align 4, !dbg !2478
  %742 = load i8*, i8** %23, align 8, !dbg !2479
  call void @mosquitto__free(i8* %742), !dbg !2480
  %743 = load i32, i32* %19, align 4, !dbg !2481
  %744 = icmp eq i32 %743, 0, !dbg !2483
  br i1 %744, label %745, label %751, !dbg !2484

745:                                              ; preds = %736
  %746 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2485
  %747 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2487
  %748 = load i8*, i8** %25, align 8, !dbg !2488
  %749 = load i16, i16* %26, align 2, !dbg !2489
  %750 = call i32 @connect__on_authorised(%struct.mosquitto_db* %746, %struct.mosquitto* %747, i8* %748, i16 zeroext %749), !dbg !2490
  store i32 %750, i32* %3, align 4, !dbg !2491
  br label %824, !dbg !2491

751:                                              ; preds = %736
  %752 = load i32, i32* %19, align 4, !dbg !2492
  %753 = icmp eq i32 %752, -4, !dbg !2494
  br i1 %753, label %754, label %764, !dbg !2495

754:                                              ; preds = %751
  %755 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2496
  %756 = call i32 @mosquitto__set_state(%struct.mosquitto* %755, i32 20), !dbg !2498
  %757 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2499
  %758 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2500
  %759 = load i8*, i8** %25, align 8, !dbg !2501
  %760 = load i16, i16* %26, align 2, !dbg !2502
  %761 = call i32 @send__auth(%struct.mosquitto_db* %757, %struct.mosquitto* %758, i32 24, i8* %759, i16 zeroext %760), !dbg !2503
  store i32 %761, i32* %19, align 4, !dbg !2504
  %762 = load i8*, i8** %25, align 8, !dbg !2505
  call void @free(i8* %762) #10, !dbg !2506
  %763 = load i32, i32* %19, align 4, !dbg !2507
  store i32 %763, i32* %3, align 4, !dbg !2508
  br label %824, !dbg !2508

764:                                              ; preds = %751
  %765 = load i8*, i8** %25, align 8, !dbg !2509
  call void @free(i8* %765) #10, !dbg !2511
  %766 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2512
  %767 = call i32 @will__clear(%struct.mosquitto* %766), !dbg !2513
  %768 = load i32, i32* %19, align 4, !dbg !2514
  %769 = icmp eq i32 %768, 11, !dbg !2516
  br i1 %769, label %770, label %779, !dbg !2517

770:                                              ; preds = %764
  %771 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2518
  %772 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2520
  %773 = call i32 @send__connack(%struct.mosquitto_db* %771, %struct.mosquitto* %772, i32 0, i32 135, %struct.mqtt5__property* null), !dbg !2521
  %774 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2522
  %775 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %774, i32 0, i32 3, !dbg !2523
  %776 = load i8*, i8** %775, align 8, !dbg !2523
  call void @mosquitto__free(i8* %776), !dbg !2524
  %777 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2525
  %778 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %777, i32 0, i32 3, !dbg !2526
  store i8* null, i8** %778, align 8, !dbg !2527
  store i32 2, i32* %3, align 4, !dbg !2528
  br label %824, !dbg !2528

779:                                              ; preds = %764
  %780 = load i32, i32* %19, align 4, !dbg !2529
  %781 = icmp eq i32 %780, 10, !dbg !2531
  br i1 %781, label %782, label %791, !dbg !2532

782:                                              ; preds = %779
  %783 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2533
  %784 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2535
  %785 = call i32 @send__connack(%struct.mosquitto_db* %783, %struct.mosquitto* %784, i32 0, i32 140, %struct.mqtt5__property* null), !dbg !2536
  %786 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2537
  %787 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %786, i32 0, i32 3, !dbg !2538
  %788 = load i8*, i8** %787, align 8, !dbg !2538
  call void @mosquitto__free(i8* %788), !dbg !2539
  %789 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2540
  %790 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %789, i32 0, i32 3, !dbg !2541
  store i8* null, i8** %790, align 8, !dbg !2542
  store i32 2, i32* %3, align 4, !dbg !2543
  br label %824, !dbg !2543

791:                                              ; preds = %779
  %792 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2544
  %793 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %792, i32 0, i32 3, !dbg !2546
  %794 = load i8*, i8** %793, align 8, !dbg !2546
  call void @mosquitto__free(i8* %794), !dbg !2547
  %795 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2548
  %796 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %795, i32 0, i32 3, !dbg !2549
  store i8* null, i8** %796, align 8, !dbg !2550
  %797 = load i32, i32* %19, align 4, !dbg !2551
  store i32 %797, i32* %3, align 4, !dbg !2552
  br label %824, !dbg !2552

798:                                              ; preds = %720
  %799 = load %struct.mosquitto_db*, %struct.mosquitto_db** %4, align 8, !dbg !2553
  %800 = load %struct.mosquitto*, %struct.mosquitto** %5, align 8, !dbg !2555
  %801 = call i32 @connect__on_authorised(%struct.mosquitto_db* %799, %struct.mosquitto* %800, i8* null, i16 zeroext 0), !dbg !2556
  store i32 %801, i32* %3, align 4, !dbg !2557
  br label %824, !dbg !2557

802:                                              ; preds = %718, %703, %681, %626, %623, %583, %569, %559, %545, %528, %518, %506, %486, %473, %432, %393, %336, %327, %309, %298, %290, %246, %212, %196, %189, %172, %159, %100, %74, %65, %57, %48, %38
  %803 = load i8*, i8** %23, align 8, !dbg !2558
  call void @mosquitto__free(i8* %803), !dbg !2559
  %804 = load i8*, i8** %9, align 8, !dbg !2560
  call void @mosquitto__free(i8* %804), !dbg !2561
  %805 = load i8*, i8** %17, align 8, !dbg !2562
  call void @mosquitto__free(i8* %805), !dbg !2563
  %806 = load i8*, i8** %18, align 8, !dbg !2564
  call void @mosquitto__free(i8* %806), !dbg !2565
  %807 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %10, align 8, !dbg !2566
  %808 = icmp ne %struct.mosquitto_message_all* %807, null, !dbg !2566
  br i1 %808, label %809, label %822, !dbg !2568

809:                                              ; preds = %802
  %810 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %10, align 8, !dbg !2569
  %811 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %810, i32 0, i32 2, !dbg !2571
  call void @mosquitto_property_free_all(%struct.mqtt5__property** %811), !dbg !2572
  %812 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %10, align 8, !dbg !2573
  %813 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %812, i32 0, i32 6, !dbg !2574
  %814 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %813, i32 0, i32 2, !dbg !2575
  %815 = load i8*, i8** %814, align 8, !dbg !2575
  call void @mosquitto__free(i8* %815), !dbg !2576
  %816 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %10, align 8, !dbg !2577
  %817 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %816, i32 0, i32 6, !dbg !2578
  %818 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %817, i32 0, i32 1, !dbg !2579
  %819 = load i8*, i8** %818, align 8, !dbg !2579
  call void @mosquitto__free(i8* %819), !dbg !2580
  %820 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %10, align 8, !dbg !2581
  %821 = bitcast %struct.mosquitto_message_all* %820 to i8*, !dbg !2581
  call void @mosquitto__free(i8* %821), !dbg !2582
  br label %822, !dbg !2583

822:                                              ; preds = %809, %802
  %823 = load i32, i32* %19, align 4, !dbg !2584
  store i32 %823, i32* %3, align 4, !dbg !2585
  br label %824, !dbg !2585

824:                                              ; preds = %822, %798, %791, %782, %770, %754, %745, %32
  %825 = load i32, i32* %3, align 4, !dbg !2586
  ret i32 %825, !dbg !2586
}

declare i32 @packet__read_uint16(%struct.mosquitto__packet*, i16*) #2

declare i32 @packet__read_bytes(%struct.mosquitto__packet*, i8*, i32) #2

declare i32 @packet__read_byte(%struct.mosquitto__packet*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @property__read_all(i32, %struct.mosquitto__packet*, %struct.mqtt5__property**) #2

declare i32 @property__process_connect(%struct.mosquitto*, %struct.mqtt5__property**) #2

declare %struct.mqtt5__property* @mosquitto_property_read_string(%struct.mqtt5__property*, i32, i8**, i1 zeroext) #2

declare %struct.mqtt5__property* @mosquitto_property_read_binary(%struct.mqtt5__property*, i32, i8**, i16*, i1 zeroext) #2

declare i32 @packet__read_string(%struct.mosquitto__packet*, i8**, i32*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @client_id_gen(i32* %0, i8* %1, i32 %2) #0 !dbg !2587 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !2591, metadata !DIExpression()), !dbg !2592
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2593, metadata !DIExpression()), !dbg !2594
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2595, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2597, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.declare(metadata [16 x i8]* %9, metadata !2599, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2604, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2606, metadata !DIExpression()), !dbg !2607
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i32 0, i32 0, !dbg !2608
  %13 = call i32 @util__random_bytes(i8* %12, i32 16), !dbg !2610
  %14 = icmp ne i32 %13, 0, !dbg !2610
  br i1 %14, label %15, label %16, !dbg !2611

15:                                               ; preds = %3
  store i8* null, i8** %4, align 8, !dbg !2612
  br label %100, !dbg !2612

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4, !dbg !2613
  %18 = add nsw i32 36, %17, !dbg !2614
  %19 = load i32*, i32** %5, align 8, !dbg !2615
  store i32 %18, i32* %19, align 4, !dbg !2616
  %20 = load i32*, i32** %5, align 8, !dbg !2617
  %21 = load i32, i32* %20, align 4, !dbg !2618
  %22 = add nsw i32 %21, 1, !dbg !2619
  %23 = sext i32 %22 to i64, !dbg !2620
  %24 = call i8* @mosquitto__calloc(i64 %23, i64 1), !dbg !2621
  store i8* %24, i8** %8, align 8, !dbg !2622
  %25 = load i8*, i8** %8, align 8, !dbg !2623
  %26 = icmp ne i8* %25, null, !dbg !2623
  br i1 %26, label %28, label %27, !dbg !2625

27:                                               ; preds = %16
  store i8* null, i8** %4, align 8, !dbg !2626
  br label %100, !dbg !2626

28:                                               ; preds = %16
  %29 = load i8*, i8** %6, align 8, !dbg !2628
  %30 = icmp ne i8* %29, null, !dbg !2628
  br i1 %30, label %31, label %36, !dbg !2630

31:                                               ; preds = %28
  %32 = load i8*, i8** %8, align 8, !dbg !2631
  %33 = load i8*, i8** %6, align 8, !dbg !2633
  %34 = load i32, i32* %7, align 4, !dbg !2634
  %35 = sext i32 %34 to i64, !dbg !2634
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 %35, i1 false), !dbg !2635
  br label %36, !dbg !2636

36:                                               ; preds = %31, %28
  store i32 0, i32* %11, align 4, !dbg !2637
  store i32 0, i32* %10, align 4, !dbg !2638
  br label %37, !dbg !2640

37:                                               ; preds = %95, %36
  %38 = load i32, i32* %10, align 4, !dbg !2641
  %39 = icmp slt i32 %38, 16, !dbg !2643
  br i1 %39, label %40, label %98, !dbg !2644

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4, !dbg !2645
  %42 = sext i32 %41 to i64, !dbg !2647
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 %42, !dbg !2647
  %44 = load i8, i8* %43, align 1, !dbg !2647
  %45 = zext i8 %44 to i32, !dbg !2647
  %46 = and i32 %45, 15, !dbg !2648
  %47 = trunc i32 %46 to i8, !dbg !2647
  %48 = call signext i8 @nibble_to_hex(i8 zeroext %47), !dbg !2649
  %49 = load i8*, i8** %8, align 8, !dbg !2650
  %50 = load i32, i32* %7, align 4, !dbg !2651
  %51 = load i32, i32* %11, align 4, !dbg !2652
  %52 = add nsw i32 %50, %51, !dbg !2653
  %53 = add nsw i32 %52, 0, !dbg !2654
  %54 = sext i32 %53 to i64, !dbg !2650
  %55 = getelementptr inbounds i8, i8* %49, i64 %54, !dbg !2650
  store i8 %48, i8* %55, align 1, !dbg !2655
  %56 = load i32, i32* %10, align 4, !dbg !2656
  %57 = sext i32 %56 to i64, !dbg !2657
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 %57, !dbg !2657
  %59 = load i8, i8* %58, align 1, !dbg !2657
  %60 = zext i8 %59 to i32, !dbg !2657
  %61 = ashr i32 %60, 4, !dbg !2658
  %62 = and i32 %61, 15, !dbg !2659
  %63 = trunc i32 %62 to i8, !dbg !2660
  %64 = call signext i8 @nibble_to_hex(i8 zeroext %63), !dbg !2661
  %65 = load i8*, i8** %8, align 8, !dbg !2662
  %66 = load i32, i32* %7, align 4, !dbg !2663
  %67 = load i32, i32* %11, align 4, !dbg !2664
  %68 = add nsw i32 %66, %67, !dbg !2665
  %69 = add nsw i32 %68, 1, !dbg !2666
  %70 = sext i32 %69 to i64, !dbg !2662
  %71 = getelementptr inbounds i8, i8* %65, i64 %70, !dbg !2662
  store i8 %64, i8* %71, align 1, !dbg !2667
  %72 = load i32, i32* %11, align 4, !dbg !2668
  %73 = add nsw i32 %72, 2, !dbg !2668
  store i32 %73, i32* %11, align 4, !dbg !2668
  %74 = load i32, i32* %11, align 4, !dbg !2669
  %75 = icmp eq i32 %74, 8, !dbg !2671
  br i1 %75, label %85, label %76, !dbg !2672

76:                                               ; preds = %40
  %77 = load i32, i32* %11, align 4, !dbg !2673
  %78 = icmp eq i32 %77, 13, !dbg !2674
  br i1 %78, label %85, label %79, !dbg !2675

79:                                               ; preds = %76
  %80 = load i32, i32* %11, align 4, !dbg !2676
  %81 = icmp eq i32 %80, 18, !dbg !2677
  br i1 %81, label %85, label %82, !dbg !2678

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4, !dbg !2679
  %84 = icmp eq i32 %83, 23, !dbg !2680
  br i1 %84, label %85, label %94, !dbg !2681

85:                                               ; preds = %82, %79, %76, %40
  %86 = load i8*, i8** %8, align 8, !dbg !2682
  %87 = load i32, i32* %7, align 4, !dbg !2684
  %88 = load i32, i32* %11, align 4, !dbg !2685
  %89 = add nsw i32 %87, %88, !dbg !2686
  %90 = sext i32 %89 to i64, !dbg !2682
  %91 = getelementptr inbounds i8, i8* %86, i64 %90, !dbg !2682
  store i8 45, i8* %91, align 1, !dbg !2687
  %92 = load i32, i32* %11, align 4, !dbg !2688
  %93 = add nsw i32 %92, 1, !dbg !2688
  store i32 %93, i32* %11, align 4, !dbg !2688
  br label %94, !dbg !2689

94:                                               ; preds = %85, %82
  br label %95, !dbg !2690

95:                                               ; preds = %94
  %96 = load i32, i32* %10, align 4, !dbg !2691
  %97 = add nsw i32 %96, 1, !dbg !2691
  store i32 %97, i32* %10, align 4, !dbg !2691
  br label %37, !dbg !2692, !llvm.loop !2693

98:                                               ; preds = %37
  %99 = load i8*, i8** %8, align 8, !dbg !2695
  store i8* %99, i8** %4, align 8, !dbg !2696
  br label %100, !dbg !2696

100:                                              ; preds = %98, %27, %15
  %101 = load i8*, i8** %4, align 8, !dbg !2697
  ret i8* %101, !dbg !2697
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @will__read(%struct.mosquitto* %0, %struct.mosquitto_message_all** %1, i8 zeroext %2, i32 %3) #0 !dbg !2698 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mosquitto*, align 8
  %7 = alloca %struct.mosquitto_message_all**, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mosquitto_message_all*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i16, align 2
  %15 = alloca %struct.mqtt5__property*, align 8
  store %struct.mosquitto* %0, %struct.mosquitto** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.mosquitto** %6, metadata !2702, metadata !DIExpression()), !dbg !2703
  store %struct.mosquitto_message_all** %1, %struct.mosquitto_message_all*** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.mosquitto_message_all*** %7, metadata !2704, metadata !DIExpression()), !dbg !2705
  store i8 %2, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !2706, metadata !DIExpression()), !dbg !2707
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2708, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2710, metadata !DIExpression()), !dbg !2711
  store i32 0, i32* %10, align 4, !dbg !2711
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2712, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.declare(metadata %struct.mosquitto_message_all** %12, metadata !2714, metadata !DIExpression()), !dbg !2715
  store %struct.mosquitto_message_all* null, %struct.mosquitto_message_all** %12, align 8, !dbg !2715
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2716, metadata !DIExpression()), !dbg !2717
  store i8* null, i8** %13, align 8, !dbg !2717
  call void @llvm.dbg.declare(metadata i16* %14, metadata !2718, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.declare(metadata %struct.mqtt5__property** %15, metadata !2720, metadata !DIExpression()), !dbg !2721
  store %struct.mqtt5__property* null, %struct.mqtt5__property** %15, align 8, !dbg !2721
  %16 = call i8* @mosquitto__calloc(i64 1, i64 88), !dbg !2722
  %17 = bitcast i8* %16 to %struct.mosquitto_message_all*, !dbg !2722
  store %struct.mosquitto_message_all* %17, %struct.mosquitto_message_all** %12, align 8, !dbg !2723
  %18 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %12, align 8, !dbg !2724
  %19 = icmp ne %struct.mosquitto_message_all* %18, null, !dbg !2724
  br i1 %19, label %21, label %20, !dbg !2726

20:                                               ; preds = %4
  store i32 1, i32* %10, align 4, !dbg !2727
  br label %183, !dbg !2729

21:                                               ; preds = %4
  %22 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !2730
  %23 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %22, i32 0, i32 1, !dbg !2732
  %24 = load i32, i32* %23, align 4, !dbg !2732
  %25 = icmp eq i32 %24, 5, !dbg !2733
  br i1 %25, label %26, label %41, !dbg !2734

26:                                               ; preds = %21
  %27 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !2735
  %28 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %27, i32 0, i32 12, !dbg !2737
  %29 = call i32 @property__read_all(i32 256, %struct.mosquitto__packet* %28, %struct.mqtt5__property** %15), !dbg !2738
  store i32 %29, i32* %10, align 4, !dbg !2739
  %30 = load i32, i32* %10, align 4, !dbg !2740
  %31 = icmp ne i32 %30, 0, !dbg !2740
  br i1 %31, label %32, label %33, !dbg !2742

32:                                               ; preds = %26
  br label %183, !dbg !2743

33:                                               ; preds = %26
  %34 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !2744
  %35 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %12, align 8, !dbg !2745
  %36 = call i32 @property__process_will(%struct.mosquitto* %34, %struct.mosquitto_message_all* %35, %struct.mqtt5__property** %15), !dbg !2746
  store i32 %36, i32* %10, align 4, !dbg !2747
  call void @mosquitto_property_free_all(%struct.mqtt5__property** %15), !dbg !2748
  %37 = load i32, i32* %10, align 4, !dbg !2749
  %38 = icmp ne i32 %37, 0, !dbg !2749
  br i1 %38, label %39, label %40, !dbg !2751

39:                                               ; preds = %33
  br label %183, !dbg !2752

40:                                               ; preds = %33
  br label %41, !dbg !2753

41:                                               ; preds = %40, %21
  %42 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !2754
  %43 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %42, i32 0, i32 12, !dbg !2755
  %44 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %12, align 8, !dbg !2756
  %45 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %44, i32 0, i32 6, !dbg !2757
  %46 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %45, i32 0, i32 1, !dbg !2758
  %47 = call i32 @packet__read_string(%struct.mosquitto__packet* %43, i8** %46, i32* %11), !dbg !2759
  store i32 %47, i32* %10, align 4, !dbg !2760
  %48 = load i32, i32* %10, align 4, !dbg !2761
  %49 = icmp ne i32 %48, 0, !dbg !2761
  br i1 %49, label %50, label %51, !dbg !2763

50:                                               ; preds = %41
  br label %183, !dbg !2764

51:                                               ; preds = %41
  %52 = load i32, i32* %11, align 4, !dbg !2765
  %53 = icmp ne i32 %52, 0, !dbg !2765
  br i1 %53, label %55, label %54, !dbg !2767

54:                                               ; preds = %51
  store i32 2, i32* %10, align 4, !dbg !2768
  br label %183, !dbg !2770

55:                                               ; preds = %51
  %56 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !2771
  %57 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %56, i32 0, i32 34, !dbg !2773
  %58 = load %struct.mosquitto__listener*, %struct.mosquitto__listener** %57, align 8, !dbg !2773
  %59 = getelementptr inbounds %struct.mosquitto__listener, %struct.mosquitto__listener* %58, i32 0, i32 5, !dbg !2774
  %60 = load i8*, i8** %59, align 8, !dbg !2774
  %61 = icmp ne i8* %60, null, !dbg !2771
  br i1 %61, label %62, label %110, !dbg !2775

62:                                               ; preds = %55
  %63 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !2776
  %64 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %63, i32 0, i32 34, !dbg !2778
  %65 = load %struct.mosquitto__listener*, %struct.mosquitto__listener** %64, align 8, !dbg !2778
  %66 = getelementptr inbounds %struct.mosquitto__listener, %struct.mosquitto__listener* %65, i32 0, i32 5, !dbg !2779
  %67 = load i8*, i8** %66, align 8, !dbg !2779
  %68 = call i64 @strlen(i8* %67) #9, !dbg !2780
  %69 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %12, align 8, !dbg !2781
  %70 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %69, i32 0, i32 6, !dbg !2782
  %71 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %70, i32 0, i32 1, !dbg !2783
  %72 = load i8*, i8** %71, align 8, !dbg !2783
  %73 = call i64 @strlen(i8* %72) #9, !dbg !2784
  %74 = add i64 %68, %73, !dbg !2785
  %75 = add i64 %74, 1, !dbg !2786
  %76 = trunc i64 %75 to i32, !dbg !2780
  store i32 %76, i32* %11, align 4, !dbg !2787
  %77 = load i32, i32* %11, align 4, !dbg !2788
  %78 = add nsw i32 %77, 1, !dbg !2789
  %79 = sext i32 %78 to i64, !dbg !2788
  %80 = call i8* @mosquitto__malloc(i64 %79), !dbg !2790
  store i8* %80, i8** %13, align 8, !dbg !2791
  %81 = load i8*, i8** %13, align 8, !dbg !2792
  %82 = icmp ne i8* %81, null, !dbg !2792
  br i1 %82, label %84, label %83, !dbg !2794

83:                                               ; preds = %62
  store i32 1, i32* %10, align 4, !dbg !2795
  br label %183, !dbg !2797

84:                                               ; preds = %62
  %85 = load i8*, i8** %13, align 8, !dbg !2798
  %86 = load i32, i32* %11, align 4, !dbg !2799
  %87 = sext i32 %86 to i64, !dbg !2799
  %88 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !2800
  %89 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %88, i32 0, i32 34, !dbg !2801
  %90 = load %struct.mosquitto__listener*, %struct.mosquitto__listener** %89, align 8, !dbg !2801
  %91 = getelementptr inbounds %struct.mosquitto__listener, %struct.mosquitto__listener* %90, i32 0, i32 5, !dbg !2802
  %92 = load i8*, i8** %91, align 8, !dbg !2802
  %93 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %12, align 8, !dbg !2803
  %94 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %93, i32 0, i32 6, !dbg !2804
  %95 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %94, i32 0, i32 1, !dbg !2805
  %96 = load i8*, i8** %95, align 8, !dbg !2805
  %97 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %85, i64 %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* %92, i8* %96) #10, !dbg !2806
  %98 = load i8*, i8** %13, align 8, !dbg !2807
  %99 = load i32, i32* %11, align 4, !dbg !2808
  %100 = sext i32 %99 to i64, !dbg !2807
  %101 = getelementptr inbounds i8, i8* %98, i64 %100, !dbg !2807
  store i8 0, i8* %101, align 1, !dbg !2809
  %102 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %12, align 8, !dbg !2810
  %103 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %102, i32 0, i32 6, !dbg !2811
  %104 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %103, i32 0, i32 1, !dbg !2812
  %105 = load i8*, i8** %104, align 8, !dbg !2812
  call void @mosquitto__free(i8* %105), !dbg !2813
  %106 = load i8*, i8** %13, align 8, !dbg !2814
  %107 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %12, align 8, !dbg !2815
  %108 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %107, i32 0, i32 6, !dbg !2816
  %109 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %108, i32 0, i32 1, !dbg !2817
  store i8* %106, i8** %109, align 8, !dbg !2818
  br label %110, !dbg !2819

110:                                              ; preds = %84, %55
  %111 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %12, align 8, !dbg !2820
  %112 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %111, i32 0, i32 6, !dbg !2821
  %113 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %112, i32 0, i32 1, !dbg !2822
  %114 = load i8*, i8** %113, align 8, !dbg !2822
  %115 = call i32 @mosquitto_pub_topic_check(i8* %114), !dbg !2823
  store i32 %115, i32* %10, align 4, !dbg !2824
  %116 = load i32, i32* %10, align 4, !dbg !2825
  %117 = icmp ne i32 %116, 0, !dbg !2825
  br i1 %117, label %118, label %119, !dbg !2827

118:                                              ; preds = %110
  br label %183, !dbg !2828

119:                                              ; preds = %110
  %120 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !2829
  %121 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %120, i32 0, i32 12, !dbg !2830
  %122 = call i32 @packet__read_uint16(%struct.mosquitto__packet* %121, i16* %14), !dbg !2831
  store i32 %122, i32* %10, align 4, !dbg !2832
  %123 = load i32, i32* %10, align 4, !dbg !2833
  %124 = icmp ne i32 %123, 0, !dbg !2833
  br i1 %124, label %125, label %126, !dbg !2835

125:                                              ; preds = %119
  br label %183, !dbg !2836

126:                                              ; preds = %119
  %127 = load i16, i16* %14, align 2, !dbg !2837
  %128 = zext i16 %127 to i32, !dbg !2837
  %129 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %12, align 8, !dbg !2838
  %130 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %129, i32 0, i32 6, !dbg !2839
  %131 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %130, i32 0, i32 3, !dbg !2840
  store i32 %128, i32* %131, align 8, !dbg !2841
  %132 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %12, align 8, !dbg !2842
  %133 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %132, i32 0, i32 6, !dbg !2844
  %134 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %133, i32 0, i32 3, !dbg !2845
  %135 = load i32, i32* %134, align 8, !dbg !2845
  %136 = icmp sgt i32 %135, 0, !dbg !2846
  br i1 %136, label %137, label %169, !dbg !2847

137:                                              ; preds = %126
  %138 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %12, align 8, !dbg !2848
  %139 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %138, i32 0, i32 6, !dbg !2850
  %140 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %139, i32 0, i32 3, !dbg !2851
  %141 = load i32, i32* %140, align 8, !dbg !2851
  %142 = sext i32 %141 to i64, !dbg !2848
  %143 = call i8* @mosquitto__malloc(i64 %142), !dbg !2852
  %144 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %12, align 8, !dbg !2853
  %145 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %144, i32 0, i32 6, !dbg !2854
  %146 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %145, i32 0, i32 2, !dbg !2855
  store i8* %143, i8** %146, align 8, !dbg !2856
  %147 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %12, align 8, !dbg !2857
  %148 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %147, i32 0, i32 6, !dbg !2859
  %149 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %148, i32 0, i32 2, !dbg !2860
  %150 = load i8*, i8** %149, align 8, !dbg !2860
  %151 = icmp ne i8* %150, null, !dbg !2857
  br i1 %151, label %153, label %152, !dbg !2861

152:                                              ; preds = %137
  store i32 1, i32* %10, align 4, !dbg !2862
  br label %183, !dbg !2864

153:                                              ; preds = %137
  %154 = load %struct.mosquitto*, %struct.mosquitto** %6, align 8, !dbg !2865
  %155 = getelementptr inbounds %struct.mosquitto, %struct.mosquitto* %154, i32 0, i32 12, !dbg !2866
  %156 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %12, align 8, !dbg !2867
  %157 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %156, i32 0, i32 6, !dbg !2868
  %158 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %157, i32 0, i32 2, !dbg !2869
  %159 = load i8*, i8** %158, align 8, !dbg !2869
  %160 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %12, align 8, !dbg !2870
  %161 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %160, i32 0, i32 6, !dbg !2871
  %162 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %161, i32 0, i32 3, !dbg !2872
  %163 = load i32, i32* %162, align 8, !dbg !2872
  %164 = call i32 @packet__read_bytes(%struct.mosquitto__packet* %155, i8* %159, i32 %163), !dbg !2873
  store i32 %164, i32* %10, align 4, !dbg !2874
  %165 = load i32, i32* %10, align 4, !dbg !2875
  %166 = icmp ne i32 %165, 0, !dbg !2875
  br i1 %166, label %167, label %168, !dbg !2877

167:                                              ; preds = %153
  br label %183, !dbg !2878

168:                                              ; preds = %153
  br label %169, !dbg !2879

169:                                              ; preds = %168, %126
  %170 = load i8, i8* %8, align 1, !dbg !2880
  %171 = zext i8 %170 to i32, !dbg !2880
  %172 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %12, align 8, !dbg !2881
  %173 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %172, i32 0, i32 6, !dbg !2882
  %174 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %173, i32 0, i32 4, !dbg !2883
  store i32 %171, i32* %174, align 4, !dbg !2884
  %175 = load i32, i32* %9, align 4, !dbg !2885
  %176 = icmp ne i32 %175, 0, !dbg !2885
  %177 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %12, align 8, !dbg !2886
  %178 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %177, i32 0, i32 6, !dbg !2887
  %179 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %178, i32 0, i32 5, !dbg !2888
  %180 = zext i1 %176 to i8, !dbg !2889
  store i8 %180, i8* %179, align 8, !dbg !2889
  %181 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %12, align 8, !dbg !2890
  %182 = load %struct.mosquitto_message_all**, %struct.mosquitto_message_all*** %7, align 8, !dbg !2891
  store %struct.mosquitto_message_all* %181, %struct.mosquitto_message_all** %182, align 8, !dbg !2892
  store i32 0, i32* %5, align 4, !dbg !2893
  br label %201, !dbg !2893

183:                                              ; preds = %167, %152, %125, %118, %83, %54, %50, %39, %32, %20
  %184 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %12, align 8, !dbg !2894
  %185 = icmp ne %struct.mosquitto_message_all* %184, null, !dbg !2894
  br i1 %185, label %186, label %199, !dbg !2896

186:                                              ; preds = %183
  %187 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %12, align 8, !dbg !2897
  %188 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %187, i32 0, i32 6, !dbg !2899
  %189 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %188, i32 0, i32 1, !dbg !2900
  %190 = load i8*, i8** %189, align 8, !dbg !2900
  call void @mosquitto__free(i8* %190), !dbg !2901
  %191 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %12, align 8, !dbg !2902
  %192 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %191, i32 0, i32 6, !dbg !2903
  %193 = getelementptr inbounds %struct.mosquitto_message, %struct.mosquitto_message* %192, i32 0, i32 2, !dbg !2904
  %194 = load i8*, i8** %193, align 8, !dbg !2904
  call void @mosquitto__free(i8* %194), !dbg !2905
  %195 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %12, align 8, !dbg !2906
  %196 = getelementptr inbounds %struct.mosquitto_message_all, %struct.mosquitto_message_all* %195, i32 0, i32 2, !dbg !2907
  call void @mosquitto_property_free_all(%struct.mqtt5__property** %196), !dbg !2908
  %197 = load %struct.mosquitto_message_all*, %struct.mosquitto_message_all** %12, align 8, !dbg !2909
  %198 = bitcast %struct.mosquitto_message_all* %197 to i8*, !dbg !2909
  call void @mosquitto__free(i8* %198), !dbg !2910
  br label %199, !dbg !2911

199:                                              ; preds = %186, %183
  %200 = load i32, i32* %10, align 4, !dbg !2912
  store i32 %200, i32* %5, align 4, !dbg !2913
  br label %201, !dbg !2913

201:                                              ; preds = %199, %169
  %202 = load i32, i32* %5, align 4, !dbg !2914
  ret i32 %202, !dbg !2914
}

declare i32 @packet__read_binary(%struct.mosquitto__packet*, i8**, i32*) #2

declare i32 @mosquitto_unpwd_check(%struct.mosquitto_db*, %struct.mosquitto*, i8*, i8*) #2

declare void @context__disconnect(%struct.mosquitto_db*, %struct.mosquitto*) #2

declare i8* @mosquitto__strdup(i8*) #2

declare i32 @mosquitto_security_auth_start(%struct.mosquitto_db*, %struct.mosquitto*, i1 zeroext, i8*, i16 zeroext, i8**, i16*) #2

declare i32 @send__auth(%struct.mosquitto_db*, %struct.mosquitto*, i32, i8*, i16 zeroext) #2

declare i32 @util__random_bytes(i8*, i32) #2

declare i8* @mosquitto__calloc(i64, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @nibble_to_hex(i8 zeroext %0) #0 !dbg !2915 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !2918, metadata !DIExpression()), !dbg !2919
  %4 = load i8, i8* %3, align 1, !dbg !2920
  %5 = zext i8 %4 to i32, !dbg !2920
  %6 = icmp slt i32 %5, 10, !dbg !2922
  br i1 %6, label %7, label %12, !dbg !2923

7:                                                ; preds = %1
  %8 = load i8, i8* %3, align 1, !dbg !2924
  %9 = zext i8 %8 to i32, !dbg !2924
  %10 = add nsw i32 48, %9, !dbg !2926
  %11 = trunc i32 %10 to i8, !dbg !2927
  store i8 %11, i8* %2, align 1, !dbg !2928
  br label %18, !dbg !2928

12:                                               ; preds = %1
  %13 = load i8, i8* %3, align 1, !dbg !2929
  %14 = zext i8 %13 to i32, !dbg !2929
  %15 = add nsw i32 65, %14, !dbg !2931
  %16 = sub nsw i32 %15, 10, !dbg !2932
  %17 = trunc i32 %16 to i8, !dbg !2933
  store i8 %17, i8* %2, align 1, !dbg !2934
  br label %18, !dbg !2934

18:                                               ; preds = %12, %7
  %19 = load i8, i8* %2, align 1, !dbg !2935
  ret i8 %19, !dbg !2935
}

declare i32 @property__process_will(%struct.mosquitto*, %struct.mosquitto_message_all*, %struct.mqtt5__property**) #2

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #5

declare i32 @mosquitto_pub_topic_check(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { argmemonly nounwind willreturn writeonly }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!723, !724, !725}
!llvm.ident = !{!726}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !189)
!1 = !DIFile(filename: "handle_connect.c", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!2 = !{!3, !11, !34, !48, !54, !60, !66, !70, !104, !134, !142}
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
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mqtt311_connack_codes", file: !105, line: 49, size: 32, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141}
!136 = !DIEnumerator(name: "CONNACK_ACCEPTED", value: 0)
!137 = !DIEnumerator(name: "CONNACK_REFUSED_PROTOCOL_VERSION", value: 1)
!138 = !DIEnumerator(name: "CONNACK_REFUSED_IDENTIFIER_REJECTED", value: 2)
!139 = !DIEnumerator(name: "CONNACK_REFUSED_SERVER_UNAVAILABLE", value: 3)
!140 = !DIEnumerator(name: "CONNACK_REFUSED_BAD_USERNAME_PASSWORD", value: 4)
!141 = !DIEnumerator(name: "CONNACK_REFUSED_NOT_AUTHORIZED", value: 5)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mqtt5_return_codes", file: !105, line: 59, size: 32, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!144 = !DIEnumerator(name: "MQTT_RC_SUCCESS", value: 0)
!145 = !DIEnumerator(name: "MQTT_RC_NORMAL_DISCONNECTION", value: 0)
!146 = !DIEnumerator(name: "MQTT_RC_GRANTED_QOS0", value: 0)
!147 = !DIEnumerator(name: "MQTT_RC_GRANTED_QOS1", value: 1)
!148 = !DIEnumerator(name: "MQTT_RC_GRANTED_QOS2", value: 2)
!149 = !DIEnumerator(name: "MQTT_RC_DISCONNECT_WITH_WILL_MSG", value: 4)
!150 = !DIEnumerator(name: "MQTT_RC_NO_MATCHING_SUBSCRIBERS", value: 16)
!151 = !DIEnumerator(name: "MQTT_RC_NO_SUBSCRIPTION_EXISTED", value: 17)
!152 = !DIEnumerator(name: "MQTT_RC_CONTINUE_AUTHENTICATION", value: 24)
!153 = !DIEnumerator(name: "MQTT_RC_REAUTHENTICATE", value: 25)
!154 = !DIEnumerator(name: "MQTT_RC_UNSPECIFIED", value: 128)
!155 = !DIEnumerator(name: "MQTT_RC_MALFORMED_PACKET", value: 129)
!156 = !DIEnumerator(name: "MQTT_RC_PROTOCOL_ERROR", value: 130)
!157 = !DIEnumerator(name: "MQTT_RC_IMPLEMENTATION_SPECIFIC", value: 131)
!158 = !DIEnumerator(name: "MQTT_RC_UNSUPPORTED_PROTOCOL_VERSION", value: 132)
!159 = !DIEnumerator(name: "MQTT_RC_CLIENTID_NOT_VALID", value: 133)
!160 = !DIEnumerator(name: "MQTT_RC_BAD_USERNAME_OR_PASSWORD", value: 134)
!161 = !DIEnumerator(name: "MQTT_RC_NOT_AUTHORIZED", value: 135)
!162 = !DIEnumerator(name: "MQTT_RC_SERVER_UNAVAILABLE", value: 136)
!163 = !DIEnumerator(name: "MQTT_RC_SERVER_BUSY", value: 137)
!164 = !DIEnumerator(name: "MQTT_RC_BANNED", value: 138)
!165 = !DIEnumerator(name: "MQTT_RC_SERVER_SHUTTING_DOWN", value: 139)
!166 = !DIEnumerator(name: "MQTT_RC_BAD_AUTHENTICATION_METHOD", value: 140)
!167 = !DIEnumerator(name: "MQTT_RC_KEEP_ALIVE_TIMEOUT", value: 141)
!168 = !DIEnumerator(name: "MQTT_RC_SESSION_TAKEN_OVER", value: 142)
!169 = !DIEnumerator(name: "MQTT_RC_TOPIC_FILTER_INVALID", value: 143)
!170 = !DIEnumerator(name: "MQTT_RC_TOPIC_NAME_INVALID", value: 144)
!171 = !DIEnumerator(name: "MQTT_RC_PACKET_ID_IN_USE", value: 145)
!172 = !DIEnumerator(name: "MQTT_RC_PACKET_ID_NOT_FOUND", value: 146)
!173 = !DIEnumerator(name: "MQTT_RC_RECEIVE_MAXIMUM_EXCEEDED", value: 147)
!174 = !DIEnumerator(name: "MQTT_RC_TOPIC_ALIAS_INVALID", value: 148)
!175 = !DIEnumerator(name: "MQTT_RC_PACKET_TOO_LARGE", value: 149)
!176 = !DIEnumerator(name: "MQTT_RC_MESSAGE_RATE_TOO_HIGH", value: 150)
!177 = !DIEnumerator(name: "MQTT_RC_QUOTA_EXCEEDED", value: 151)
!178 = !DIEnumerator(name: "MQTT_RC_ADMINISTRATIVE_ACTION", value: 152)
!179 = !DIEnumerator(name: "MQTT_RC_PAYLOAD_FORMAT_INVALID", value: 153)
!180 = !DIEnumerator(name: "MQTT_RC_RETAIN_NOT_SUPPORTED", value: 154)
!181 = !DIEnumerator(name: "MQTT_RC_QOS_NOT_SUPPORTED", value: 155)
!182 = !DIEnumerator(name: "MQTT_RC_USE_ANOTHER_SERVER", value: 156)
!183 = !DIEnumerator(name: "MQTT_RC_SERVER_MOVED", value: 157)
!184 = !DIEnumerator(name: "MQTT_RC_SHARED_SUBS_NOT_SUPPORTED", value: 158)
!185 = !DIEnumerator(name: "MQTT_RC_CONNECTION_RATE_EXCEEDED", value: 159)
!186 = !DIEnumerator(name: "MQTT_RC_MAXIMUM_CONNECT_TIME", value: 160)
!187 = !DIEnumerator(name: "MQTT_RC_SUBSCRIPTION_IDS_NOT_SUPPORTED", value: 161)
!188 = !DIEnumerator(name: "MQTT_RC_WILDCARD_SUBS_NOT_SUPPORTED", value: 162)
!189 = !{!190, !191, !193, !194, !202, !219, !720, !597, !722}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!193 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto", file: !4, line: 207, size: 4032, elements: !196)
!196 = !{!197, !200, !201, !204, !205, !206, !207, !213, !214, !215, !220, !221, !222, !245, !246, !247, !293, !299, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !371, !662, !663, !664, !665, !666, !695, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !719}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !195, file: !4, line: 208, baseType: !198, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "mosq_sock_t", file: !4, line: 70, baseType: !199)
!199 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !195, file: !4, line: 215, baseType: !3, size: 32, offset: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !195, file: !4, line: 216, baseType: !202, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !195, file: !4, line: 217, baseType: !202, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !195, file: !4, line: 218, baseType: !202, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !195, file: !4, line: 219, baseType: !202, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !195, file: !4, line: 220, baseType: !208, size: 16, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !209, line: 25, baseType: !210)
!209 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !211, line: 39, baseType: !212)
!211 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!212 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "last_mid", scope: !195, file: !4, line: 221, baseType: !208, size: 16, offset: 336)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !195, file: !4, line: 222, baseType: !11, size: 32, offset: 352)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "last_msg_in", scope: !195, file: !4, line: 223, baseType: !216, size: 64, offset: 384)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !217, line: 7, baseType: !218)
!217 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !211, line: 148, baseType: !219)
!219 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next_msg_out", scope: !195, file: !4, line: 224, baseType: !216, size: 64, offset: 448)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "ping_t", scope: !195, file: !4, line: 225, baseType: !216, size: 64, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "in_packet", scope: !195, file: !4, line: 226, baseType: !223, size: 320, offset: 576)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__packet", file: !4, line: 150, size: 320, elements: !224)
!224 = !{!225, !229, !231, !234, !235, !236, !237, !238, !239, !240}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !223, file: !4, line: 151, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !209, line: 24, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !211, line: 37, baseType: !192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !223, file: !4, line: 152, baseType: !230, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "remaining_mult", scope: !223, file: !4, line: 153, baseType: !232, size: 32, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !209, line: 26, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !211, line: 41, baseType: !193)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "remaining_length", scope: !223, file: !4, line: 154, baseType: !232, size: 32, offset: 160)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "packet_length", scope: !223, file: !4, line: 155, baseType: !232, size: 32, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "to_process", scope: !223, file: !4, line: 156, baseType: !232, size: 32, offset: 224)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !223, file: !4, line: 157, baseType: !232, size: 32, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "mid", scope: !223, file: !4, line: 158, baseType: !208, size: 16, offset: 288)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !223, file: !4, line: 159, baseType: !227, size: 8, offset: 304)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "remaining_count", scope: !223, file: !4, line: 160, baseType: !241, size: 8, offset: 312)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !242, line: 24, baseType: !243)
!242 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !211, line: 36, baseType: !244)
!244 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "current_out_packet", scope: !195, file: !4, line: 227, baseType: !230, size: 64, offset: 896)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "out_packet", scope: !195, file: !4, line: 228, baseType: !230, size: 64, offset: 960)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "will", scope: !195, file: !4, line: 229, baseType: !248, size: 64, offset: 1024)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_message_all", file: !4, line: 163, size: 704, elements: !250)
!250 = !{!251, !252, !253, !280, !281, !282, !283, !292}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !249, file: !4, line: 164, baseType: !248, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !249, file: !4, line: 165, baseType: !248, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !249, file: !4, line: 166, baseType: !254, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "mosquitto_property", file: !71, line: 135, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt5__property", file: !257, line: 27, size: 384, elements: !258)
!257 = !DIFile(filename: "../lib/property_mosq.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!258 = !{!259, !261, !274, !275, !278}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !257, line: 28, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !256, file: !257, line: 36, baseType: !262, size: 128, offset: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !256, file: !257, line: 29, size: 128, elements: !263)
!263 = !{!264, !265, !266, !267, !268, !273}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "i8", scope: !262, file: !257, line: 30, baseType: !227, size: 8)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "i16", scope: !262, file: !257, line: 31, baseType: !208, size: 16)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "i32", scope: !262, file: !257, line: 32, baseType: !232, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "varint", scope: !262, file: !257, line: 33, baseType: !232, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "bin", scope: !262, file: !257, line: 34, baseType: !269, size: 128)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt__string", file: !257, line: 22, size: 128, elements: !270)
!270 = !{!271, !272}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !269, file: !257, line: 23, baseType: !202, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !269, file: !257, line: 24, baseType: !199, size: 32, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !262, file: !257, line: 35, baseType: !269, size: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !256, file: !257, line: 37, baseType: !269, size: 128, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !256, file: !257, line: 38, baseType: !276, size: 32, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !242, line: 26, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !211, line: 40, baseType: !199)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "client_generated", scope: !256, file: !257, line: 39, baseType: !279, size: 8, offset: 352)
!279 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !249, file: !4, line: 167, baseType: !216, size: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !249, file: !4, line: 169, baseType: !34, size: 32, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !249, file: !4, line: 170, baseType: !279, size: 8, offset: 288)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !249, file: !4, line: 171, baseType: !284, size: 320, offset: 320)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_message", file: !71, line: 125, size: 320, elements: !285)
!285 = !{!286, !287, !288, !289, !290, !291}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mid", scope: !284, file: !71, line: 126, baseType: !199, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !284, file: !71, line: 127, baseType: !202, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !284, file: !71, line: 128, baseType: !190, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "payloadlen", scope: !284, file: !71, line: 129, baseType: !199, size: 32, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !284, file: !71, line: 130, baseType: !199, size: 32, offset: 224)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "retain", scope: !284, file: !71, line: 131, baseType: !279, size: 8, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_interval", scope: !249, file: !4, line: 172, baseType: !232, size: 32, offset: 640)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "aliases", scope: !195, file: !4, line: 230, baseType: !294, size: 64, offset: 1088)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__alias", file: !4, line: 139, size: 128, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !295, file: !4, line: 140, baseType: !202, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !295, file: !4, line: 141, baseType: !208, size: 16, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "will_delay_entry", scope: !195, file: !4, line: 231, baseType: !300, size: 64, offset: 1152)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "will_delay_list", file: !4, line: 182, size: 192, elements: !302)
!302 = !{!303, !304, !305}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !301, file: !4, line: 183, baseType: !194, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !301, file: !4, line: 184, baseType: !300, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !4, line: 185, baseType: !300, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "maximum_packet_size", scope: !195, file: !4, line: 232, baseType: !232, size: 32, offset: 1216)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "alias_count", scope: !195, file: !4, line: 233, baseType: !199, size: 32, offset: 1248)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "will_delay_interval", scope: !195, file: !4, line: 234, baseType: !232, size: 32, offset: 1280)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "will_delay_time", scope: !195, file: !4, line: 235, baseType: !216, size: 64, offset: 1344)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "want_write", scope: !195, file: !4, line: 257, baseType: !279, size: 8, offset: 1408)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "want_connect", scope: !195, file: !4, line: 258, baseType: !279, size: 8, offset: 1416)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "clean_start", scope: !195, file: !4, line: 269, baseType: !279, size: 8, offset: 1424)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "session_expiry_interval", scope: !195, file: !4, line: 270, baseType: !232, size: 32, offset: 1440)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "session_expiry_time", scope: !195, file: !4, line: 271, baseType: !216, size: 64, offset: 1472)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "removed_from_by_id", scope: !195, file: !4, line: 273, baseType: !279, size: 8, offset: 1536)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "is_dropping", scope: !195, file: !4, line: 274, baseType: !279, size: 8, offset: 1544)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "is_bridge", scope: !195, file: !4, line: 275, baseType: !279, size: 8, offset: 1552)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !195, file: !4, line: 276, baseType: !319, size: 64, offset: 1600)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__bridge", file: !49, line: 484, size: 1344, elements: !321)
!321 = !{!322, !323, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !320, file: !49, line: 485, baseType: !202, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "addresses", scope: !320, file: !49, line: 486, baseType: !324, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bridge_address", file: !49, line: 479, size: 128, elements: !326)
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !325, file: !49, line: 480, baseType: !202, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !325, file: !49, line: 481, baseType: !199, size: 32, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "cur_address", scope: !320, file: !49, line: 487, baseType: !199, size: 32, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "address_count", scope: !320, file: !49, line: 488, baseType: !199, size: 32, offset: 160)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "primary_retry", scope: !320, file: !49, line: 489, baseType: !216, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "primary_retry_sock", scope: !320, file: !49, line: 490, baseType: !198, size: 32, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "round_robin", scope: !320, file: !49, line: 491, baseType: !279, size: 8, offset: 288)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "try_private", scope: !320, file: !49, line: 492, baseType: !279, size: 8, offset: 296)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "try_private_accepted", scope: !320, file: !49, line: 493, baseType: !279, size: 8, offset: 304)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "clean_start", scope: !320, file: !49, line: 494, baseType: !279, size: 8, offset: 312)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !320, file: !49, line: 495, baseType: !199, size: 32, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "topics", scope: !320, file: !49, line: 496, baseType: !339, size: 64, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__bridge_topic", file: !49, line: 469, size: 384, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347, !348}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !340, file: !49, line: 470, baseType: !202, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !340, file: !49, line: 471, baseType: !199, size: 32, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !340, file: !49, line: 472, baseType: !48, size: 32, offset: 96)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "local_prefix", scope: !340, file: !49, line: 473, baseType: !202, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "remote_prefix", scope: !340, file: !49, line: 474, baseType: !202, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "local_topic", scope: !340, file: !49, line: 475, baseType: !202, size: 64, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "remote_topic", scope: !340, file: !49, line: 476, baseType: !202, size: 64, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "topic_count", scope: !320, file: !49, line: 497, baseType: !199, size: 32, offset: 448)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "topic_remapping", scope: !320, file: !49, line: 498, baseType: !279, size: 8, offset: 480)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_version", scope: !320, file: !49, line: 499, baseType: !3, size: 32, offset: 512)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "restart_t", scope: !320, file: !49, line: 500, baseType: !216, size: 64, offset: 576)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "remote_clientid", scope: !320, file: !49, line: 501, baseType: !202, size: 64, offset: 640)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "remote_username", scope: !320, file: !49, line: 502, baseType: !202, size: 64, offset: 704)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "remote_password", scope: !320, file: !49, line: 503, baseType: !202, size: 64, offset: 768)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "local_clientid", scope: !320, file: !49, line: 504, baseType: !202, size: 64, offset: 832)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "local_username", scope: !320, file: !49, line: 505, baseType: !202, size: 64, offset: 896)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "local_password", scope: !320, file: !49, line: 506, baseType: !202, size: 64, offset: 960)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "notification_topic", scope: !320, file: !49, line: 507, baseType: !202, size: 64, offset: 1024)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "notifications", scope: !320, file: !49, line: 508, baseType: !279, size: 8, offset: 1088)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "notifications_local_only", scope: !320, file: !49, line: 509, baseType: !279, size: 8, offset: 1096)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "start_type", scope: !320, file: !49, line: 510, baseType: !54, size: 32, offset: 1120)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "idle_timeout", scope: !320, file: !49, line: 511, baseType: !199, size: 32, offset: 1152)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "restart_timeout", scope: !320, file: !49, line: 512, baseType: !199, size: 32, offset: 1184)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "backoff_base", scope: !320, file: !49, line: 513, baseType: !199, size: 32, offset: 1216)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "backoff_cap", scope: !320, file: !49, line: 514, baseType: !199, size: 32, offset: 1248)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "threshold", scope: !320, file: !49, line: 515, baseType: !199, size: 32, offset: 1280)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "lazy_reconnect", scope: !320, file: !49, line: 516, baseType: !279, size: 8, offset: 1312)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "attempt_unsubscribe", scope: !320, file: !49, line: 517, baseType: !279, size: 8, offset: 1320)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "initial_notification_done", scope: !320, file: !49, line: 518, baseType: !279, size: 8, offset: 1328)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "msgs_in", scope: !195, file: !4, line: 277, baseType: !372, size: 384, offset: 1664)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_msg_data", file: !4, line: 188, size: 384, elements: !373)
!373 = !{!374, !655, !656, !657, !658, !659, !660, !661}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "inflight", scope: !372, file: !4, line: 190, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_client_msg", file: !49, line: 382, size: 448, elements: !377)
!377 = !{!378, !379, !380, !647, !648, !649, !650, !651, !652, !653, !654}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !376, file: !49, line: 383, baseType: !375, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !376, file: !49, line: 384, baseType: !375, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !376, file: !49, line: 385, baseType: !381, size: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_msg_store", file: !49, line: 360, size: 896, elements: !383)
!383 = !{!384, !385, !386, !391, !392, !393, !625, !627, !628, !629, !630, !631, !640, !641, !642, !643, !644, !645, !646}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !382, file: !49, line: 361, baseType: !381, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !382, file: !49, line: 362, baseType: !381, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "db_id", scope: !382, file: !49, line: 363, baseType: !387, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "dbid_t", file: !49, line: 135, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !209, line: 27, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !211, line: 44, baseType: !390)
!390 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !382, file: !49, line: 364, baseType: !202, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "source_username", scope: !382, file: !49, line: 365, baseType: !202, size: 64, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "source_listener", scope: !382, file: !49, line: 366, baseType: !394, size: 64, offset: 320)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__listener", file: !49, line: 230, size: 1280, elements: !396)
!396 = !{!397, !398, !399, !400, !401, !402, !403, !405, !406, !407, !408, !409, !410, !411, !412, !581, !624}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !395, file: !49, line: 231, baseType: !199, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !395, file: !49, line: 232, baseType: !208, size: 16, offset: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !395, file: !49, line: 233, baseType: !202, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "bind_interface", scope: !395, file: !49, line: 234, baseType: !202, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "max_connections", scope: !395, file: !49, line: 235, baseType: !199, size: 32, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "mount_point", scope: !395, file: !49, line: 236, baseType: !202, size: 64, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "socks", scope: !395, file: !49, line: 237, baseType: !404, size: 64, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sock_count", scope: !395, file: !49, line: 238, baseType: !199, size: 32, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "client_count", scope: !395, file: !49, line: 239, baseType: !199, size: 32, offset: 416)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !395, file: !49, line: 240, baseType: !60, size: 32, offset: 448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "socket_domain", scope: !395, file: !49, line: 241, baseType: !199, size: 32, offset: 480)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "use_username_as_clientid", scope: !395, file: !49, line: 242, baseType: !279, size: 8, offset: 512)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "maximum_qos", scope: !395, file: !49, line: 243, baseType: !227, size: 8, offset: 520)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "max_topic_alias", scope: !395, file: !49, line: 244, baseType: !208, size: 16, offset: 528)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "security_options", scope: !395, file: !49, line: 268, baseType: !413, size: 576, offset: 576)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__security_options", file: !49, line: 212, size: 576, elements: !414)
!414 = !{!415, !430, !431, !432, !433, !434, !576, !577, !578, !579, !580}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "acl_list", scope: !413, file: !49, line: 217, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__acl_user", file: !49, line: 415, size: 192, elements: !418)
!418 = !{!419, !420, !421}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !417, file: !49, line: 416, baseType: !416, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !417, file: !49, line: 417, baseType: !202, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "acl", scope: !417, file: !49, line: 418, baseType: !422, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__acl", file: !49, line: 407, size: 256, elements: !424)
!424 = !{!425, !426, !427, !428, !429}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !423, file: !49, line: 408, baseType: !422, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !423, file: !49, line: 409, baseType: !202, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !423, file: !49, line: 410, baseType: !199, size: 32, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !423, file: !49, line: 411, baseType: !199, size: 32, offset: 160)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ccount", scope: !423, file: !49, line: 412, baseType: !199, size: 32, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "acl_patterns", scope: !413, file: !49, line: 218, baseType: !422, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "password_file", scope: !413, file: !49, line: 219, baseType: !202, size: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "psk_file", scope: !413, file: !49, line: 220, baseType: !202, size: 64, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "acl_file", scope: !413, file: !49, line: 221, baseType: !202, size: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "auth_plugin_configs", scope: !413, file: !49, line: 222, baseType: !435, size: 64, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__auth_plugin_config", file: !49, line: 202, size: 1920, elements: !437)
!437 = !{!438, !439, !446, !447, !448}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !436, file: !49, line: 204, baseType: !202, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !436, file: !49, line: 205, baseType: !440, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_opt", file: !442, line: 35, size: 128, elements: !443)
!442 = !DIFile(filename: "./mosquitto_plugin.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!443 = !{!444, !445}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !441, file: !442, line: 36, baseType: !202, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !441, file: !442, line: 37, baseType: !202, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "option_count", scope: !436, file: !49, line: 206, baseType: !199, size: 32, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "deny_special_chars", scope: !436, file: !49, line: 207, baseType: !279, size: 8, offset: 160)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "plugin", scope: !436, file: !49, line: 209, baseType: !449, size: 1728, offset: 192)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__auth_plugin", file: !49, line: 169, size: 1728, elements: !450)
!450 = !{!451, !452, !453, !457, !463, !468, !473, !475, !492, !497, !502, !508, !513, !515, !517, !519, !521, !528, !533, !538, !548, !553, !558, !560, !565, !570, !575}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "lib", scope: !449, file: !49, line: 170, baseType: !190, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !449, file: !49, line: 171, baseType: !190, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_version", scope: !449, file: !49, line: 172, baseType: !454, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!199}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_init_v4", scope: !449, file: !49, line: 174, baseType: !458, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_init_v4", file: !49, line: 137, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!199, !462, !440, !199}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_cleanup_v4", scope: !449, file: !49, line: 175, baseType: !464, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_cleanup_v4", file: !49, line: 138, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!199, !190, !440, !199}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "security_init_v4", scope: !449, file: !49, line: 176, baseType: !469, size: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_security_init_v4", file: !49, line: 139, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!199, !190, !440, !199, !279}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "security_cleanup_v4", scope: !449, file: !49, line: 177, baseType: !474, size: 64, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_security_cleanup_v4", file: !49, line: 140, baseType: !470)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "acl_check_v4", scope: !449, file: !49, line: 178, baseType: !476, size: 64, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_acl_check_v4", file: !49, line: 141, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!199, !190, !199, !194, !480}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_acl_msg", file: !442, line: 45, size: 256, elements: !482)
!482 = !{!483, !486, !489, !490, !491}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !481, file: !442, line: 46, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !481, file: !442, line: 47, baseType: !487, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "payloadlen", scope: !481, file: !442, line: 48, baseType: !219, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !481, file: !442, line: 49, baseType: !199, size: 32, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "retain", scope: !481, file: !442, line: 50, baseType: !279, size: 8, offset: 224)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "unpwd_check_v4", scope: !449, file: !49, line: 179, baseType: !493, size: 64, offset: 512)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_unpwd_check_v4", file: !49, line: 142, baseType: !494)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!199, !190, !194, !484, !484}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "psk_key_get_v4", scope: !449, file: !49, line: 180, baseType: !498, size: 64, offset: 576)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_psk_key_get_v4", file: !49, line: 143, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!199, !190, !194, !484, !484, !202, !199}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "auth_start_v4", scope: !449, file: !49, line: 181, baseType: !503, size: 64, offset: 640)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_auth_start_v4", file: !49, line: 144, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!199, !190, !194, !484, !279, !487, !208, !462, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "auth_continue_v4", scope: !449, file: !49, line: 182, baseType: !509, size: 64, offset: 704)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_auth_continue_v4", file: !49, line: 145, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!199, !190, !194, !484, !487, !208, !462, !507}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_init_v3", scope: !449, file: !49, line: 184, baseType: !514, size: 64, offset: 768)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_init_v3", file: !49, line: 147, baseType: !459)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_cleanup_v3", scope: !449, file: !49, line: 185, baseType: !516, size: 64, offset: 832)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_cleanup_v3", file: !49, line: 148, baseType: !465)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "security_init_v3", scope: !449, file: !49, line: 186, baseType: !518, size: 64, offset: 896)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_security_init_v3", file: !49, line: 149, baseType: !470)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "security_cleanup_v3", scope: !449, file: !49, line: 187, baseType: !520, size: 64, offset: 960)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_security_cleanup_v3", file: !49, line: 150, baseType: !470)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "acl_check_v3", scope: !449, file: !49, line: 188, baseType: !522, size: 64, offset: 1024)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_acl_check_v3", file: !49, line: 151, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!199, !190, !199, !526, !480}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "unpwd_check_v3", scope: !449, file: !49, line: 189, baseType: !529, size: 64, offset: 1088)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_unpwd_check_v3", file: !49, line: 152, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!199, !190, !526, !484, !484}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "psk_key_get_v3", scope: !449, file: !49, line: 190, baseType: !534, size: 64, offset: 1152)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_psk_key_get_v3", file: !49, line: 153, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!199, !190, !526, !484, !484, !202, !199}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_init_v2", scope: !449, file: !49, line: 192, baseType: !539, size: 64, offset: 1216)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_init_v2", file: !49, line: 155, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!199, !462, !543, !199}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_auth_opt", file: !442, line: 40, size: 128, elements: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !544, file: !442, line: 41, baseType: !202, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !544, file: !442, line: 42, baseType: !202, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_cleanup_v2", scope: !449, file: !49, line: 193, baseType: !549, size: 64, offset: 1280)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_cleanup_v2", file: !49, line: 156, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!199, !190, !543, !199}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "security_init_v2", scope: !449, file: !49, line: 194, baseType: !554, size: 64, offset: 1344)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_security_init_v2", file: !49, line: 157, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!199, !190, !543, !199, !279}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "security_cleanup_v2", scope: !449, file: !49, line: 195, baseType: !559, size: 64, offset: 1408)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_security_cleanup_v2", file: !49, line: 158, baseType: !555)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "acl_check_v2", scope: !449, file: !49, line: 196, baseType: !561, size: 64, offset: 1472)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_acl_check_v2", file: !49, line: 159, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!199, !190, !484, !484, !484, !199}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "unpwd_check_v2", scope: !449, file: !49, line: 197, baseType: !566, size: 64, offset: 1536)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_unpwd_check_v2", file: !49, line: 160, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!199, !190, !484, !484}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "psk_key_get_v2", scope: !449, file: !49, line: 198, baseType: !571, size: 64, offset: 1600)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_psk_key_get_v2", file: !49, line: 161, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!199, !190, !484, !484, !202, !199}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !449, file: !49, line: 199, baseType: !199, size: 32, offset: 1664)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "auth_plugin_config_count", scope: !413, file: !49, line: 223, baseType: !199, size: 32, offset: 384)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "allow_anonymous", scope: !413, file: !49, line: 224, baseType: !241, size: 8, offset: 416)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "allow_zero_length_clientid", scope: !413, file: !49, line: 225, baseType: !279, size: 8, offset: 424)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "auto_id_prefix", scope: !413, file: !49, line: 226, baseType: !202, size: 64, offset: 448)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "auto_id_prefix_len", scope: !413, file: !49, line: 227, baseType: !199, size: 32, offset: 512)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "unpwd", scope: !395, file: !49, line: 269, baseType: !582, size: 64, offset: 1152)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__unpwd", file: !49, line: 396, size: 576, elements: !584)
!584 = !{!585, !586, !587}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !583, file: !49, line: 397, baseType: !202, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !583, file: !49, line: 398, baseType: !202, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "hh", scope: !583, file: !49, line: 404, baseType: !588, size: 448, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "UT_hash_handle", file: !589, line: 946, baseType: !590)
!589 = !DIFile(filename: "../src/deps/uthash.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UT_hash_handle", file: !589, line: 937, size: 448, elements: !591)
!591 = !{!592, !617, !618, !619, !620, !621, !622, !623}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "tbl", scope: !590, file: !589, line: 938, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UT_hash_table", file: !589, line: 904, size: 512, elements: !595)
!595 = !{!596, !605, !606, !607, !608, !609, !612, !613, !614, !615, !616}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !594, file: !589, line: 905, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "UT_hash_bucket", file: !589, line: 898, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UT_hash_bucket", file: !589, line: 880, size: 128, elements: !600)
!600 = !{!601, !603, !604}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "hh_head", scope: !599, file: !589, line: 881, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !599, file: !589, line: 882, baseType: !193, size: 32, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "expand_mult", scope: !599, file: !589, line: 896, baseType: !193, size: 32, offset: 96)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "num_buckets", scope: !594, file: !589, line: 906, baseType: !193, size: 32, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "log2_num_buckets", scope: !594, file: !589, line: 906, baseType: !193, size: 32, offset: 96)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "num_items", scope: !594, file: !589, line: 907, baseType: !193, size: 32, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !594, file: !589, line: 908, baseType: !602, size: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "hho", scope: !594, file: !589, line: 909, baseType: !610, size: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !611, line: 51, baseType: !219)
!611 = !DIFile(filename: "/usr/lib/llvm-6.0/lib/clang/6.0.0/include/stddef.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ideal_chain_maxlen", scope: !594, file: !589, line: 913, baseType: !193, size: 32, offset: 320)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "nonideal_items", scope: !594, file: !589, line: 918, baseType: !193, size: 32, offset: 352)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "ineff_expands", scope: !594, file: !589, line: 926, baseType: !193, size: 32, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "noexpand", scope: !594, file: !589, line: 926, baseType: !193, size: 32, offset: 416)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !594, file: !589, line: 928, baseType: !232, size: 32, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !590, file: !589, line: 939, baseType: !190, size: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !590, file: !589, line: 940, baseType: !190, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "hh_prev", scope: !590, file: !589, line: 941, baseType: !602, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "hh_next", scope: !590, file: !589, line: 942, baseType: !602, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !590, file: !589, line: 943, baseType: !190, size: 64, offset: 320)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !590, file: !589, line: 944, baseType: !193, size: 32, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "hashv", scope: !590, file: !589, line: 945, baseType: !193, size: 32, offset: 416)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "psk_id", scope: !395, file: !49, line: 270, baseType: !582, size: 64, offset: 1216)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "dest_ids", scope: !382, file: !49, line: 367, baseType: !626, size: 64, offset: 384)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "dest_id_count", scope: !382, file: !49, line: 368, baseType: !199, size: 32, offset: 448)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !382, file: !49, line: 369, baseType: !199, size: 32, offset: 480)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !382, file: !49, line: 370, baseType: !202, size: 64, offset: 512)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !382, file: !49, line: 371, baseType: !254, size: 64, offset: 576)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !382, file: !49, line: 372, baseType: !632, size: 64, offset: 640)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "mosquitto__payload_uhpa", file: !49, line: 125, baseType: !633)
!633 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !49, line: 122, size: 64, elements: !634)
!634 = !{!635, !636}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !633, file: !49, line: 123, baseType: !190, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !633, file: !49, line: 124, baseType: !637, size: 64)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 64, elements: !638)
!638 = !{!639}
!639 = !DISubrange(count: 8)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "message_expiry_time", scope: !382, file: !49, line: 373, baseType: !216, size: 64, offset: 704)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "payloadlen", scope: !382, file: !49, line: 374, baseType: !232, size: 32, offset: 768)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "source_mid", scope: !382, file: !49, line: 375, baseType: !208, size: 16, offset: 800)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "mid", scope: !382, file: !49, line: 376, baseType: !208, size: 16, offset: 816)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !382, file: !49, line: 377, baseType: !227, size: 8, offset: 832)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "retain", scope: !382, file: !49, line: 378, baseType: !279, size: 8, offset: 840)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !382, file: !49, line: 379, baseType: !227, size: 8, offset: 848)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !376, file: !49, line: 386, baseType: !254, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !376, file: !49, line: 387, baseType: !216, size: 64, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "mid", scope: !376, file: !49, line: 388, baseType: !208, size: 16, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !376, file: !49, line: 389, baseType: !227, size: 8, offset: 336)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "retain", scope: !376, file: !49, line: 390, baseType: !279, size: 8, offset: 344)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !376, file: !49, line: 391, baseType: !66, size: 32, offset: 352)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !376, file: !49, line: 392, baseType: !34, size: 32, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !376, file: !49, line: 393, baseType: !279, size: 8, offset: 416)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "queued", scope: !372, file: !4, line: 191, baseType: !375, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "msg_bytes", scope: !372, file: !4, line: 192, baseType: !390, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "msg_bytes12", scope: !372, file: !4, line: 193, baseType: !390, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "msg_count", scope: !372, file: !4, line: 194, baseType: !199, size: 32, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "msg_count12", scope: !372, file: !4, line: 195, baseType: !199, size: 32, offset: 288)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "inflight_quota", scope: !372, file: !4, line: 203, baseType: !199, size: 32, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "inflight_maximum", scope: !372, file: !4, line: 204, baseType: !208, size: 16, offset: 352)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "msgs_out", scope: !195, file: !4, line: 278, baseType: !372, size: 384, offset: 2048)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "acl_list", scope: !195, file: !4, line: 279, baseType: !416, size: 64, offset: 2432)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !195, file: !4, line: 280, baseType: !394, size: 64, offset: 2496)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "out_packet_last", scope: !195, file: !4, line: 281, baseType: !230, size: 64, offset: 2560)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "subs", scope: !195, file: !4, line: 282, baseType: !667, size: 64, offset: 2624)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__subhier", file: !49, line: 343, size: 896, elements: !670)
!670 = !{!671, !672, !673, !674, !685, !692, !693, !694}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "hh", scope: !669, file: !49, line: 344, baseType: !588, size: 448)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !669, file: !49, line: 345, baseType: !668, size: 64, offset: 448)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !669, file: !49, line: 346, baseType: !668, size: 64, offset: 512)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "subs", scope: !669, file: !49, line: 347, baseType: !675, size: 64, offset: 576)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__subleaf", file: !49, line: 320, size: 256, elements: !677)
!677 = !{!678, !679, !680, !681, !682, !683, !684}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !676, file: !49, line: 321, baseType: !675, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !676, file: !49, line: 322, baseType: !675, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !676, file: !49, line: 323, baseType: !194, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !676, file: !49, line: 324, baseType: !232, size: 32, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !676, file: !49, line: 325, baseType: !227, size: 8, offset: 224)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "no_local", scope: !676, file: !49, line: 326, baseType: !279, size: 8, offset: 232)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "retain_as_published", scope: !676, file: !49, line: 327, baseType: !279, size: 8, offset: 240)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !669, file: !49, line: 348, baseType: !686, size: 64, offset: 640)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__subshared", file: !49, line: 337, size: 576, elements: !688)
!688 = !{!689, !690, !691}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "hh", scope: !687, file: !49, line: 338, baseType: !588, size: 448)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !687, file: !49, line: 339, baseType: !202, size: 64, offset: 448)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "subs", scope: !687, file: !49, line: 340, baseType: !675, size: 64, offset: 512)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "retained", scope: !669, file: !49, line: 349, baseType: !381, size: 64, offset: 704)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !669, file: !49, line: 350, baseType: !202, size: 64, offset: 768)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "topic_len", scope: !669, file: !49, line: 351, baseType: !208, size: 16, offset: 832)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "shared_subs", scope: !195, file: !4, line: 283, baseType: !696, size: 64, offset: 2688)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__subshared_ref", file: !49, line: 331, size: 128, elements: !699)
!699 = !{!700, !701}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "hier", scope: !698, file: !49, line: 332, baseType: !668, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !698, file: !49, line: 333, baseType: !686, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "auth_method", scope: !195, file: !4, line: 284, baseType: !202, size: 64, offset: 2752)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "sub_count", scope: !195, file: !4, line: 285, baseType: !199, size: 32, offset: 2816)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "shared_sub_count", scope: !195, file: !4, line: 286, baseType: !199, size: 32, offset: 2848)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "pollfd_index", scope: !195, file: !4, line: 287, baseType: !199, size: 32, offset: 2880)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ws_want_write", scope: !195, file: !4, line: 296, baseType: !279, size: 8, offset: 2912)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "assigned_id", scope: !195, file: !4, line: 297, baseType: !279, size: 8, offset: 2920)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "maximum_qos", scope: !195, file: !4, line: 337, baseType: !227, size: 8, offset: 2928)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "hh_id", scope: !195, file: !4, line: 340, baseType: !588, size: 448, offset: 2944)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "hh_sock", scope: !195, file: !4, line: 341, baseType: !588, size: 448, offset: 3392)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "for_free_next", scope: !195, file: !4, line: 342, baseType: !194, size: 64, offset: 3840)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_list_item", scope: !195, file: !4, line: 343, baseType: !713, size: 64, offset: 3904)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "session_expiry_list", file: !4, line: 144, size: 192, elements: !715)
!715 = !{!716, !717, !718}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !714, file: !4, line: 145, baseType: !194, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !714, file: !4, line: 146, baseType: !713, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !714, file: !4, line: 147, baseType: !713, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "nonce", scope: !195, file: !4, line: 348, baseType: !199, size: 32, offset: 3968)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "UT_hash_table", file: !589, line: 935, baseType: !594)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!723 = !{i32 2, !"Dwarf Version", i32 4}
!724 = !{i32 2, !"Debug Info Version", i32 3}
!725 = !{i32 1, !"wchar_size", i32 4}
!726 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!727 = distinct !DISubprogram(name: "connection_check_acl", scope: !1, file: !1, line: 87, type: !728, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !851)
!728 = !DISubroutineType(types: !729)
!729 = !{null, !730, !194, !850}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_db", file: !49, line: 421, size: 1088, elements: !732)
!732 = !{!733, !734, !735, !736, !737, !738, !739, !740, !743, !744, !751, !752, !753, !754, !846, !847, !848, !849}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "last_db_id", scope: !731, file: !49, line: 422, baseType: !387, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "subs", scope: !731, file: !49, line: 423, baseType: !668, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "unpwd", scope: !731, file: !49, line: 424, baseType: !582, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "psk_id", scope: !731, file: !49, line: 425, baseType: !582, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "contexts_by_id", scope: !731, file: !49, line: 426, baseType: !194, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "contexts_by_sock", scope: !731, file: !49, line: 427, baseType: !194, size: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "contexts_for_free", scope: !731, file: !49, line: 428, baseType: !194, size: 64, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "clientid_index_hash", scope: !731, file: !49, line: 432, baseType: !741, size: 64, offset: 448)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DICompositeType(tag: DW_TAG_structure_type, name: "clientid__index_hash", file: !49, line: 432, flags: DIFlagFwdDecl)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "msg_store", scope: !731, file: !49, line: 433, baseType: !381, size: 64, offset: 512)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "msg_store_load", scope: !731, file: !49, line: 434, baseType: !745, size: 64, offset: 576)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_msg_store_load", file: !49, line: 354, size: 576, elements: !747)
!747 = !{!748, !749, !750}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "hh", scope: !746, file: !49, line: 355, baseType: !588, size: 448)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "db_id", scope: !746, file: !49, line: 356, baseType: !387, size: 64, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !746, file: !49, line: 357, baseType: !381, size: 64, offset: 512)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "msg_store_count", scope: !731, file: !49, line: 438, baseType: !199, size: 32, offset: 640)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "msg_store_bytes", scope: !731, file: !49, line: 439, baseType: !390, size: 64, offset: 704)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "config_file", scope: !731, file: !49, line: 440, baseType: !202, size: 64, offset: 768)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !731, file: !49, line: 441, baseType: !755, size: 64, offset: 832)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__config", file: !49, line: 273, size: 3200, elements: !757)
!757 = !{!758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "allow_duplicate_messages", scope: !756, file: !49, line: 274, baseType: !279, size: 8)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "autosave_interval", scope: !756, file: !49, line: 275, baseType: !199, size: 32, offset: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "autosave_on_changes", scope: !756, file: !49, line: 276, baseType: !279, size: 8, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "check_retain_source", scope: !756, file: !49, line: 277, baseType: !279, size: 8, offset: 72)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "clientid_prefixes", scope: !756, file: !49, line: 278, baseType: !202, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "connection_messages", scope: !756, file: !49, line: 279, baseType: !279, size: 8, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "daemon", scope: !756, file: !49, line: 280, baseType: !279, size: 8, offset: 200)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "default_listener", scope: !756, file: !49, line: 281, baseType: !395, size: 1280, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "listeners", scope: !756, file: !49, line: 282, baseType: !394, size: 64, offset: 1536)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "listener_count", scope: !756, file: !49, line: 283, baseType: !199, size: 32, offset: 1600)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "log_dest", scope: !756, file: !49, line: 284, baseType: !199, size: 32, offset: 1632)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "log_facility", scope: !756, file: !49, line: 285, baseType: !199, size: 32, offset: 1664)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "log_type", scope: !756, file: !49, line: 286, baseType: !199, size: 32, offset: 1696)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "log_timestamp", scope: !756, file: !49, line: 287, baseType: !279, size: 8, offset: 1728)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "log_timestamp_format", scope: !756, file: !49, line: 288, baseType: !202, size: 64, offset: 1792)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "log_file", scope: !756, file: !49, line: 289, baseType: !202, size: 64, offset: 1856)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "log_fptr", scope: !756, file: !49, line: 290, baseType: !775, size: 64, offset: 1920)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !777, line: 7, baseType: !778)
!777 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !779, line: 245, size: 1728, elements: !780)
!779 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/libio.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!780 = !{!781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !801, !802, !803, !804, !806, !807, !808, !812, !815, !817, !818, !819, !820, !821, !823, !824}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !778, file: !779, line: 246, baseType: !199, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !778, file: !779, line: 251, baseType: !202, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !778, file: !779, line: 252, baseType: !202, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !778, file: !779, line: 253, baseType: !202, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !778, file: !779, line: 254, baseType: !202, size: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !778, file: !779, line: 255, baseType: !202, size: 64, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !778, file: !779, line: 256, baseType: !202, size: 64, offset: 384)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !778, file: !779, line: 257, baseType: !202, size: 64, offset: 448)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !778, file: !779, line: 258, baseType: !202, size: 64, offset: 512)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !778, file: !779, line: 260, baseType: !202, size: 64, offset: 576)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !778, file: !779, line: 261, baseType: !202, size: 64, offset: 640)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !778, file: !779, line: 262, baseType: !202, size: 64, offset: 704)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !778, file: !779, line: 264, baseType: !794, size: 64, offset: 768)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !779, line: 160, size: 192, elements: !796)
!796 = !{!797, !798, !800}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !795, file: !779, line: 161, baseType: !794, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !795, file: !779, line: 162, baseType: !799, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !795, file: !779, line: 166, baseType: !199, size: 32, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !778, file: !779, line: 266, baseType: !799, size: 64, offset: 832)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !778, file: !779, line: 268, baseType: !199, size: 32, offset: 896)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !778, file: !779, line: 272, baseType: !199, size: 32, offset: 928)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !778, file: !779, line: 274, baseType: !805, size: 64, offset: 960)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !211, line: 140, baseType: !219)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !778, file: !779, line: 278, baseType: !212, size: 16, offset: 1024)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !778, file: !779, line: 279, baseType: !244, size: 8, offset: 1040)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !778, file: !779, line: 280, baseType: !809, size: 8, offset: 1048)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 8, elements: !810)
!810 = !{!811}
!811 = !DISubrange(count: 1)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !778, file: !779, line: 284, baseType: !813, size: 64, offset: 1088)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !779, line: 154, baseType: null)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !778, file: !779, line: 293, baseType: !816, size: 64, offset: 1152)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !211, line: 141, baseType: !219)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !778, file: !779, line: 301, baseType: !190, size: 64, offset: 1216)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !778, file: !779, line: 302, baseType: !190, size: 64, offset: 1280)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !778, file: !779, line: 303, baseType: !190, size: 64, offset: 1344)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !778, file: !779, line: 304, baseType: !190, size: 64, offset: 1408)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !778, file: !779, line: 306, baseType: !822, size: 64, offset: 1472)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !611, line: 62, baseType: !390)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !778, file: !779, line: 307, baseType: !199, size: 32, offset: 1536)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !778, file: !779, line: 309, baseType: !825, size: 160, offset: 1568)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 160, elements: !826)
!826 = !{!827}
!827 = !DISubrange(count: 20)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "max_inflight_messages", scope: !756, file: !49, line: 291, baseType: !208, size: 16, offset: 1984)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "max_keepalive", scope: !756, file: !49, line: 292, baseType: !208, size: 16, offset: 2000)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "max_packet_size", scope: !756, file: !49, line: 293, baseType: !232, size: 32, offset: 2016)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "message_size_limit", scope: !756, file: !49, line: 294, baseType: !232, size: 32, offset: 2048)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "persistence", scope: !756, file: !49, line: 295, baseType: !279, size: 8, offset: 2080)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_location", scope: !756, file: !49, line: 296, baseType: !202, size: 64, offset: 2112)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_file", scope: !756, file: !49, line: 297, baseType: !202, size: 64, offset: 2176)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_filepath", scope: !756, file: !49, line: 298, baseType: !202, size: 64, offset: 2240)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "persistent_client_expiration", scope: !756, file: !49, line: 299, baseType: !216, size: 64, offset: 2304)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "pid_file", scope: !756, file: !49, line: 300, baseType: !202, size: 64, offset: 2368)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "queue_qos0_messages", scope: !756, file: !49, line: 301, baseType: !279, size: 8, offset: 2432)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "per_listener_settings", scope: !756, file: !49, line: 302, baseType: !279, size: 8, offset: 2440)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "retain_available", scope: !756, file: !49, line: 303, baseType: !279, size: 8, offset: 2448)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "set_tcp_nodelay", scope: !756, file: !49, line: 304, baseType: !279, size: 8, offset: 2456)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "sys_interval", scope: !756, file: !49, line: 305, baseType: !199, size: 32, offset: 2464)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade_outgoing_qos", scope: !756, file: !49, line: 306, baseType: !279, size: 8, offset: 2496)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !756, file: !49, line: 307, baseType: !202, size: 64, offset: 2560)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "security_options", scope: !756, file: !49, line: 317, baseType: !413, size: 576, offset: 2624)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "auth_plugin_count", scope: !731, file: !49, line: 442, baseType: !199, size: 32, offset: 896)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !731, file: !49, line: 443, baseType: !279, size: 8, offset: 928)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_changes", scope: !731, file: !49, line: 449, baseType: !199, size: 32, offset: 960)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ll_for_free", scope: !731, file: !49, line: 450, baseType: !194, size: 64, offset: 1024)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!851 = !{}
!852 = !DILocalVariable(name: "db", arg: 1, scope: !727, file: !1, line: 87, type: !730)
!853 = !DILocation(line: 87, column: 48, scope: !727)
!854 = !DILocalVariable(name: "context", arg: 2, scope: !727, file: !1, line: 87, type: !194)
!855 = !DILocation(line: 87, column: 70, scope: !727)
!856 = !DILocalVariable(name: "head", arg: 3, scope: !727, file: !1, line: 87, type: !850)
!857 = !DILocation(line: 87, column: 109, scope: !727)
!858 = !DILocalVariable(name: "msg_tail", scope: !727, file: !1, line: 89, type: !375)
!859 = !DILocation(line: 89, column: 31, scope: !727)
!860 = !DILocalVariable(name: "tmp", scope: !727, file: !1, line: 89, type: !375)
!861 = !DILocation(line: 89, column: 42, scope: !727)
!862 = !DILocation(line: 91, column: 2, scope: !863)
!863 = distinct !DILexicalBlock(scope: !727, file: !1, line: 91, column: 2)
!864 = !DILocation(line: 91, column: 2, scope: !865)
!865 = distinct !DILexicalBlock(scope: !863, file: !1, line: 91, column: 2)
!866 = !DILocation(line: 92, column: 6, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !1, line: 92, column: 6)
!868 = distinct !DILexicalBlock(scope: !865, file: !1, line: 91, column: 41)
!869 = !DILocation(line: 92, column: 16, scope: !867)
!870 = !DILocation(line: 92, column: 26, scope: !867)
!871 = !DILocation(line: 92, column: 6, scope: !868)
!872 = !DILocation(line: 93, column: 27, scope: !873)
!873 = distinct !DILexicalBlock(scope: !874, file: !1, line: 93, column: 7)
!874 = distinct !DILexicalBlock(scope: !867, file: !1, line: 92, column: 41)
!875 = !DILocation(line: 93, column: 31, scope: !873)
!876 = !DILocation(line: 93, column: 40, scope: !873)
!877 = !DILocation(line: 93, column: 50, scope: !873)
!878 = !DILocation(line: 93, column: 57, scope: !873)
!879 = !DILocation(line: 94, column: 12, scope: !873)
!880 = !DILocation(line: 94, column: 22, scope: !873)
!881 = !DILocation(line: 94, column: 29, scope: !873)
!882 = !DILocation(line: 94, column: 41, scope: !873)
!883 = !DILocation(line: 95, column: 12, scope: !873)
!884 = !DILocation(line: 95, column: 22, scope: !873)
!885 = !DILocation(line: 95, column: 29, scope: !873)
!886 = !DILocation(line: 95, column: 34, scope: !873)
!887 = !DILocation(line: 95, column: 44, scope: !873)
!888 = !DILocation(line: 95, column: 51, scope: !873)
!889 = !DILocation(line: 93, column: 7, scope: !873)
!890 = !DILocation(line: 95, column: 74, scope: !873)
!891 = !DILocation(line: 93, column: 7, scope: !874)
!892 = !DILocation(line: 97, column: 5, scope: !893)
!893 = distinct !DILexicalBlock(scope: !873, file: !1, line: 95, column: 94)
!894 = distinct !{!894, !892, !892}
!895 = !DILocation(line: 97, column: 5, scope: !896)
!896 = distinct !DILexicalBlock(scope: !897, file: !1, line: 97, column: 5)
!897 = distinct !DILexicalBlock(scope: !898, file: !1, line: 97, column: 5)
!898 = distinct !DILexicalBlock(scope: !893, file: !1, line: 97, column: 5)
!899 = !DILocation(line: 97, column: 5, scope: !897)
!900 = !DILocation(line: 97, column: 5, scope: !901)
!901 = distinct !DILexicalBlock(scope: !902, file: !1, line: 97, column: 5)
!902 = distinct !DILexicalBlock(scope: !898, file: !1, line: 97, column: 5)
!903 = !DILocation(line: 97, column: 5, scope: !902)
!904 = !DILocation(line: 97, column: 5, scope: !905)
!905 = distinct !DILexicalBlock(scope: !898, file: !1, line: 97, column: 5)
!906 = !DILocation(line: 97, column: 5, scope: !898)
!907 = !DILocation(line: 97, column: 5, scope: !908)
!908 = distinct !DILexicalBlock(scope: !905, file: !1, line: 97, column: 5)
!909 = !DILocation(line: 97, column: 5, scope: !910)
!910 = distinct !DILexicalBlock(scope: !905, file: !1, line: 97, column: 5)
!911 = !DILocation(line: 97, column: 5, scope: !912)
!912 = distinct !DILexicalBlock(scope: !910, file: !1, line: 97, column: 5)
!913 = !DILocation(line: 97, column: 5, scope: !914)
!914 = distinct !DILexicalBlock(scope: !910, file: !1, line: 97, column: 5)
!915 = !DILocation(line: 97, column: 5, scope: !916)
!916 = distinct !DILexicalBlock(scope: !914, file: !1, line: 97, column: 5)
!917 = !DILocation(line: 97, column: 5, scope: !918)
!918 = distinct !DILexicalBlock(scope: !916, file: !1, line: 97, column: 5)
!919 = !DILocation(line: 97, column: 5, scope: !920)
!920 = distinct !DILexicalBlock(scope: !916, file: !1, line: 97, column: 5)
!921 = !DILocation(line: 98, column: 27, scope: !893)
!922 = !DILocation(line: 98, column: 32, scope: !893)
!923 = !DILocation(line: 98, column: 42, scope: !893)
!924 = !DILocation(line: 98, column: 5, scope: !893)
!925 = !DILocation(line: 99, column: 34, scope: !893)
!926 = !DILocation(line: 99, column: 44, scope: !893)
!927 = !DILocation(line: 99, column: 5, scope: !893)
!928 = !DILocation(line: 100, column: 21, scope: !893)
!929 = !DILocation(line: 100, column: 5, scope: !893)
!930 = !DILocation(line: 101, column: 4, scope: !893)
!931 = !DILocation(line: 102, column: 3, scope: !874)
!932 = !DILocation(line: 103, column: 2, scope: !868)
!933 = distinct !{!933, !862, !934}
!934 = !DILocation(line: 103, column: 2, scope: !863)
!935 = !DILocation(line: 104, column: 1, scope: !727)
!936 = distinct !DISubprogram(name: "connect__on_authorised", scope: !1, file: !1, line: 107, type: !937, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !851)
!937 = !DISubroutineType(types: !938)
!938 = !{!199, !730, !194, !190, !208}
!939 = !DILocalVariable(name: "db", arg: 1, scope: !936, file: !1, line: 107, type: !730)
!940 = !DILocation(line: 107, column: 49, scope: !936)
!941 = !DILocalVariable(name: "context", arg: 2, scope: !936, file: !1, line: 107, type: !194)
!942 = !DILocation(line: 107, column: 71, scope: !936)
!943 = !DILocalVariable(name: "auth_data_out", arg: 3, scope: !936, file: !1, line: 107, type: !190)
!944 = !DILocation(line: 107, column: 86, scope: !936)
!945 = !DILocalVariable(name: "auth_data_out_len", arg: 4, scope: !936, file: !1, line: 107, type: !208)
!946 = !DILocation(line: 107, column: 110, scope: !936)
!947 = !DILocalVariable(name: "found_context", scope: !936, file: !1, line: 109, type: !194)
!948 = !DILocation(line: 109, column: 20, scope: !936)
!949 = !DILocalVariable(name: "leaf", scope: !936, file: !1, line: 110, type: !675)
!950 = !DILocation(line: 110, column: 29, scope: !936)
!951 = !DILocalVariable(name: "connack_props", scope: !936, file: !1, line: 111, type: !254)
!952 = !DILocation(line: 111, column: 22, scope: !936)
!953 = !DILocalVariable(name: "connect_ack", scope: !936, file: !1, line: 112, type: !227)
!954 = !DILocation(line: 112, column: 10, scope: !936)
!955 = !DILocalVariable(name: "i", scope: !936, file: !1, line: 113, type: !199)
!956 = !DILocation(line: 113, column: 6, scope: !936)
!957 = !DILocalVariable(name: "rc", scope: !936, file: !1, line: 114, type: !199)
!958 = !DILocation(line: 114, column: 6, scope: !936)
!959 = !DILocation(line: 117, column: 2, scope: !936)
!960 = distinct !{!960, !959, !959}
!961 = !DILocalVariable(name: "_hf_bkt", scope: !962, file: !1, line: 117, type: !193)
!962 = distinct !DILexicalBlock(scope: !936, file: !1, line: 117, column: 2)
!963 = !DILocation(line: 117, column: 2, scope: !962)
!964 = !DILocalVariable(name: "_hf_hashv", scope: !962, file: !1, line: 117, type: !193)
!965 = !DILocation(line: 117, column: 2, scope: !966)
!966 = distinct !DILexicalBlock(scope: !962, file: !1, line: 117, column: 2)
!967 = !DILocation(line: 117, column: 2, scope: !968)
!968 = distinct !DILexicalBlock(scope: !966, file: !1, line: 117, column: 2)
!969 = distinct !{!969, !967, !967}
!970 = !DILocalVariable(name: "_hj_i", scope: !971, file: !1, line: 117, type: !193)
!971 = distinct !DILexicalBlock(scope: !968, file: !1, line: 117, column: 2)
!972 = !DILocation(line: 117, column: 2, scope: !971)
!973 = !DILocalVariable(name: "_hj_j", scope: !971, file: !1, line: 117, type: !193)
!974 = !DILocalVariable(name: "_hj_k", scope: !971, file: !1, line: 117, type: !193)
!975 = !DILocalVariable(name: "_hj_key", scope: !971, file: !1, line: 117, type: !191)
!976 = !DILocation(line: 117, column: 2, scope: !977)
!977 = distinct !DILexicalBlock(scope: !971, file: !1, line: 117, column: 2)
!978 = distinct !{!978, !976, !976}
!979 = !DILocation(line: 117, column: 2, scope: !980)
!980 = distinct !DILexicalBlock(scope: !977, file: !1, line: 117, column: 2)
!981 = distinct !{!981, !972, !972}
!982 = !DILocation(line: 117, column: 2, scope: !983)
!983 = distinct !DILexicalBlock(scope: !971, file: !1, line: 117, column: 2)
!984 = distinct !{!984, !972, !972}
!985 = !DILocation(line: 117, column: 2, scope: !986)
!986 = distinct !DILexicalBlock(scope: !971, file: !1, line: 117, column: 2)
!987 = !DILocation(line: 117, column: 2, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !1, line: 117, column: 2)
!989 = distinct !DILexicalBlock(scope: !968, file: !1, line: 117, column: 2)
!990 = distinct !{!990, !987, !987}
!991 = !DILocation(line: 117, column: 2, scope: !992)
!992 = distinct !DILexicalBlock(scope: !993, file: !1, line: 117, column: 2)
!993 = distinct !DILexicalBlock(scope: !988, file: !1, line: 117, column: 2)
!994 = !DILocation(line: 117, column: 2, scope: !993)
!995 = distinct !{!995, !991, !991}
!996 = !DILocation(line: 117, column: 2, scope: !997)
!997 = distinct !DILexicalBlock(scope: !992, file: !1, line: 117, column: 2)
!998 = !DILocation(line: 117, column: 2, scope: !999)
!999 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 117, column: 2)
!1000 = distinct !DILexicalBlock(scope: !993, file: !1, line: 117, column: 2)
!1001 = !DILocation(line: 117, column: 2, scope: !1000)
!1002 = !DILocation(line: 117, column: 2, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 117, column: 2)
!1004 = distinct !DILexicalBlock(scope: !999, file: !1, line: 117, column: 2)
!1005 = !DILocation(line: 117, column: 2, scope: !1004)
!1006 = !DILocation(line: 117, column: 2, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 117, column: 2)
!1008 = distinct !{!1008, !1006, !1006}
!1009 = !DILocation(line: 117, column: 2, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 117, column: 2)
!1011 = distinct !{!1011, !994, !994}
!1012 = !DILocation(line: 118, column: 5, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !936, file: !1, line: 118, column: 5)
!1014 = !DILocation(line: 118, column: 5, scope: !936)
!1015 = !DILocation(line: 120, column: 6, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 120, column: 6)
!1017 = distinct !DILexicalBlock(scope: !1013, file: !1, line: 118, column: 19)
!1018 = !DILocation(line: 120, column: 21, scope: !1016)
!1019 = !DILocation(line: 120, column: 26, scope: !1016)
!1020 = !DILocation(line: 120, column: 6, scope: !1017)
!1021 = !DILocation(line: 123, column: 3, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1016, file: !1, line: 120, column: 44)
!1023 = !DILocation(line: 126, column: 7, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !1, line: 126, column: 7)
!1025 = distinct !DILexicalBlock(scope: !1016, file: !1, line: 123, column: 8)
!1026 = !DILocation(line: 126, column: 11, scope: !1024)
!1027 = !DILocation(line: 126, column: 19, scope: !1024)
!1028 = !DILocation(line: 126, column: 39, scope: !1024)
!1029 = !DILocation(line: 126, column: 7, scope: !1025)
!1030 = !DILocation(line: 127, column: 93, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 126, column: 47)
!1032 = !DILocation(line: 127, column: 102, scope: !1031)
!1033 = !DILocation(line: 127, column: 5, scope: !1031)
!1034 = !DILocation(line: 128, column: 4, scope: !1031)
!1035 = !DILocation(line: 131, column: 6, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 131, column: 6)
!1037 = !DILocation(line: 131, column: 15, scope: !1036)
!1038 = !DILocation(line: 131, column: 27, scope: !1036)
!1039 = !DILocation(line: 131, column: 36, scope: !1036)
!1040 = !DILocation(line: 131, column: 39, scope: !1036)
!1041 = !DILocation(line: 131, column: 54, scope: !1036)
!1042 = !DILocation(line: 131, column: 78, scope: !1036)
!1043 = !DILocation(line: 131, column: 6, scope: !1017)
!1044 = !DILocation(line: 132, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 132, column: 7)
!1046 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 131, column: 82)
!1047 = !DILocation(line: 132, column: 16, scope: !1045)
!1048 = !DILocation(line: 132, column: 25, scope: !1045)
!1049 = !DILocation(line: 132, column: 43, scope: !1045)
!1050 = !DILocation(line: 132, column: 46, scope: !1045)
!1051 = !DILocation(line: 132, column: 55, scope: !1045)
!1052 = !DILocation(line: 132, column: 64, scope: !1045)
!1053 = !DILocation(line: 132, column: 7, scope: !1046)
!1054 = !DILocation(line: 133, column: 17, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 132, column: 80)
!1056 = !DILocation(line: 134, column: 4, scope: !1055)
!1057 = !DILocation(line: 136, column: 7, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 136, column: 7)
!1059 = !DILocation(line: 136, column: 22, scope: !1058)
!1060 = !DILocation(line: 136, column: 30, scope: !1058)
!1061 = !DILocation(line: 136, column: 39, scope: !1058)
!1062 = !DILocation(line: 136, column: 42, scope: !1058)
!1063 = !DILocation(line: 136, column: 57, scope: !1058)
!1064 = !DILocation(line: 136, column: 65, scope: !1058)
!1065 = !DILocation(line: 137, column: 6, scope: !1058)
!1066 = !DILocation(line: 137, column: 9, scope: !1058)
!1067 = !DILocation(line: 137, column: 24, scope: !1058)
!1068 = !DILocation(line: 137, column: 33, scope: !1058)
!1069 = !DILocation(line: 137, column: 42, scope: !1058)
!1070 = !DILocation(line: 137, column: 45, scope: !1058)
!1071 = !DILocation(line: 137, column: 60, scope: !1058)
!1072 = !DILocation(line: 137, column: 69, scope: !1058)
!1073 = !DILocation(line: 136, column: 7, scope: !1046)
!1074 = !DILocation(line: 139, column: 13, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 137, column: 76)
!1076 = !DILocation(line: 139, column: 22, scope: !1075)
!1077 = !DILocation(line: 139, column: 5, scope: !1075)
!1078 = !DILocation(line: 139, column: 32, scope: !1075)
!1079 = !DILocation(line: 139, column: 47, scope: !1075)
!1080 = !DILocation(line: 140, column: 13, scope: !1075)
!1081 = !DILocation(line: 140, column: 22, scope: !1075)
!1082 = !DILocation(line: 140, column: 5, scope: !1075)
!1083 = !DILocation(line: 140, column: 33, scope: !1075)
!1084 = !DILocation(line: 140, column: 48, scope: !1075)
!1085 = !DILocation(line: 142, column: 13, scope: !1075)
!1086 = !DILocation(line: 142, column: 28, scope: !1075)
!1087 = !DILocation(line: 142, column: 5, scope: !1075)
!1088 = !DILocation(line: 143, column: 13, scope: !1075)
!1089 = !DILocation(line: 143, column: 28, scope: !1075)
!1090 = !DILocation(line: 143, column: 5, scope: !1075)
!1091 = !DILocation(line: 145, column: 33, scope: !1075)
!1092 = !DILocation(line: 145, column: 37, scope: !1075)
!1093 = !DILocation(line: 145, column: 5, scope: !1075)
!1094 = !DILocation(line: 146, column: 4, scope: !1075)
!1095 = !DILocation(line: 147, column: 20, scope: !1046)
!1096 = !DILocation(line: 147, column: 35, scope: !1046)
!1097 = !DILocation(line: 147, column: 4, scope: !1046)
!1098 = !DILocation(line: 147, column: 13, scope: !1046)
!1099 = !DILocation(line: 147, column: 18, scope: !1046)
!1100 = !DILocation(line: 148, column: 4, scope: !1046)
!1101 = !DILocation(line: 148, column: 19, scope: !1046)
!1102 = !DILocation(line: 148, column: 24, scope: !1046)
!1103 = !DILocation(line: 149, column: 25, scope: !1046)
!1104 = !DILocation(line: 149, column: 40, scope: !1046)
!1105 = !DILocation(line: 149, column: 4, scope: !1046)
!1106 = !DILocation(line: 149, column: 13, scope: !1046)
!1107 = !DILocation(line: 149, column: 23, scope: !1046)
!1108 = !DILocation(line: 150, column: 4, scope: !1046)
!1109 = !DILocation(line: 150, column: 19, scope: !1046)
!1110 = !DILocation(line: 150, column: 29, scope: !1046)
!1111 = !DILocation(line: 151, column: 24, scope: !1046)
!1112 = !DILocation(line: 151, column: 39, scope: !1046)
!1113 = !DILocation(line: 151, column: 4, scope: !1046)
!1114 = !DILocation(line: 151, column: 13, scope: !1046)
!1115 = !DILocation(line: 151, column: 22, scope: !1046)
!1116 = !DILocation(line: 153, column: 9, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 153, column: 4)
!1118 = !DILocation(line: 153, column: 8, scope: !1117)
!1119 = !DILocation(line: 153, column: 13, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1117, file: !1, line: 153, column: 4)
!1121 = !DILocation(line: 153, column: 15, scope: !1120)
!1122 = !DILocation(line: 153, column: 24, scope: !1120)
!1123 = !DILocation(line: 153, column: 14, scope: !1120)
!1124 = !DILocation(line: 153, column: 4, scope: !1117)
!1125 = !DILocation(line: 154, column: 8, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !1, line: 154, column: 8)
!1127 = distinct !DILexicalBlock(scope: !1120, file: !1, line: 153, column: 39)
!1128 = !DILocation(line: 154, column: 17, scope: !1126)
!1129 = !DILocation(line: 154, column: 22, scope: !1126)
!1130 = !DILocation(line: 154, column: 8, scope: !1127)
!1131 = !DILocation(line: 155, column: 13, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1126, file: !1, line: 154, column: 25)
!1133 = !DILocation(line: 155, column: 22, scope: !1132)
!1134 = !DILocation(line: 155, column: 27, scope: !1132)
!1135 = !DILocation(line: 155, column: 31, scope: !1132)
!1136 = !DILocation(line: 155, column: 11, scope: !1132)
!1137 = !DILocation(line: 156, column: 6, scope: !1132)
!1138 = !DILocation(line: 156, column: 12, scope: !1132)
!1139 = !DILocation(line: 157, column: 10, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !1, line: 157, column: 10)
!1141 = distinct !DILexicalBlock(scope: !1132, file: !1, line: 156, column: 17)
!1142 = !DILocation(line: 157, column: 16, scope: !1140)
!1143 = !DILocation(line: 157, column: 27, scope: !1140)
!1144 = !DILocation(line: 157, column: 24, scope: !1140)
!1145 = !DILocation(line: 157, column: 10, scope: !1141)
!1146 = !DILocation(line: 158, column: 24, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 157, column: 41)
!1148 = !DILocation(line: 158, column: 8, scope: !1147)
!1149 = !DILocation(line: 158, column: 14, scope: !1147)
!1150 = !DILocation(line: 158, column: 22, scope: !1147)
!1151 = !DILocation(line: 159, column: 7, scope: !1147)
!1152 = !DILocation(line: 160, column: 14, scope: !1141)
!1153 = !DILocation(line: 160, column: 20, scope: !1141)
!1154 = !DILocation(line: 160, column: 12, scope: !1141)
!1155 = distinct !{!1155, !1137, !1156}
!1156 = !DILocation(line: 161, column: 6, scope: !1132)
!1157 = !DILocation(line: 162, column: 5, scope: !1132)
!1158 = !DILocation(line: 163, column: 4, scope: !1127)
!1159 = !DILocation(line: 153, column: 36, scope: !1120)
!1160 = !DILocation(line: 153, column: 4, scope: !1120)
!1161 = distinct !{!1161, !1124, !1162}
!1162 = !DILocation(line: 163, column: 4, scope: !1117)
!1163 = !DILocation(line: 164, column: 3, scope: !1046)
!1164 = !DILocation(line: 166, column: 26, scope: !1017)
!1165 = !DILocation(line: 166, column: 3, scope: !1017)
!1166 = !DILocation(line: 167, column: 22, scope: !1017)
!1167 = !DILocation(line: 167, column: 3, scope: !1017)
!1168 = !DILocation(line: 168, column: 15, scope: !1017)
!1169 = !DILocation(line: 168, column: 3, scope: !1017)
!1170 = !DILocation(line: 170, column: 3, scope: !1017)
!1171 = !DILocation(line: 170, column: 18, scope: !1017)
!1172 = !DILocation(line: 170, column: 30, scope: !1017)
!1173 = !DILocation(line: 171, column: 3, scope: !1017)
!1174 = !DILocation(line: 171, column: 18, scope: !1017)
!1175 = !DILocation(line: 171, column: 42, scope: !1017)
!1176 = !DILocation(line: 172, column: 24, scope: !1017)
!1177 = !DILocation(line: 172, column: 3, scope: !1017)
!1178 = !DILocation(line: 173, column: 17, scope: !1017)
!1179 = !DILocation(line: 173, column: 21, scope: !1017)
!1180 = !DILocation(line: 173, column: 3, scope: !1017)
!1181 = !DILocation(line: 174, column: 2, scope: !1017)
!1182 = !DILocation(line: 176, column: 22, scope: !936)
!1183 = !DILocation(line: 176, column: 26, scope: !936)
!1184 = !DILocation(line: 176, column: 7, scope: !936)
!1185 = !DILocation(line: 176, column: 5, scope: !936)
!1186 = !DILocation(line: 177, column: 5, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !936, file: !1, line: 177, column: 5)
!1188 = !DILocation(line: 177, column: 5, scope: !936)
!1189 = !DILocation(line: 178, column: 8, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1187, file: !1, line: 177, column: 8)
!1191 = !DILocation(line: 178, column: 3, scope: !1190)
!1192 = !DILocation(line: 179, column: 10, scope: !1190)
!1193 = !DILocation(line: 179, column: 3, scope: !1190)
!1194 = !DILocation(line: 182, column: 5, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !936, file: !1, line: 182, column: 5)
!1196 = !DILocation(line: 182, column: 9, scope: !1195)
!1197 = !DILocation(line: 182, column: 17, scope: !1195)
!1198 = !DILocation(line: 182, column: 37, scope: !1195)
!1199 = !DILocation(line: 182, column: 5, scope: !936)
!1200 = !DILocation(line: 183, column: 6, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !1, line: 183, column: 6)
!1202 = distinct !DILexicalBlock(scope: !1195, file: !1, line: 182, column: 45)
!1203 = !DILocation(line: 183, column: 15, scope: !1201)
!1204 = !DILocation(line: 183, column: 6, scope: !1202)
!1205 = !DILocation(line: 184, column: 7, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !1, line: 184, column: 7)
!1207 = distinct !DILexicalBlock(scope: !1201, file: !1, line: 183, column: 25)
!1208 = !DILocation(line: 184, column: 16, scope: !1206)
!1209 = !DILocation(line: 184, column: 7, scope: !1207)
!1210 = !DILocation(line: 186, column: 7, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1206, file: !1, line: 184, column: 25)
!1212 = !DILocation(line: 186, column: 16, scope: !1211)
!1213 = !DILocation(line: 186, column: 25, scope: !1211)
!1214 = !DILocation(line: 186, column: 34, scope: !1211)
!1215 = !DILocation(line: 186, column: 38, scope: !1211)
!1216 = !DILocation(line: 186, column: 47, scope: !1211)
!1217 = !DILocation(line: 186, column: 57, scope: !1211)
!1218 = !DILocation(line: 186, column: 66, scope: !1211)
!1219 = !DILocation(line: 186, column: 79, scope: !1211)
!1220 = !DILocation(line: 186, column: 88, scope: !1211)
!1221 = !DILocation(line: 186, column: 99, scope: !1211)
!1222 = !DILocation(line: 186, column: 108, scope: !1211)
!1223 = !DILocation(line: 185, column: 5, scope: !1211)
!1224 = !DILocation(line: 187, column: 4, scope: !1211)
!1225 = !DILocation(line: 189, column: 7, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1206, file: !1, line: 187, column: 9)
!1227 = !DILocation(line: 189, column: 16, scope: !1226)
!1228 = !DILocation(line: 189, column: 25, scope: !1226)
!1229 = !DILocation(line: 189, column: 34, scope: !1226)
!1230 = !DILocation(line: 189, column: 38, scope: !1226)
!1231 = !DILocation(line: 189, column: 47, scope: !1226)
!1232 = !DILocation(line: 189, column: 57, scope: !1226)
!1233 = !DILocation(line: 189, column: 66, scope: !1226)
!1234 = !DILocation(line: 189, column: 79, scope: !1226)
!1235 = !DILocation(line: 189, column: 88, scope: !1226)
!1236 = !DILocation(line: 188, column: 5, scope: !1226)
!1237 = !DILocation(line: 191, column: 3, scope: !1207)
!1238 = !DILocation(line: 192, column: 7, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 192, column: 7)
!1240 = distinct !DILexicalBlock(scope: !1201, file: !1, line: 191, column: 8)
!1241 = !DILocation(line: 192, column: 16, scope: !1239)
!1242 = !DILocation(line: 192, column: 7, scope: !1240)
!1243 = !DILocation(line: 194, column: 7, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1239, file: !1, line: 192, column: 25)
!1245 = !DILocation(line: 194, column: 16, scope: !1244)
!1246 = !DILocation(line: 194, column: 25, scope: !1244)
!1247 = !DILocation(line: 194, column: 34, scope: !1244)
!1248 = !DILocation(line: 194, column: 38, scope: !1244)
!1249 = !DILocation(line: 194, column: 47, scope: !1244)
!1250 = !DILocation(line: 194, column: 57, scope: !1244)
!1251 = !DILocation(line: 194, column: 66, scope: !1244)
!1252 = !DILocation(line: 194, column: 79, scope: !1244)
!1253 = !DILocation(line: 194, column: 88, scope: !1244)
!1254 = !DILocation(line: 194, column: 99, scope: !1244)
!1255 = !DILocation(line: 194, column: 108, scope: !1244)
!1256 = !DILocation(line: 193, column: 5, scope: !1244)
!1257 = !DILocation(line: 195, column: 4, scope: !1244)
!1258 = !DILocation(line: 197, column: 7, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1239, file: !1, line: 195, column: 9)
!1260 = !DILocation(line: 197, column: 16, scope: !1259)
!1261 = !DILocation(line: 197, column: 25, scope: !1259)
!1262 = !DILocation(line: 197, column: 34, scope: !1259)
!1263 = !DILocation(line: 197, column: 38, scope: !1259)
!1264 = !DILocation(line: 197, column: 47, scope: !1259)
!1265 = !DILocation(line: 197, column: 57, scope: !1259)
!1266 = !DILocation(line: 197, column: 66, scope: !1259)
!1267 = !DILocation(line: 197, column: 79, scope: !1259)
!1268 = !DILocation(line: 197, column: 88, scope: !1259)
!1269 = !DILocation(line: 196, column: 5, scope: !1259)
!1270 = !DILocation(line: 201, column: 6, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1202, file: !1, line: 201, column: 6)
!1272 = !DILocation(line: 201, column: 15, scope: !1271)
!1273 = !DILocation(line: 201, column: 6, scope: !1202)
!1274 = !DILocation(line: 203, column: 12, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 201, column: 21)
!1276 = !DILocation(line: 203, column: 21, scope: !1275)
!1277 = !DILocation(line: 203, column: 27, scope: !1275)
!1278 = !DILocation(line: 203, column: 31, scope: !1275)
!1279 = !DILocation(line: 203, column: 6, scope: !1275)
!1280 = !DILocation(line: 204, column: 6, scope: !1275)
!1281 = !DILocation(line: 204, column: 15, scope: !1275)
!1282 = !DILocation(line: 204, column: 21, scope: !1275)
!1283 = !DILocation(line: 204, column: 25, scope: !1275)
!1284 = !DILocation(line: 205, column: 6, scope: !1275)
!1285 = !DILocation(line: 205, column: 15, scope: !1275)
!1286 = !DILocation(line: 205, column: 21, scope: !1275)
!1287 = !DILocation(line: 205, column: 25, scope: !1275)
!1288 = !DILocation(line: 202, column: 4, scope: !1275)
!1289 = !DILocation(line: 207, column: 46, scope: !1275)
!1290 = !DILocation(line: 207, column: 55, scope: !1275)
!1291 = !DILocation(line: 207, column: 61, scope: !1275)
!1292 = !DILocation(line: 207, column: 65, scope: !1275)
!1293 = !DILocation(line: 207, column: 4, scope: !1275)
!1294 = !DILocation(line: 208, column: 3, scope: !1275)
!1295 = !DILocation(line: 209, column: 4, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 208, column: 10)
!1297 = !DILocation(line: 211, column: 2, scope: !1202)
!1298 = !DILocation(line: 213, column: 2, scope: !936)
!1299 = !DILocation(line: 213, column: 11, scope: !936)
!1300 = !DILocation(line: 213, column: 18, scope: !936)
!1301 = !DILocation(line: 214, column: 2, scope: !936)
!1302 = !DILocation(line: 214, column: 11, scope: !936)
!1303 = !DILocation(line: 214, column: 23, scope: !936)
!1304 = !DILocation(line: 216, column: 23, scope: !936)
!1305 = !DILocation(line: 216, column: 27, scope: !936)
!1306 = !DILocation(line: 216, column: 37, scope: !936)
!1307 = !DILocation(line: 216, column: 46, scope: !936)
!1308 = !DILocation(line: 216, column: 54, scope: !936)
!1309 = !DILocation(line: 216, column: 2, scope: !936)
!1310 = !DILocation(line: 217, column: 23, scope: !936)
!1311 = !DILocation(line: 217, column: 27, scope: !936)
!1312 = !DILocation(line: 217, column: 37, scope: !936)
!1313 = !DILocation(line: 217, column: 46, scope: !936)
!1314 = !DILocation(line: 217, column: 54, scope: !936)
!1315 = !DILocation(line: 217, column: 2, scope: !936)
!1316 = !DILocation(line: 218, column: 23, scope: !936)
!1317 = !DILocation(line: 218, column: 27, scope: !936)
!1318 = !DILocation(line: 218, column: 37, scope: !936)
!1319 = !DILocation(line: 218, column: 46, scope: !936)
!1320 = !DILocation(line: 218, column: 55, scope: !936)
!1321 = !DILocation(line: 218, column: 2, scope: !936)
!1322 = !DILocation(line: 219, column: 23, scope: !936)
!1323 = !DILocation(line: 219, column: 27, scope: !936)
!1324 = !DILocation(line: 219, column: 37, scope: !936)
!1325 = !DILocation(line: 219, column: 46, scope: !936)
!1326 = !DILocation(line: 219, column: 55, scope: !936)
!1327 = !DILocation(line: 219, column: 2, scope: !936)
!1328 = !DILocation(line: 221, column: 2, scope: !936)
!1329 = distinct !{!1329, !1328, !1328}
!1330 = !DILocalVariable(name: "_ha_bkt", scope: !1331, file: !1, line: 221, type: !193)
!1331 = distinct !DILexicalBlock(scope: !936, file: !1, line: 221, column: 2)
!1332 = !DILocation(line: 221, column: 2, scope: !1331)
!1333 = !DILocation(line: 221, column: 2, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1331, file: !1, line: 221, column: 2)
!1335 = !DILocation(line: 221, column: 2, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1334, file: !1, line: 221, column: 2)
!1337 = distinct !{!1337, !1335, !1335}
!1338 = !DILocation(line: 221, column: 2, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1336, file: !1, line: 221, column: 2)
!1340 = !DILocation(line: 221, column: 2, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1339, file: !1, line: 221, column: 2)
!1342 = !DILocation(line: 221, column: 2, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1341, file: !1, line: 221, column: 2)
!1344 = !DILocation(line: 221, column: 2, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1339, file: !1, line: 221, column: 2)
!1346 = !DILocation(line: 221, column: 2, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1345, file: !1, line: 221, column: 2)
!1348 = !DILocation(line: 221, column: 2, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1334, file: !1, line: 221, column: 2)
!1350 = distinct !{!1350, !1332, !1332}
!1351 = !DILocalVariable(name: "_hj_i", scope: !1352, file: !1, line: 221, type: !193)
!1352 = distinct !DILexicalBlock(scope: !1331, file: !1, line: 221, column: 2)
!1353 = !DILocation(line: 221, column: 2, scope: !1352)
!1354 = !DILocalVariable(name: "_hj_j", scope: !1352, file: !1, line: 221, type: !193)
!1355 = !DILocalVariable(name: "_hj_k", scope: !1352, file: !1, line: 221, type: !193)
!1356 = !DILocalVariable(name: "_hj_key", scope: !1352, file: !1, line: 221, type: !191)
!1357 = !DILocation(line: 221, column: 2, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1352, file: !1, line: 221, column: 2)
!1359 = distinct !{!1359, !1357, !1357}
!1360 = !DILocation(line: 221, column: 2, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1358, file: !1, line: 221, column: 2)
!1362 = distinct !{!1362, !1353, !1353}
!1363 = !DILocation(line: 221, column: 2, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1352, file: !1, line: 221, column: 2)
!1365 = distinct !{!1365, !1353, !1353}
!1366 = !DILocation(line: 221, column: 2, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1352, file: !1, line: 221, column: 2)
!1368 = distinct !{!1368, !1332, !1332}
!1369 = !DILocation(line: 221, column: 2, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1331, file: !1, line: 221, column: 2)
!1371 = !DILocation(line: 221, column: 2, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 221, column: 2)
!1373 = !DILocation(line: 221, column: 2, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1372, file: !1, line: 221, column: 2)
!1375 = !DILocation(line: 221, column: 2, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 221, column: 2)
!1377 = !DILocation(line: 221, column: 2, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1376, file: !1, line: 221, column: 2)
!1379 = distinct !{!1379, !1377, !1377}
!1380 = !DILocalVariable(name: "_he_bkt", scope: !1381, file: !1, line: 221, type: !193)
!1381 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 221, column: 2)
!1382 = !DILocation(line: 221, column: 2, scope: !1381)
!1383 = !DILocalVariable(name: "_he_bkt_i", scope: !1381, file: !1, line: 221, type: !193)
!1384 = !DILocalVariable(name: "_he_thh", scope: !1381, file: !1, line: 221, type: !602)
!1385 = !DILocalVariable(name: "_he_hh_nxt", scope: !1381, file: !1, line: 221, type: !602)
!1386 = !DILocalVariable(name: "_he_new_buckets", scope: !1381, file: !1, line: 221, type: !597)
!1387 = !DILocalVariable(name: "_he_newbkt", scope: !1381, file: !1, line: 221, type: !597)
!1388 = !DILocation(line: 221, column: 2, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 221, column: 2)
!1390 = !DILocation(line: 221, column: 2, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1389, file: !1, line: 221, column: 2)
!1392 = !DILocation(line: 221, column: 2, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 221, column: 2)
!1394 = !DILocation(line: 221, column: 2, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1393, file: !1, line: 221, column: 2)
!1396 = !DILocation(line: 221, column: 2, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1395, file: !1, line: 221, column: 2)
!1398 = !DILocation(line: 221, column: 2, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1397, file: !1, line: 221, column: 2)
!1400 = distinct !{!1400, !1398, !1398}
!1401 = !DILocation(line: 221, column: 2, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1399, file: !1, line: 221, column: 2)
!1403 = !DILocation(line: 221, column: 2, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1399, file: !1, line: 221, column: 2)
!1405 = !DILocation(line: 221, column: 2, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1404, file: !1, line: 221, column: 2)
!1407 = !DILocation(line: 221, column: 2, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1399, file: !1, line: 221, column: 2)
!1409 = distinct !{!1409, !1396, !1396}
!1410 = distinct !{!1410, !1392, !1392}
!1411 = !DILocation(line: 221, column: 2, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 221, column: 2)
!1413 = !DILocation(line: 221, column: 2, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1412, file: !1, line: 221, column: 2)
!1415 = !DILocation(line: 228, column: 25, scope: !936)
!1416 = !DILocation(line: 228, column: 34, scope: !936)
!1417 = !DILocation(line: 228, column: 44, scope: !936)
!1418 = !DILocation(line: 228, column: 2, scope: !936)
!1419 = !DILocation(line: 228, column: 11, scope: !936)
!1420 = !DILocation(line: 228, column: 23, scope: !936)
!1421 = !DILocation(line: 230, column: 5, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !936, file: !1, line: 230, column: 5)
!1423 = !DILocation(line: 230, column: 14, scope: !1422)
!1424 = !DILocation(line: 230, column: 23, scope: !1422)
!1425 = !DILocation(line: 230, column: 5, scope: !936)
!1426 = !DILocation(line: 231, column: 6, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !1, line: 231, column: 6)
!1428 = distinct !DILexicalBlock(scope: !1422, file: !1, line: 230, column: 39)
!1429 = !DILocation(line: 231, column: 15, scope: !1427)
!1430 = !DILocation(line: 231, column: 27, scope: !1427)
!1431 = !DILocation(line: 231, column: 6, scope: !1428)
!1432 = !DILocation(line: 232, column: 74, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !1, line: 232, column: 7)
!1434 = distinct !DILexicalBlock(scope: !1427, file: !1, line: 231, column: 32)
!1435 = !DILocation(line: 232, column: 83, scope: !1433)
!1436 = !DILocation(line: 232, column: 7, scope: !1433)
!1437 = !DILocation(line: 232, column: 7, scope: !1434)
!1438 = !DILocation(line: 233, column: 8, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1433, file: !1, line: 232, column: 96)
!1440 = !DILocation(line: 234, column: 5, scope: !1439)
!1441 = !DILocation(line: 236, column: 3, scope: !1434)
!1442 = !DILocation(line: 237, column: 6, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1428, file: !1, line: 237, column: 6)
!1444 = !DILocation(line: 237, column: 15, scope: !1443)
!1445 = !DILocation(line: 237, column: 25, scope: !1443)
!1446 = !DILocation(line: 237, column: 41, scope: !1443)
!1447 = !DILocation(line: 237, column: 6, scope: !1428)
!1448 = !DILocation(line: 238, column: 83, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !1, line: 238, column: 7)
!1450 = distinct !DILexicalBlock(scope: !1443, file: !1, line: 237, column: 45)
!1451 = !DILocation(line: 238, column: 92, scope: !1449)
!1452 = !DILocation(line: 238, column: 102, scope: !1449)
!1453 = !DILocation(line: 238, column: 7, scope: !1449)
!1454 = !DILocation(line: 238, column: 7, scope: !1450)
!1455 = !DILocation(line: 239, column: 8, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1449, file: !1, line: 238, column: 119)
!1457 = !DILocation(line: 240, column: 5, scope: !1456)
!1458 = !DILocation(line: 242, column: 3, scope: !1450)
!1459 = !DILocation(line: 243, column: 6, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1428, file: !1, line: 243, column: 6)
!1461 = !DILocation(line: 243, column: 15, scope: !1460)
!1462 = !DILocation(line: 243, column: 27, scope: !1460)
!1463 = !DILocation(line: 243, column: 31, scope: !1460)
!1464 = !DILocation(line: 243, column: 39, scope: !1460)
!1465 = !DILocation(line: 243, column: 25, scope: !1460)
!1466 = !DILocation(line: 243, column: 6, scope: !1428)
!1467 = !DILocation(line: 244, column: 25, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 243, column: 53)
!1469 = !DILocation(line: 244, column: 29, scope: !1468)
!1470 = !DILocation(line: 244, column: 37, scope: !1468)
!1471 = !DILocation(line: 244, column: 4, scope: !1468)
!1472 = !DILocation(line: 244, column: 13, scope: !1468)
!1473 = !DILocation(line: 244, column: 23, scope: !1468)
!1474 = !DILocation(line: 245, column: 81, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1468, file: !1, line: 245, column: 7)
!1476 = !DILocation(line: 245, column: 90, scope: !1475)
!1477 = !DILocation(line: 245, column: 7, scope: !1475)
!1478 = !DILocation(line: 245, column: 7, scope: !1468)
!1479 = !DILocation(line: 246, column: 8, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1475, file: !1, line: 245, column: 101)
!1481 = !DILocation(line: 247, column: 5, scope: !1480)
!1482 = !DILocation(line: 249, column: 3, scope: !1468)
!1483 = !DILocation(line: 250, column: 6, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1428, file: !1, line: 250, column: 6)
!1485 = !DILocation(line: 250, column: 15, scope: !1484)
!1486 = !DILocation(line: 250, column: 6, scope: !1428)
!1487 = !DILocation(line: 251, column: 91, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !1, line: 251, column: 7)
!1489 = distinct !DILexicalBlock(scope: !1484, file: !1, line: 250, column: 27)
!1490 = !DILocation(line: 251, column: 100, scope: !1488)
!1491 = !DILocation(line: 251, column: 7, scope: !1488)
!1492 = !DILocation(line: 251, column: 7, scope: !1489)
!1493 = !DILocation(line: 252, column: 8, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1488, file: !1, line: 251, column: 104)
!1495 = !DILocation(line: 253, column: 5, scope: !1494)
!1496 = !DILocation(line: 255, column: 3, scope: !1489)
!1497 = !DILocation(line: 256, column: 6, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1428, file: !1, line: 256, column: 6)
!1499 = !DILocation(line: 256, column: 15, scope: !1498)
!1500 = !DILocation(line: 256, column: 6, scope: !1428)
!1501 = !DILocation(line: 257, column: 86, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !1, line: 257, column: 7)
!1503 = distinct !DILexicalBlock(scope: !1498, file: !1, line: 256, column: 27)
!1504 = !DILocation(line: 257, column: 95, scope: !1502)
!1505 = !DILocation(line: 257, column: 7, scope: !1502)
!1506 = !DILocation(line: 257, column: 7, scope: !1503)
!1507 = !DILocation(line: 258, column: 8, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1502, file: !1, line: 257, column: 108)
!1509 = !DILocation(line: 259, column: 5, scope: !1508)
!1510 = !DILocation(line: 262, column: 7, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1503, file: !1, line: 262, column: 7)
!1512 = !DILocation(line: 262, column: 21, scope: !1511)
!1513 = !DILocation(line: 262, column: 24, scope: !1511)
!1514 = !DILocation(line: 262, column: 42, scope: !1511)
!1515 = !DILocation(line: 262, column: 7, scope: !1503)
!1516 = !DILocation(line: 263, column: 85, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !1, line: 263, column: 8)
!1518 = distinct !DILexicalBlock(scope: !1511, file: !1, line: 262, column: 46)
!1519 = !DILocation(line: 263, column: 100, scope: !1517)
!1520 = !DILocation(line: 263, column: 8, scope: !1517)
!1521 = !DILocation(line: 263, column: 8, scope: !1518)
!1522 = !DILocation(line: 264, column: 9, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1517, file: !1, line: 263, column: 119)
!1524 = !DILocation(line: 265, column: 6, scope: !1523)
!1525 = !DILocation(line: 267, column: 4, scope: !1518)
!1526 = !DILocation(line: 268, column: 3, scope: !1503)
!1527 = !DILocation(line: 269, column: 2, scope: !1428)
!1528 = !DILocation(line: 270, column: 7, scope: !936)
!1529 = !DILocation(line: 270, column: 2, scope: !936)
!1530 = !DILocation(line: 272, column: 23, scope: !936)
!1531 = !DILocation(line: 272, column: 2, scope: !936)
!1532 = !DILocation(line: 273, column: 21, scope: !936)
!1533 = !DILocation(line: 273, column: 25, scope: !936)
!1534 = !DILocation(line: 273, column: 34, scope: !936)
!1535 = !DILocation(line: 273, column: 65, scope: !936)
!1536 = !DILocation(line: 273, column: 7, scope: !936)
!1537 = !DILocation(line: 273, column: 5, scope: !936)
!1538 = !DILocation(line: 274, column: 2, scope: !936)
!1539 = !DILocation(line: 275, column: 9, scope: !936)
!1540 = !DILocation(line: 275, column: 2, scope: !936)
!1541 = !DILocation(line: 277, column: 7, scope: !936)
!1542 = !DILocation(line: 277, column: 2, scope: !936)
!1543 = !DILocation(line: 278, column: 2, scope: !936)
!1544 = !DILocation(line: 279, column: 9, scope: !936)
!1545 = !DILocation(line: 279, column: 2, scope: !936)
!1546 = !DILocation(line: 280, column: 1, scope: !936)
!1547 = distinct !DISubprogram(name: "simple_decrypt", scope: !1, file: !1, line: 361, type: !1548, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !851)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!199, !199}
!1550 = !DILocalVariable(name: "val", arg: 1, scope: !1547, file: !1, line: 361, type: !199)
!1551 = !DILocation(line: 361, column: 24, scope: !1547)
!1552 = !DILocalVariable(name: "key", scope: !1547, file: !1, line: 362, type: !199)
!1553 = !DILocation(line: 362, column: 6, scope: !1547)
!1554 = !DILocalVariable(name: "decrypted", scope: !1547, file: !1, line: 365, type: !199)
!1555 = !DILocation(line: 365, column: 6, scope: !1547)
!1556 = !DILocation(line: 365, column: 18, scope: !1547)
!1557 = !DILocation(line: 365, column: 24, scope: !1547)
!1558 = !DILocation(line: 365, column: 22, scope: !1547)
!1559 = !DILocation(line: 367, column: 9, scope: !1547)
!1560 = !DILocation(line: 367, column: 2, scope: !1547)
!1561 = distinct !DISubprogram(name: "nonce_verify", scope: !1, file: !1, line: 371, type: !1562, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !851)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!199, !199, !199, !199}
!1564 = !DILocalVariable(name: "changed_value", arg: 1, scope: !1561, file: !1, line: 371, type: !199)
!1565 = !DILocation(line: 371, column: 22, scope: !1561)
!1566 = !DILocalVariable(name: "nonce", arg: 2, scope: !1561, file: !1, line: 371, type: !199)
!1567 = !DILocation(line: 371, column: 41, scope: !1561)
!1568 = !DILocalVariable(name: "doub_value", arg: 3, scope: !1561, file: !1, line: 371, type: !199)
!1569 = !DILocation(line: 371, column: 52, scope: !1561)
!1570 = !DILocation(line: 372, column: 6, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1561, file: !1, line: 372, column: 6)
!1572 = !DILocation(line: 372, column: 20, scope: !1571)
!1573 = !DILocation(line: 372, column: 19, scope: !1571)
!1574 = !DILocation(line: 372, column: 34, scope: !1571)
!1575 = !DILocation(line: 372, column: 31, scope: !1571)
!1576 = !DILocation(line: 372, column: 6, scope: !1561)
!1577 = !DILocation(line: 373, column: 3, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 372, column: 41)
!1579 = !DILocation(line: 375, column: 20, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 374, column: 9)
!1581 = !DILocation(line: 375, column: 36, scope: !1580)
!1582 = !DILocation(line: 375, column: 34, scope: !1580)
!1583 = !DILocation(line: 375, column: 42, scope: !1580)
!1584 = !DILocation(line: 375, column: 17, scope: !1580)
!1585 = !DILocation(line: 376, column: 10, scope: !1580)
!1586 = !DILocation(line: 376, column: 3, scope: !1580)
!1587 = !DILocation(line: 378, column: 1, scope: !1561)
!1588 = distinct !DISubprogram(name: "handle__connect_wrap", scope: !1, file: !1, line: 380, type: !1589, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !851)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!199, !730, !194}
!1591 = !DILocalVariable(name: "db", arg: 1, scope: !1588, file: !1, line: 380, type: !730)
!1592 = !DILocation(line: 380, column: 47, scope: !1588)
!1593 = !DILocalVariable(name: "context", arg: 2, scope: !1588, file: !1, line: 380, type: !194)
!1594 = !DILocation(line: 380, column: 69, scope: !1588)
!1595 = !DILocalVariable(name: "mcont", scope: !1588, file: !1, line: 382, type: !1596)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_container", file: !4, line: 353, size: 192, elements: !1597)
!1597 = !{!1598, !1599, !1600}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !1596, file: !4, line: 354, baseType: !194, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1596, file: !4, line: 355, baseType: !202, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "nonce", scope: !1596, file: !4, line: 356, baseType: !199, size: 32, offset: 128)
!1601 = !DILocation(line: 382, column: 29, scope: !1588)
!1602 = !DILocation(line: 383, column: 8, scope: !1588)
!1603 = !DILocation(line: 383, column: 11, scope: !1588)
!1604 = !DILocation(line: 384, column: 18, scope: !1588)
!1605 = !DILocation(line: 384, column: 8, scope: !1588)
!1606 = !DILocation(line: 384, column: 16, scope: !1588)
!1607 = !DILocalVariable(name: "nonce_list", scope: !1588, file: !1, line: 386, type: !1608)
!1608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 128, elements: !1609)
!1609 = !{!1610}
!1610 = !DISubrange(count: 4)
!1611 = !DILocation(line: 386, column: 6, scope: !1588)
!1612 = !DILocalVariable(name: "rawtime", scope: !1588, file: !1, line: 387, type: !216)
!1613 = !DILocation(line: 387, column: 9, scope: !1588)
!1614 = !DILocalVariable(name: "ptm", scope: !1588, file: !1, line: 388, type: !1615)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1617, line: 7, size: 448, elements: !1618)
!1617 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "/home/tren/Documents/Aloja/evaluation/DY_1_mosquitto/mosquitto/src")
!1618 = !{!1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !1616, file: !1617, line: 9, baseType: !199, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !1616, file: !1617, line: 10, baseType: !199, size: 32, offset: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !1616, file: !1617, line: 11, baseType: !199, size: 32, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !1616, file: !1617, line: 12, baseType: !199, size: 32, offset: 96)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !1616, file: !1617, line: 13, baseType: !199, size: 32, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !1616, file: !1617, line: 14, baseType: !199, size: 32, offset: 160)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !1616, file: !1617, line: 15, baseType: !199, size: 32, offset: 192)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !1616, file: !1617, line: 16, baseType: !199, size: 32, offset: 224)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !1616, file: !1617, line: 17, baseType: !199, size: 32, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !1616, file: !1617, line: 20, baseType: !219, size: 64, offset: 320)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !1616, file: !1617, line: 21, baseType: !484, size: 64, offset: 384)
!1630 = !DILocation(line: 388, column: 17, scope: !1588)
!1631 = !DILocation(line: 389, column: 2, scope: !1588)
!1632 = !DILocation(line: 390, column: 8, scope: !1588)
!1633 = !DILocation(line: 390, column: 6, scope: !1588)
!1634 = !DILocation(line: 391, column: 7, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1588, file: !1, line: 391, column: 6)
!1636 = !DILocation(line: 391, column: 12, scope: !1635)
!1637 = !DILocation(line: 391, column: 20, scope: !1635)
!1638 = !DILocation(line: 391, column: 24, scope: !1635)
!1639 = !DILocation(line: 391, column: 6, scope: !1588)
!1640 = !DILocation(line: 392, column: 17, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1635, file: !1, line: 391, column: 30)
!1642 = !DILocation(line: 392, column: 9, scope: !1641)
!1643 = !DILocation(line: 392, column: 15, scope: !1641)
!1644 = !DILocation(line: 393, column: 2, scope: !1641)
!1645 = !DILocation(line: 394, column: 17, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1635, file: !1, line: 393, column: 9)
!1647 = !DILocation(line: 394, column: 9, scope: !1646)
!1648 = !DILocation(line: 394, column: 15, scope: !1646)
!1649 = !DILocation(line: 401, column: 65, scope: !1588)
!1650 = !DILocation(line: 401, column: 74, scope: !1588)
!1651 = !DILocation(line: 401, column: 84, scope: !1588)
!1652 = !DILocation(line: 401, column: 108, scope: !1588)
!1653 = !DILocation(line: 401, column: 46, scope: !1588)
!1654 = !DILocation(line: 401, column: 8, scope: !1588)
!1655 = !DILocation(line: 401, column: 17, scope: !1588)
!1656 = !DILocation(line: 401, column: 27, scope: !1588)
!1657 = !DILocation(line: 401, column: 44, scope: !1588)
!1658 = !DILocation(line: 403, column: 25, scope: !1588)
!1659 = !DILocation(line: 403, column: 35, scope: !1588)
!1660 = !DILocation(line: 403, column: 9, scope: !1588)
!1661 = !DILocation(line: 403, column: 2, scope: !1588)
!1662 = distinct !DISubprogram(name: "handle__connect", scope: !1, file: !1, line: 406, type: !1589, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !851)
!1663 = !DILocalVariable(name: "db", arg: 1, scope: !1662, file: !1, line: 406, type: !730)
!1664 = !DILocation(line: 406, column: 42, scope: !1662)
!1665 = !DILocalVariable(name: "context", arg: 2, scope: !1662, file: !1, line: 406, type: !194)
!1666 = !DILocation(line: 406, column: 64, scope: !1662)
!1667 = !DILocalVariable(name: "protocol_name", scope: !1662, file: !1, line: 409, type: !1668)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 56, elements: !1669)
!1669 = !{!1670}
!1670 = !DISubrange(count: 7)
!1671 = !DILocation(line: 409, column: 7, scope: !1662)
!1672 = !DILocalVariable(name: "protocol_version", scope: !1662, file: !1, line: 410, type: !227)
!1673 = !DILocation(line: 410, column: 10, scope: !1662)
!1674 = !DILocalVariable(name: "connect_flags", scope: !1662, file: !1, line: 411, type: !227)
!1675 = !DILocation(line: 411, column: 10, scope: !1662)
!1676 = !DILocalVariable(name: "client_id", scope: !1662, file: !1, line: 412, type: !202)
!1677 = !DILocation(line: 412, column: 8, scope: !1662)
!1678 = !DILocalVariable(name: "will_struct", scope: !1662, file: !1, line: 413, type: !248)
!1679 = !DILocation(line: 413, column: 32, scope: !1662)
!1680 = !DILocalVariable(name: "will", scope: !1662, file: !1, line: 414, type: !227)
!1681 = !DILocation(line: 414, column: 10, scope: !1662)
!1682 = !DILocalVariable(name: "will_retain", scope: !1662, file: !1, line: 414, type: !227)
!1683 = !DILocation(line: 414, column: 16, scope: !1662)
!1684 = !DILocalVariable(name: "will_qos", scope: !1662, file: !1, line: 414, type: !227)
!1685 = !DILocation(line: 414, column: 29, scope: !1662)
!1686 = !DILocalVariable(name: "clean_start", scope: !1662, file: !1, line: 414, type: !227)
!1687 = !DILocation(line: 414, column: 39, scope: !1662)
!1688 = !DILocalVariable(name: "username_flag", scope: !1662, file: !1, line: 415, type: !227)
!1689 = !DILocation(line: 415, column: 10, scope: !1662)
!1690 = !DILocalVariable(name: "password_flag", scope: !1662, file: !1, line: 415, type: !227)
!1691 = !DILocation(line: 415, column: 25, scope: !1662)
!1692 = !DILocalVariable(name: "username", scope: !1662, file: !1, line: 416, type: !202)
!1693 = !DILocation(line: 416, column: 8, scope: !1662)
!1694 = !DILocalVariable(name: "password", scope: !1662, file: !1, line: 416, type: !202)
!1695 = !DILocation(line: 416, column: 26, scope: !1662)
!1696 = !DILocalVariable(name: "rc", scope: !1662, file: !1, line: 417, type: !199)
!1697 = !DILocation(line: 417, column: 6, scope: !1662)
!1698 = !DILocalVariable(name: "slen", scope: !1662, file: !1, line: 418, type: !199)
!1699 = !DILocation(line: 418, column: 6, scope: !1662)
!1700 = !DILocalVariable(name: "slen16", scope: !1662, file: !1, line: 419, type: !208)
!1701 = !DILocation(line: 419, column: 11, scope: !1662)
!1702 = !DILocalVariable(name: "properties", scope: !1662, file: !1, line: 420, type: !254)
!1703 = !DILocation(line: 420, column: 22, scope: !1662)
!1704 = !DILocalVariable(name: "auth_data", scope: !1662, file: !1, line: 421, type: !190)
!1705 = !DILocation(line: 421, column: 8, scope: !1662)
!1706 = !DILocalVariable(name: "auth_data_len", scope: !1662, file: !1, line: 422, type: !208)
!1707 = !DILocation(line: 422, column: 11, scope: !1662)
!1708 = !DILocalVariable(name: "auth_data_out", scope: !1662, file: !1, line: 423, type: !190)
!1709 = !DILocation(line: 423, column: 8, scope: !1662)
!1710 = !DILocalVariable(name: "auth_data_out_len", scope: !1662, file: !1, line: 424, type: !208)
!1711 = !DILocation(line: 424, column: 11, scope: !1662)
!1712 = !DILocation(line: 435, column: 6, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 435, column: 5)
!1714 = !DILocation(line: 435, column: 15, scope: !1713)
!1715 = !DILocation(line: 435, column: 5, scope: !1662)
!1716 = !DILocation(line: 436, column: 3, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1713, file: !1, line: 435, column: 24)
!1718 = !DILocation(line: 440, column: 5, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 440, column: 5)
!1720 = !DILocation(line: 440, column: 14, scope: !1719)
!1721 = !DILocation(line: 440, column: 20, scope: !1719)
!1722 = !DILocation(line: 440, column: 5, scope: !1662)
!1723 = !DILocation(line: 441, column: 90, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1719, file: !1, line: 440, column: 35)
!1725 = !DILocation(line: 441, column: 99, scope: !1724)
!1726 = !DILocation(line: 441, column: 3, scope: !1724)
!1727 = !DILocation(line: 442, column: 6, scope: !1724)
!1728 = !DILocation(line: 443, column: 3, scope: !1724)
!1729 = !DILocation(line: 449, column: 26, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 449, column: 5)
!1731 = !DILocation(line: 449, column: 35, scope: !1730)
!1732 = !DILocation(line: 449, column: 5, scope: !1730)
!1733 = !DILocation(line: 449, column: 5, scope: !1662)
!1734 = !DILocation(line: 450, column: 6, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1730, file: !1, line: 449, column: 55)
!1736 = !DILocation(line: 451, column: 3, scope: !1735)
!1737 = !DILocation(line: 453, column: 9, scope: !1662)
!1738 = !DILocation(line: 453, column: 7, scope: !1662)
!1739 = !DILocation(line: 454, column: 5, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 454, column: 5)
!1741 = !DILocation(line: 454, column: 10, scope: !1740)
!1742 = !DILocation(line: 454, column: 26, scope: !1740)
!1743 = !DILocation(line: 454, column: 29, scope: !1740)
!1744 = !DILocation(line: 454, column: 34, scope: !1740)
!1745 = !DILocation(line: 454, column: 5, scope: !1662)
!1746 = !DILocation(line: 455, column: 6, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1740, file: !1, line: 454, column: 52)
!1748 = !DILocation(line: 456, column: 3, scope: !1747)
!1749 = !DILocation(line: 458, column: 25, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 458, column: 5)
!1751 = !DILocation(line: 458, column: 34, scope: !1750)
!1752 = !DILocation(line: 458, column: 45, scope: !1750)
!1753 = !DILocation(line: 458, column: 60, scope: !1750)
!1754 = !DILocation(line: 458, column: 5, scope: !1750)
!1755 = !DILocation(line: 458, column: 5, scope: !1662)
!1756 = !DILocation(line: 459, column: 6, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1750, file: !1, line: 458, column: 66)
!1758 = !DILocation(line: 460, column: 3, scope: !1757)
!1759 = !DILocation(line: 462, column: 16, scope: !1662)
!1760 = !DILocation(line: 462, column: 2, scope: !1662)
!1761 = !DILocation(line: 462, column: 22, scope: !1662)
!1762 = !DILocation(line: 464, column: 24, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 464, column: 5)
!1764 = !DILocation(line: 464, column: 33, scope: !1763)
!1765 = !DILocation(line: 464, column: 5, scope: !1763)
!1766 = !DILocation(line: 464, column: 5, scope: !1662)
!1767 = !DILocation(line: 465, column: 6, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1763, file: !1, line: 464, column: 63)
!1769 = !DILocation(line: 466, column: 3, scope: !1768)
!1770 = !DILocation(line: 468, column: 13, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 468, column: 5)
!1772 = !DILocation(line: 468, column: 6, scope: !1771)
!1773 = !DILocation(line: 468, column: 5, scope: !1662)
!1774 = !DILocation(line: 469, column: 7, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !1, line: 469, column: 6)
!1776 = distinct !DILexicalBlock(scope: !1771, file: !1, line: 468, column: 47)
!1777 = !DILocation(line: 469, column: 23, scope: !1775)
!1778 = !DILocation(line: 469, column: 30, scope: !1775)
!1779 = !DILocation(line: 469, column: 6, scope: !1776)
!1780 = !DILocation(line: 470, column: 7, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !1, line: 470, column: 7)
!1782 = distinct !DILexicalBlock(scope: !1775, file: !1, line: 469, column: 54)
!1783 = !DILocation(line: 470, column: 11, scope: !1781)
!1784 = !DILocation(line: 470, column: 19, scope: !1781)
!1785 = !DILocation(line: 470, column: 39, scope: !1781)
!1786 = !DILocation(line: 470, column: 7, scope: !1782)
!1787 = !DILocation(line: 472, column: 7, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1781, file: !1, line: 470, column: 47)
!1789 = !DILocation(line: 472, column: 25, scope: !1788)
!1790 = !DILocation(line: 472, column: 34, scope: !1788)
!1791 = !DILocation(line: 471, column: 5, scope: !1788)
!1792 = !DILocation(line: 473, column: 4, scope: !1788)
!1793 = !DILocation(line: 474, column: 18, scope: !1782)
!1794 = !DILocation(line: 474, column: 22, scope: !1782)
!1795 = !DILocation(line: 474, column: 4, scope: !1782)
!1796 = !DILocation(line: 475, column: 7, scope: !1782)
!1797 = !DILocation(line: 476, column: 4, scope: !1782)
!1798 = !DILocation(line: 478, column: 3, scope: !1776)
!1799 = !DILocation(line: 478, column: 12, scope: !1776)
!1800 = !DILocation(line: 478, column: 21, scope: !1776)
!1801 = !DILocation(line: 479, column: 7, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1776, file: !1, line: 479, column: 6)
!1803 = !DILocation(line: 479, column: 23, scope: !1802)
!1804 = !DILocation(line: 479, column: 30, scope: !1802)
!1805 = !DILocation(line: 479, column: 6, scope: !1776)
!1806 = !DILocation(line: 480, column: 4, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1802, file: !1, line: 479, column: 38)
!1808 = !DILocation(line: 480, column: 13, scope: !1807)
!1809 = !DILocation(line: 480, column: 23, scope: !1807)
!1810 = !DILocation(line: 481, column: 3, scope: !1807)
!1811 = !DILocation(line: 482, column: 2, scope: !1776)
!1812 = !DILocation(line: 482, column: 19, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1771, file: !1, line: 482, column: 11)
!1814 = !DILocation(line: 482, column: 12, scope: !1813)
!1815 = !DILocation(line: 482, column: 11, scope: !1771)
!1816 = !DILocation(line: 483, column: 7, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !1, line: 483, column: 6)
!1818 = distinct !DILexicalBlock(scope: !1813, file: !1, line: 482, column: 49)
!1819 = !DILocation(line: 483, column: 23, scope: !1817)
!1820 = !DILocation(line: 483, column: 30, scope: !1817)
!1821 = !DILocation(line: 483, column: 6, scope: !1818)
!1822 = !DILocation(line: 484, column: 4, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1817, file: !1, line: 483, column: 55)
!1824 = !DILocation(line: 484, column: 13, scope: !1823)
!1825 = !DILocation(line: 484, column: 22, scope: !1823)
!1826 = !DILocation(line: 486, column: 8, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1823, file: !1, line: 486, column: 7)
!1828 = !DILocation(line: 486, column: 24, scope: !1827)
!1829 = !DILocation(line: 486, column: 31, scope: !1827)
!1830 = !DILocation(line: 486, column: 7, scope: !1823)
!1831 = !DILocation(line: 487, column: 5, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1827, file: !1, line: 486, column: 39)
!1833 = !DILocation(line: 487, column: 14, scope: !1832)
!1834 = !DILocation(line: 487, column: 24, scope: !1832)
!1835 = !DILocation(line: 488, column: 4, scope: !1832)
!1836 = !DILocation(line: 489, column: 3, scope: !1823)
!1837 = !DILocation(line: 489, column: 13, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1817, file: !1, line: 489, column: 12)
!1839 = !DILocation(line: 489, column: 29, scope: !1838)
!1840 = !DILocation(line: 489, column: 36, scope: !1838)
!1841 = !DILocation(line: 489, column: 12, scope: !1817)
!1842 = !DILocation(line: 490, column: 4, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1838, file: !1, line: 489, column: 59)
!1844 = !DILocation(line: 490, column: 13, scope: !1843)
!1845 = !DILocation(line: 490, column: 22, scope: !1843)
!1846 = !DILocation(line: 491, column: 3, scope: !1843)
!1847 = !DILocation(line: 492, column: 7, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !1, line: 492, column: 7)
!1849 = distinct !DILexicalBlock(scope: !1838, file: !1, line: 491, column: 8)
!1850 = !DILocation(line: 492, column: 11, scope: !1848)
!1851 = !DILocation(line: 492, column: 19, scope: !1848)
!1852 = !DILocation(line: 492, column: 39, scope: !1848)
!1853 = !DILocation(line: 492, column: 7, scope: !1849)
!1854 = !DILocation(line: 494, column: 7, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1848, file: !1, line: 492, column: 47)
!1856 = !DILocation(line: 494, column: 25, scope: !1855)
!1857 = !DILocation(line: 494, column: 34, scope: !1855)
!1858 = !DILocation(line: 493, column: 5, scope: !1855)
!1859 = !DILocation(line: 495, column: 4, scope: !1855)
!1860 = !DILocation(line: 496, column: 18, scope: !1849)
!1861 = !DILocation(line: 496, column: 22, scope: !1849)
!1862 = !DILocation(line: 496, column: 4, scope: !1849)
!1863 = !DILocation(line: 497, column: 7, scope: !1849)
!1864 = !DILocation(line: 498, column: 4, scope: !1849)
!1865 = !DILocation(line: 500, column: 7, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1818, file: !1, line: 500, column: 6)
!1867 = !DILocation(line: 500, column: 16, scope: !1866)
!1868 = !DILocation(line: 500, column: 26, scope: !1866)
!1869 = !DILocation(line: 500, column: 33, scope: !1866)
!1870 = !DILocation(line: 500, column: 40, scope: !1866)
!1871 = !DILocation(line: 500, column: 6, scope: !1818)
!1872 = !DILocation(line: 502, column: 7, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1866, file: !1, line: 500, column: 48)
!1874 = !DILocation(line: 503, column: 4, scope: !1873)
!1875 = !DILocation(line: 505, column: 2, scope: !1818)
!1876 = !DILocation(line: 506, column: 6, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !1, line: 506, column: 6)
!1878 = distinct !DILexicalBlock(scope: !1813, file: !1, line: 505, column: 7)
!1879 = !DILocation(line: 506, column: 10, scope: !1877)
!1880 = !DILocation(line: 506, column: 18, scope: !1877)
!1881 = !DILocation(line: 506, column: 38, scope: !1877)
!1882 = !DILocation(line: 506, column: 6, scope: !1878)
!1883 = !DILocation(line: 508, column: 6, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1877, file: !1, line: 506, column: 46)
!1885 = !DILocation(line: 508, column: 21, scope: !1884)
!1886 = !DILocation(line: 508, column: 30, scope: !1884)
!1887 = !DILocation(line: 507, column: 4, scope: !1884)
!1888 = !DILocation(line: 509, column: 3, scope: !1884)
!1889 = !DILocation(line: 510, column: 6, scope: !1878)
!1890 = !DILocation(line: 511, column: 3, scope: !1878)
!1891 = !DILocation(line: 514, column: 24, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 514, column: 5)
!1893 = !DILocation(line: 514, column: 33, scope: !1892)
!1894 = !DILocation(line: 514, column: 5, scope: !1892)
!1895 = !DILocation(line: 514, column: 5, scope: !1662)
!1896 = !DILocation(line: 515, column: 6, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1892, file: !1, line: 514, column: 60)
!1898 = !DILocation(line: 516, column: 3, scope: !1897)
!1899 = !DILocation(line: 518, column: 5, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 518, column: 5)
!1901 = !DILocation(line: 518, column: 14, scope: !1900)
!1902 = !DILocation(line: 518, column: 23, scope: !1900)
!1903 = !DILocation(line: 518, column: 41, scope: !1900)
!1904 = !DILocation(line: 518, column: 44, scope: !1900)
!1905 = !DILocation(line: 518, column: 53, scope: !1900)
!1906 = !DILocation(line: 518, column: 62, scope: !1900)
!1907 = !DILocation(line: 518, column: 5, scope: !1662)
!1908 = !DILocation(line: 519, column: 7, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !1, line: 519, column: 6)
!1910 = distinct !DILexicalBlock(scope: !1900, file: !1, line: 518, column: 78)
!1911 = !DILocation(line: 519, column: 21, scope: !1909)
!1912 = !DILocation(line: 519, column: 29, scope: !1909)
!1913 = !DILocation(line: 519, column: 6, scope: !1910)
!1914 = !DILocation(line: 520, column: 7, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1909, file: !1, line: 519, column: 37)
!1916 = !DILocation(line: 521, column: 4, scope: !1915)
!1917 = !DILocation(line: 523, column: 2, scope: !1910)
!1918 = !DILocation(line: 525, column: 17, scope: !1662)
!1919 = !DILocation(line: 525, column: 31, scope: !1662)
!1920 = !DILocation(line: 525, column: 39, scope: !1662)
!1921 = !DILocation(line: 525, column: 16, scope: !1662)
!1922 = !DILocation(line: 525, column: 14, scope: !1662)
!1923 = !DILocation(line: 527, column: 5, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 527, column: 5)
!1925 = !DILocation(line: 527, column: 17, scope: !1924)
!1926 = !DILocation(line: 527, column: 26, scope: !1924)
!1927 = !DILocation(line: 527, column: 29, scope: !1924)
!1928 = !DILocation(line: 527, column: 46, scope: !1924)
!1929 = !DILocation(line: 527, column: 5, scope: !1662)
!1930 = !DILocation(line: 529, column: 3, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1924, file: !1, line: 527, column: 69)
!1932 = !DILocation(line: 529, column: 12, scope: !1931)
!1933 = !DILocation(line: 529, column: 36, scope: !1931)
!1934 = !DILocation(line: 530, column: 2, scope: !1931)
!1935 = !DILocation(line: 531, column: 3, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1924, file: !1, line: 530, column: 7)
!1937 = !DILocation(line: 531, column: 12, scope: !1936)
!1938 = !DILocation(line: 531, column: 36, scope: !1936)
!1939 = !DILocation(line: 533, column: 9, scope: !1662)
!1940 = !DILocation(line: 533, column: 23, scope: !1662)
!1941 = !DILocation(line: 533, column: 7, scope: !1662)
!1942 = !DILocation(line: 534, column: 14, scope: !1662)
!1943 = !DILocation(line: 534, column: 28, scope: !1662)
!1944 = !DILocation(line: 534, column: 36, scope: !1662)
!1945 = !DILocation(line: 534, column: 13, scope: !1662)
!1946 = !DILocation(line: 534, column: 11, scope: !1662)
!1947 = !DILocation(line: 535, column: 5, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 535, column: 5)
!1949 = !DILocation(line: 535, column: 14, scope: !1948)
!1950 = !DILocation(line: 535, column: 5, scope: !1662)
!1951 = !DILocation(line: 537, column: 5, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1948, file: !1, line: 535, column: 19)
!1953 = !DILocation(line: 537, column: 14, scope: !1952)
!1954 = !DILocation(line: 536, column: 3, scope: !1952)
!1955 = !DILocation(line: 538, column: 6, scope: !1952)
!1956 = !DILocation(line: 539, column: 3, scope: !1952)
!1957 = !DILocation(line: 541, column: 18, scope: !1662)
!1958 = !DILocation(line: 541, column: 32, scope: !1662)
!1959 = !DILocation(line: 541, column: 40, scope: !1662)
!1960 = !DILocation(line: 541, column: 16, scope: !1662)
!1961 = !DILocation(line: 541, column: 14, scope: !1662)
!1962 = !DILocation(line: 542, column: 18, scope: !1662)
!1963 = !DILocation(line: 542, column: 32, scope: !1662)
!1964 = !DILocation(line: 542, column: 16, scope: !1662)
!1965 = !DILocation(line: 543, column: 18, scope: !1662)
!1966 = !DILocation(line: 543, column: 32, scope: !1662)
!1967 = !DILocation(line: 543, column: 16, scope: !1662)
!1968 = !DILocation(line: 545, column: 5, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 545, column: 5)
!1970 = !DILocation(line: 545, column: 10, scope: !1969)
!1971 = !DILocation(line: 545, column: 13, scope: !1969)
!1972 = !DILocation(line: 545, column: 25, scope: !1969)
!1973 = !DILocation(line: 545, column: 28, scope: !1969)
!1974 = !DILocation(line: 545, column: 32, scope: !1969)
!1975 = !DILocation(line: 545, column: 40, scope: !1969)
!1976 = !DILocation(line: 545, column: 57, scope: !1969)
!1977 = !DILocation(line: 545, column: 5, scope: !1662)
!1978 = !DILocation(line: 546, column: 6, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !1, line: 546, column: 6)
!1980 = distinct !DILexicalBlock(scope: !1969, file: !1, line: 545, column: 66)
!1981 = !DILocation(line: 546, column: 23, scope: !1979)
!1982 = !DILocation(line: 546, column: 6, scope: !1980)
!1983 = !DILocation(line: 547, column: 18, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1979, file: !1, line: 546, column: 39)
!1985 = !DILocation(line: 547, column: 22, scope: !1984)
!1986 = !DILocation(line: 547, column: 4, scope: !1984)
!1987 = !DILocation(line: 548, column: 3, scope: !1984)
!1988 = !DILocation(line: 549, column: 6, scope: !1980)
!1989 = !DILocation(line: 550, column: 3, scope: !1980)
!1990 = !DILocation(line: 553, column: 26, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 553, column: 5)
!1992 = !DILocation(line: 553, column: 35, scope: !1991)
!1993 = !DILocation(line: 553, column: 48, scope: !1991)
!1994 = !DILocation(line: 553, column: 57, scope: !1991)
!1995 = !DILocation(line: 553, column: 5, scope: !1991)
!1996 = !DILocation(line: 553, column: 5, scope: !1662)
!1997 = !DILocation(line: 554, column: 6, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1991, file: !1, line: 553, column: 69)
!1999 = !DILocation(line: 555, column: 3, scope: !1998)
!2000 = !DILocation(line: 558, column: 5, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 558, column: 5)
!2002 = !DILocation(line: 558, column: 22, scope: !2001)
!2003 = !DILocation(line: 558, column: 5, scope: !1662)
!2004 = !DILocation(line: 559, column: 41, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2001, file: !1, line: 558, column: 45)
!2006 = !DILocation(line: 559, column: 50, scope: !2005)
!2007 = !DILocation(line: 559, column: 8, scope: !2005)
!2008 = !DILocation(line: 559, column: 6, scope: !2005)
!2009 = !DILocation(line: 560, column: 6, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2005, file: !1, line: 560, column: 6)
!2011 = !DILocation(line: 560, column: 6, scope: !2005)
!2012 = !DILocation(line: 560, column: 10, scope: !2010)
!2013 = !DILocation(line: 561, column: 2, scope: !2005)
!2014 = !DILocation(line: 562, column: 28, scope: !1662)
!2015 = !DILocation(line: 562, column: 2, scope: !1662)
!2016 = !DILocation(line: 564, column: 36, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 564, column: 5)
!2018 = !DILocation(line: 564, column: 82, scope: !2017)
!2019 = !DILocation(line: 564, column: 91, scope: !2017)
!2020 = !DILocation(line: 564, column: 5, scope: !2017)
!2021 = !DILocation(line: 564, column: 5, scope: !1662)
!2022 = !DILocation(line: 565, column: 34, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2017, file: !1, line: 564, column: 111)
!2024 = !DILocation(line: 565, column: 3, scope: !2023)
!2025 = !DILocation(line: 566, column: 2, scope: !2023)
!2026 = !DILocation(line: 568, column: 2, scope: !1662)
!2027 = !DILocation(line: 570, column: 26, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 570, column: 5)
!2029 = !DILocation(line: 570, column: 35, scope: !2028)
!2030 = !DILocation(line: 570, column: 5, scope: !2028)
!2031 = !DILocation(line: 570, column: 5, scope: !1662)
!2032 = !DILocation(line: 571, column: 6, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2028, file: !1, line: 570, column: 65)
!2034 = !DILocation(line: 572, column: 3, scope: !2033)
!2035 = !DILocation(line: 575, column: 5, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 575, column: 5)
!2037 = !DILocation(line: 575, column: 10, scope: !2036)
!2038 = !DILocation(line: 575, column: 5, scope: !1662)
!2039 = !DILocation(line: 576, column: 6, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !1, line: 576, column: 6)
!2041 = distinct !DILexicalBlock(scope: !2036, file: !1, line: 575, column: 15)
!2042 = !DILocation(line: 576, column: 15, scope: !2040)
!2043 = !DILocation(line: 576, column: 24, scope: !2040)
!2044 = !DILocation(line: 576, column: 6, scope: !2041)
!2045 = !DILocation(line: 577, column: 18, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2040, file: !1, line: 576, column: 41)
!2047 = !DILocation(line: 577, column: 22, scope: !2046)
!2048 = !DILocation(line: 577, column: 4, scope: !2046)
!2049 = !DILocation(line: 578, column: 7, scope: !2046)
!2050 = !DILocation(line: 579, column: 4, scope: !2046)
!2051 = !DILocation(line: 581, column: 20, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2040, file: !1, line: 580, column: 8)
!2053 = !DILocation(line: 581, column: 4, scope: !2052)
!2054 = !DILocation(line: 582, column: 14, scope: !2052)
!2055 = !DILocalVariable(name: "allow_zero_length_clientid", scope: !2052, file: !1, line: 584, type: !279)
!2056 = !DILocation(line: 584, column: 9, scope: !2052)
!2057 = !DILocation(line: 585, column: 7, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2052, file: !1, line: 585, column: 7)
!2059 = !DILocation(line: 585, column: 11, scope: !2058)
!2060 = !DILocation(line: 585, column: 19, scope: !2058)
!2061 = !DILocation(line: 585, column: 7, scope: !2052)
!2062 = !DILocation(line: 586, column: 34, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2058, file: !1, line: 585, column: 41)
!2064 = !DILocation(line: 586, column: 43, scope: !2063)
!2065 = !DILocation(line: 586, column: 53, scope: !2063)
!2066 = !DILocation(line: 586, column: 70, scope: !2063)
!2067 = !DILocation(line: 586, column: 32, scope: !2063)
!2068 = !DILocation(line: 587, column: 4, scope: !2063)
!2069 = !DILocation(line: 588, column: 34, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2058, file: !1, line: 587, column: 9)
!2071 = !DILocation(line: 588, column: 38, scope: !2070)
!2072 = !DILocation(line: 588, column: 46, scope: !2070)
!2073 = !DILocation(line: 588, column: 63, scope: !2070)
!2074 = !DILocation(line: 588, column: 32, scope: !2070)
!2075 = !DILocation(line: 590, column: 8, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2052, file: !1, line: 590, column: 7)
!2077 = !DILocation(line: 590, column: 17, scope: !2076)
!2078 = !DILocation(line: 590, column: 26, scope: !2076)
!2079 = !DILocation(line: 590, column: 44, scope: !2076)
!2080 = !DILocation(line: 590, column: 47, scope: !2076)
!2081 = !DILocation(line: 590, column: 59, scope: !2076)
!2082 = !DILocation(line: 590, column: 65, scope: !2076)
!2083 = !DILocation(line: 590, column: 68, scope: !2076)
!2084 = !DILocation(line: 590, column: 95, scope: !2076)
!2085 = !DILocation(line: 590, column: 7, scope: !2052)
!2086 = !DILocation(line: 591, column: 8, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !1, line: 591, column: 8)
!2088 = distinct !DILexicalBlock(scope: !2076, file: !1, line: 590, column: 104)
!2089 = !DILocation(line: 591, column: 17, scope: !2087)
!2090 = !DILocation(line: 591, column: 26, scope: !2087)
!2091 = !DILocation(line: 591, column: 8, scope: !2088)
!2092 = !DILocation(line: 592, column: 20, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2087, file: !1, line: 591, column: 44)
!2094 = !DILocation(line: 592, column: 24, scope: !2093)
!2095 = !DILocation(line: 592, column: 6, scope: !2093)
!2096 = !DILocation(line: 593, column: 5, scope: !2093)
!2097 = !DILocation(line: 594, column: 20, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2087, file: !1, line: 593, column: 10)
!2099 = !DILocation(line: 594, column: 24, scope: !2098)
!2100 = !DILocation(line: 594, column: 6, scope: !2098)
!2101 = !DILocation(line: 596, column: 8, scope: !2088)
!2102 = !DILocation(line: 597, column: 5, scope: !2088)
!2103 = !DILocation(line: 599, column: 8, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !1, line: 599, column: 8)
!2105 = distinct !DILexicalBlock(scope: !2076, file: !1, line: 598, column: 9)
!2106 = !DILocation(line: 599, column: 12, scope: !2104)
!2107 = !DILocation(line: 599, column: 20, scope: !2104)
!2108 = !DILocation(line: 599, column: 8, scope: !2105)
!2109 = !DILocation(line: 600, column: 39, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2104, file: !1, line: 599, column: 42)
!2111 = !DILocation(line: 600, column: 48, scope: !2110)
!2112 = !DILocation(line: 600, column: 58, scope: !2110)
!2113 = !DILocation(line: 600, column: 75, scope: !2110)
!2114 = !DILocation(line: 600, column: 91, scope: !2110)
!2115 = !DILocation(line: 600, column: 100, scope: !2110)
!2116 = !DILocation(line: 600, column: 110, scope: !2110)
!2117 = !DILocation(line: 600, column: 127, scope: !2110)
!2118 = !DILocation(line: 600, column: 18, scope: !2110)
!2119 = !DILocation(line: 600, column: 16, scope: !2110)
!2120 = !DILocation(line: 601, column: 5, scope: !2110)
!2121 = !DILocation(line: 602, column: 39, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2104, file: !1, line: 601, column: 10)
!2123 = !DILocation(line: 602, column: 43, scope: !2122)
!2124 = !DILocation(line: 602, column: 51, scope: !2122)
!2125 = !DILocation(line: 602, column: 68, scope: !2122)
!2126 = !DILocation(line: 602, column: 84, scope: !2122)
!2127 = !DILocation(line: 602, column: 88, scope: !2122)
!2128 = !DILocation(line: 602, column: 96, scope: !2122)
!2129 = !DILocation(line: 602, column: 113, scope: !2122)
!2130 = !DILocation(line: 602, column: 18, scope: !2122)
!2131 = !DILocation(line: 602, column: 16, scope: !2122)
!2132 = !DILocation(line: 604, column: 9, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2105, file: !1, line: 604, column: 8)
!2134 = !DILocation(line: 604, column: 8, scope: !2105)
!2135 = !DILocation(line: 605, column: 9, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2133, file: !1, line: 604, column: 19)
!2137 = !DILocation(line: 606, column: 6, scope: !2136)
!2138 = !DILocation(line: 608, column: 5, scope: !2105)
!2139 = !DILocation(line: 608, column: 14, scope: !2105)
!2140 = !DILocation(line: 608, column: 26, scope: !2105)
!2141 = !DILocation(line: 611, column: 2, scope: !2041)
!2142 = !DILocation(line: 614, column: 5, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 614, column: 5)
!2144 = !DILocation(line: 614, column: 9, scope: !2143)
!2145 = !DILocation(line: 614, column: 17, scope: !2143)
!2146 = !DILocation(line: 614, column: 5, scope: !1662)
!2147 = !DILocation(line: 615, column: 14, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !1, line: 615, column: 6)
!2149 = distinct !DILexicalBlock(scope: !2143, file: !1, line: 614, column: 35)
!2150 = !DILocation(line: 615, column: 18, scope: !2148)
!2151 = !DILocation(line: 615, column: 26, scope: !2148)
!2152 = !DILocation(line: 615, column: 45, scope: !2148)
!2153 = !DILocation(line: 615, column: 63, scope: !2148)
!2154 = !DILocation(line: 615, column: 67, scope: !2148)
!2155 = !DILocation(line: 615, column: 75, scope: !2148)
!2156 = !DILocation(line: 615, column: 56, scope: !2148)
!2157 = !DILocation(line: 615, column: 6, scope: !2148)
!2158 = !DILocation(line: 615, column: 6, scope: !2149)
!2159 = !DILocation(line: 616, column: 7, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !1, line: 616, column: 7)
!2161 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 615, column: 95)
!2162 = !DILocation(line: 616, column: 16, scope: !2160)
!2163 = !DILocation(line: 616, column: 25, scope: !2160)
!2164 = !DILocation(line: 616, column: 7, scope: !2161)
!2165 = !DILocation(line: 617, column: 19, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2160, file: !1, line: 616, column: 41)
!2167 = !DILocation(line: 617, column: 23, scope: !2166)
!2168 = !DILocation(line: 617, column: 5, scope: !2166)
!2169 = !DILocation(line: 618, column: 4, scope: !2166)
!2170 = !DILocation(line: 619, column: 19, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2160, file: !1, line: 618, column: 9)
!2172 = !DILocation(line: 619, column: 23, scope: !2171)
!2173 = !DILocation(line: 619, column: 5, scope: !2171)
!2174 = !DILocation(line: 621, column: 7, scope: !2161)
!2175 = !DILocation(line: 622, column: 4, scope: !2161)
!2176 = !DILocation(line: 624, column: 2, scope: !2149)
!2177 = !DILocation(line: 626, column: 5, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 626, column: 5)
!2179 = !DILocation(line: 626, column: 5, scope: !1662)
!2180 = !DILocation(line: 627, column: 19, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2178, file: !1, line: 626, column: 10)
!2182 = !DILocation(line: 627, column: 42, scope: !2181)
!2183 = !DILocation(line: 627, column: 52, scope: !2181)
!2184 = !DILocation(line: 627, column: 8, scope: !2181)
!2185 = !DILocation(line: 627, column: 6, scope: !2181)
!2186 = !DILocation(line: 628, column: 6, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2181, file: !1, line: 628, column: 6)
!2188 = !DILocation(line: 628, column: 6, scope: !2181)
!2189 = !DILocation(line: 628, column: 10, scope: !2187)
!2190 = !DILocation(line: 629, column: 2, scope: !2181)
!2191 = !DILocation(line: 630, column: 6, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !1, line: 630, column: 6)
!2193 = distinct !DILexicalBlock(scope: !2178, file: !1, line: 629, column: 7)
!2194 = !DILocation(line: 630, column: 15, scope: !2192)
!2195 = !DILocation(line: 630, column: 24, scope: !2192)
!2196 = !DILocation(line: 630, column: 42, scope: !2192)
!2197 = !DILocation(line: 630, column: 45, scope: !2192)
!2198 = !DILocation(line: 630, column: 54, scope: !2192)
!2199 = !DILocation(line: 630, column: 63, scope: !2192)
!2200 = !DILocation(line: 630, column: 6, scope: !2193)
!2201 = !DILocation(line: 631, column: 7, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !1, line: 631, column: 7)
!2203 = distinct !DILexicalBlock(scope: !2192, file: !1, line: 630, column: 79)
!2204 = !DILocation(line: 631, column: 16, scope: !2202)
!2205 = !DILocation(line: 631, column: 21, scope: !2202)
!2206 = !DILocation(line: 631, column: 24, scope: !2202)
!2207 = !DILocation(line: 631, column: 36, scope: !2202)
!2208 = !DILocation(line: 631, column: 7, scope: !2203)
!2209 = !DILocation(line: 632, column: 8, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2202, file: !1, line: 631, column: 41)
!2211 = !DILocation(line: 633, column: 5, scope: !2210)
!2212 = !DILocation(line: 635, column: 3, scope: !2203)
!2213 = !DILocation(line: 638, column: 5, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 638, column: 5)
!2215 = !DILocation(line: 638, column: 5, scope: !1662)
!2216 = !DILocation(line: 639, column: 29, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2214, file: !1, line: 638, column: 19)
!2218 = !DILocation(line: 639, column: 38, scope: !2217)
!2219 = !DILocation(line: 639, column: 8, scope: !2217)
!2220 = !DILocation(line: 639, column: 6, scope: !2217)
!2221 = !DILocation(line: 640, column: 6, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2217, file: !1, line: 640, column: 6)
!2223 = !DILocation(line: 640, column: 9, scope: !2222)
!2224 = !DILocation(line: 640, column: 6, scope: !2217)
!2225 = !DILocation(line: 641, column: 7, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2222, file: !1, line: 640, column: 27)
!2227 = !DILocation(line: 642, column: 4, scope: !2226)
!2228 = !DILocation(line: 643, column: 12, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2222, file: !1, line: 643, column: 12)
!2230 = !DILocation(line: 643, column: 15, scope: !2229)
!2231 = !DILocation(line: 643, column: 12, scope: !2222)
!2232 = !DILocation(line: 644, column: 7, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !1, line: 644, column: 7)
!2234 = distinct !DILexicalBlock(scope: !2229, file: !1, line: 643, column: 35)
!2235 = !DILocation(line: 644, column: 16, scope: !2233)
!2236 = !DILocation(line: 644, column: 25, scope: !2233)
!2237 = !DILocation(line: 644, column: 7, scope: !2234)
!2238 = !DILocation(line: 646, column: 19, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2233, file: !1, line: 644, column: 42)
!2240 = !DILocation(line: 647, column: 4, scope: !2239)
!2241 = !DILocation(line: 648, column: 8, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2233, file: !1, line: 647, column: 9)
!2243 = !DILocation(line: 649, column: 5, scope: !2242)
!2244 = !DILocation(line: 651, column: 3, scope: !2234)
!2245 = !DILocation(line: 652, column: 2, scope: !2217)
!2246 = !DILocation(line: 653, column: 6, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !1, line: 653, column: 6)
!2248 = distinct !DILexicalBlock(scope: !2214, file: !1, line: 652, column: 7)
!2249 = !DILocation(line: 653, column: 15, scope: !2247)
!2250 = !DILocation(line: 653, column: 24, scope: !2247)
!2251 = !DILocation(line: 653, column: 42, scope: !2247)
!2252 = !DILocation(line: 653, column: 45, scope: !2247)
!2253 = !DILocation(line: 653, column: 54, scope: !2247)
!2254 = !DILocation(line: 653, column: 63, scope: !2247)
!2255 = !DILocation(line: 653, column: 6, scope: !2248)
!2256 = !DILocation(line: 654, column: 7, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !1, line: 654, column: 7)
!2258 = distinct !DILexicalBlock(scope: !2247, file: !1, line: 653, column: 80)
!2259 = !DILocation(line: 654, column: 7, scope: !2258)
!2260 = !DILocation(line: 656, column: 111, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2257, file: !1, line: 654, column: 21)
!2262 = !DILocation(line: 656, column: 5, scope: !2261)
!2263 = !DILocation(line: 657, column: 8, scope: !2261)
!2264 = !DILocation(line: 658, column: 5, scope: !2261)
!2265 = !DILocation(line: 660, column: 3, scope: !2258)
!2266 = !DILocation(line: 662, column: 5, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 662, column: 5)
!2268 = !DILocation(line: 662, column: 5, scope: !1662)
!2269 = !DILocation(line: 663, column: 29, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2267, file: !1, line: 662, column: 19)
!2271 = !DILocation(line: 663, column: 38, scope: !2270)
!2272 = !DILocation(line: 663, column: 8, scope: !2270)
!2273 = !DILocation(line: 663, column: 6, scope: !2270)
!2274 = !DILocation(line: 664, column: 6, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2270, file: !1, line: 664, column: 6)
!2276 = !DILocation(line: 664, column: 9, scope: !2275)
!2277 = !DILocation(line: 664, column: 6, scope: !2270)
!2278 = !DILocation(line: 665, column: 7, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2275, file: !1, line: 664, column: 27)
!2280 = !DILocation(line: 666, column: 4, scope: !2279)
!2281 = !DILocation(line: 667, column: 12, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2275, file: !1, line: 667, column: 12)
!2283 = !DILocation(line: 667, column: 15, scope: !2282)
!2284 = !DILocation(line: 667, column: 12, scope: !2275)
!2285 = !DILocation(line: 668, column: 7, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !1, line: 668, column: 7)
!2287 = distinct !DILexicalBlock(scope: !2282, file: !1, line: 667, column: 36)
!2288 = !DILocation(line: 668, column: 16, scope: !2286)
!2289 = !DILocation(line: 668, column: 25, scope: !2286)
!2290 = !DILocation(line: 668, column: 7, scope: !2287)
!2291 = !DILocation(line: 670, column: 4, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2286, file: !1, line: 668, column: 42)
!2293 = !DILocation(line: 671, column: 8, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2286, file: !1, line: 670, column: 9)
!2295 = !DILocation(line: 672, column: 5, scope: !2294)
!2296 = !DILocation(line: 674, column: 3, scope: !2287)
!2297 = !DILocation(line: 675, column: 2, scope: !2270)
!2298 = !DILocation(line: 677, column: 5, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 677, column: 5)
!2300 = !DILocation(line: 677, column: 14, scope: !2299)
!2301 = !DILocation(line: 677, column: 24, scope: !2299)
!2302 = !DILocation(line: 677, column: 31, scope: !2299)
!2303 = !DILocation(line: 677, column: 40, scope: !2299)
!2304 = !DILocation(line: 677, column: 50, scope: !2299)
!2305 = !DILocation(line: 677, column: 28, scope: !2299)
!2306 = !DILocation(line: 677, column: 5, scope: !1662)
!2307 = !DILocation(line: 679, column: 6, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2299, file: !1, line: 677, column: 67)
!2309 = !DILocation(line: 680, column: 3, scope: !2308)
!2310 = !DILocation(line: 809, column: 6, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 809, column: 6)
!2312 = !DILocation(line: 809, column: 20, scope: !2311)
!2313 = !DILocation(line: 809, column: 23, scope: !2311)
!2314 = !DILocation(line: 809, column: 6, scope: !1662)
!2315 = !DILocation(line: 812, column: 18, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2311, file: !1, line: 809, column: 37)
!2317 = !DILocation(line: 812, column: 4, scope: !2316)
!2318 = !DILocation(line: 812, column: 13, scope: !2316)
!2319 = !DILocation(line: 812, column: 16, scope: !2316)
!2320 = !DILocation(line: 813, column: 24, scope: !2316)
!2321 = !DILocation(line: 813, column: 4, scope: !2316)
!2322 = !DILocation(line: 813, column: 13, scope: !2316)
!2323 = !DILocation(line: 813, column: 22, scope: !2316)
!2324 = !DILocation(line: 814, column: 31, scope: !2316)
!2325 = !DILocation(line: 814, column: 35, scope: !2316)
!2326 = !DILocation(line: 814, column: 44, scope: !2316)
!2327 = !DILocation(line: 814, column: 54, scope: !2316)
!2328 = !DILocation(line: 814, column: 9, scope: !2316)
!2329 = !DILocation(line: 814, column: 7, scope: !2316)
!2330 = !DILocation(line: 815, column: 4, scope: !2316)
!2331 = !DILocation(line: 815, column: 13, scope: !2316)
!2332 = !DILocation(line: 815, column: 22, scope: !2316)
!2333 = !DILocation(line: 816, column: 4, scope: !2316)
!2334 = !DILocation(line: 816, column: 13, scope: !2316)
!2335 = !DILocation(line: 816, column: 16, scope: !2316)
!2336 = !DILocation(line: 817, column: 11, scope: !2316)
!2337 = !DILocation(line: 817, column: 4, scope: !2316)
!2338 = !DILocation(line: 819, column: 6, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2316, file: !1, line: 817, column: 14)
!2340 = !DILocation(line: 821, column: 9, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2339, file: !1, line: 821, column: 9)
!2342 = !DILocation(line: 821, column: 18, scope: !2341)
!2343 = !DILocation(line: 821, column: 27, scope: !2341)
!2344 = !DILocation(line: 821, column: 9, scope: !2339)
!2345 = !DILocation(line: 822, column: 21, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2341, file: !1, line: 821, column: 43)
!2347 = !DILocation(line: 822, column: 25, scope: !2346)
!2348 = !DILocation(line: 822, column: 7, scope: !2346)
!2349 = !DILocation(line: 823, column: 6, scope: !2346)
!2350 = !DILocation(line: 824, column: 21, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2341, file: !1, line: 823, column: 11)
!2352 = !DILocation(line: 824, column: 25, scope: !2351)
!2353 = !DILocation(line: 824, column: 7, scope: !2351)
!2354 = !DILocation(line: 826, column: 26, scope: !2339)
!2355 = !DILocation(line: 826, column: 30, scope: !2339)
!2356 = !DILocation(line: 826, column: 6, scope: !2339)
!2357 = !DILocation(line: 827, column: 9, scope: !2339)
!2358 = !DILocation(line: 828, column: 6, scope: !2339)
!2359 = !DILocation(line: 831, column: 26, scope: !2339)
!2360 = !DILocation(line: 831, column: 30, scope: !2339)
!2361 = !DILocation(line: 831, column: 6, scope: !2339)
!2362 = !DILocation(line: 832, column: 9, scope: !2339)
!2363 = !DILocation(line: 833, column: 6, scope: !2339)
!2364 = !DILocation(line: 836, column: 24, scope: !2316)
!2365 = !DILocation(line: 836, column: 4, scope: !2316)
!2366 = !DILocation(line: 836, column: 13, scope: !2316)
!2367 = !DILocation(line: 836, column: 22, scope: !2316)
!2368 = !DILocation(line: 837, column: 24, scope: !2316)
!2369 = !DILocation(line: 837, column: 4, scope: !2316)
!2370 = !DILocation(line: 837, column: 13, scope: !2316)
!2371 = !DILocation(line: 837, column: 22, scope: !2316)
!2372 = !DILocation(line: 838, column: 13, scope: !2316)
!2373 = !DILocation(line: 839, column: 13, scope: !2316)
!2374 = !DILocation(line: 840, column: 3, scope: !2316)
!2375 = !DILocation(line: 841, column: 8, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !1, line: 841, column: 7)
!2377 = distinct !DILexicalBlock(scope: !2311, file: !1, line: 840, column: 8)
!2378 = !DILocation(line: 841, column: 12, scope: !2376)
!2379 = !DILocation(line: 841, column: 20, scope: !2376)
!2380 = !DILocation(line: 841, column: 42, scope: !2376)
!2381 = !DILocation(line: 841, column: 45, scope: !2376)
!2382 = !DILocation(line: 841, column: 54, scope: !2376)
!2383 = !DILocation(line: 841, column: 64, scope: !2376)
!2384 = !DILocation(line: 841, column: 81, scope: !2376)
!2385 = !DILocation(line: 841, column: 97, scope: !2376)
!2386 = !DILocation(line: 842, column: 6, scope: !2376)
!2387 = !DILocation(line: 842, column: 11, scope: !2376)
!2388 = !DILocation(line: 842, column: 15, scope: !2376)
!2389 = !DILocation(line: 842, column: 23, scope: !2376)
!2390 = !DILocation(line: 842, column: 45, scope: !2376)
!2391 = !DILocation(line: 842, column: 48, scope: !2376)
!2392 = !DILocation(line: 842, column: 52, scope: !2376)
!2393 = !DILocation(line: 842, column: 60, scope: !2376)
!2394 = !DILocation(line: 842, column: 77, scope: !2376)
!2395 = !DILocation(line: 842, column: 93, scope: !2376)
!2396 = !DILocation(line: 841, column: 7, scope: !2377)
!2397 = !DILocation(line: 844, column: 8, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !1, line: 844, column: 8)
!2399 = distinct !DILexicalBlock(scope: !2376, file: !1, line: 842, column: 103)
!2400 = !DILocation(line: 844, column: 17, scope: !2398)
!2401 = !DILocation(line: 844, column: 26, scope: !2398)
!2402 = !DILocation(line: 844, column: 8, scope: !2399)
!2403 = !DILocation(line: 845, column: 20, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2398, file: !1, line: 844, column: 42)
!2405 = !DILocation(line: 845, column: 24, scope: !2404)
!2406 = !DILocation(line: 845, column: 6, scope: !2404)
!2407 = !DILocation(line: 846, column: 5, scope: !2404)
!2408 = !DILocation(line: 847, column: 20, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2398, file: !1, line: 846, column: 10)
!2410 = !DILocation(line: 847, column: 24, scope: !2409)
!2411 = !DILocation(line: 847, column: 6, scope: !2409)
!2412 = !DILocation(line: 849, column: 8, scope: !2399)
!2413 = !DILocation(line: 850, column: 5, scope: !2399)
!2414 = !DILocation(line: 857, column: 5, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 857, column: 5)
!2416 = !DILocation(line: 857, column: 14, scope: !2415)
!2417 = !DILocation(line: 857, column: 24, scope: !2415)
!2418 = !DILocation(line: 857, column: 5, scope: !1662)
!2419 = !DILocation(line: 858, column: 6, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !1, line: 858, column: 6)
!2421 = distinct !DILexicalBlock(scope: !2415, file: !1, line: 857, column: 49)
!2422 = !DILocation(line: 858, column: 15, scope: !2420)
!2423 = !DILocation(line: 858, column: 6, scope: !2421)
!2424 = !DILocation(line: 859, column: 20, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2420, file: !1, line: 858, column: 24)
!2426 = !DILocation(line: 859, column: 4, scope: !2425)
!2427 = !DILocation(line: 860, column: 34, scope: !2425)
!2428 = !DILocation(line: 860, column: 43, scope: !2425)
!2429 = !DILocation(line: 860, column: 16, scope: !2425)
!2430 = !DILocation(line: 860, column: 14, scope: !2425)
!2431 = !DILocation(line: 861, column: 8, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2425, file: !1, line: 861, column: 7)
!2433 = !DILocation(line: 861, column: 7, scope: !2425)
!2434 = !DILocation(line: 862, column: 8, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2432, file: !1, line: 861, column: 18)
!2436 = !DILocation(line: 863, column: 5, scope: !2435)
!2437 = !DILocation(line: 865, column: 3, scope: !2425)
!2438 = !DILocation(line: 866, column: 7, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !1, line: 866, column: 7)
!2440 = distinct !DILexicalBlock(scope: !2420, file: !1, line: 865, column: 8)
!2441 = !DILocation(line: 866, column: 16, scope: !2439)
!2442 = !DILocation(line: 866, column: 25, scope: !2439)
!2443 = !DILocation(line: 866, column: 7, scope: !2440)
!2444 = !DILocation(line: 867, column: 19, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2439, file: !1, line: 866, column: 41)
!2446 = !DILocation(line: 867, column: 23, scope: !2445)
!2447 = !DILocation(line: 867, column: 5, scope: !2445)
!2448 = !DILocation(line: 868, column: 4, scope: !2445)
!2449 = !DILocation(line: 869, column: 19, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2439, file: !1, line: 868, column: 9)
!2451 = !DILocation(line: 869, column: 23, scope: !2450)
!2452 = !DILocation(line: 869, column: 5, scope: !2450)
!2453 = !DILocation(line: 871, column: 7, scope: !2440)
!2454 = !DILocation(line: 872, column: 4, scope: !2440)
!2455 = !DILocation(line: 874, column: 2, scope: !2421)
!2456 = !DILocation(line: 875, column: 25, scope: !1662)
!2457 = !DILocation(line: 875, column: 2, scope: !1662)
!2458 = !DILocation(line: 875, column: 11, scope: !1662)
!2459 = !DILocation(line: 875, column: 23, scope: !1662)
!2460 = !DILocation(line: 876, column: 16, scope: !1662)
!2461 = !DILocation(line: 876, column: 2, scope: !1662)
!2462 = !DILocation(line: 876, column: 11, scope: !1662)
!2463 = !DILocation(line: 876, column: 14, scope: !1662)
!2464 = !DILocation(line: 877, column: 18, scope: !1662)
!2465 = !DILocation(line: 877, column: 2, scope: !1662)
!2466 = !DILocation(line: 877, column: 11, scope: !1662)
!2467 = !DILocation(line: 877, column: 16, scope: !1662)
!2468 = !DILocation(line: 879, column: 5, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 879, column: 5)
!2470 = !DILocation(line: 879, column: 14, scope: !2469)
!2471 = !DILocation(line: 879, column: 5, scope: !1662)
!2472 = !DILocation(line: 880, column: 38, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2469, file: !1, line: 879, column: 26)
!2474 = !DILocation(line: 880, column: 42, scope: !2473)
!2475 = !DILocation(line: 880, column: 58, scope: !2473)
!2476 = !DILocation(line: 880, column: 69, scope: !2473)
!2477 = !DILocation(line: 880, column: 8, scope: !2473)
!2478 = !DILocation(line: 880, column: 6, scope: !2473)
!2479 = !DILocation(line: 881, column: 19, scope: !2473)
!2480 = !DILocation(line: 881, column: 3, scope: !2473)
!2481 = !DILocation(line: 882, column: 6, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2473, file: !1, line: 882, column: 6)
!2483 = !DILocation(line: 882, column: 9, scope: !2482)
!2484 = !DILocation(line: 882, column: 6, scope: !2473)
!2485 = !DILocation(line: 883, column: 34, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2482, file: !1, line: 882, column: 29)
!2487 = !DILocation(line: 883, column: 38, scope: !2486)
!2488 = !DILocation(line: 883, column: 47, scope: !2486)
!2489 = !DILocation(line: 883, column: 62, scope: !2486)
!2490 = !DILocation(line: 883, column: 11, scope: !2486)
!2491 = !DILocation(line: 883, column: 4, scope: !2486)
!2492 = !DILocation(line: 884, column: 12, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2482, file: !1, line: 884, column: 12)
!2494 = !DILocation(line: 884, column: 15, scope: !2493)
!2495 = !DILocation(line: 884, column: 12, scope: !2482)
!2496 = !DILocation(line: 885, column: 25, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2493, file: !1, line: 884, column: 41)
!2498 = !DILocation(line: 885, column: 4, scope: !2497)
!2499 = !DILocation(line: 886, column: 20, scope: !2497)
!2500 = !DILocation(line: 886, column: 24, scope: !2497)
!2501 = !DILocation(line: 886, column: 66, scope: !2497)
!2502 = !DILocation(line: 886, column: 81, scope: !2497)
!2503 = !DILocation(line: 886, column: 9, scope: !2497)
!2504 = !DILocation(line: 886, column: 7, scope: !2497)
!2505 = !DILocation(line: 887, column: 9, scope: !2497)
!2506 = !DILocation(line: 887, column: 4, scope: !2497)
!2507 = !DILocation(line: 888, column: 11, scope: !2497)
!2508 = !DILocation(line: 888, column: 4, scope: !2497)
!2509 = !DILocation(line: 890, column: 9, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2493, file: !1, line: 889, column: 8)
!2511 = !DILocation(line: 890, column: 4, scope: !2510)
!2512 = !DILocation(line: 891, column: 16, scope: !2510)
!2513 = !DILocation(line: 891, column: 4, scope: !2510)
!2514 = !DILocation(line: 892, column: 7, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2510, file: !1, line: 892, column: 7)
!2516 = !DILocation(line: 892, column: 10, scope: !2515)
!2517 = !DILocation(line: 892, column: 7, scope: !2510)
!2518 = !DILocation(line: 893, column: 19, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2515, file: !1, line: 892, column: 27)
!2520 = !DILocation(line: 893, column: 23, scope: !2519)
!2521 = !DILocation(line: 893, column: 5, scope: !2519)
!2522 = !DILocation(line: 894, column: 21, scope: !2519)
!2523 = !DILocation(line: 894, column: 30, scope: !2519)
!2524 = !DILocation(line: 894, column: 5, scope: !2519)
!2525 = !DILocation(line: 895, column: 5, scope: !2519)
!2526 = !DILocation(line: 895, column: 14, scope: !2519)
!2527 = !DILocation(line: 895, column: 17, scope: !2519)
!2528 = !DILocation(line: 896, column: 5, scope: !2519)
!2529 = !DILocation(line: 897, column: 13, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2515, file: !1, line: 897, column: 13)
!2531 = !DILocation(line: 897, column: 16, scope: !2530)
!2532 = !DILocation(line: 897, column: 13, scope: !2515)
!2533 = !DILocation(line: 899, column: 19, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2530, file: !1, line: 897, column: 42)
!2535 = !DILocation(line: 899, column: 23, scope: !2534)
!2536 = !DILocation(line: 899, column: 5, scope: !2534)
!2537 = !DILocation(line: 900, column: 21, scope: !2534)
!2538 = !DILocation(line: 900, column: 30, scope: !2534)
!2539 = !DILocation(line: 900, column: 5, scope: !2534)
!2540 = !DILocation(line: 901, column: 5, scope: !2534)
!2541 = !DILocation(line: 901, column: 14, scope: !2534)
!2542 = !DILocation(line: 901, column: 17, scope: !2534)
!2543 = !DILocation(line: 902, column: 5, scope: !2534)
!2544 = !DILocation(line: 904, column: 21, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2530, file: !1, line: 903, column: 9)
!2546 = !DILocation(line: 904, column: 30, scope: !2545)
!2547 = !DILocation(line: 904, column: 5, scope: !2545)
!2548 = !DILocation(line: 905, column: 5, scope: !2545)
!2549 = !DILocation(line: 905, column: 14, scope: !2545)
!2550 = !DILocation(line: 905, column: 17, scope: !2545)
!2551 = !DILocation(line: 906, column: 12, scope: !2545)
!2552 = !DILocation(line: 906, column: 5, scope: !2545)
!2553 = !DILocation(line: 910, column: 33, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2469, file: !1, line: 909, column: 7)
!2555 = !DILocation(line: 910, column: 37, scope: !2554)
!2556 = !DILocation(line: 910, column: 10, scope: !2554)
!2557 = !DILocation(line: 910, column: 3, scope: !2554)
!2558 = !DILocation(line: 915, column: 18, scope: !1662)
!2559 = !DILocation(line: 915, column: 2, scope: !1662)
!2560 = !DILocation(line: 916, column: 18, scope: !1662)
!2561 = !DILocation(line: 916, column: 2, scope: !1662)
!2562 = !DILocation(line: 917, column: 18, scope: !1662)
!2563 = !DILocation(line: 917, column: 2, scope: !1662)
!2564 = !DILocation(line: 918, column: 18, scope: !1662)
!2565 = !DILocation(line: 918, column: 2, scope: !1662)
!2566 = !DILocation(line: 919, column: 5, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 919, column: 5)
!2568 = !DILocation(line: 919, column: 5, scope: !1662)
!2569 = !DILocation(line: 920, column: 32, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2567, file: !1, line: 919, column: 17)
!2571 = !DILocation(line: 920, column: 45, scope: !2570)
!2572 = !DILocation(line: 920, column: 3, scope: !2570)
!2573 = !DILocation(line: 921, column: 19, scope: !2570)
!2574 = !DILocation(line: 921, column: 32, scope: !2570)
!2575 = !DILocation(line: 921, column: 36, scope: !2570)
!2576 = !DILocation(line: 921, column: 3, scope: !2570)
!2577 = !DILocation(line: 922, column: 19, scope: !2570)
!2578 = !DILocation(line: 922, column: 32, scope: !2570)
!2579 = !DILocation(line: 922, column: 36, scope: !2570)
!2580 = !DILocation(line: 922, column: 3, scope: !2570)
!2581 = !DILocation(line: 923, column: 19, scope: !2570)
!2582 = !DILocation(line: 923, column: 3, scope: !2570)
!2583 = !DILocation(line: 924, column: 2, scope: !2570)
!2584 = !DILocation(line: 929, column: 9, scope: !1662)
!2585 = !DILocation(line: 929, column: 2, scope: !1662)
!2586 = !DILocation(line: 930, column: 1, scope: !1662)
!2587 = distinct !DISubprogram(name: "client_id_gen", scope: !1, file: !1, line: 52, type: !2588, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !851)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!202, !2590, !484, !199}
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!2591 = !DILocalVariable(name: "idlen", arg: 1, scope: !2587, file: !1, line: 52, type: !2590)
!2592 = !DILocation(line: 52, column: 33, scope: !2587)
!2593 = !DILocalVariable(name: "auto_id_prefix", arg: 2, scope: !2587, file: !1, line: 52, type: !484)
!2594 = !DILocation(line: 52, column: 52, scope: !2587)
!2595 = !DILocalVariable(name: "auto_id_prefix_len", arg: 3, scope: !2587, file: !1, line: 52, type: !199)
!2596 = !DILocation(line: 52, column: 72, scope: !2587)
!2597 = !DILocalVariable(name: "client_id", scope: !2587, file: !1, line: 54, type: !202)
!2598 = !DILocation(line: 54, column: 8, scope: !2587)
!2599 = !DILocalVariable(name: "rnd", scope: !2587, file: !1, line: 55, type: !2600)
!2600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 128, elements: !2601)
!2601 = !{!2602}
!2602 = !DISubrange(count: 16)
!2603 = !DILocation(line: 55, column: 10, scope: !2587)
!2604 = !DILocalVariable(name: "i", scope: !2587, file: !1, line: 56, type: !199)
!2605 = !DILocation(line: 56, column: 6, scope: !2587)
!2606 = !DILocalVariable(name: "pos", scope: !2587, file: !1, line: 57, type: !199)
!2607 = !DILocation(line: 57, column: 6, scope: !2587)
!2608 = !DILocation(line: 59, column: 24, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2587, file: !1, line: 59, column: 5)
!2610 = !DILocation(line: 59, column: 5, scope: !2609)
!2611 = !DILocation(line: 59, column: 5, scope: !2587)
!2612 = !DILocation(line: 59, column: 34, scope: !2609)
!2613 = !DILocation(line: 61, column: 16, scope: !2587)
!2614 = !DILocation(line: 61, column: 14, scope: !2587)
!2615 = !DILocation(line: 61, column: 3, scope: !2587)
!2616 = !DILocation(line: 61, column: 9, scope: !2587)
!2617 = !DILocation(line: 63, column: 42, scope: !2587)
!2618 = !DILocation(line: 63, column: 41, scope: !2587)
!2619 = !DILocation(line: 63, column: 49, scope: !2587)
!2620 = !DILocation(line: 63, column: 40, scope: !2587)
!2621 = !DILocation(line: 63, column: 22, scope: !2587)
!2622 = !DILocation(line: 63, column: 12, scope: !2587)
!2623 = !DILocation(line: 64, column: 6, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2587, file: !1, line: 64, column: 5)
!2625 = !DILocation(line: 64, column: 5, scope: !2587)
!2626 = !DILocation(line: 65, column: 3, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2624, file: !1, line: 64, column: 16)
!2628 = !DILocation(line: 67, column: 5, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2587, file: !1, line: 67, column: 5)
!2630 = !DILocation(line: 67, column: 5, scope: !2587)
!2631 = !DILocation(line: 68, column: 10, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2629, file: !1, line: 67, column: 20)
!2633 = !DILocation(line: 68, column: 21, scope: !2632)
!2634 = !DILocation(line: 68, column: 37, scope: !2632)
!2635 = !DILocation(line: 68, column: 3, scope: !2632)
!2636 = !DILocation(line: 69, column: 2, scope: !2632)
!2637 = !DILocation(line: 71, column: 6, scope: !2587)
!2638 = !DILocation(line: 72, column: 7, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2587, file: !1, line: 72, column: 2)
!2640 = !DILocation(line: 72, column: 6, scope: !2639)
!2641 = !DILocation(line: 72, column: 11, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2639, file: !1, line: 72, column: 2)
!2643 = !DILocation(line: 72, column: 12, scope: !2642)
!2644 = !DILocation(line: 72, column: 2, scope: !2639)
!2645 = !DILocation(line: 73, column: 63, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2642, file: !1, line: 72, column: 21)
!2647 = !DILocation(line: 73, column: 59, scope: !2646)
!2648 = !DILocation(line: 73, column: 66, scope: !2646)
!2649 = !DILocation(line: 73, column: 45, scope: !2646)
!2650 = !DILocation(line: 73, column: 3, scope: !2646)
!2651 = !DILocation(line: 73, column: 13, scope: !2646)
!2652 = !DILocation(line: 73, column: 34, scope: !2646)
!2653 = !DILocation(line: 73, column: 32, scope: !2646)
!2654 = !DILocation(line: 73, column: 38, scope: !2646)
!2655 = !DILocation(line: 73, column: 43, scope: !2646)
!2656 = !DILocation(line: 74, column: 64, scope: !2646)
!2657 = !DILocation(line: 74, column: 60, scope: !2646)
!2658 = !DILocation(line: 74, column: 67, scope: !2646)
!2659 = !DILocation(line: 74, column: 73, scope: !2646)
!2660 = !DILocation(line: 74, column: 59, scope: !2646)
!2661 = !DILocation(line: 74, column: 45, scope: !2646)
!2662 = !DILocation(line: 74, column: 3, scope: !2646)
!2663 = !DILocation(line: 74, column: 13, scope: !2646)
!2664 = !DILocation(line: 74, column: 34, scope: !2646)
!2665 = !DILocation(line: 74, column: 32, scope: !2646)
!2666 = !DILocation(line: 74, column: 38, scope: !2646)
!2667 = !DILocation(line: 74, column: 43, scope: !2646)
!2668 = !DILocation(line: 75, column: 7, scope: !2646)
!2669 = !DILocation(line: 76, column: 6, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2646, file: !1, line: 76, column: 6)
!2671 = !DILocation(line: 76, column: 10, scope: !2670)
!2672 = !DILocation(line: 76, column: 15, scope: !2670)
!2673 = !DILocation(line: 76, column: 18, scope: !2670)
!2674 = !DILocation(line: 76, column: 22, scope: !2670)
!2675 = !DILocation(line: 76, column: 28, scope: !2670)
!2676 = !DILocation(line: 76, column: 31, scope: !2670)
!2677 = !DILocation(line: 76, column: 35, scope: !2670)
!2678 = !DILocation(line: 76, column: 41, scope: !2670)
!2679 = !DILocation(line: 76, column: 44, scope: !2670)
!2680 = !DILocation(line: 76, column: 48, scope: !2670)
!2681 = !DILocation(line: 76, column: 6, scope: !2646)
!2682 = !DILocation(line: 77, column: 4, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2670, file: !1, line: 76, column: 54)
!2684 = !DILocation(line: 77, column: 14, scope: !2683)
!2685 = !DILocation(line: 77, column: 35, scope: !2683)
!2686 = !DILocation(line: 77, column: 33, scope: !2683)
!2687 = !DILocation(line: 77, column: 40, scope: !2683)
!2688 = !DILocation(line: 78, column: 7, scope: !2683)
!2689 = !DILocation(line: 79, column: 3, scope: !2683)
!2690 = !DILocation(line: 80, column: 2, scope: !2646)
!2691 = !DILocation(line: 72, column: 18, scope: !2642)
!2692 = !DILocation(line: 72, column: 2, scope: !2642)
!2693 = distinct !{!2693, !2644, !2694}
!2694 = !DILocation(line: 80, column: 2, scope: !2639)
!2695 = !DILocation(line: 82, column: 9, scope: !2587)
!2696 = !DILocation(line: 82, column: 2, scope: !2587)
!2697 = !DILocation(line: 83, column: 1, scope: !2587)
!2698 = distinct !DISubprogram(name: "will__read", scope: !1, file: !1, line: 283, type: !2699, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !851)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!199, !194, !2701, !227, !199}
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!2702 = !DILocalVariable(name: "context", arg: 1, scope: !2698, file: !1, line: 283, type: !194)
!2703 = !DILocation(line: 283, column: 41, scope: !2698)
!2704 = !DILocalVariable(name: "will", arg: 2, scope: !2698, file: !1, line: 283, type: !2701)
!2705 = !DILocation(line: 283, column: 81, scope: !2698)
!2706 = !DILocalVariable(name: "will_qos", arg: 3, scope: !2698, file: !1, line: 283, type: !227)
!2707 = !DILocation(line: 283, column: 95, scope: !2698)
!2708 = !DILocalVariable(name: "will_retain", arg: 4, scope: !2698, file: !1, line: 283, type: !199)
!2709 = !DILocation(line: 283, column: 109, scope: !2698)
!2710 = !DILocalVariable(name: "rc", scope: !2698, file: !1, line: 285, type: !199)
!2711 = !DILocation(line: 285, column: 6, scope: !2698)
!2712 = !DILocalVariable(name: "slen", scope: !2698, file: !1, line: 286, type: !199)
!2713 = !DILocation(line: 286, column: 6, scope: !2698)
!2714 = !DILocalVariable(name: "will_struct", scope: !2698, file: !1, line: 287, type: !248)
!2715 = !DILocation(line: 287, column: 32, scope: !2698)
!2716 = !DILocalVariable(name: "will_topic_mount", scope: !2698, file: !1, line: 288, type: !202)
!2717 = !DILocation(line: 288, column: 8, scope: !2698)
!2718 = !DILocalVariable(name: "payloadlen", scope: !2698, file: !1, line: 289, type: !208)
!2719 = !DILocation(line: 289, column: 11, scope: !2698)
!2720 = !DILocalVariable(name: "properties", scope: !2698, file: !1, line: 290, type: !254)
!2721 = !DILocation(line: 290, column: 22, scope: !2698)
!2722 = !DILocation(line: 292, column: 16, scope: !2698)
!2723 = !DILocation(line: 292, column: 14, scope: !2698)
!2724 = !DILocation(line: 293, column: 6, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2698, file: !1, line: 293, column: 5)
!2726 = !DILocation(line: 293, column: 5, scope: !2698)
!2727 = !DILocation(line: 294, column: 6, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2725, file: !1, line: 293, column: 18)
!2729 = !DILocation(line: 295, column: 3, scope: !2728)
!2730 = !DILocation(line: 297, column: 5, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2698, file: !1, line: 297, column: 5)
!2732 = !DILocation(line: 297, column: 14, scope: !2731)
!2733 = !DILocation(line: 297, column: 23, scope: !2731)
!2734 = !DILocation(line: 297, column: 5, scope: !2698)
!2735 = !DILocation(line: 298, column: 38, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2731, file: !1, line: 297, column: 46)
!2737 = !DILocation(line: 298, column: 47, scope: !2736)
!2738 = !DILocation(line: 298, column: 8, scope: !2736)
!2739 = !DILocation(line: 298, column: 6, scope: !2736)
!2740 = !DILocation(line: 299, column: 6, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2736, file: !1, line: 299, column: 6)
!2742 = !DILocation(line: 299, column: 6, scope: !2736)
!2743 = !DILocation(line: 299, column: 10, scope: !2741)
!2744 = !DILocation(line: 301, column: 31, scope: !2736)
!2745 = !DILocation(line: 301, column: 40, scope: !2736)
!2746 = !DILocation(line: 301, column: 8, scope: !2736)
!2747 = !DILocation(line: 301, column: 6, scope: !2736)
!2748 = !DILocation(line: 302, column: 3, scope: !2736)
!2749 = !DILocation(line: 303, column: 6, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2736, file: !1, line: 303, column: 6)
!2751 = !DILocation(line: 303, column: 6, scope: !2736)
!2752 = !DILocation(line: 303, column: 10, scope: !2750)
!2753 = !DILocation(line: 304, column: 2, scope: !2736)
!2754 = !DILocation(line: 305, column: 28, scope: !2698)
!2755 = !DILocation(line: 305, column: 37, scope: !2698)
!2756 = !DILocation(line: 305, column: 49, scope: !2698)
!2757 = !DILocation(line: 305, column: 62, scope: !2698)
!2758 = !DILocation(line: 305, column: 66, scope: !2698)
!2759 = !DILocation(line: 305, column: 7, scope: !2698)
!2760 = !DILocation(line: 305, column: 5, scope: !2698)
!2761 = !DILocation(line: 306, column: 5, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2698, file: !1, line: 306, column: 5)
!2763 = !DILocation(line: 306, column: 5, scope: !2698)
!2764 = !DILocation(line: 306, column: 9, scope: !2762)
!2765 = !DILocation(line: 307, column: 6, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2698, file: !1, line: 307, column: 5)
!2767 = !DILocation(line: 307, column: 5, scope: !2698)
!2768 = !DILocation(line: 308, column: 6, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2766, file: !1, line: 307, column: 11)
!2770 = !DILocation(line: 309, column: 3, scope: !2769)
!2771 = !DILocation(line: 312, column: 5, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2698, file: !1, line: 312, column: 5)
!2773 = !DILocation(line: 312, column: 14, scope: !2772)
!2774 = !DILocation(line: 312, column: 24, scope: !2772)
!2775 = !DILocation(line: 312, column: 5, scope: !2698)
!2776 = !DILocation(line: 313, column: 17, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2772, file: !1, line: 312, column: 36)
!2778 = !DILocation(line: 313, column: 26, scope: !2777)
!2779 = !DILocation(line: 313, column: 36, scope: !2777)
!2780 = !DILocation(line: 313, column: 10, scope: !2777)
!2781 = !DILocation(line: 313, column: 58, scope: !2777)
!2782 = !DILocation(line: 313, column: 71, scope: !2777)
!2783 = !DILocation(line: 313, column: 75, scope: !2777)
!2784 = !DILocation(line: 313, column: 51, scope: !2777)
!2785 = !DILocation(line: 313, column: 49, scope: !2777)
!2786 = !DILocation(line: 313, column: 82, scope: !2777)
!2787 = !DILocation(line: 313, column: 8, scope: !2777)
!2788 = !DILocation(line: 314, column: 40, scope: !2777)
!2789 = !DILocation(line: 314, column: 44, scope: !2777)
!2790 = !DILocation(line: 314, column: 22, scope: !2777)
!2791 = !DILocation(line: 314, column: 20, scope: !2777)
!2792 = !DILocation(line: 315, column: 7, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2777, file: !1, line: 315, column: 6)
!2794 = !DILocation(line: 315, column: 6, scope: !2777)
!2795 = !DILocation(line: 316, column: 7, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2793, file: !1, line: 315, column: 24)
!2797 = !DILocation(line: 317, column: 4, scope: !2796)
!2798 = !DILocation(line: 320, column: 12, scope: !2777)
!2799 = !DILocation(line: 320, column: 30, scope: !2777)
!2800 = !DILocation(line: 320, column: 44, scope: !2777)
!2801 = !DILocation(line: 320, column: 53, scope: !2777)
!2802 = !DILocation(line: 320, column: 63, scope: !2777)
!2803 = !DILocation(line: 320, column: 76, scope: !2777)
!2804 = !DILocation(line: 320, column: 89, scope: !2777)
!2805 = !DILocation(line: 320, column: 93, scope: !2777)
!2806 = !DILocation(line: 320, column: 3, scope: !2777)
!2807 = !DILocation(line: 321, column: 3, scope: !2777)
!2808 = !DILocation(line: 321, column: 20, scope: !2777)
!2809 = !DILocation(line: 321, column: 26, scope: !2777)
!2810 = !DILocation(line: 323, column: 19, scope: !2777)
!2811 = !DILocation(line: 323, column: 32, scope: !2777)
!2812 = !DILocation(line: 323, column: 36, scope: !2777)
!2813 = !DILocation(line: 323, column: 3, scope: !2777)
!2814 = !DILocation(line: 324, column: 28, scope: !2777)
!2815 = !DILocation(line: 324, column: 3, scope: !2777)
!2816 = !DILocation(line: 324, column: 16, scope: !2777)
!2817 = !DILocation(line: 324, column: 20, scope: !2777)
!2818 = !DILocation(line: 324, column: 26, scope: !2777)
!2819 = !DILocation(line: 325, column: 2, scope: !2777)
!2820 = !DILocation(line: 327, column: 33, scope: !2698)
!2821 = !DILocation(line: 327, column: 46, scope: !2698)
!2822 = !DILocation(line: 327, column: 50, scope: !2698)
!2823 = !DILocation(line: 327, column: 7, scope: !2698)
!2824 = !DILocation(line: 327, column: 5, scope: !2698)
!2825 = !DILocation(line: 328, column: 5, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2698, file: !1, line: 328, column: 5)
!2827 = !DILocation(line: 328, column: 5, scope: !2698)
!2828 = !DILocation(line: 328, column: 9, scope: !2826)
!2829 = !DILocation(line: 330, column: 28, scope: !2698)
!2830 = !DILocation(line: 330, column: 37, scope: !2698)
!2831 = !DILocation(line: 330, column: 7, scope: !2698)
!2832 = !DILocation(line: 330, column: 5, scope: !2698)
!2833 = !DILocation(line: 331, column: 5, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2698, file: !1, line: 331, column: 5)
!2835 = !DILocation(line: 331, column: 5, scope: !2698)
!2836 = !DILocation(line: 331, column: 9, scope: !2834)
!2837 = !DILocation(line: 333, column: 32, scope: !2698)
!2838 = !DILocation(line: 333, column: 2, scope: !2698)
!2839 = !DILocation(line: 333, column: 15, scope: !2698)
!2840 = !DILocation(line: 333, column: 19, scope: !2698)
!2841 = !DILocation(line: 333, column: 30, scope: !2698)
!2842 = !DILocation(line: 334, column: 5, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2698, file: !1, line: 334, column: 5)
!2844 = !DILocation(line: 334, column: 18, scope: !2843)
!2845 = !DILocation(line: 334, column: 22, scope: !2843)
!2846 = !DILocation(line: 334, column: 33, scope: !2843)
!2847 = !DILocation(line: 334, column: 5, scope: !2698)
!2848 = !DILocation(line: 335, column: 48, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2843, file: !1, line: 334, column: 37)
!2850 = !DILocation(line: 335, column: 61, scope: !2849)
!2851 = !DILocation(line: 335, column: 65, scope: !2849)
!2852 = !DILocation(line: 335, column: 30, scope: !2849)
!2853 = !DILocation(line: 335, column: 3, scope: !2849)
!2854 = !DILocation(line: 335, column: 16, scope: !2849)
!2855 = !DILocation(line: 335, column: 20, scope: !2849)
!2856 = !DILocation(line: 335, column: 28, scope: !2849)
!2857 = !DILocation(line: 336, column: 7, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2849, file: !1, line: 336, column: 6)
!2859 = !DILocation(line: 336, column: 20, scope: !2858)
!2860 = !DILocation(line: 336, column: 24, scope: !2858)
!2861 = !DILocation(line: 336, column: 6, scope: !2849)
!2862 = !DILocation(line: 337, column: 7, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2858, file: !1, line: 336, column: 32)
!2864 = !DILocation(line: 338, column: 4, scope: !2863)
!2865 = !DILocation(line: 341, column: 28, scope: !2849)
!2866 = !DILocation(line: 341, column: 37, scope: !2849)
!2867 = !DILocation(line: 341, column: 48, scope: !2849)
!2868 = !DILocation(line: 341, column: 61, scope: !2849)
!2869 = !DILocation(line: 341, column: 65, scope: !2849)
!2870 = !DILocation(line: 341, column: 74, scope: !2849)
!2871 = !DILocation(line: 341, column: 87, scope: !2849)
!2872 = !DILocation(line: 341, column: 91, scope: !2849)
!2873 = !DILocation(line: 341, column: 8, scope: !2849)
!2874 = !DILocation(line: 341, column: 6, scope: !2849)
!2875 = !DILocation(line: 342, column: 6, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2849, file: !1, line: 342, column: 6)
!2877 = !DILocation(line: 342, column: 6, scope: !2849)
!2878 = !DILocation(line: 342, column: 10, scope: !2876)
!2879 = !DILocation(line: 343, column: 2, scope: !2849)
!2880 = !DILocation(line: 345, column: 25, scope: !2698)
!2881 = !DILocation(line: 345, column: 2, scope: !2698)
!2882 = !DILocation(line: 345, column: 15, scope: !2698)
!2883 = !DILocation(line: 345, column: 19, scope: !2698)
!2884 = !DILocation(line: 345, column: 23, scope: !2698)
!2885 = !DILocation(line: 346, column: 28, scope: !2698)
!2886 = !DILocation(line: 346, column: 2, scope: !2698)
!2887 = !DILocation(line: 346, column: 15, scope: !2698)
!2888 = !DILocation(line: 346, column: 19, scope: !2698)
!2889 = !DILocation(line: 346, column: 26, scope: !2698)
!2890 = !DILocation(line: 348, column: 10, scope: !2698)
!2891 = !DILocation(line: 348, column: 3, scope: !2698)
!2892 = !DILocation(line: 348, column: 8, scope: !2698)
!2893 = !DILocation(line: 349, column: 2, scope: !2698)
!2894 = !DILocation(line: 352, column: 5, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2698, file: !1, line: 352, column: 5)
!2896 = !DILocation(line: 352, column: 5, scope: !2698)
!2897 = !DILocation(line: 353, column: 19, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2895, file: !1, line: 352, column: 17)
!2899 = !DILocation(line: 353, column: 32, scope: !2898)
!2900 = !DILocation(line: 353, column: 36, scope: !2898)
!2901 = !DILocation(line: 353, column: 3, scope: !2898)
!2902 = !DILocation(line: 354, column: 19, scope: !2898)
!2903 = !DILocation(line: 354, column: 32, scope: !2898)
!2904 = !DILocation(line: 354, column: 36, scope: !2898)
!2905 = !DILocation(line: 354, column: 3, scope: !2898)
!2906 = !DILocation(line: 355, column: 32, scope: !2898)
!2907 = !DILocation(line: 355, column: 45, scope: !2898)
!2908 = !DILocation(line: 355, column: 3, scope: !2898)
!2909 = !DILocation(line: 356, column: 19, scope: !2898)
!2910 = !DILocation(line: 356, column: 3, scope: !2898)
!2911 = !DILocation(line: 357, column: 2, scope: !2898)
!2912 = !DILocation(line: 358, column: 9, scope: !2698)
!2913 = !DILocation(line: 358, column: 2, scope: !2698)
!2914 = !DILocation(line: 359, column: 1, scope: !2698)
!2915 = distinct !DISubprogram(name: "nibble_to_hex", scope: !1, file: !1, line: 43, type: !2916, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !851)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!203, !227}
!2918 = !DILocalVariable(name: "value", arg: 1, scope: !2915, file: !1, line: 43, type: !227)
!2919 = !DILocation(line: 43, column: 35, scope: !2915)
!2920 = !DILocation(line: 45, column: 5, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2915, file: !1, line: 45, column: 5)
!2922 = !DILocation(line: 45, column: 11, scope: !2921)
!2923 = !DILocation(line: 45, column: 5, scope: !2915)
!2924 = !DILocation(line: 46, column: 14, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2921, file: !1, line: 45, column: 18)
!2926 = !DILocation(line: 46, column: 13, scope: !2925)
!2927 = !DILocation(line: 46, column: 10, scope: !2925)
!2928 = !DILocation(line: 46, column: 3, scope: !2925)
!2929 = !DILocation(line: 48, column: 14, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2921, file: !1, line: 47, column: 7)
!2931 = !DILocation(line: 48, column: 13, scope: !2930)
!2932 = !DILocation(line: 48, column: 19, scope: !2930)
!2933 = !DILocation(line: 48, column: 10, scope: !2930)
!2934 = !DILocation(line: 48, column: 3, scope: !2930)
!2935 = !DILocation(line: 50, column: 1, scope: !2915)
