.class public Lcom/asus/vibe2/mycloud/Rcv_MyCloudAccount;
.super Landroid/content/BroadcastReceiver;
.source "Rcv_MyCloudAccount.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 12
    invoke-static {p2}, Lcom/asus/vibe2/mycloud/Utils_MyCloud;->updateAccountInfoByReceiver(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.vibe.action.APP_INFO_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 15
    :cond_0
    return-void
.end method
