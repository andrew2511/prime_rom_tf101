.class public Lcom/asus/cm/vibe/AccountInfoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountInfoReceiver.java"


# static fields
.field private static final ACCINFO:Ljava/lang/String; = "AccountInfo"

.field public static final EXTRA_REGISTRATION_APP_NAME:Ljava/lang/String; = "registration_app_name"

.field public static final EXTRA_VIBE_ID:Ljava/lang/String; = "vibe_id"

.field private static final TAG:Ljava/lang/String; = "AccountInfoReceiver"

.field private static final WEBSTORAGE_ID:Ljava/lang/String; = "com.asus.webstorage.id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private checkisNeedSave(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "regID"

    .prologue
    .line 55
    invoke-static {p1}, Lcom/asus/cm/CMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v1

    .line 56
    .local v1, regMgr:Lcom/asus/cm/CMCRegistryManager;
    invoke-virtual {v1}, Lcom/asus/cm/CMCRegistryManager;->getVibeAccount()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, acc:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    :cond_0
    const/4 v2, 0x1

    .line 62
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private senVibeIdToServer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "accountID"

    .prologue
    .line 66
    invoke-static {p1}, Lcom/asus/cm/CMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v1

    .line 67
    .local v1, regMgr:Lcom/asus/cm/CMCRegistryManager;
    invoke-virtual {v1, p2}, Lcom/asus/cm/CMCRegistryManager;->setSendingVibeAccount(Ljava/lang/String;)V

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/asus/cm/CMService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v0, i:Landroid/content/Intent;
    const-string v2, "vibe_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v2, "registration_app_name"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v2, "com.asus.cm.CMService.sendVibeID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 74
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 28
    const-string v3, "AccountInfoReceiver"

    const-string v4, "AccountInfoReceiver.onReceive()"

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v3, "AccountInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 30
    .local v0, accinfo:[B
    const/4 v2, 0x0

    .line 31
    .local v2, accountInfo:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 32
    .local v1, accountId:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 33
    invoke-static {v0}, Lcom/asus/cm/util/SimpleAES;->getAccountInfo([B)[Ljava/lang/String;

    move-result-object v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 45
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 46
    const-string v3, "AccountInfoReceiver"

    invoke-static {v3, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1, v1}, Lcom/asus/cm/vibe/AccountInfoReceiver;->checkisNeedSave(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-direct {p0, p1, v1}, Lcom/asus/cm/vibe/AccountInfoReceiver;->senVibeIdToServer(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    const-string v3, "AccountInfoReceiver"

    const-string v4, "after decode, account is null"

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_2
    const-string v3, "AccountInfoReceiver"

    const-string v4, "accinfo from broadcast is null"

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
