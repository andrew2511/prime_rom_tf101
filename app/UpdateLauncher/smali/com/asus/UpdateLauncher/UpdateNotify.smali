.class public Lcom/asus/UpdateLauncher/UpdateNotify;
.super Landroid/app/Activity;
.source "UpdateNotify.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 13
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/asus/UpdateLauncher/UpdateNotify;->DEBUG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 18
    sget-boolean v5, Lcom/asus/UpdateLauncher/UpdateNotify;->DEBUG:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 20
    const-string v5, "UpdateNotify"

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/asus/UpdateLauncher/UpdateNotify;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 25
    .local v4, updateNotiManager:Landroid/app/NotificationManager;
    sget v5, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->UPDATELAUNCHER_INDEX:I

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 27
    invoke-virtual {p0}, Lcom/asus/UpdateLauncher/UpdateNotify;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 28
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 29
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "REASON"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 31
    .local v3, reason:I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 33
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 34
    .local v2, intent2:Landroid/content/Intent;
    const-string v5, "com.asus.UpdateLauncher.notify"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v2}, Lcom/asus/UpdateLauncher/UpdateNotify;->sendBroadcast(Landroid/content/Intent;)V

    .line 38
    .end local v2           #intent2:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/asus/UpdateLauncher/UpdateNotify;->finish()V

    .line 39
    return-void
.end method
