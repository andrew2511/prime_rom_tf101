.class public final Landroid/os/StrictMode;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StrictMode$InstanceCountViolation;,
        Landroid/os/StrictMode$ViolationInfo;,
        Landroid/os/StrictMode$ThreadSpanState;,
        Landroid/os/StrictMode$Span;,
        Landroid/os/StrictMode$LogStackTrace;,
        Landroid/os/StrictMode$AndroidCloseGuardReporter;,
        Landroid/os/StrictMode$AndroidBlockGuardPolicy;,
        Landroid/os/StrictMode$StrictModeCustomViolation;,
        Landroid/os/StrictMode$StrictModeDiskWriteViolation;,
        Landroid/os/StrictMode$StrictModeDiskReadViolation;,
        Landroid/os/StrictMode$StrictModeNetworkViolation;,
        Landroid/os/StrictMode$StrictModeViolation;,
        Landroid/os/StrictMode$VmPolicy;,
        Landroid/os/StrictMode$ThreadPolicy;
    }
.end annotation


# static fields
.field private static final ALL_THREAD_DETECT_BITS:I = 0xf

.field private static final ALL_VM_DETECT_BITS:I = 0x1e00

.field public static final DETECT_CUSTOM:I = 0x8

.field public static final DETECT_DISK_READ:I = 0x2

.field public static final DETECT_DISK_WRITE:I = 0x1

.field public static final DETECT_NETWORK:I = 0x4

.field public static final DETECT_VM_ACTIVITY_LEAKS:I = 0x800

.field public static final DETECT_VM_CLOSABLE_LEAKS:I = 0x400

.field public static final DETECT_VM_CURSOR_LEAKS:I = 0x200

.field private static final DETECT_VM_INSTANCE_LEAKS:I = 0x1000

.field private static final EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field private static final IS_ENG_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_USER_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field private static final LOG_V:Z = false

.field private static final MAX_OFFENSES_PER_LOOP:I = 0xa

.field private static final MAX_SPAN_TAGS:I = 0x14

.field private static final MIN_DIALOG_INTERVAL_MS:J = 0x7530L

.field private static final MIN_LOG_INTERVAL_MS:J = 0x3e8L

.field private static final NO_OP_SPAN:Landroid/os/StrictMode$Span; = null

.field public static final PENALTY_DEATH:I = 0x40

.field public static final PENALTY_DEATH_ON_NETWORK:I = 0x200

.field public static final PENALTY_DIALOG:I = 0x20

.field public static final PENALTY_DROPBOX:I = 0x80

.field public static final PENALTY_FLASH:I = 0x800

.field public static final PENALTY_GATHER:I = 0x100

.field public static final PENALTY_LOG:I = 0x10

.field private static final TAG:Ljava/lang/String; = "StrictMode"

.field private static final THREAD_PENALTY_MASK:I = 0xbf0

.field public static final VISUAL_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.visual"

.field private static final VM_PENALTY_MASK:I = 0xd0

.field private static final gatheredViolations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sExpectedActivityInstanceCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsIdlerRegistered:Z

.field private static sLastInstanceCountCheckMillis:J

.field private static final sLastVmViolationTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private static final sThisThreadSpanState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/StrictMode$ThreadSpanState;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sVmPolicy:Landroid/os/StrictMode$VmPolicy;

.field private static volatile sVmPolicyMask:I

