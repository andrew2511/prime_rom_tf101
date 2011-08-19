.class public Lcom/asus/dm/c2dm/C2DMessaging;
.super Ljava/lang/Object;
.source "C2DMessaging.java"


# static fields
.field public static final BACKOFF:Ljava/lang/String; = "backoff"

.field public static final EMAIL_OF_SENDER:Ljava/lang/String; = "mdm.admasus@gmail.com"

.field public static final EXTRA_APPLICATION_PENDING_INTENT:Ljava/lang/String; = "app"

.field public static final EXTRA_SENDER:Ljava/lang/String; = "sender"

.field public static final LAST_REGISTRATION_CHANGE:Ljava/lang/String; = "last_registration_change"

.field public static final REQUEST_REGISTRATION_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTER"

.field public static final REQUEST_UNREGISTRATION_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.UNREGISTER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearRegistrationId(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/asus/dm/DMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v0

    .line 57
    .local v0, regMgr:Lcom/asus/dm/DMCRegistryManager;
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/asus/dm/DMCRegistryManager;->setC2DMRegId(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static getC2dmSendRegIdStatus(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 71
    invoke-static {p0}, Lcom/asus/dm/DMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v0

    .line 72
    .local v0, regMgr:Lcom/asus/dm/DMCRegistryManager;
    invoke-virtual {v0}, Lcom/asus/dm/DMCRegistryManager;->getIsReadyToRcvMsg()Z

    move-result v1

    return v1
.end method

.method public static getRegisterRetryCount(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/asus/dm/DMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v0

    .line 37
    .local v0, regMgr:Lcom/asus/dm/DMCRegistryManager;
    invoke-virtual {v0}, Lcom/asus/dm/DMCRegistryManager;->getC2dmRegisterRetryCount()I

    move-result v1

    return v1
.end method

.method public static getRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 66
    invoke-static {p0}, Lcom/asus/dm/DMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v0

    .line 67
    .local v0, regMgr:Lcom/asus/dm/DMCRegistryManager;
    invoke-virtual {v0}, Lcom/asus/dm/DMCRegistryManager;->getC2DMRegId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getResendIdCount(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/asus/dm/DMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v0

    .line 47
    .local v0, regMgr:Lcom/asus/dm/DMCRegistryManager;
    invoke-virtual {v0}, Lcom/asus/dm/DMCRegistryManager;->getC2dmSendRegIdRetryCount()I

    move-result v1

    return v1
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "senderId"

    .prologue
    const/4 v3, 0x0

    .line 20
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, registrationIntent:Landroid/content/Intent;
    const-string v1, "app"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 23
    const-string v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 25
    return-void
.end method

.method public static setC2dmSendRegIdStatus(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "status"

    .prologue
    .line 76
    invoke-static {p0}, Lcom/asus/dm/DMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v0

    .line 77
    .local v0, regMgr:Lcom/asus/dm/DMCRegistryManager;
    invoke-virtual {v0, p1}, Lcom/asus/dm/DMCRegistryManager;->setIsReadyToRcvMsg(Z)V

    .line 78
    return-void
.end method

.method public static setRegisterRetryCount(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "count"

    .prologue
    .line 41
    invoke-static {p0}, Lcom/asus/dm/DMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v0

    .line 42
    .local v0, regMgr:Lcom/asus/dm/DMCRegistryManager;
    invoke-virtual {v0, p1}, Lcom/asus/dm/DMCRegistryManager;->setC2dmRegisterRetryCount(I)V

    .line 43
    return-void
.end method

.method public static setRegistrationId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "regID"

    .prologue
    .line 61
    invoke-static {p0}, Lcom/asus/dm/DMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v0

    .line 62
    .local v0, regMgr:Lcom/asus/dm/DMCRegistryManager;
    invoke-virtual {v0, p1}, Lcom/asus/dm/DMCRegistryManager;->setC2DMRegId(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static setResendIdCount(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "count"

    .prologue
    .line 51
    invoke-static {p0}, Lcom/asus/dm/DMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v0

    .line 52
    .local v0, regMgr:Lcom/asus/dm/DMCRegistryManager;
    invoke-virtual {v0, p1}, Lcom/asus/dm/DMCRegistryManager;->setC2dmSendRegIdRetryCount(I)V

    .line 53
    return-void
.end method

.method public static unregister(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, regIntent:Landroid/content/Intent;
    const-string v1, "app"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 33
    return-void
.end method
