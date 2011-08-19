.class public Lcom/asus/cm/c2dm/RegC2dmIdInitiator;
.super Ljava/lang/Object;
.source "RegC2dmIdInitiator.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/SessionInitiator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/cm/c2dm/RegC2dmIdInitiator$RetryBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RegC2dmIdInitiator"

.field private static mDMServ:Lcom/asus/cm/CMService;

.field private static mRetryReceiver:Lcom/asus/cm/c2dm/RegC2dmIdInitiator$RetryBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/asus/cm/c2dm/RegC2dmIdInitiator$RetryBroadcastReceiver;

    invoke-direct {v0}, Lcom/asus/cm/c2dm/RegC2dmIdInitiator$RetryBroadcastReceiver;-><init>()V

    sput-object v0, Lcom/asus/cm/c2dm/RegC2dmIdInitiator;->mRetryReceiver:Lcom/asus/cm/c2dm/RegC2dmIdInitiator$RetryBroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic access$200()Lcom/asus/cm/c2dm/RegC2dmIdInitiator$RetryBroadcastReceiver;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/asus/cm/c2dm/RegC2dmIdInitiator;->mRetryReceiver:Lcom/asus/cm/c2dm/RegC2dmIdInitiator$RetryBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$300()Lcom/asus/cm/CMService;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/asus/cm/c2dm/RegC2dmIdInitiator;->mDMServ:Lcom/asus/cm/CMService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    sput-object p0, Lcom/asus/cm/c2dm/RegC2dmIdInitiator;->mDMServ:Lcom/asus/cm/CMService;

    return-object p0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notify(Lcom/asus/cm/CMService;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V
    .locals 5
    .parameter "dmServ"
    .parameter "pSessionType"
    .parameter "pSessionState"
    .parameter "lastError"

    .prologue
    const/4 v4, 0x0

    .line 29
    sput-object p1, Lcom/asus/cm/c2dm/RegC2dmIdInitiator;->mDMServ:Lcom/asus/cm/CMService;

    .line 31
    sget-object v1, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    sget-object v1, Lcom/asus/cm/c2dm/RegC2dmIdInitiator;->mDMServ:Lcom/asus/cm/CMService;

    invoke-virtual {v1}, Lcom/asus/cm/CMService;->waitAndStopService()V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    sget-object v1, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->COMPLETE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    sget-object v1, Lcom/asus/cm/c2dm/RegC2dmIdInitiator;->mDMServ:Lcom/asus/cm/CMService;

    invoke-static {v1, v4}, Lcom/asus/cm/c2dm/C2DMessaging;->setResendIdCount(Landroid/content/Context;I)V

    .line 35
    sget-object v1, Lcom/asus/cm/c2dm/RegC2dmIdInitiator;->mDMServ:Lcom/asus/cm/CMService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/asus/cm/c2dm/C2DMessaging;->setC2dmSendRegIdStatus(Landroid/content/Context;Z)V

    goto :goto_0

    .line 36
    :cond_2
    sget-object v1, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    sget-object v1, Lcom/asus/cm/c2dm/RegC2dmIdInitiator;->mDMServ:Lcom/asus/cm/CMService;

    invoke-static {v1}, Lcom/asus/cm/c2dm/C2DMessaging;->getResendIdCount(Landroid/content/Context;)I

    move-result v0

    .line 39
    .local v0, retryCount:I
    const-string v1, "RegC2dmIdInitiator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling registration retry, retry_count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object v1, Lcom/asus/cm/c2dm/RegC2dmIdInitiator;->mDMServ:Lcom/asus/cm/CMService;

    invoke-static {v1, v4}, Lcom/asus/cm/c2dm/C2DMessaging;->setC2dmSendRegIdStatus(Landroid/content/Context;Z)V

    .line 42
    invoke-static {}, Lcom/asus/cm/c2dm/RegC2dmIdInitiator$RetryBroadcastReceiver;->access$000()[J

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 43
    sget-object v1, Lcom/asus/cm/c2dm/RegC2dmIdInitiator;->mDMServ:Lcom/asus/cm/CMService;

    sget-object v2, Lcom/asus/cm/c2dm/RegC2dmIdInitiator;->mRetryReceiver:Lcom/asus/cm/c2dm/RegC2dmIdInitiator$RetryBroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.asus.dm.c2dm.intent.RETRY_SEND_REG_ID"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/asus/cm/CMService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 44
    sget-object v1, Lcom/asus/cm/c2dm/RegC2dmIdInitiator;->mRetryReceiver:Lcom/asus/cm/c2dm/RegC2dmIdInitiator$RetryBroadcastReceiver;

    invoke-static {v1, p1, v0}, Lcom/asus/cm/c2dm/RegC2dmIdInitiator$RetryBroadcastReceiver;->access$100(Lcom/asus/cm/c2dm/RegC2dmIdInitiator$RetryBroadcastReceiver;Landroid/content/Context;I)V

    .line 45
    sget-object v1, Lcom/asus/cm/c2dm/RegC2dmIdInitiator;->mDMServ:Lcom/asus/cm/CMService;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/asus/cm/c2dm/C2DMessaging;->setResendIdCount(Landroid/content/Context;I)V

    goto :goto_0
.end method