.field private static sWindowManager:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static final violationsBeingTimed:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 114
    const-string v0, "StrictMode"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/os/StrictMode;->LOG_V:Z

    .line 116
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    .line 117
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/StrictMode;->IS_ENG_BUILD:Z

    .line 263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;

    .line 270
    sput v2, Landroid/os/StrictMode;->sVmPolicyMask:I

    .line 271
    sget-object v0, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    sput-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 277
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 701
    new-instance v0, Landroid/os/StrictMode$1;

    invoke-direct {v0}, Landroid/os/StrictMode$1;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    .line 992
    new-instance v0, Landroid/os/StrictMode$2;

    invoke-direct {v0}, Landroid/os/StrictMode$2;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    .line 1000
    new-instance v0, Landroid/os/StrictMode$3;

    invoke-direct {v0}, Landroid/os/StrictMode$3;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->threadHandler:Ljava/lang/ThreadLocal;

    .line 1393
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    .line 1394
    sput-boolean v2, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    .line 1395
    new-instance v0, Landroid/os/StrictMode$5;

    invoke-direct {v0}, Landroid/os/StrictMode$5;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 1485
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    .line 1692
    new-instance v0, Landroid/os/StrictMode$6;

    invoke-direct {v0}, Landroid/os/StrictMode$6;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->NO_OP_SPAN:Landroid/os/StrictMode$Span;

    .line 1716
    new-instance v0, Landroid/os/StrictMode$7;

    invoke-direct {v0}, Landroid/os/StrictMode$7;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    .line 1723
    new-instance v0, Landroid/os/StrictMode$8;

    invoke-direct {v0}, Landroid/os/StrictMode$8;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sWindowManager:Landroid/util/Singleton;

    .line 1819
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Landroid/os/StrictMode;->EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 112
    invoke-static {p0}, Landroid/os/StrictMode;->parseViolationFromMessage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(ILandroid/os/StrictMode$ViolationInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-static {p0, p1}, Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V

    return-void
.end method

.method static synthetic access$1200(I)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 112
    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/os/StrictMode$ViolationInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 112
    invoke-static {p0}, Landroid/os/StrictMode;->executeDeathPenalty(Landroid/os/StrictMode$ViolationInfo;)V

    return-void
.end method

.method static synthetic access$1400()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1500()J
    .registers 2

    .prologue
    .line 112
    sget-wide v0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    return-wide v0
.end method

.method static synthetic access$1502(J)J
    .registers 2
    .parameter "x0"

    .prologue
    .line 112
    sput-wide p0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    return-wide p0
.end method

.method static synthetic access$2200()Ljava/lang/ThreadLocal;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$400()Z
    .registers 1

    .prologue
    .line 112
    invoke-static {}, Landroid/os/StrictMode;->tooManyViolationsThisLoop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Ljava/lang/ThreadLocal;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$600()Landroid/util/Singleton;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Landroid/os/StrictMode;->sWindowManager:Landroid/util/Singleton;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/ThreadLocal;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Landroid/os/StrictMode;->threadHandler:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$800()Z
    .registers 1

    .prologue
    .line 112
    sget-boolean v0, Landroid/os/StrictMode;->LOG_V:Z

    return v0
.end method

.method static synthetic access$900()Ljava/lang/ThreadLocal;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;
    .registers 4

    .prologue
    .line 858
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    .line 859
    .local v1, oldPolicyMask:I
    and-int/lit8 v0, v1, -0x3

    .line 860
    .local v0, newPolicyMask:I
    if-eq v0, v1, :cond_b

    .line 861
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 863
    :cond_b
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$1;)V

    return-object v2
.end method

.method public static allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    .registers 4

    .prologue
    .line 839
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    .line 840
    .local v1, oldPolicyMask:I
    and-int/lit8 v0, v1, -0x4

    .line 841
    .local v0, newPolicyMask:I
    if-eq v0, v1, :cond_b

    .line 842
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 844
    :cond_b
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$1;)V

    return-object v2
.end method

.method private static amTheSystemServerProcess()Z
    .registers 9

    .prologue
    const/4 v8, 0x0

    .line 872
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_b

    move v6, v8

    .line 886
    :goto_a
    return v6

    .line 878
    :cond_b
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 879
    .local v4, stack:Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 880
    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_19
    if-ge v2, v3, :cond_30

    aget-object v5, v0, v2

    .line 881
    .local v5, ste:Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 882
    .local v1, clsName:Ljava/lang/String;
    if-eqz v1, :cond_2d

    const-string v6, "com.android.server."

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 883
    const/4 v6, 0x1

    goto :goto_a

    .line 880
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .end local v1           #clsName:Ljava/lang/String;
    .end local v5           #ste:Ljava/lang/StackTraceElement;
    :cond_30
    move v6, v8

    .line 886
    goto :goto_a
.end method

.method static clearGatheredViolations()V
    .registers 2

    .prologue
    .line 1368
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1369
    return-void
.end method

.method public static conditionallyCheckInstanceCounts()V
    .registers 10

    .prologue
    .line 1375
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v6

    .line 1376
    .local v6, policy:Landroid/os/StrictMode$VmPolicy;
    iget-object v8, v6, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-nez v8, :cond_d

    .line 1391
    :cond_c
    return-void

    .line 1379
    :cond_d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->gc()V

    .line 1381
    iget-object v8, v6, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1382
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 1383
    .local v4, klass:Ljava/lang/Class;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/Integer;>;"
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1384
    .local v5, limit:I
    const/4 v8, 0x0

    invoke-static {v4, v8}, Ldalvik/system/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide v2

    .line 1385
    .local v2, instances:J
    int-to-long v8, v5

    cmp-long v8, v2, v8

    if-lez v8, :cond_1e

    .line 1388
    new-instance v7, Landroid/os/StrictMode$InstanceCountViolation;

    invoke-direct {v7, v4, v2, v3, v5}, Landroid/os/StrictMode$InstanceCountViolation;-><init>(Ljava/lang/Class;JI)V

    .line 1389
    .local v7, tr:Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public static conditionallyEnableDebugLogging()Z
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 895
    invoke-static {}, Landroid/os/StrictMode;->amTheSystemServerProcess()Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "persist.sys.strictmode.visual"

    sget-boolean v3, Landroid/os/StrictMode;->IS_ENG_BUILD:Z

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1e

    move v0, v5

    .line 900
    .local v0, doFlashes:Z
    :goto_13
    sget-boolean v2, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    if-eqz v2, :cond_20

    if-nez v0, :cond_20

    .line 901
    invoke-static {v4}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    move v2, v4

    .line 924
    :goto_1d
    return v2

    .end local v0           #doFlashes:Z
    :cond_1e
    move v0, v4

    .line 895
    goto :goto_13

    .line 905
    .restart local v0       #doFlashes:Z
    :cond_20
    const/4 v1, 0x7

    .line 909
    .local v1, threadPolicyMask:I
    sget-boolean v2, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    if-nez v2, :cond_27

    .line 910
    or-int/lit16 v1, v1, 0x80

    .line 912
    :cond_27
    if-eqz v0, :cond_2b

    .line 913
    or-int/lit16 v1, v1, 0x800

    .line 916
    :cond_2b
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 918
    sget-boolean v2, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    if-eqz v2, :cond_37

    .line 919
    invoke-static {v4}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    :goto_35
    move v2, v5

    .line 924
    goto :goto_1d

    .line 921
    :cond_37
    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 922
    invoke-static {}, Landroid/os/StrictMode;->vmClosableObjectLeaksEnabled()Z

    move-result v2

    invoke-static {v2}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    goto :goto_35
