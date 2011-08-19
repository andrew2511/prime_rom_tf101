.class Lcom/asus/cm/vibe/VibeSessionInitiator$VibeRetryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VibeSessionInitiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/vibe/VibeSessionInitiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VibeRetryReceiver"
.end annotation


# static fields
.field private static final INTENT_ACTION_RETRY_SEND_VIBE_ID:Ljava/lang/String; = "com.asus.cm.vibe.intent.RETRY_SEND_VIBE_ID"

.field private static final RETRY_INTERVAL:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/asus/cm/vibe/VibeSessionInitiator$VibeRetryReceiver;->RETRY_INTERVAL:[J

    return-void

    :array_0
    .array-data 0x8
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc0t 0xd4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0xa9t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0xeet 0x36t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0xa8t 0x12t 0x1t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x51t 0x25t 0x2t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xa2t 0x4at 0x4t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()[J
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/asus/cm/vibe/VibeSessionInitiator$VibeRetryReceiver;->RETRY_INTERVAL:[J

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/cm/vibe/VibeSessionInitiator$VibeRetryReceiver;Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/asus/cm/vibe/VibeSessionInitiator$VibeRetryReceiver;->triggerRetryAlarm(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelRetryAlarm(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 72
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.asus.cm.vibe.intent.RETRY_SEND_VIBE_ID"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, postIntent:Landroid/content/Intent;
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 74
    .local v0, pendIntent:Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 75
    return-void
.end method

.method private triggerRetryAlarm(Landroid/content/Context;I)V
    .locals 10
    .parameter "context"
    .parameter "retryCount"

    .prologue
    const/4 v9, 0x0

    .line 78
    const-string v5, "alarm"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 79
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.asus.cm.vibe.intent.RETRY_SEND_VIBE_ID"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v4, postIntent:Landroid/content/Intent;
    invoke-static {p1, v9, v4, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 81
    .local v3, pendIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v7, Lcom/asus/cm/vibe/VibeSessionInitiator$VibeRetryReceiver;->RETRY_INTERVAL:[J

    aget-wide v7, v7, p2

    add-long v1, v5, v7

    .line 84
    .local v1, nextRetryTime:J
    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 85
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 60
    invoke-static {p1}, Lcom/asus/cm/vibe/VibeSessionInitiator$VibeRetryReceiver;->cancelRetryAlarm(Landroid/content/Context;)V

    .line 61
    invoke-static {}, Lcom/asus/cm/vibe/VibeSessionInitiator;->access$300()Lcom/asus/cm/CMService;

    move-result-object v2

    invoke-static {}, Lcom/asus/cm/vibe/VibeSessionInitiator;->access$200()Lcom/asus/cm/vibe/VibeSessionInitiator$VibeRetryReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/cm/CMService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 62
    invoke-static {}, Lcom/asus/cm/vibe/VibeSessionInitiator;->access$300()Lcom/asus/cm/CMService;

    move-result-object v2

    invoke-static {v2}, Lcom/asus/cm/CMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v1

    .line 64
    .local v1, regMgr:Lcom/asus/cm/CMCRegistryManager;
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/asus/cm/CMService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, i:Landroid/content/Intent;
    const-string v2, "vibe_id"

    invoke-virtual {v1}, Lcom/asus/cm/CMCRegistryManager;->getSendingVibeAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v2, "registration_app_name"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v2, "com.asus.cm.CMService.sendVibeID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 69
    return-void
.end method
