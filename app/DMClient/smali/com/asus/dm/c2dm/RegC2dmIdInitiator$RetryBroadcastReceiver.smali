.class Lcom/asus/dm/c2dm/RegC2dmIdInitiator$RetryBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RegC2dmIdInitiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/c2dm/RegC2dmIdInitiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RetryBroadcastReceiver"
.end annotation


# static fields
.field private static final INTENT_ACTION_RETRY_SEND_REG_ID:Ljava/lang/String; = "com.asus.dm.c2dm.intent.RETRY_SEND_REG_ID"

.field private static final RETRY_INTERVAL:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/asus/dm/c2dm/RegC2dmIdInitiator$RetryBroadcastReceiver;->RETRY_INTERVAL:[J

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
    .line 50
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()[J
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/asus/dm/c2dm/RegC2dmIdInitiator$RetryBroadcastReceiver;->RETRY_INTERVAL:[J

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/dm/c2dm/RegC2dmIdInitiator$RetryBroadcastReceiver;Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/asus/dm/c2dm/RegC2dmIdInitiator$RetryBroadcastReceiver;->triggerRetryAlarm(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelRetryAlarm(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 70
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.asus.dm.c2dm.intent.RETRY_SEND_REG_ID"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, postIntent:Landroid/content/Intent;
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 72
    .local v0, pendIntent:Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 73
    return-void
.end method

.method private triggerRetryAlarm(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "retryCount"

    .prologue
    const/4 v6, 0x0

    .line 76
    const-string v5, "alarm"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 77
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.asus.dm.c2dm.intent.RETRY_SEND_REG_ID"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v4, postIntent:Landroid/content/Intent;
    invoke-static {p1, v6, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 79
    .local v3, pendIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v7, Lcom/asus/dm/c2dm/RegC2dmIdInitiator$RetryBroadcastReceiver;->RETRY_INTERVAL:[J

    aget-wide v7, v7, p2

    add-long v1, v5, v7

    .line 82
    .local v1, nextRetryTime:J
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 83
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 58
    invoke-static {p1}, Lcom/asus/dm/c2dm/RegC2dmIdInitiator$RetryBroadcastReceiver;->cancelRetryAlarm(Landroid/content/Context;)V

    .line 59
    invoke-static {}, Lcom/asus/dm/c2dm/RegC2dmIdInitiator;->access$300()Lcom/asus/dm/DMService;

    move-result-object v1

    invoke-static {}, Lcom/asus/dm/c2dm/RegC2dmIdInitiator;->access$200()Lcom/asus/dm/c2dm/RegC2dmIdInitiator$RetryBroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/asus/dm/DMService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 60
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/asus/dm/c2dm/RegC2dmIdInitiator;->access$302(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMService;

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/dm/DMService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, i:Landroid/content/Intent;
    const-string v1, "registration_id"

    invoke-static {p1}, Lcom/asus/dm/c2dm/C2DMessaging;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v1, "registration_app_name"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v1, "com.asus.dm.DMService.sendRegID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 67
    return-void
.end method