.end method

.method public static decrementExpectedActivityCount(Ljava/lang/Class;)V
    .registers 6
    .parameter "klass"

    .prologue
    .line 1843
    if-eqz p0, :cond_a

    sget-object v2, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v2, v2, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v2, v2, 0x800

    if-nez v2, :cond_b

    .line 1858
    :cond_a
    :goto_a
    return-void

    .line 1846
    :cond_b
    const-class v2, Landroid/os/StrictMode;

    monitor-enter v2

    .line 1847
    :try_start_e
    sget-object v3, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1848
    .local v0, expected:Ljava/lang/Integer;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_3c

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1849
    .local v1, newExpected:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_43

    .line 1850
    sget-object v3, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1856
    :goto_2e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {p0, v3}, Landroid/os/StrictMode;->setExpectedClassInstanceCount(Ljava/lang/Class;I)V

    .line 1857
    monitor-exit v2

    goto :goto_a

    .end local v0           #expected:Ljava/lang/Integer;
    .end local v1           #newExpected:Ljava/lang/Integer;
    :catchall_39
    move-exception v3

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_e .. :try_end_3b} :catchall_39

    throw v3

    .line 1848
    .restart local v0       #expected:Ljava/lang/Integer;
    :cond_3c
    :try_start_3c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    goto :goto_1f

    .line 1852
    .restart local v1       #newExpected:Ljava/lang/Integer;
    :cond_43
    sget-object v3, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_39

    goto :goto_2e
.end method

