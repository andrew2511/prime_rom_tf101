.class public Lcom/asus/cm/vibe/VibeSessionInitiator;
.super Ljava/lang/Object;
.source "VibeSessionInitiator.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/SessionInitiator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/cm/vibe/VibeSessionInitiator$VibeRetryReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VibeSessionInitiator"

.field private static mDMServ:Lcom/asus/cm/CMService;

.field private static mRetryReceiver:Lcom/asus/cm/vibe/VibeSessionInitiator$VibeRetryReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/asus/cm/vibe/VibeSessionInitiator$VibeRetryReceiver;

    invoke-direct {v0}, Lcom/asus/cm/vibe/VibeSessionInitiator$VibeRetryReceiver;-><init>()V

    sput-object v0, Lcom/asus/cm/vibe/VibeSessionInitiator;->mRetryReceiver:Lcom/asus/cm/vibe/VibeSessionInitiator$VibeRetryReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method static synthetic access$200()Lcom/asus/cm/vibe/VibeSessionInitiator$VibeRetryReceiver;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/asus/cm/vibe/VibeSessionInitiator;->mRetryReceiver:Lcom/asus/cm/vibe/VibeSessionInitiator$VibeRetryReceiver;

    return-object v0
.end method

.method static synthetic access$300()Lcom/asus/cm/CMService;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/asus/cm/vibe/VibeSessionInitiator;->mDMServ:Lcom/asus/cm/CMService;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notify(Lcom/asus/cm/CMService;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V
    .locals 6
    .parameter "dmServ"
    .parameter "pSessionType"
    .parameter "pSessionState"
    .parameter "lastError"

    .prologue
    .line 31
    sput-object p1, Lcom/asus/cm/vibe/VibeSessionInitiator;->mDMServ:Lcom/asus/cm/CMService;

    .line 32
    sget-object v2, Lcom/asus/cm/vibe/VibeSessionInitiator;->mDMServ:Lcom/asus/cm/CMService;

    invoke-static {v2}, Lcom/asus/cm/CMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v0

    .line 33
    .local v0, regMgr:Lcom/asus/cm/CMCRegistryManager;
    sget-object v2, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    sget-object v2, Lcom/asus/cm/vibe/VibeSessionInitiator;->mDMServ:Lcom/asus/cm/CMService;

    invoke-virtual {v2}, Lcom/asus/cm/CMService;->waitAndStopService()V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    sget-object v2, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->COMPLETE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    invoke-virtual {v0}, Lcom/asus/cm/CMCRegistryManager;->getSendingVibeAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/asus/cm/CMCRegistryManager;->setVibeAccount(Ljava/lang/String;)V

    .line 37
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/asus/cm/CMCRegistryManager;->setVibeRetryCount(I)V

    .line 38
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/asus/cm/CMCRegistryManager;->setSendingVibeAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_2
    sget-object v2, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/asus/cm/CMCRegistryManager;->getVibeRetryCount()I

    move-result v1

    .line 42
    .local v1, retryCount:I
    const-string v2, "VibeSessionInitiator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling registration retry, retry_count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/asus/cm/vibe/VibeSessionInitiator$VibeRetryReceiver;->access$000()[J

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 45
    sget-object v2, Lcom/asus/cm/vibe/VibeSessionInitiator;->mDMServ:Lcom/asus/cm/CMService;

    sget-object v3, Lcom/asus/cm/vibe/VibeSessionInitiator;->mRetryReceiver:Lcom/asus/cm/vibe/VibeSessionInitiator$VibeRetryReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.asus.cm.vibe.intent.RETRY_SEND_VIBE_ID"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/asus/cm/CMService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    sget-object v2, Lcom/asus/cm/vibe/VibeSessionInitiator;->mRetryReceiver:Lcom/asus/cm/vibe/VibeSessionInitiator$VibeRetryReceiver;

    invoke-static {v2, p1, v1}, Lcom/asus/cm/vibe/VibeSessionInitiator$VibeRetryReceiver;->access$100(Lcom/asus/cm/vibe/VibeSessionInitiator$VibeRetryReceiver;Landroid/content/Context;I)V

    .line 47
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/asus/cm/CMCRegistryManager;->setVibeRetryCount(I)V

    goto :goto_0
.end method
