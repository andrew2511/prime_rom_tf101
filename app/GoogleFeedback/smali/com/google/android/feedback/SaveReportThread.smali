.class public Lcom/google/android/feedback/SaveReportThread;
.super Ljava/lang/Thread;
.source "SaveReportThread.java"


# static fields
.field private static final mCompareByDate:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Lcom/google/android/feedback/FeedbackActivity;

.field private final mReport:Lcom/google/android/feedback/ExtendedErrorReport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/google/android/feedback/SaveReportThread$1;

    invoke-direct {v0}, Lcom/google/android/feedback/SaveReportThread$1;-><init>()V

    sput-object v0, Lcom/google/android/feedback/SaveReportThread;->mCompareByDate:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/feedback/FeedbackActivity;Lcom/google/android/feedback/ExtendedErrorReport;)V
    .locals 0
    .parameter "context"
    .parameter "report"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/feedback/SaveReportThread;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    .line 47
    iput-object p2, p0, Lcom/google/android/feedback/SaveReportThread;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    .line 48
    return-void
.end method

.method private static createAndroidBugReportProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3
    .parameter "report"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->ANDROID_BUG_REPORT:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 140
    .local v0, result:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    invoke-static {p0}, Lcom/google/android/feedback/SaveReportThread;->createCommonDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 141
    const/4 v1, 0x2

    invoke-static {p0}, Lcom/google/android/feedback/SaveReportThread;->createAndroidDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 142
    return-object v0
.end method

.method private static createAndroidDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3
    .parameter "report"

    .prologue
    .line 158
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->ANDROID_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 159
    .local v0, androidData:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    invoke-static {p0}, Lcom/google/android/feedback/SaveReportThread;->createSystemDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 160
    const/4 v1, 0x2

    invoke-static {p0}, Lcom/google/android/feedback/SaveReportThread;->createPackageDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 161
    const/4 v1, 0x3

    invoke-static {p0}, Lcom/google/android/feedback/SaveReportThread;->createBuildDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 162
    iget-object v1, p0, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v1, :cond_0

    .line 163
    const/4 v1, 0x4

    invoke-static {p0}, Lcom/google/android/feedback/SaveReportThread;->createCrashDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 174
    :goto_0
    return-object v0

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/google/android/feedback/ExtendedErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    if-eqz v1, :cond_1

    .line 165
    const/4 v1, 0x5

    invoke-static {p0}, Lcom/google/android/feedback/SaveReportThread;->createAnrDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/google/android/feedback/ExtendedErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    if-eqz v1, :cond_2

    .line 167
    const/4 v1, 0x6

    invoke-static {p0}, Lcom/google/android/feedback/SaveReportThread;->createBatteryDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/google/android/feedback/ExtendedErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    if-eqz v1, :cond_3

    .line 169
    const/4 v1, 0x7

    invoke-static {p0}, Lcom/google/android/feedback/SaveReportThread;->createRunningServiceDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0

    .line 172
    :cond_3
    const-string v1, "SaveReportThread"

    const-string v2, "unknown error report type"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static createAnrDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3
    .parameter "report"

    .prologue
    .line 255
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->ANR_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 256
    .local v0, anrData:Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v1, p0, Lcom/google/android/feedback/ExtendedErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v1, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 257
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 259
    :cond_0
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 260
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/google/android/feedback/ExtendedErrorReport;->anrStackTraces:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 262
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->anrStackTraces:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 264
    :cond_1
    return-object v0
.end method

.method private static createBatteryDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 4
    .parameter "report"

    .prologue
    .line 271
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->BATTERY_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 272
    .local v0, batteryData:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    iget v2, v2, Landroid/app/ApplicationErrorReport$BatteryInfo;->usagePercent:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 273
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    iget-wide v2, v2, Landroid/app/ApplicationErrorReport$BatteryInfo;->durationMicros:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 274
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$BatteryInfo;->usageDetails:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 275
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$BatteryInfo;->checkinDetails:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 276
    return-object v0
.end method

.method private static createBuildDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3
    .parameter "report"

    .prologue
    .line 220
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->BUILD_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 221
    .local v0, buildData:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->device:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 222
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->buildId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 223
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->buildType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 224
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->model:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 225
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->product:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 226
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->sdk_int:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 227
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->release:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 228
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->incremental:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 229
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->codename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 230
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->board:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 231
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 232
    return-object v0
.end method

.method private static createCommonDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3
    .parameter "report"

    .prologue
    .line 149
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->COMMON_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 150
    .local v0, commonData:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 151
    return-object v0
.end method

.method private static createCrashDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3
    .parameter "report"

    .prologue
    .line 239
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->CRASH_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 240
    .local v0, crashData:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 242
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 243
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 244
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 245
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 246
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 247
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->throwLineNumber:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 248
    return-object v0
.end method

.method private static createPackageDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3
    .parameter "report"

    .prologue
    .line 206
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->PACKAGE_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 207
    .local v0, packageData:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 208
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 209
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 210
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->packageVersion:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 211
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->packageVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 212
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->systemApp:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 213
    return-object v0