.method private static dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V
    .registers 6
    .parameter "violationMaskSubset"
    .parameter "info"

    .prologue
    .line 1317
    sget-object v1, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 1318
    .local v0, outstanding:I
    const/16 v1, 0x14

    if-le v0, v1, :cond_10

    .line 1321
    sget-object v1, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1347
    :goto_f
    return-void

    .line 1325
    :cond_10
    sget-boolean v1, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v1, :cond_2c

    const-string v1, "StrictMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropboxing async; in-flight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :cond_2c
    new-instance v1, Landroid/os/StrictMode$4;

    const-string v2, "callActivityManagerForStrictModeDropbox"

    invoke-direct {v1, v2, p0, p1}, Landroid/os/StrictMode$4;-><init>(Ljava/lang/String;ILandroid/os/StrictMode$ViolationInfo;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$4;->start()V

    goto :goto_f
.end method

.method public static enableDeathOnNetwork()V
    .registers 3

    .prologue
    .line 934
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    .line 935
    .local v1, oldPolicy:I
    or-int/lit8 v2, v1, 0x4

    or-int/lit16 v0, v2, 0x200

    .line 936
    .local v0, newPolicy:I
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 937
    return-void
.end method

.method public static enableDefaults()V
    .registers 1

    .prologue
    .line 1453
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1457
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 1461
    return-void
.end method

.method public static enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;
    .registers 7
    .parameter "name"

    .prologue
    .line 1745
    sget-boolean v3, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    if-eqz v3, :cond_7

    .line 1746
    sget-object v3, Landroid/os/StrictMode;->NO_OP_SPAN:Landroid/os/StrictMode$Span;

    .line 1773
    :goto_6
    return-object v3

    .line 1748
    :cond_7
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1749
    :cond_f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "name must be non-null and non-empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1751
    :cond_17
    sget-object v3, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StrictMode$ThreadSpanState;

    .line 1752
    .local v2, state:Landroid/os/StrictMode$ThreadSpanState;
    const/4 v0, 0x0

    .line 1753
    .local v0, span:Landroid/os/StrictMode$Span;
    monitor-enter v2

    .line 1754
    :try_start_21
    iget-object v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    if-eqz v3, :cond_86

    .line 1755
    iget-object v0, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    .line 1756
    #getter for: Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/os/StrictMode$Span;->access$1800(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v3

    iput-object v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    .line 1757
    iget v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    .line 1762
    :goto_33
    #setter for: Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/os/StrictMode$Span;->access$1902(Landroid/os/StrictMode$Span;Ljava/lang/String;)Ljava/lang/String;

    .line 1763
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    #setter for: Landroid/os/StrictMode$Span;->mCreateMillis:J
    invoke-static {v0, v3, v4}, Landroid/os/StrictMode$Span;->access$2002(Landroid/os/StrictMode$Span;J)J

    .line 1764
    iget-object v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    #setter for: Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;
    invoke-static {v0, v3}, Landroid/os/StrictMode$Span;->access$1802(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 1765
    const/4 v3, 0x0

    #setter for: Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;
    invoke-static {v0, v3}, Landroid/os/StrictMode$Span;->access$2102(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 1766
    iput-object v0, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    .line 1767
    iget v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    .line 1768
    #getter for: Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/os/StrictMode$Span;->access$1800(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v3

    if-eqz v3, :cond_5b

    .line 1769
    #getter for: Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/os/StrictMode$Span;->access$1800(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v3

    #setter for: Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;
    invoke-static {v3, v0}, Landroid/os/StrictMode$Span;->access$2102(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 1771
    :cond_5b
    sget-boolean v3, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v3, :cond_83

    const-string v3, "StrictMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Span enter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    :cond_83
    monitor-exit v2

    move-object v3, v0

    .line 1773
    goto :goto_6

    .line 1760
    :cond_86
    new-instance v1, Landroid/os/StrictMode$Span;

    invoke-direct {v1, v2}, Landroid/os/StrictMode$Span;-><init>(Landroid/os/StrictMode$ThreadSpanState;)V

    .end local v0           #span:Landroid/os/StrictMode$Span;
    .local v1, span:Landroid/os/StrictMode$Span;
    move-object v0, v1

    .end local v1           #span:Landroid/os/StrictMode$Span;
    .restart local v0       #span:Landroid/os/StrictMode$Span;
    goto :goto_33

    .line 1772
    :catchall_8d
    move-exception v3

    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_21 .. :try_end_8f} :catchall_8d

    throw v3
.end method

.method private static executeDeathPenalty(Landroid/os/StrictMode$ViolationInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 1303
    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v1, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/StrictMode;->parseViolationFromMessage(Ljava/lang/String;)I

    move-result v0

    .line 1304
    .local v0, violationBit:I
    new-instance v1, Landroid/os/StrictMode$StrictModeViolation;

    iget v2, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/os/StrictMode$StrictModeViolation;-><init>(IILjava/lang/String;)V

    throw v1
.end method

.method public static getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;
    .registers 3

    .prologue
    .line 825
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$1;)V

    return-object v0
.end method

.method public static getThreadPolicyMask()I
    .registers 1

    .prologue
    .line 814
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->getPolicyMask()I

    move-result v0

    return v0
.end method

.method public static getVmPolicy()Landroid/os/StrictMode$VmPolicy;
    .registers 2

    .prologue
    .line 1439
    const-class v0, Landroid/os/StrictMode;

    monitor-enter v0

    .line 1440
    :try_start_3
    sget-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    monitor-exit v0

    return-object v1

    .line 1441
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method static hasGatheredViolations()Z
    .registers 1

    .prologue
    .line 1359
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static incrementExpectedActivityCount(Ljava/lang/Class;)V
    .registers 5
    .parameter "klass"

    .prologue
    .line 1826
    if-eqz p0, :cond_a

    sget-object v2, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v2, v2, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v2, v2, 0x800

    if-nez v2, :cond_b

    .line 1837
    :cond_a
    :goto_a
    return-void

    .line 1829
    :cond_b
    const-class v2, Landroid/os/StrictMode;

    monitor-enter v2

    .line 1830
    :try_start_e
    sget-object v3, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1831
    .local v0, expected:Ljava/lang/Integer;
    if-nez v0, :cond_30

    const/4 v3, 0x1

    :goto_19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1832
    .local v1, newExpected:Ljava/lang/Integer;
    sget-object v3, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1835
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {p0, v3}, Landroid/os/StrictMode;->setExpectedClassInstanceCount(Ljava/lang/Class;I)V

    .line 1836
    monitor-exit v2

    goto :goto_a

    .end local v0           #expected:Ljava/lang/Integer;
    .end local v1           #newExpected:Ljava/lang/Integer;
    :catchall_2d
    move-exception v3

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_2d

    throw v3

    .line 1831
    .restart local v0       #expected:Ljava/lang/Integer;
    :cond_30
    :try_start_30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_2d

    move-result v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19
.end method

.method public static noteDiskRead()V
    .registers 2

    .prologue
    .line 1798
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 1799
    .local v0, policy:Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_9

    .line 1804
    .end local v0           #policy:Ldalvik/system/BlockGuard$Policy;
    :goto_8
    return-void

    .line 1803
    .restart local v0       #policy:Ldalvik/system/BlockGuard$Policy;
    :cond_9
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .end local v0           #policy:Ldalvik/system/BlockGuard$Policy;
    invoke-virtual {v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onReadFromDisk()V

    goto :goto_8
.end method

.method public static noteDiskWrite()V
    .registers 2

    .prologue
    .line 1810
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 1811
    .local v0, policy:Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_9

    .line 1816
    .end local v0           #policy:Ldalvik/system/BlockGuard$Policy;
    :goto_8
    return-void

    .line 1815
    .restart local v0       #policy:Ldalvik/system/BlockGuard$Policy;
    :cond_9
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .end local v0           #policy:Ldalvik/system/BlockGuard$Policy;
    invoke-virtual {v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onWriteToDisk()V

    goto :goto_8
.end method

.method public static noteSlowCall(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 1786
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 1787
    .local v0, policy:Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_9

    .line 1792
    .end local v0           #policy:Ldalvik/system/BlockGuard$Policy;
    :goto_8
    return-void

    .line 1791
    .restart local v0       #policy:Ldalvik/system/BlockGuard$Policy;
    :cond_9
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .end local v0           #policy:Ldalvik/system/BlockGuard$Policy;
    invoke-virtual {v0, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onCustomSlowCall(Ljava/lang/String;)V

    goto :goto_8
.end method

.method private static onBinderStrictModePolicyChange(I)V
    .registers 1
    .parameter "newPolicy"

    .prologue
    .line 1615
    invoke-static {p0}, Landroid/os/StrictMode;->setBlockGuardPolicy(I)V

    .line 1616
    return-void
.end method

.method public static onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 2
    .parameter "message"
    .parameter "originStack"

    .prologue
    .line 1481
    invoke-static {p0, p1}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1482
    return-void
.end method

.method public static onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 22
    .parameter "message"
    .parameter "originStack"

    .prologue
    .line 1491
    sget v4, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_93

    const/4 v4, 0x1

    move v11, v4

    .line 1492
    .local v11, penaltyDropbox:Z
    :goto_8
    sget v4, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_97

    const/4 v4, 0x1

    move v10, v4

    .line 1493
    .local v10, penaltyDeath:Z
    :goto_10
    sget v4, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_9b

    const/4 v4, 0x1

    move v12, v4

    .line 1494
    .local v12, penaltyLog:Z
    :goto_18
    new-instance v5, Landroid/os/StrictMode$ViolationInfo;

    sget v4, Landroid/os/StrictMode;->sVmPolicyMask:I

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v4

    invoke-direct {v0, v1, v2}, Landroid/os/StrictMode$ViolationInfo;-><init>(Ljava/lang/Throwable;I)V

    .line 1497
    .local v5, info:Landroid/os/StrictMode$ViolationInfo;
    const/4 v4, 0x0

    iput v4, v5, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 1498
    const/4 v4, 0x0

    iput-object v4, v5, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    .line 1499
    const/4 v4, 0x0

    iput-object v4, v5, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    .line 1501
    invoke-virtual {v5}, Landroid/os/StrictMode$ViolationInfo;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1502
    .local v4, fingerprint:Ljava/lang/Integer;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1503
    .local v8, now:J
    const-wide/16 v6, 0x0

    .line 1504
    .local v6, lastViolationTime:J
    const-wide v13, 0x7fffffffffffffffL

    .line 1505
    .local v13, timeSinceLastViolationMillis:J
    sget-object v16, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    monitor-enter v16

    .line 1506
    :try_start_42
    sget-object v15, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_58

    .line 1507
    sget-object v15, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1508
    sub-long v13, v8, v6

    .line 1510
    :cond_58
    const-wide/16 v17, 0x3e8

    cmp-long v15, v13, v17

    if-lez v15, :cond_67

    .line 1511
    sget-object v15, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .end local v8           #now:J
    invoke-virtual {v15, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    :cond_67
    monitor-exit v16
    :try_end_68
    .catchall {:try_start_42 .. :try_end_68} :catchall_9f

    .line 1515
    if-eqz v12, :cond_7a

    const-wide/16 v8, 0x3e8

    cmp-long v4, v13, v8

    if-lez v4, :cond_7a

    .line 1516
    .end local v4           #fingerprint:Ljava/lang/Integer;
    const-string v4, "StrictMode"

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1519
    :cond_7a
    sget p0, Landroid/os/StrictMode;->sVmPolicyMask:I

    .end local p0
    move/from16 v0, p0

    and-int/lit16 v0, v0, 0x1e00

    move/from16 p0, v0

    move/from16 v0, p0

    or-int/lit16 v0, v0, 0x80

    move/from16 p0, v0

    .line 1521
    .local p0, violationMaskSubset:I
    if-eqz v11, :cond_a9

    if-nez v10, :cond_a9

    .line 1525
    move/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1559
    .end local v5           #info:Landroid/os/StrictMode$ViolationInfo;
    .end local v6           #lastViolationTime:J
    .end local p0           #violationMaskSubset:I
    .end local p1
    :cond_92
    :goto_92
    return-void

    .line 1491
    .end local v10           #penaltyDeath:Z
    .end local v11           #penaltyDropbox:Z
    .end local v12           #penaltyLog:Z
    .end local v13           #timeSinceLastViolationMillis:J
    .local p0, message:Ljava/lang/String;
    .restart local p1
    :cond_93
    const/4 v4, 0x0

    move v11, v4

    goto/16 :goto_8

    .line 1492
    .restart local v11       #penaltyDropbox:Z
    :cond_97
    const/4 v4, 0x0

    move v10, v4

    goto/16 :goto_10

    .line 1493
    .restart local v10       #penaltyDeath:Z
    :cond_9b
    const/4 v4, 0x0

    move v12, v4

    goto/16 :goto_18

    .line 1513
    .restart local v4       #fingerprint:Ljava/lang/Integer;
    .restart local v5       #info:Landroid/os/StrictMode$ViolationInfo;
    .restart local v6       #lastViolationTime:J
    .restart local v12       #penaltyLog:Z
    .restart local v13       #timeSinceLastViolationMillis:J
    :catchall_9f
    move-exception p0

    move-wide v4, v13

    .end local v5           #info:Landroid/os/StrictMode$ViolationInfo;
    .end local v13           #timeSinceLastViolationMillis:J
    .local v4, timeSinceLastViolationMillis:J
    move-object/from16 v19, p0

    move-wide/from16 p0, v6

    .end local v6           #lastViolationTime:J
    .end local p1
    .local p0, lastViolationTime:J
    move-object/from16 v6, v19

    :goto_a7
    :try_start_a7
    monitor-exit v16
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_f4

    throw v6

    .line 1529
    .end local v4           #timeSinceLastViolationMillis:J
    .restart local v5       #info:Landroid/os/StrictMode$ViolationInfo;
    .restart local v6       #lastViolationTime:J
    .restart local v13       #timeSinceLastViolationMillis:J
    .local p0, violationMaskSubset:I
    .restart local p1
    :cond_a9
    if-eqz v11, :cond_cc

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-nez p1, :cond_cc

    .line 1534
    .end local p1
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result p1

    .line 1540
    .local p1, savedPolicyMask:I
    const/4 v4, 0x0

    :try_start_b6
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1542
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getApplicationObject()Landroid/os/IBinder;

    move-result-object v6

    .end local v6           #lastViolationTime:J
    move-object v0, v4

    move-object v1, v6

    move/from16 v2, p0

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    :try_end_c9
    .catchall {:try_start_b6 .. :try_end_c9} :catchall_ef
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_c9} :catch_e2

    .line 1550
    .end local v5           #info:Landroid/os/StrictMode$ViolationInfo;
    .end local p0           #violationMaskSubset:I
    :goto_c9
    invoke-static/range {p1 .. p1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1554
    .end local p1           #savedPolicyMask:I
    :cond_cc
    if-eqz v10, :cond_92

    .line 1555
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "StrictMode VmPolicy violation with POLICY_DEATH; shutting down."

    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1556
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static/range {p0 .. p0}, Landroid/os/Process;->killProcess(I)V

    .line 1557
    const/16 p0, 0xa

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->exit(I)V

    goto :goto_92

    .line 1546
    .restart local v5       #info:Landroid/os/StrictMode$ViolationInfo;
    .restart local p0       #violationMaskSubset:I
    .restart local p1       #savedPolicyMask:I
    :catch_e2
    move-exception p0

    .line 1547
    .local p0, e:Landroid/os/RemoteException;
    :try_start_e3
    const-string v4, "StrictMode"

    const-string v5, "RemoteException trying to handle StrictMode violation"

    .end local v5           #info:Landroid/os/StrictMode$ViolationInfo;
    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ee
    .catchall {:try_start_e3 .. :try_end_ee} :catchall_ef

    goto :goto_c9

    .line 1550
    .end local p0           #e:Landroid/os/RemoteException;
    :catchall_ef
    move-exception p0

    invoke-static/range {p1 .. p1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw p0

    .line 1513
    .end local v13           #timeSinceLastViolationMillis:J
    .end local p1           #savedPolicyMask:I
    .restart local v4       #timeSinceLastViolationMillis:J
    .local p0, lastViolationTime:J
    :catchall_f4
    move-exception v6

    goto :goto_a7
.end method

.method private static parsePolicyFromMessage(Ljava/lang/String;)I
    .registers 6
    .parameter "message"

    .prologue
    const/4 v4, 0x0

    .line 953
    if-eqz p0, :cond_c

    const-string/jumbo v3, "policy="

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    move v3, v4

    .line 964
    :goto_d
    return v3

    .line 956
    :cond_e
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 957
    .local v2, spaceIndex:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    move v3, v4

    .line 958
    goto :goto_d

    .line 960
    :cond_19
    const/4 v3, 0x7

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 962
    .local v1, policyString:Ljava/lang/String;
    :try_start_1e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_25} :catch_27

    move-result v3

    goto :goto_d

    .line 963
    :catch_27
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/NumberFormatException;
    move v3, v4

    .line 964
    goto :goto_d
.end method

.method private static parseViolationFromMessage(Ljava/lang/String;)I
    .registers 9
    .parameter "message"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 972
    if-nez p0, :cond_6

    move v5, v6

    .line 988
    :goto_5
    return v5

    .line 975
    :cond_6
    const-string/jumbo v5, "violation="

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 976
    .local v3, violationIndex:I
    if-ne v3, v7, :cond_11

    move v5, v6

    .line 977
    goto :goto_5

    .line 979
    :cond_11
    const-string/jumbo v5, "violation="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v2, v3, v5

    .line 980
    .local v2, numberStartIndex:I
    const/16 v5, 0x20

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 981
    .local v1, numberEndIndex:I
    if-ne v1, v7, :cond_26

    .line 982
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 984
    :cond_26
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 986
    .local v4, violationString:Ljava/lang/String;
    :try_start_2a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_31} :catch_33

    move-result v5

    goto :goto_5

    .line 987
    :catch_33
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/NumberFormatException;
    move v5, v6

    .line 988
    goto :goto_5
.end method

.method static readAndHandleBinderCallViolations(Landroid/os/Parcel;)V
    .registers 14
    .parameter "p"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1587
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 1588
    .local v7, sw:Ljava/io/StringWriter;
    new-instance v8, Landroid/os/StrictMode$LogStackTrace;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/os/StrictMode$LogStackTrace;-><init>(Landroid/os/StrictMode$1;)V

    new-instance v9, Ljava/io/PrintWriter;

    invoke-direct {v9, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v8, v9}, Landroid/os/StrictMode$LogStackTrace;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1589
    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1591
    .local v4, ourStack:Ljava/lang/String;
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v6

    .line 1592
    .local v6, policyMask:I
    and-int/lit16 v8, v6, 0x100

    if-eqz v8, :cond_7b

    move v0, v12

    .line 1594
    .local v0, currentlyGathering:Z
    :goto_22
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1595
    .local v3, numViolations:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_27
    if-ge v1, v3, :cond_7f

    .line 1596
    sget-boolean v8, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v8, :cond_46

    const-string v8, "StrictMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "strict mode violation stacks read from binder call.  i="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_46
    new-instance v2, Landroid/os/StrictMode$ViolationInfo;

    if-nez v0, :cond_7d

    move v8, v12

    :goto_4b
    invoke-direct {v2, p0, v8}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;Z)V

    .line 1598
    .local v2, info:Landroid/os/StrictMode$ViolationInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v2, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v10, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "# via Binder call with stack:\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 1599
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v5

    .line 1600
    .local v5, policy:Ldalvik/system/BlockGuard$Policy;
    instance-of v8, v5, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-eqz v8, :cond_78

    .line 1601
    check-cast v5, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .end local v5           #policy:Ldalvik/system/BlockGuard$Policy;
    invoke-virtual {v5, v2}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V

    .line 1595
    :cond_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .end local v0           #currentlyGathering:Z
    .end local v1           #i:I
    .end local v2           #info:Landroid/os/StrictMode$ViolationInfo;
    .end local v3           #numViolations:I
    :cond_7b
    move v0, v11

    .line 1592
    goto :goto_22

    .restart local v0       #currentlyGathering:Z
    .restart local v1       #i:I
    .restart local v3       #numViolations:I
    :cond_7d
    move v8, v11

    .line 1597
    goto :goto_4b

    .line 1604
    :cond_7f
    return-void
.end method

.method private static setBlockGuardPolicy(I)V
    .registers 5
    .parameter "policyMask"

    .prologue
    .line 740
    if-nez p0, :cond_8

    .line 741
    sget-object v3, Ldalvik/system/BlockGuard;->LAX_POLICY:Ldalvik/system/BlockGuard$Policy;

    invoke-static {v3}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    .line 751
    :goto_7
    return-void

    .line 744
    :cond_8
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v2

    .line 745
    .local v2, policy:Ldalvik/system/BlockGuard$Policy;
    instance-of v3, v2, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v3, :cond_19

    .line 746
    new-instance v3, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-direct {v3, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;-><init>(I)V

    invoke-static {v3}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    goto :goto_7

    .line 748
    :cond_19
    move-object v0, v2

    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    move-object v1, v0

    .line 749
    .local v1, androidPolicy:Landroid/os/StrictMode$AndroidBlockGuardPolicy;
    invoke-virtual {v1, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->setPolicyMask(I)V

    goto :goto_7
.end method

.method private static setCloseGuardEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 755
    invoke-static {}, Ldalvik/system/CloseGuard;->getReporter()Ldalvik/system/CloseGuard$Reporter;

    move-result-object v0

    instance-of v0, v0, Landroid/os/StrictMode$AndroidCloseGuardReporter;

    if-nez v0, :cond_11

    .line 756
    new-instance v0, Landroid/os/StrictMode$AndroidCloseGuardReporter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/StrictMode$AndroidCloseGuardReporter;-><init>(Landroid/os/StrictMode$1;)V

    invoke-static {v0}, Ldalvik/system/CloseGuard;->setReporter(Ldalvik/system/CloseGuard$Reporter;)V

    .line 758
    :cond_11
    invoke-static {p0}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    .line 759
    return-void
.end method

.method public static setExpectedClassInstanceCount(Ljava/lang/Class;I)V
    .registers 5
    .parameter "klass"
    .parameter "count"

    .prologue
    .line 1864
    const-class v0, Landroid/os/StrictMode;

    monitor-enter v0

    .line 1865
    :try_start_3
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    sget-object v2, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    invoke-direct {v1, v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>(Landroid/os/StrictMode$VmPolicy;)V

    invoke-virtual {v1, p0, p1}, Landroid/os/StrictMode$VmPolicy$Builder;->setClassInstanceLimit(Ljava/lang/Class;I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 1868
    monitor-exit v0

    .line 1869
    return-void

    .line 1868
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public static setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    .registers 2
    .parameter "policy"

    .prologue
    .line 723
    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy;->mask:I

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 724
    return-void
.end method

.method private static setThreadPolicyMask(I)V
    .registers 1
    .parameter "policyMask"

    .prologue
    .line 732
    invoke-static {p0}, Landroid/os/StrictMode;->setBlockGuardPolicy(I)V

    .line 735
    invoke-static {p0}, Landroid/os/Binder;->setThreadStrictModePolicy(I)V

    .line 736
    return-void
.end method

.method public static setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    .registers 5
    .parameter "policy"

    .prologue
    .line 1415
    const-class v2, Landroid/os/StrictMode;

    monitor-enter v2

    .line 1416
    :try_start_3
    sput-object p0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 1417
    iget v3, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    sput v3, Landroid/os/StrictMode;->sVmPolicyMask:I

    .line 1418
    invoke-static {}, Landroid/os/StrictMode;->vmClosableObjectLeaksEnabled()Z

    move-result v3

    invoke-static {v3}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    .line 1420
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1421
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_2e

    .line 1422
    iget-object v1, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    .line 1423
    .local v1, mq:Landroid/os/MessageQueue;
    iget-object v3, p0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-eqz v3, :cond_26

    sget v3, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v3, v3, 0xd0

    if-nez v3, :cond_30

    .line 1425
    :cond_26
    sget-object v3, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v1, v3}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1426
    const/4 v3, 0x0

    sput-boolean v3, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    .line 1432
    .end local v1           #mq:Landroid/os/MessageQueue;
    :cond_2e
    :goto_2e
    monitor-exit v2

    .line 1433
    return-void

    .line 1427
    .restart local v1       #mq:Landroid/os/MessageQueue;
    :cond_30
    sget-boolean v3, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    if-nez v3, :cond_2e

    .line 1428
    sget-object v3, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v1, v3}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1429
    const/4 v3, 0x1

    sput-boolean v3, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    goto :goto_2e

    .line 1432
    .end local v0           #looper:Landroid/os/Looper;
    .end local v1           #mq:Landroid/os/MessageQueue;
    :catchall_3d
    move-exception v3

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v3
.end method

.method private static tooManyViolationsThisLoop()Z
    .registers 2

    .prologue
    .line 1007
    sget-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static vmClosableObjectLeaksEnabled()Z
    .registers 1

    .prologue
    .line 1474
    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static vmSqliteObjectLeaksEnabled()Z
    .registers 1

    .prologue
    .line 1467
    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static writeGatheredViolationsToParcel(Landroid/os/Parcel;)V
    .registers 6
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 1565
    sget-object v2, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1566
    .local v1, violations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    if-nez v1, :cond_15

    .line 1567
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1576
    :goto_e
    sget-object v2, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1577
    return-void

    .line 1569
    :cond_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1570
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 1571
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StrictMode$ViolationInfo;

    invoke-virtual {v2, p0, v3}, Landroid/os/StrictMode$ViolationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1570
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1573
    :cond_2f
    sget-boolean v2, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v2, :cond_50

    const-string v2, "StrictMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wrote violations to response parcel; num="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    :cond_50
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_e
.end method
