.class public Lcom/android/commands/monkey/Monkey;
.super Ljava/lang/Object;
.source "Monkey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/Monkey$1;,
        Lcom/android/commands/monkey/Monkey$ActivityController;
    }
.end annotation


# static fields
.field private static final DEBUG_ALLOW_ANY_RESTARTS:I

.field private static final DEBUG_ALLOW_ANY_STARTS:I

.field private static LOGPATH:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static final TOMBSTONES_PATH:Ljava/io/File;

.field public static currentIntent:Landroid/content/Intent;

.field public static currentPackage:Ljava/lang/String;


# instance fields
.field private mAbort:Z

.field private mAm:Landroid/app/IActivityManager;

.field private mArgs:[Ljava/lang/String;

.field private mAsusElapseTimeEnd:J

.field private mAsusElapseTimeInterval:J

.field private mAsusElapseTimeStart:J

.field private mBugreportFrequency:J

.field mCount:I

.field private mCountEvents:Z

.field private mCurArgData:Ljava/lang/String;

.field mDeviceSleepTime:J

.field mDroppedFlipEvents:J

.field mDroppedKeyEvents:J

.field mDroppedPointerEvents:J

.field mDroppedTrackballEvents:J

.field mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

.field mFactors:[F

.field private mGenerateHprof:Z

.field private mGetPeriodicBugreport:Z

.field private mIgnoreCrashes:Z

.field private mIgnoreNativeCrashes:Z

.field private mIgnoreSecurityExceptions:Z

.field private mIgnoreTimeouts:Z

.field private mInvalidPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKillProcessAfterError:Z

.field private mMainApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mMainCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitorNativeCrashes:Z

.field private mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

.field private mNextArg:I

.field private mPkgBlacklistFile:Ljava/lang/String;

.field private mPkgWhitelistFile:Ljava/lang/String;

.field private mPm:Landroid/content/pm/IPackageManager;

.field mProfileWaitTime:J

.field mRandom:Ljava/util/Random;

.field mRandomizeScript:Z

.field mRandomizeThrottle:Z

.field private mReportProcessName:Ljava/lang/String;

.field private mRequestAnrBugreport:Z

.field private mRequestAnrTraces:Z

.field private mRequestAppCrashBugreport:Z

.field private mRequestBugreport:Z

.field private mRequestDumpsysMemInfo:Z

.field private mRequestPeriodicBugreport:Z

.field private mRequestProcRank:Z

.field private mResultCode:I

.field private mScriptFileNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mScriptLog:Z

.field mSeed:J

.field private mSendNoEvents:Z

.field private mServerPort:I

.field private mSetupFileName:Ljava/lang/String;

.field mThrottle:J

.field private mTombstones:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValidPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVerbose:I

.field private mVersion:Ljava/lang/String;

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 86
    const-string v0, "Monkey"

    sput-object v0, Lcom/android/commands/monkey/Monkey;->TAG:Ljava/lang/String;

    .line 88
    const-string v0, "/sdcard/log"

    sput-object v0, Lcom/android/commands/monkey/Monkey;->LOGPATH:Ljava/lang/String;

    .line 234
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/tombstones"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/commands/monkey/Monkey;->TOMBSTONES_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    .line 125
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    .line 131
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    .line 137
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    .line 143
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    .line 146
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mGetPeriodicBugreport:Z

    .line 151
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    .line 154
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/commands/monkey/Monkey;->mBugreportFrequency:J

    .line 162
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    .line 177
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    .line 180
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    .line 189
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    .line 192
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    .line 195
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    .line 198
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    .line 201
    iput-object v5, p0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    .line 204
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    .line 206
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    .line 208
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mDroppedTrackballEvents:J

    .line 210
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    .line 213
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    .line 216
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    .line 218
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    .line 220
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mScriptLog:Z

    .line 223
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    .line 226
    iput-object v5, p0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    .line 236
    iput-object v5, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    .line 238
    const/16 v0, 0xa

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    .line 242
    new-instance v0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-direct {v0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    .line 1381
    const-string v0, "3.1.0"

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mVersion:Ljava/lang/String;

    .line 1383
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mAsusElapseTimeStart:J

    .line 1385
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mAsusElapseTimeEnd:J

    .line 1387
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mAsusElapseTimeInterval:J

    .line 1388
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/commands/monkey/Monkey;->mResultCode:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/commands/monkey/Monkey;->checkEnteringPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/commands/monkey/Monkey;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/commands/monkey/Monkey;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/commands/monkey/Monkey;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/commands/monkey/Monkey;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/commands/monkey/Monkey;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreTimeouts:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/commands/monkey/Monkey;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/commands/monkey/Monkey;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreCrashes:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/commands/monkey/Monkey;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/commands/monkey/Monkey;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/commands/monkey/Monkey;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/commands/monkey/Monkey;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/commands/monkey/Monkey;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    return p1
.end method

.method private checkEnteringPackage(Ljava/lang/String;)Z
    .registers 4
    .parameter "pkg"

    .prologue
    const/4 v1, 0x0

    .line 256
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 257
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v1

    .line 265
    :goto_12
    return v0

    .line 260
    :cond_13
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 261
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    move v0, v1

    .line 262
    goto :goto_12

    .line 265
    :cond_25
    const/4 v0, 0x1

    goto :goto_12
.end method

.method private checkInternalConfiguration()Z
    .registers 2

    .prologue
    .line 954
    const/4 v0, 0x1

    return v0
.end method

.method private checkNativeCrashes()Z
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 1227
    sget-object v7, Lcom/android/commands/monkey/Monkey;->TOMBSTONES_PATH:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 1231
    .local v5, tombstones:[Ljava/lang/String;
    if-eqz v5, :cond_c

    array-length v7, v5

    if-nez v7, :cond_11

    .line 1232
    :cond_c
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    move v7, v8

    .line 1247
    :goto_10
    return v7

    .line 1237
    :cond_11
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1238
    .local v3, newStones:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_19
    if-ge v1, v2, :cond_23

    aget-object v6, v0, v1

    .line 1239
    .local v6, x:Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1238
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1242
    .end local v6           #x:Ljava/lang/String;
    :cond_23
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    if-eqz v7, :cond_2f

    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_35

    :cond_2f
    const/4 v7, 0x1

    move v4, v7

    .line 1245
    .local v4, result:Z
    :goto_31
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    move v7, v4

    .line 1247
    goto :goto_10

    .end local v4           #result:Z
    :cond_35
    move v4, v8

    .line 1242
    goto :goto_31
.end method

.method private commandLineReport(Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "reportName"
    .parameter "command"

    .prologue
    .line 411
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 412
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    .line 413
    .local v7, rt:Ljava/lang/Runtime;
    const/4 v4, 0x0

    .line 418
    .local v4, logOutput:Ljava/io/Writer;
    :try_start_1d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 420
    .local v6, p:Ljava/lang/Process;
    iget-boolean v10, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    if-eqz v10, :cond_3c

    .line 421
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/FileWriter;

    new-instance v11, Ljava/io/File;

    sget-object v12, Lcom/android/commands/monkey/Monkey;->LOGPATH:Ljava/lang/String;

    invoke-direct {v11, v12, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v5, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .end local v4           #logOutput:Ljava/io/Writer;
    .local v5, logOutput:Ljava/io/Writer;
    move-object v4, v5

    .line 424
    .end local v5           #logOutput:Ljava/io/Writer;
    .restart local v4       #logOutput:Ljava/io/Writer;
    :cond_3c
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 425
    .local v3, inStream:Ljava/io/InputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 426
    .local v2, inReader:Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 428
    .local v1, inBuffer:Ljava/io/BufferedReader;
    :goto_4a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, s:Ljava/lang/String;
    if-eqz v8, :cond_8d

    .line 429
    iget-boolean v10, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    if-eqz v10, :cond_87

    .line 430
    invoke-virtual {v4, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 431
    const-string v10, "\n"

    invoke-virtual {v4, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_5c} :catch_5d

    goto :goto_4a

    .line 443
    .end local v1           #inBuffer:Ljava/io/BufferedReader;
    .end local v2           #inReader:Ljava/io/InputStreamReader;
    .end local v3           #inStream:Ljava/io/InputStream;
    .end local v6           #p:Ljava/lang/Process;
    .end local v8           #s:Ljava/lang/String;
    :catch_5d
    move-exception v10

    move-object v0, v10

    .line 444
    .local v0, e:Ljava/lang/Exception;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "// Exception from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 445
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 447
    .end local v0           #e:Ljava/lang/Exception;
    :cond_86
    :goto_86
    return-void

    .line 433
    .restart local v1       #inBuffer:Ljava/io/BufferedReader;
    .restart local v2       #inReader:Ljava/io/InputStreamReader;
    .restart local v3       #inStream:Ljava/io/InputStream;
    .restart local v6       #p:Ljava/lang/Process;
    .restart local v8       #s:Ljava/lang/String;
    :cond_87
    :try_start_87
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v10, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4a

    .line 437
    :cond_8d
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    move-result v9

    .line 438
    .local v9, status:I
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "// "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " status was "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 440
    if-eqz v4, :cond_86

    .line 441
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_b8} :catch_5d

    goto :goto_86
.end method

.method private createLogFolder()V
    .registers 4

    .prologue
    .line 1415
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/commands/monkey/Monkey;->LOGPATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1416
    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 1421
    :goto_f
    return-void

    .line 1417
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 1418
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "// Exception from Create Log folder:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1419
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_f
.end method

.method private getBugreport(Ljava/lang/String;)V
    .registers 6
    .parameter "reportName"

    .prologue
    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 477
    const-string v1, "[ ,:]"

    const-string v2, "_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, bugreportName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bugreport"

    invoke-direct {p0, v1, v2}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method private getElapseTime()V
    .registers 7

    .prologue
    .line 1401
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mAsusElapseTimeEnd:J

    .line 1402
    iget-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mAsusElapseTimeEnd:J

    iget-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mAsusElapseTimeStart:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mAsusElapseTimeInterval:J

    .line 1403
    const/4 v0, 0x0

    .line 1404
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Elapse Time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/commands/monkey/Monkey;->mAsusElapseTimeInterval:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/commands/monkey/Monkey;->mAsusElapseTimeInterval:J

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " min )\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1406
    sget-object v1, Lcom/android/commands/monkey/Monkey;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Elapse Time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    return-void
.end method

.method private getMainApps()Z
    .registers 16

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    .line 1004
    :try_start_2
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1005
    .local v0, N:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_9
    if-ge v5, v0, :cond_101

    .line 1006
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1007
    .local v6, intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1008
    .local v3, category:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_23

    .line 1009
    invoke-virtual {v6, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1011
    :cond_23
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v10, v6, v11, v12}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    .line 1012
    .local v7, mainApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_33

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_4e

    .line 1013
    :cond_33
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "// Warning: no activities found for category "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1005
    :cond_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 1016
    :cond_4e
    iget v10, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lt v10, v14, :cond_6a

    .line 1017
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "// Selecting main activities from category "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1019
    :cond_6a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 1020
    .local v1, NA:I
    const/4 v2, 0x0

    .local v2, a:I
    :goto_6f
    if-ge v2, v1, :cond_4b

    .line 1021
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 1022
    .local v9, r:Landroid/content/pm/ResolveInfo;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1023
    .local v8, packageName:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->checkEnteringPackage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c4

    .line 1024
    iget v10, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lt v10, v14, :cond_b3

    .line 1025
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "//   + Using main activity "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (from package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1028
    :cond_b3
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v8, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1020
    :cond_c1
    :goto_c1
    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    .line 1030
    :cond_c4
    iget v10, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    const/4 v11, 0x3

    if-lt v10, v11, :cond_c1

    .line 1031
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "//   - NOT USING main activity "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (from package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_f5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f5} :catch_f6

    goto :goto_c1

    .line 1037
    .end local v0           #N:I
    .end local v1           #NA:I
    .end local v2           #a:I
    .end local v3           #category:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #mainApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #r:Landroid/content/pm/ResolveInfo;
    :catch_f6
    move-exception v10

    move-object v4, v10

    .line 1038
    .local v4, e:Landroid/os/RemoteException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "** Failed talking with package manager!"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v10, v13

    .line 1047
    .end local v4           #e:Landroid/os/RemoteException;
    :goto_100
    return v10

    .line 1042
    .restart local v0       #N:I
    .restart local v5       #i:I
    :cond_101
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_112

    .line 1043
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "** No activities found to run, monkey aborted."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v10, v13

    .line 1044
    goto :goto_100

    .line 1047
    :cond_112
    const/4 v10, 0x1

    goto :goto_100
.end method

.method private getMonkeyResult()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1467
    const-string v0, "Reason : Unknown Result code"

    .line 1470
    .local v0, s:Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mResultCode:I

    packed-switch v1, :pswitch_data_78

    .line 1485
    :goto_7
    return-object v0

    .line 1472
    :pswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reason : Monkey Success ! Result code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mResultCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1473
    goto :goto_7

    .line 1475
    :pswitch_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reason : App Crash ! Result code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mResultCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1476
    goto :goto_7

    .line 1478
    :pswitch_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reason : App NotResponding ! Result code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mResultCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1479
    goto :goto_7

    .line 1481
    :pswitch_5c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reason : Reboot by user or system ! Result code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mResultCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 1470
    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_8
        :pswitch_24
        :pswitch_40
        :pswitch_5c
    .end packed-switch
.end method

.method private getSystemInterfaces()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 963
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    .line 964
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    if-nez v1, :cond_14

    .line 965
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "** Error: Unable to connect to activity manager; is the system running?"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v4

    .line 992
    :goto_13
    return v1

    .line 970
    :cond_14
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    .line 971
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    if-nez v1, :cond_2d

    .line 972
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "** Error: Unable to connect to window manager; is the system running?"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v4

    .line 974
    goto :goto_13

    .line 977
    :cond_2d
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    .line 978
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    if-nez v1, :cond_46

    .line 979
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "** Error: Unable to connect to package manager; is the system running?"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v4

    .line 981
    goto :goto_13

    .line 985
    :cond_46
    :try_start_46
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    new-instance v2, Lcom/android/commands/monkey/Monkey$ActivityController;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/commands/monkey/Monkey$ActivityController;-><init>(Lcom/android/commands/monkey/Monkey;Lcom/android/commands/monkey/Monkey$1;)V

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V

    .line 986
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->register(Landroid/app/IActivityManager;)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_58} :catch_5a

    .line 992
    const/4 v1, 0x1

    goto :goto_13

    .line 987
    :catch_5a
    move-exception v1

    move-object v0, v1

    .line 988
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "** Failed talking with activity manager!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v4

    .line 989
    goto :goto_13
.end method

.method private static loadPackageListFromFile(Ljava/lang/String;Ljava/util/HashSet;)Z
    .registers 8
    .parameter "fileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 900
    .local p1, list:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 902
    .local v1, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_4c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_5d

    .line 904
    .end local v1           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    :cond_b
    :goto_b
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_36

    .line 905
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 906
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 907
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_5a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_26} :catch_27

    goto :goto_b

    .line 910
    .end local v3           #s:Ljava/lang/String;
    :catch_27
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .line 911
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v0, ioe:Ljava/io/IOException;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :goto_2a
    :try_start_2a
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_4c

    .line 912
    const/4 v4, 0x0

    .line 914
    if-eqz v1, :cond_35

    .line 916
    :try_start_32
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_45

    .line 922
    .end local v0           #ioe:Ljava/io/IOException;
    :cond_35
    :goto_35
    return v4

    .line 914
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    .restart local v3       #s:Ljava/lang/String;
    :cond_36
    if-eqz v2, :cond_3b

    .line 916
    :try_start_38
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3e

    .line 922
    :cond_3b
    :goto_3b
    const/4 v4, 0x1

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_35

    .line 917
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_3e
    move-exception v0

    .line 918
    .restart local v0       #ioe:Ljava/io/IOException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_3b

    .line 917
    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v3           #s:Ljava/lang/String;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :catch_45
    move-exception v0

    .line 918
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_35

    .line 914
    .end local v0           #ioe:Ljava/io/IOException;
    :catchall_4c
    move-exception v4

    :goto_4d
    if-eqz v1, :cond_52

    .line 916
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    .line 919
    :cond_52
    :goto_52
    throw v4

    .line 917
    :catch_53
    move-exception v0

    .line 918
    .restart local v0       #ioe:Ljava/io/IOException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_52

    .line 914
    .end local v0           #ioe:Ljava/io/IOException;
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catchall_5a
    move-exception v4

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_4d

    .line 910
    :catch_5d
    move-exception v4

    move-object v0, v4

    goto :goto_2a
.end method

.method private loadPackageLists()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 931
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1a

    :cond_d
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 933
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "** Error: you can not specify a package blacklist together with a whitelist or individual packages (via -p)."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v2

    .line 945
    :goto_19
    return v0

    .line 937
    :cond_1a
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-static {v0, v1}, Lcom/android/commands/monkey/Monkey;->loadPackageListFromFile(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v0

    if-nez v0, :cond_2a

    move v0, v2

    .line 939
    goto :goto_19

    .line 941
    :cond_2a
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    invoke-static {v0, v1}, Lcom/android/commands/monkey/Monkey;->loadPackageListFromFile(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v0

    if-nez v0, :cond_3a

    move v0, v2

    .line 943
    goto :goto_19

    .line 945
    :cond_3a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5
    .parameter "args"

    .prologue
    .line 487
    sget-object v1, Lcom/android/commands/monkey/Monkey;->TAG:Ljava/lang/String;

    const-string v2, "Monkey Test Start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-string v1, "debug.monkey"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v1, "com.android.commands.monkey"

    invoke-static {v1}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 494
    new-instance v1, Lcom/android/commands/monkey/Monkey;

    invoke-direct {v1}, Lcom/android/commands/monkey/Monkey;-><init>()V

    invoke-direct {v1, p0}, Lcom/android/commands/monkey/Monkey;->run([Ljava/lang/String;)I

    move-result v0

    .line 498
    .local v0, resultCode:I
    sget-object v1, Lcom/android/commands/monkey/Monkey;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Monkey Exit for Result Code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    packed-switch v0, :pswitch_data_84

    .line 519
    sget-object v1, Lcom/android/commands/monkey/Monkey;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "// Monkey Crash at Cycle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :goto_4f
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 525
    return-void

    .line 501
    :pswitch_53
    sget-object v1, Lcom/android/commands/monkey/Monkey;->TAG:Ljava/lang/String;

    const-string v2, "// Error binding to network socket or source generator fail."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 504
    :pswitch_5b
    sget-object v1, Lcom/android/commands/monkey/Monkey;->TAG:Ljava/lang/String;

    const-string v2, "// Monkey getMainApps fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 507
    :pswitch_63
    sget-object v1, Lcom/android/commands/monkey/Monkey;->TAG:Ljava/lang/String;

    const-string v2, "// Monkey getSystemInterfaces fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 510
    :pswitch_6b
    sget-object v1, Lcom/android/commands/monkey/Monkey;->TAG:Ljava/lang/String;

    const-string v2, "// Monkey checkInternalConfiguration fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 513
    :pswitch_73
    sget-object v1, Lcom/android/commands/monkey/Monkey;->TAG:Ljava/lang/String;

    const-string v2, "// Monkey processOptions fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 516
    :pswitch_7b
    sget-object v1, Lcom/android/commands/monkey/Monkey;->TAG:Ljava/lang/String;

    const-string v2, "// Monkey finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 499
    nop

    :pswitch_data_84
    .packed-switch -0x5
        :pswitch_53
        :pswitch_5b
        :pswitch_63
        :pswitch_6b
        :pswitch_73
        :pswitch_7b
    .end packed-switch
.end method

.method private nextArg()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1334
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_9

    .line 1335
    const/4 v1, 0x0

    .line 1339
    :goto_8
    return-object v1

    .line 1337
    :cond_9
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    aget-object v0, v1, v2

    .line 1338
    .local v0, arg:Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    move-object v1, v0

    .line 1339
    goto :goto_8
.end method

.method private nextOption()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1269
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_c

    move-object v1, v3

    .line 1290
    :goto_b
    return-object v1

    .line 1272
    :cond_c
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    aget-object v0, v1, v2

    .line 1273
    .local v0, arg:Ljava/lang/String;
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    move-object v1, v3

    .line 1274
    goto :goto_b

    .line 1276
    :cond_1c
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    .line 1277
    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    move-object v1, v3

    .line 1278
    goto :goto_b

    .line 1280
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_50

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_50

    .line 1281
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_4c

    .line 1282
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    .line 1283
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 1285
    :cond_4c
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    move-object v1, v0

    .line 1286
    goto :goto_b

    .line 1289
    :cond_50
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    move-object v1, v0

    .line 1290
    goto :goto_b
.end method

.method private nextOptionData()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1299
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1300
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    .line 1307
    :goto_6
    return-object v1

    .line 1302
    :cond_7
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_10

    .line 1303
    const/4 v1, 0x0

    goto :goto_6

    .line 1305
    :cond_10
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    aget-object v0, v1, v2

    .line 1306
    .local v0, data:Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    move-object v1, v0

    .line 1307
    goto :goto_6
.end method

.method private nextOptionLong(Ljava/lang/String;)J
    .registers 8
    .parameter "opt"

    .prologue
    .line 1320
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide v1

    .line 1325
    .local v1, result:J
    return-wide v1

    .line 1321
    .end local v1           #result:J
    :catch_9
    move-exception v3

    move-object v0, v3

    .line 1322
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "** Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1323
    throw v0
.end method

.method private processOptions()Z
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 757
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v5, v5

    if-ge v5, v8, :cond_c

    .line 758
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    move v5, v9

    .line 889
    :goto_b
    return v5

    .line 764
    :cond_c
    :goto_c
    :try_start_c
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOption()Ljava/lang/String;

    move-result-object v4

    .local v4, opt:Ljava/lang/String;
    if-eqz v4, :cond_2f6

    .line 765
    const-string v5, "-s"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 766
    const-string v5, "Seed"

    invoke-direct {p0, v5}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/commands/monkey/Monkey;->mSeed:J
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_22} :catch_23

    goto :goto_c

    .line 864
    .end local v4           #opt:Ljava/lang/String;
    :catch_23
    move-exception v5

    move-object v2, v5

    .line 865
    .local v2, ex:Ljava/lang/RuntimeException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "** Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 866
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    move v5, v9

    .line 867
    goto :goto_b

    .line 767
    .end local v2           #ex:Ljava/lang/RuntimeException;
    .restart local v4       #opt:Ljava/lang/String;
    :cond_46
    :try_start_46
    const-string v5, "-p"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 768
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 769
    :cond_58
    const-string v5, "-c"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 770
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 771
    :cond_6a
    const-string v5, "-v"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 772
    iget v5, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    goto :goto_c

    .line 773
    :cond_79
    const-string v5, "--ignore-crashes"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 774
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreCrashes:Z

    goto :goto_c

    .line 775
    :cond_85
    const-string v5, "--ignore-timeouts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 776
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreTimeouts:Z

    goto/16 :goto_c

    .line 777
    :cond_92
    const-string v5, "--ignore-security-exceptions"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 778
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreSecurityExceptions:Z

    goto/16 :goto_c

    .line 779
    :cond_9f
    const-string v5, "--monitor-native-crashes"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 780
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mMonitorNativeCrashes:Z

    goto/16 :goto_c

    .line 781
    :cond_ac
    const-string v5, "--ignore-native-crashes"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 782
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreNativeCrashes:Z

    goto/16 :goto_c

    .line 783
    :cond_b9
    const-string v5, "--kill-process-after-error"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 784
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    goto/16 :goto_c

    .line 785
    :cond_c6
    const-string v5, "--hprof"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d3

    .line 786
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    goto/16 :goto_c

    .line 787
    :cond_d3
    const-string v5, "--pct-touch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ea

    .line 788
    const/4 v3, 0x0

    .line 789
    .local v3, i:I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "touch events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    goto/16 :goto_c

    .line 790
    .end local v3           #i:I
    :cond_ea
    const-string v5, "--pct-motion"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_101

    .line 791
    const/4 v3, 0x1

    .line 792
    .restart local v3       #i:I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "motion events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    goto/16 :goto_c

    .line 793
    .end local v3           #i:I
    :cond_101
    const-string v5, "--pct-trackball"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_118

    .line 794
    const/4 v3, 0x3

    .line 795
    .restart local v3       #i:I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "trackball events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    goto/16 :goto_c

    .line 796
    .end local v3           #i:I
    :cond_118
    const-string v5, "--pct-syskeys"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12f

    .line 797
    const/4 v3, 0x6

    .line 798
    .restart local v3       #i:I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "system (key) operations percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    goto/16 :goto_c

    .line 799
    .end local v3           #i:I
    :cond_12f
    const-string v5, "--pct-nav"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_146

    .line 800
    const/4 v3, 0x4

    .line 801
    .restart local v3       #i:I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "nav events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    goto/16 :goto_c

    .line 802
    .end local v3           #i:I
    :cond_146
    const-string v5, "--pct-majornav"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15d

    .line 803
    const/4 v3, 0x5

    .line 804
    .restart local v3       #i:I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "major nav events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    goto/16 :goto_c

    .line 805
    .end local v3           #i:I
    :cond_15d
    const-string v5, "--pct-appswitch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_174

    .line 806
    const/4 v3, 0x7

    .line 807
    .restart local v3       #i:I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "app switch events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    goto/16 :goto_c

    .line 808
    .end local v3           #i:I
    :cond_174
    const-string v5, "--pct-flip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18c

    .line 809
    const/16 v3, 0x8

    .line 810
    .restart local v3       #i:I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "keyboard flip percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    goto/16 :goto_c

    .line 811
    .end local v3           #i:I
    :cond_18c
    const-string v5, "--pct-anyevent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a4

    .line 812
    const/16 v3, 0x9

    .line 813
    .restart local v3       #i:I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "any events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    goto/16 :goto_c

    .line 814
    .end local v3           #i:I
    :cond_1a4
    const-string v5, "--pct-pinchzoom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1bb

    .line 815
    const/4 v3, 0x2

    .line 816
    .restart local v3       #i:I
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v6, "pinch zoom events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v5, v3

    goto/16 :goto_c

    .line 817
    .end local v3           #i:I
    :cond_1bb
    const-string v5, "--pkg-blacklist-file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1cb

    .line 818
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    goto/16 :goto_c

    .line 819
    :cond_1cb
    const-string v5, "--pkg-whitelist-file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1db

    .line 820
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    goto/16 :goto_c

    .line 821
    :cond_1db
    const-string v5, "--throttle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ed

    .line 822
    const-string v5, "delay (in milliseconds) to wait between events"

    invoke-direct {p0, v5}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    goto/16 :goto_c

    .line 823
    :cond_1ed
    const-string v5, "--randomize-throttle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1fa

    .line 824
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    goto/16 :goto_c

    .line 825
    :cond_1fa
    const-string v5, "--wait-dbg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 827
    const-string v5, "--dbg-no-events"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20f

    .line 828
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mSendNoEvents:Z

    goto/16 :goto_c

    .line 829
    :cond_20f
    const-string v5, "--port"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_222

    .line 830
    const-string v5, "Server port to listen on for commands"

    invoke-direct {p0, v5}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    goto/16 :goto_c

    .line 831
    :cond_222
    const-string v5, "--setup"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_232

    .line 832
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    goto/16 :goto_c

    .line 833
    :cond_232
    const-string v5, "-f"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_245

    .line 834
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 835
    :cond_245
    const-string v5, "--profile-wait"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_257

    .line 836
    const-string v5, "Profile delay (in milliseconds) to wait between user action"

    invoke-direct {p0, v5}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    goto/16 :goto_c

    .line 838
    :cond_257
    const-string v5, "--device-sleep-time"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_269

    .line 839
    const-string v5, "Device sleep time(in milliseconds)"

    invoke-direct {p0, v5}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    goto/16 :goto_c

    .line 841
    :cond_269
    const-string v5, "--randomize-script"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_276

    .line 842
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    goto/16 :goto_c

    .line 843
    :cond_276
    const-string v5, "--script-log"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_283

    .line 844
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mScriptLog:Z

    goto/16 :goto_c

    .line 845
    :cond_283
    const-string v5, "--bugreport"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_290

    .line 846
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    goto/16 :goto_c

    .line 847
    :cond_290
    const-string v5, "--periodic-bugreport"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a5

    .line 848
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mGetPeriodicBugreport:Z

    .line 849
    const-string v5, "Number of iterations"

    invoke-direct {p0, v5}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/commands/monkey/Monkey;->mBugreportFrequency:J

    goto/16 :goto_c

    .line 850
    :cond_2a5
    const-string v5, "-h"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b3

    .line 851
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    move v5, v9

    .line 852
    goto/16 :goto_b

    .line 854
    :cond_2b3
    const-string v5, "--version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d8

    .line 855
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Monkey Version : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v5, v9

    .line 856
    goto/16 :goto_b

    .line 859
    :cond_2d8
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "** Error: Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 860
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V
    :try_end_2f3
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_2f3} :catch_23

    move v5, v9

    .line 861
    goto/16 :goto_b

    .line 872
    :cond_2f6
    iget v5, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_314

    .line 873
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 874
    .local v0, countStr:Ljava/lang/String;
    if-nez v0, :cond_30e

    .line 875
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "** Error: Count not specified"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 876
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    move v5, v9

    .line 877
    goto/16 :goto_b

    .line 881
    :cond_30e
    :try_start_30e
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/commands/monkey/Monkey;->mCount:I
    :try_end_314
    .catch Ljava/lang/NumberFormatException; {:try_start_30e .. :try_end_314} :catch_317

    .end local v0           #countStr:Ljava/lang/String;
    :cond_314
    move v5, v8

    .line 889
    goto/16 :goto_b

    .line 882
    .restart local v0       #countStr:Ljava/lang/String;
    :catch_317
    move-exception v5

    move-object v1, v5

    .line 883
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "** Error: Count is not a number"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 884
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    move v5, v9

    .line 885
    goto/16 :goto_b
.end method

.method private reportAnrTraces()V
    .registers 3

    .prologue
    .line 383
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_d

    .line 386
    :goto_5
    const-string v0, "anr traces"

    const-string v1, "cat /data/anr/traces.txt"

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-void

    .line 384
    :catch_d
    move-exception v0

    goto :goto_5
.end method

.method private reportDumpsysMemInfo()V
    .registers 3

    .prologue
    .line 397
    const-string v0, "meminfo"

    const-string v1, "dumpsys meminfo"

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method private reportProcRank()V
    .registers 3

    .prologue
    .line 374
    const-string v0, "procrank"

    const-string v1, "procrank"

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method private reportSystemMemInfo()V
    .registers 13

    .prologue
    .line 1427
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    .line 1431
    .local v7, rt:Ljava/lang/Runtime;
    :try_start_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const-string v10, "dumpsys meminfo"

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 1433
    .local v6, p:Ljava/lang/Process;
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 1434
    .local v4, inStream:Ljava/io/InputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1435
    .local v3, inReader:Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1436
    .local v2, inBuffer:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 1437
    .local v5, line:Ljava/lang/String;
    :cond_1d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_54

    .line 1438
    const-string v9, "[system]"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_1d

    .line 1440
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2c
    const/4 v9, 0x4

    if-ge v1, v9, :cond_36

    .line 1441
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 1440
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 1444
    :cond_36
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 1445
    if-eqz v5, :cond_54

    .line 1446
    sget-object v9, Lcom/android/commands/monkey/Monkey;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Native, Dalvik, Others, Total:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    .end local v1           #i:I
    :cond_54
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    move-result v8

    .line 1452
    .local v8, status:I
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1453
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    .line 1454
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "// dumpsys meminfo status was "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_76} :catch_77

    .line 1459
    .end local v2           #inBuffer:Ljava/io/BufferedReader;
    .end local v3           #inReader:Ljava/io/InputStreamReader;
    .end local v4           #inStream:Ljava/io/InputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #p:Ljava/lang/Process;
    .end local v8           #status:I
    :goto_76
    return-void

    .line 1455
    :catch_77
    move-exception v9

    move-object v0, v9

    .line 1456
    .local v0, e:Ljava/lang/Exception;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_76
.end method

.method private run([Ljava/lang/String;)I
    .registers 25
    .parameter "args"

    .prologue
    .line 535
    move-object/from16 v15, p1

    .local v15, arr$:[Ljava/lang/String;
    move-object v0, v15

    array-length v0, v0

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_8
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_21

    aget-object v22, v15, v19

    .line 536
    .local v22, s:Ljava/lang/String;
    const-string v3, "--wait-dbg"

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 537
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 535
    :cond_1e
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    .line 542
    .end local v22           #s:Ljava/lang/String;
    :cond_21
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    .line 543
    const/16 v3, 0x3e8

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/monkey/Monkey;->mCount:I

    .line 544
    const-wide/16 v3, 0x0

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/commands/monkey/Monkey;->mSeed:J

    .line 545
    const-wide/16 v3, 0x0

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    .line 548
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    .line 549
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    .line 552
    const/16 v18, 0x0

    .local v18, i:I
    :goto_4a
    const/16 v3, 0xa

    move/from16 v0, v18

    move v1, v3

    if-ge v0, v1, :cond_5d

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    move-object v3, v0

    const/high16 v4, 0x3f80

    aput v4, v3, v18

    .line 552
    add-int/lit8 v18, v18, 0x1

    goto :goto_4a

    .line 556
    :cond_5d
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->processOptions()Z

    move-result v3

    if-nez v3, :cond_65

    .line 557
    const/4 v3, -0x1

    .line 746
    .end local p1
    :goto_64
    return v3

    .line 560
    .restart local p1
    :cond_65
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->loadPackageLists()Z

    move-result v3

    if-nez v3, :cond_6d

    .line 561
    const/4 v3, -0x1

    goto :goto_64

    .line 565
    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_8c

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    move-object v3, v0

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    move-object v3, v0

    const-string v4, "android.intent.category.MONKEY"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    :cond_8c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    move v3, v0

    if-lez v3, :cond_19f

    .line 571
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":Monkey: seed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 572
    sget-object v3, Lcom/android/commands/monkey/Monkey;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":Monkey: seed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_127

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 575
    .end local p1
    .local v20, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_ff
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_127

    .line 576
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":AllowPackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_ff

    .line 579
    .end local v20           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_163

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 581
    .restart local v20       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_13b
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_163

    .line 582
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":DisallowPackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_13b

    .line 585
    .end local v20           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_19f

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 587
    .restart local v20       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_177
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19f

    .line 588
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":IncludeCategory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_177

    .line 593
    .end local v20           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_19f
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->checkInternalConfiguration()Z

    move-result v3

    if-nez v3, :cond_1a8

    .line 594
    const/4 v3, -0x2

    goto/16 :goto_64

    .line 597
    :cond_1a8
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->getSystemInterfaces()Z

    move-result v3

    if-nez v3, :cond_1b1

    .line 598
    const/4 v3, -0x3

    goto/16 :goto_64

    .line 601
    :cond_1b1
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->getMainApps()Z

    move-result v3

    if-nez v3, :cond_1ba

    .line 602
    const/4 v3, -0x4

    goto/16 :goto_64

    .line 605
    :cond_1ba
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_23c

    const-wide/16 v4, -0x1

    :goto_1d6
    invoke-virtual {v3, v4, v5}, Ljava/util/Random;->setSeed(J)V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    move-object v3, v0

    if-eqz v3, :cond_242

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_242

    .line 610
    new-instance v3, Lcom/android/commands/monkey/MonkeySourceScript;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    move-wide v6, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    move v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    move-wide v9, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    move-wide v11, v0

    invoke-direct/range {v3 .. v12}, Lcom/android/commands/monkey/MonkeySourceScript;-><init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    move v4, v0

    invoke-interface {v3, v4}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    .line 614
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    .line 656
    :goto_22e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    move-object v3, v0

    invoke-interface {v3}, Lcom/android/commands/monkey/MonkeyEventSource;->validate()Z

    move-result v3

    if-nez v3, :cond_3b3

    .line 657
    const/4 v3, -0x5

    goto/16 :goto_64

    .line 606
    :cond_23c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    move-wide v4, v0

    goto :goto_1d6

    .line 615
    :cond_242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    move-object v3, v0

    if-eqz v3, :cond_2dc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2dc

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_2ae

    .line 617
    new-instance v3, Lcom/android/commands/monkey/MonkeySourceRandomScript;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    move-wide v6, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    move v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    move-wide v10, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    move-wide v12, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    move v14, v0

    invoke-direct/range {v3 .. v14}, Lcom/android/commands/monkey/MonkeySourceRandomScript;-><init>(Ljava/lang/String;Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 620
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/monkey/Monkey;->mCount:I

    .line 626
    :goto_29a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    move v4, v0

    invoke-interface {v3, v4}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    .line 627
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    goto :goto_22e

    .line 622
    :cond_2ae
    new-instance v3, Lcom/android/commands/monkey/MonkeySourceRandomScript;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    move-wide v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    move-wide v9, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    move-wide v11, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    move v13, v0

    invoke-direct/range {v3 .. v13}, Lcom/android/commands/monkey/MonkeySourceRandomScript;-><init>(Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    goto :goto_29a

    .line 628
    :cond_2dc
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    move v3, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_30a

    .line 630
    :try_start_2e4
    new-instance v3, Lcom/android/commands/monkey/MonkeySourceNetwork;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    move v4, v0

    invoke-direct {v3, v4}, Lcom/android/commands/monkey/MonkeySourceNetwork;-><init>(I)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;
    :try_end_2f3
    .catch Ljava/io/IOException; {:try_start_2e4 .. :try_end_2f3} :catch_2fd

    .line 635
    const v3, 0x7fffffff

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/monkey/Monkey;->mCount:I

    goto/16 :goto_22e

    .line 631
    :catch_2fd
    move-exception v3

    move-object/from16 v17, v3

    .line 632
    .local v17, e:Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Error binding to network socket."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 633
    const/4 v3, -0x5

    goto/16 :goto_64

    .line 638
    .end local v17           #e:Ljava/io/IOException;
    :cond_30a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    move v3, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_34c

    .line 639
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "// Seeded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 640
    sget-object v3, Lcom/android/commands/monkey/Monkey;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "// Seeded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_34c
    new-instance v3, Lcom/android/commands/monkey/MonkeySourceRandom;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    move-wide v6, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    move v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/commands/monkey/MonkeySourceRandom;-><init>(Ljava/util/Random;Ljava/util/ArrayList;JZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    move v4, v0

    invoke-interface {v3, v4}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    .line 645
    const/16 v18, 0x0

    :goto_379
    const/16 v3, 0xa

    move/from16 v0, v18

    move v1, v3

    if-ge v0, v1, :cond_3a6

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    move-object v3, v0

    aget v3, v3, v18

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3a3

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/commands/monkey/MonkeySourceRandom;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    move-object v3, v0

    aget v3, v3, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->setFactors(IF)V

    .line 645
    :cond_3a3
    add-int/lit8 v18, v18, 0x1

    goto :goto_379

    .line 652
    :cond_3a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/commands/monkey/MonkeySourceRandom;

    invoke-virtual/range {p1 .. p1}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateActivity()V

    goto/16 :goto_22e

    .line 662
    :cond_3b3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    move v3, v0

    if-eqz v3, :cond_3bd

    .line 663
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->signalPersistentProcesses()V

    .line 666
    :cond_3bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->start()V

    .line 669
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->startElapseTime()V

    .line 670
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->createLogFolder()V

    .line 671
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/Monkey;->writeScriptLog(I)V

    .line 672
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->runMonkeyCycles()I

    move-result v16

    .line 673
    .local v16, crashedAtCycle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->stop()V

    .line 675
    monitor-enter p0

    .line 676
    :try_start_3df
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    move v3, v0

    if-eqz v3, :cond_3ef

    .line 677
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->reportAnrTraces()V

    .line 678
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    .line 680
    :cond_3ef
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    move v3, v0

    if-eqz v3, :cond_427

    .line 681
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Print the anr report"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 682
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "anr_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 683
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    .line 685
    :cond_427
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    move v3, v0

    if-eqz v3, :cond_458

    .line 686
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app_crash_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 687
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    .line 689
    :cond_458
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    move v3, v0

    if-eqz v3, :cond_468

    .line 690
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->reportDumpsysMemInfo()V

    .line 691
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    .line 693
    :cond_468
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    move v3, v0

    if-eqz v3, :cond_47d

    .line 694
    const-string v3, "Bugreport_"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 695
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    .line 697
    :cond_47d
    monitor-exit p0
    :try_end_47e
    .catchall {:try_start_3df .. :try_end_47e} :catchall_58e

    .line 699
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    move v3, v0

    if-eqz v3, :cond_496

    .line 700
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->signalPersistentProcesses()V

    .line 701
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    move v3, v0

    if-lez v3, :cond_496

    .line 702
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "// Generated profiling reports in /data/misc"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 707
    :cond_496
    :try_start_496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->unregister(Landroid/app/IActivityManager;)V
    :try_end_4ac
    .catch Landroid/os/RemoteException; {:try_start_496 .. :try_end_4ac} :catch_591

    .line 718
    :cond_4ac
    :goto_4ac
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    move v3, v0

    if-lez v3, :cond_4f7

    .line 719
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, ":Dropped: keys="

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 720
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    move-wide v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->print(J)V

    .line 721
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " pointers="

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 722
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    move-wide v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->print(J)V

    .line 723
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " trackballs="

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 724
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mDroppedTrackballEvents:J

    move-wide v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->print(J)V

    .line 725
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " flips="

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 726
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    move-wide v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->println(J)V

    .line 730
    :cond_4f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->dump()V

    .line 732
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    move v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move/from16 v0, v16

    move v1, v3

    if-ge v0, v1, :cond_5a8

    .line 733
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "** System appears to have crashed at event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " using seed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 735
    sget-object v3, Lcom/android/commands/monkey/Monkey;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "** System appears to have crashed at event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " using seed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/monkey/Monkey;->mResultCode:I

    .line 738
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/Monkey;->writeScriptLog(I)V

    move/from16 v3, v16

    .line 739
    goto/16 :goto_64

    .line 697
    :catchall_58e
    move-exception v3

    :try_start_58f
    monitor-exit p0
    :try_end_590
    .catchall {:try_start_58f .. :try_end_590} :catchall_58e

    throw v3

    .line 709
    :catch_591
    move-exception v3

    move-object/from16 v17, v3

    .line 712
    .local v17, e:Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    move v3, v0

    move/from16 v0, v16

    move v1, v3

    if-lt v0, v1, :cond_4ac

    .line 713
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    move v3, v0

    const/4 v4, 0x1

    sub-int v16, v3, v4

    goto/16 :goto_4ac

    .line 741
    .end local v17           #e:Landroid/os/RemoteException;
    :cond_5a8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    move v3, v0

    if-lez v3, :cond_5b6

    .line 742
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "// Monkey finished"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 744
    :cond_5b6
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/commands/monkey/Monkey;->mResultCode:I

    .line 745
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/Monkey;->writeScriptLog(I)V

    .line 746
    const/4 v3, 0x0

    goto/16 :goto_64
.end method

.method private runMonkeyCycles()I
    .registers 16

    .prologue
    .line 1059
    const/4 v3, 0x0

    .line 1060
    .local v3, eventCounter:I
    const/4 v1, 0x0

    .line 1062
    .local v1, cycleCounter:I
    const/4 v6, 0x0

    .line 1063
    .local v6, shouldReportAnrTraces:Z
    const/4 v7, 0x0

    .line 1064
    .local v7, shouldReportDumpsysMemInfo:Z
    const/4 v5, 0x0

    .line 1065
    .local v5, shouldAbort:Z
    const/4 v8, 0x0

    .line 1068
    .local v8, systemCrashed:Z
    :cond_6
    :goto_6
    if-nez v8, :cond_1cf

    iget v11, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    if-ge v1, v11, :cond_1cf

    .line 1069
    monitor-enter p0

    .line 1070
    :try_start_d
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    if-eqz v11, :cond_17

    .line 1071
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->reportProcRank()V

    .line 1072
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    .line 1074
    :cond_17
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    if-eqz v11, :cond_1f

    .line 1075
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    .line 1076
    const/4 v6, 0x1

    .line 1078
    :cond_1f
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    if-eqz v11, :cond_44

    .line 1079
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "anr_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1080
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    .line 1082
    :cond_44
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    if-eqz v11, :cond_69

    .line 1083
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "app_crash_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1084
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    .line 1086
    :cond_69
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    if-eqz v11, :cond_75

    .line 1087
    const-string v11, "Bugreport_"

    invoke-direct {p0, v11}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1088
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    .line 1090
    :cond_75
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    if-eqz v11, :cond_7d

    .line 1091
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    .line 1092
    const/4 v7, 0x1

    .line 1094
    :cond_7d
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mMonitorNativeCrashes:Z

    if-eqz v11, :cond_a8

    .line 1097
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->checkNativeCrashes()Z

    move-result v11

    if-eqz v11, :cond_a8

    if-lez v3, :cond_a8

    .line 1098
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "** New native crash detected."

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1099
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    if-eqz v11, :cond_99

    .line 1100
    const-string v11, "native_crash_"

    invoke-direct {p0, v11}, Lcom/android/commands/monkey/Monkey;->getBugreport(Ljava/lang/String;)V

    .line 1102
    :cond_99
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    if-nez v11, :cond_a5

    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreNativeCrashes:Z

    if-eqz v11, :cond_a5

    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    if-eqz v11, :cond_ea

    :cond_a5
    const/4 v11, 0x1

    :goto_a6
    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    .line 1105
    :cond_a8
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    if-eqz v11, :cond_ad

    .line 1106
    const/4 v5, 0x1

    .line 1108
    :cond_ad
    monitor-exit p0
    :try_end_ae
    .catchall {:try_start_d .. :try_end_ae} :catchall_ec

    .line 1112
    rem-int/lit16 v11, v3, 0x3e8

    if-nez v11, :cond_bb

    .line 1113
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->getElapseTime()V

    .line 1114
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->reportSystemMemInfo()V

    .line 1115
    invoke-direct {p0, v1}, Lcom/android/commands/monkey/Monkey;->writeScriptLog(I)V

    .line 1120
    :cond_bb
    if-eqz v6, :cond_c1

    .line 1121
    const/4 v6, 0x0

    .line 1122
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->reportAnrTraces()V

    .line 1125
    :cond_c1
    if-eqz v7, :cond_c7

    .line 1126
    const/4 v7, 0x0

    .line 1127
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->reportDumpsysMemInfo()V

    .line 1130
    :cond_c7
    if-eqz v5, :cond_ef

    .line 1131
    const/4 v5, 0x0

    .line 1132
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "** Monkey aborted due to error."

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1133
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Events injected: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1200
    :goto_e9
    return v3

    .line 1102
    :cond_ea
    const/4 v11, 0x0

    goto :goto_a6

    .line 1108
    :catchall_ec
    move-exception v11

    :try_start_ed
    monitor-exit p0
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_ec

    throw v11

    .line 1140
    :cond_ef
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mSendNoEvents:Z

    if-eqz v11, :cond_f9

    .line 1141
    add-int/lit8 v3, v3, 0x1

    .line 1142
    add-int/lit8 v1, v1, 0x1

    .line 1143
    goto/16 :goto_6

    .line 1146
    :cond_f9
    iget v11, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v11, :cond_14f

    rem-int/lit8 v11, v3, 0x64

    if-nez v11, :cond_14f

    if-eqz v3, :cond_14f

    .line 1147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v0

    .line 1148
    .local v0, calendarTime:Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1149
    .local v9, systemUpTime:J
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    //[calendar_time:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " system_uptime:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1151
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    // Sending event #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1154
    .end local v0           #calendarTime:Ljava/lang/String;
    .end local v9           #systemUpTime:J
    :cond_14f
    iget-object v11, p0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    invoke-interface {v11}, Lcom/android/commands/monkey/MonkeyEventSource;->getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;

    move-result-object v2

    .line 1155
    .local v2, ev:Lcom/android/commands/monkey/MonkeyEvent;
    if-eqz v2, :cond_1b6

    .line 1156
    iget-object v11, p0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    iget-object v12, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    iget v13, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-virtual {v2, v11, v12, v13}, Lcom/android/commands/monkey/MonkeyEvent;->injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I

    move-result v4

    .line 1157
    .local v4, injectCode:I
    if-nez v4, :cond_194

    .line 1158
    instance-of v11, v2, Lcom/android/commands/monkey/MonkeyKeyEvent;

    if-eqz v11, :cond_17c

    .line 1159
    iget-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    .line 1176
    :cond_16e
    :goto_16e
    instance-of v11, v2, Lcom/android/commands/monkey/MonkeyThrottleEvent;

    if-nez v11, :cond_6

    .line 1177
    add-int/lit8 v3, v3, 0x1

    .line 1178
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    if-eqz v11, :cond_6

    .line 1179
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 1160
    :cond_17c
    instance-of v11, v2, Lcom/android/commands/monkey/MonkeyMotionEvent;

    if-eqz v11, :cond_188

    .line 1161
    iget-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    goto :goto_16e

    .line 1162
    :cond_188
    instance-of v11, v2, Lcom/android/commands/monkey/MonkeyFlipEvent;

    if-eqz v11, :cond_16e

    .line 1163
    iget-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, p0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    goto :goto_16e

    .line 1165
    :cond_194
    const/4 v11, -0x1

    if-ne v4, v11, :cond_1a0

    .line 1166
    const/4 v8, 0x1

    .line 1167
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v12, "** Error: RemoteException while injecting event."

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_16e

    .line 1168
    :cond_1a0
    const/4 v11, -0x2

    if-ne v4, v11, :cond_16e

    .line 1169
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreSecurityExceptions:Z

    if-nez v11, :cond_1b3

    const/4 v11, 0x1

    move v8, v11

    .line 1170
    :goto_1a9
    if-eqz v8, :cond_16e

    .line 1171
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v12, "** Error: SecurityException while injecting event."

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_16e

    .line 1169
    :cond_1b3
    const/4 v11, 0x0

    move v8, v11

    goto :goto_1a9

    .line 1184
    .end local v4           #injectCode:I
    :cond_1b6
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    if-nez v11, :cond_1cf

    .line 1185
    add-int/lit8 v1, v1, 0x1

    .line 1188
    iget-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mGetPeriodicBugreport:Z

    if-eqz v11, :cond_6

    .line 1189
    int-to-long v11, v1

    iget-wide v13, p0, Lcom/android/commands/monkey/Monkey;->mBugreportFrequency:J

    rem-long/2addr v11, v13

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_6

    .line 1190
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    goto/16 :goto_6

    .line 1199
    .end local v2           #ev:Lcom/android/commands/monkey/MonkeyEvent;
    :cond_1cf
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Events injected: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_e9
.end method

.method private showUsage()V
    .registers 4

    .prologue
    .line 1346
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1347
    .local v0, usage:Ljava/lang/StringBuffer;
    const-string v1, "usage: monkey [-p ALLOWED_PACKAGE [-p ALLOWED_PACKAGE] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1348
    const-string v1, "              [-c MAIN_CATEGORY [-c MAIN_CATEGORY] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1349
    const-string v1, "              [--ignore-crashes] [--ignore-timeouts]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1350
    const-string v1, "              [--ignore-security-exceptions]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1351
    const-string v1, "              [--monitor-native-crashes] [--ignore-native-crashes]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1352
    const-string v1, "              [--kill-process-after-error] [--hprof]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1353
    const-string v1, "              [--pct-touch PERCENT] [--pct-motion PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1354
    const-string v1, "              [--pct-trackball PERCENT] [--pct-syskeys PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1355
    const-string v1, "              [--pct-nav PERCENT] [--pct-majornav PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1356
    const-string v1, "              [--pct-appswitch PERCENT] [--pct-flip PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1357
    const-string v1, "              [--pct-anyevent PERCENT] [--pct-pinchzoom PERCENT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1358
    const-string v1, "              [--pkg-blacklist-file PACKAGE_BLACKLIST_FILE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1359
    const-string v1, "              [--pkg-whitelist-file PACKAGE_WHITELIST_FILE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1360
    const-string v1, "              [--wait-dbg] [--dbg-no-events]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1361
    const-string v1, "              [--setup scriptfile] [-f scriptfile [-f scriptfile] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1362
    const-string v1, "              [--port port]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1363
    const-string v1, "              [-s SEED] [-v [-v] ...]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1364
    const-string v1, "              [--throttle MILLISEC] [--randomize-throttle]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1365
    const-string v1, "              [--profile-wait MILLISEC]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1366
    const-string v1, "              [--device-sleep-time MILLISEC]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1367
    const-string v1, "              [--randomize-script]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1368
    const-string v1, "              [--script-log]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1369
    const-string v1, "              [--bugreport]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1371
    const-string v1, "              [--version]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1373
    const-string v1, "              COUNT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1374
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1375
    return-void
.end method

.method private signalPersistentProcesses()V
    .registers 4

    .prologue
    .line 1209
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->signalPersistentProcesses(I)V

    .line 1211
    monitor-enter p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_12
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_1c

    .line 1212
    const-wide/16 v1, 0x7d0

    :try_start_a
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 1213
    monitor-exit p0

    .line 1218
    :goto_e
    return-void

    .line 1213
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    :try_start_11
    throw v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_12} :catch_12
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_12} :catch_1c

    .line 1214
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 1215
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "** Failed talking with activity manager!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 1216
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1c
    move-exception v1

    goto :goto_e
.end method

.method private startElapseTime()V
    .registers 3

    .prologue
    .line 1394
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/commands/monkey/Monkey;->mAsusElapseTimeStart:J

    .line 1395
    return-void
.end method

.method private writeScriptLog(I)V
    .registers 10
    .parameter "count"

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->getElapseTime()V

    .line 454
    :try_start_3
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/android/commands/monkey/Monkey;->LOGPATH:Ljava/lang/String;

    const-string v6, "monkey.log"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 457
    .local v1, output:Ljava/io/Writer;
    const-string v2, "==================  Elapse Time  =================\n"

    .line 458
    .local v2, s:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Elapse Time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/commands/monkey/Monkey;->mAsusElapseTimeInterval:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/commands/monkey/Monkey;->mAsusElapseTimeInterval:J

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " min )\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->getMonkeyResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 461
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 466
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 467
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7f} :catch_80

    .line 472
    .end local v1           #output:Ljava/io/Writer;
    .end local v2           #s:Ljava/lang/String;
    :goto_7f
    return-void

    .line 468
    :catch_80
    move-exception v3

    move-object v0, v3

    .line 469
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "// Exception from Create monkey.log:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 470
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7f
.end method