.end method

.method private static createRunningServiceDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 4
    .parameter "report"

    .prologue
    .line 280
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->RUNNING_SERVICE_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 281
    .local v0, runningServiceData:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    iget-wide v2, v2, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 283
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/feedback/ExtendedErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 285
    return-object v0
.end method

.method private static createSystemDataProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 7
    .parameter "report"

    .prologue
    .line 181
    new-instance v3, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/google/android/feedback/proto/AndroidClientMessageTypes;->SYSTEM_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 182
    .local v3, systemData:Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v4, p0, Lcom/google/android/feedback/ExtendedErrorReport;->eventLog:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 183
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/android/feedback/ExtendedErrorReport;->eventLog:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 185
    :cond_0
    iget-object v4, p0, Lcom/google/android/feedback/ExtendedErrorReport;->systemLog:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 186
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/android/feedback/ExtendedErrorReport;->systemLog:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 188
    :cond_1
    const/4 v4, 0x1

    iget-wide v5, p0, Lcom/google/android/feedback/ExtendedErrorReport;->time:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 189
    iget-object v4, p0, Lcom/google/android/feedback/ExtendedErrorReport;->installedPackages:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 190
    iget-object v4, p0, Lcom/google/android/feedback/ExtendedErrorReport;->installedPackages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 191
    .local v2, p:Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {v3, v4, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    goto :goto_0

    .line 194
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #p:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/google/android/feedback/ExtendedErrorReport;->runningApplications:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 195
    iget-object v4, p0, Lcom/google/android/feedback/ExtendedErrorReport;->runningApplications:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    .local v0, a:Ljava/lang/String;
    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    goto :goto_1

    .line 199
    .end local v0           #a:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    return-object v3
.end method

.method private static declared-synchronized deleteOldest(Ljava/io/File;I)V
    .locals 5
    .parameter "dataDir"
    .parameter "max"

    .prologue
    .line 124
    const-class v3, Lcom/google/android/feedback/SaveReportThread;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 125
    .local v1, dataFiles:[Ljava/io/File;
    array-length v4, v1

    sub-int v0, v4, p1

    .line 126
    .local v0, chop:I
    if-lez v0, :cond_0

    .line 127
    sget-object v4, Lcom/google/android/feedback/SaveReportThread;->mCompareByDate:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 128
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 129
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v2           #i:I
    :cond_0
    monitor-exit v3

    return-void

    .line 124
    .end local v0           #chop:I
    .end local v1           #dataFiles:[Ljava/io/File;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method private saveReport(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/io/File;
    .locals 9
    .parameter "proto"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/google/android/feedback/SaveReportThread;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v6}, Lcom/google/android/feedback/FeedbackActivity;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "reports"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    .local v0, dataDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_0

    .line 75
    new-instance v6, Ljava/io/IOException;

    const-string v7, "failed to create reports directory"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 81
    :cond_0
    const/4 v6, 0x3

    invoke-static {v0, v6}, Lcom/google/android/feedback/SaveReportThread;->deleteOldest(Ljava/io/File;I)V

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, name:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    .local v4, tmpFile:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".proto.gz"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    .local v3, reportFile:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 89
    .local v2, out:Ljava/io/FileOutputStream;
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 90
    .local v5, zout:Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 91
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 93
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 94
    new-instance v6, Ljava/io/IOException;

    const-string v7, "failed to rename temporary file"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .end local v2           #out:Ljava/io/FileOutputStream;
    .end local v5           #zout:Ljava/util/zip/GZIPOutputStream;
    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    throw v6

    .restart local v2       #out:Ljava/io/FileOutputStream;
    .restart local v5       #zout:Ljava/util/zip/GZIPOutputStream;
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    return-object v3
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/google/android/feedback/SaveReportThread;->mReport:Lcom/google/android/feedback/ExtendedErrorReport;

    invoke-static {v2}, Lcom/google/android/feedback/SaveReportThread;->createAndroidBugReportProto(Lcom/google/android/feedback/ExtendedErrorReport;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 54
    .local v1, proto:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-direct {p0, v1}, Lcom/google/android/feedback/SaveReportThread;->saveReport(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/io/File;

    .line 56
    iget-object v2, p0, Lcom/google/android/feedback/SaveReportThread;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    invoke-virtual {v2}, Lcom/google/android/feedback/FeedbackActivity;->runSendService()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    .end local v1           #proto:Lcom/google/common/io/protocol/ProtoBuf;
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 58
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/android/feedback/SaveReportThread;->mContext:Lcom/google/android/feedback/FeedbackActivity;

    const v3, 0x7f050013

    invoke-virtual {v2, v3}, Lcom/google/android/feedback/FeedbackActivity;->showToast(I)V

    .line 59
    const-string v2, "SaveReportThread"

    const-string v3, "failed to write bug report"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 60
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 62
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "SaveReportThread"

    const-string v3, "invalid report"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
