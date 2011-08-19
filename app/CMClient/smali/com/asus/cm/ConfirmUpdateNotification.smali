.class public Lcom/asus/cm/ConfirmUpdateNotification;
.super Landroid/app/Activity;
.source "ConfirmUpdateNotification.java"


# static fields
.field private static final NOTIFICATION_ACTION:Ljava/lang/String; = "cm.asus.dm.fumo.notification"

.field private static final TAG:Ljava/lang/String; = "ConfirmUpdateNotification"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mService:Lcom/asus/dm/IDMService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/cm/ConfirmUpdateNotification;->mService:Lcom/asus/dm/IDMService;

    .line 22
    new-instance v0, Lcom/asus/cm/ConfirmUpdateNotification$1;

    invoke-direct {v0, p0}, Lcom/asus/cm/ConfirmUpdateNotification$1;-><init>(Lcom/asus/cm/ConfirmUpdateNotification;)V

    iput-object v0, p0, Lcom/asus/cm/ConfirmUpdateNotification;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/asus/cm/ConfirmUpdateNotification;)Lcom/asus/dm/IDMService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/asus/cm/ConfirmUpdateNotification;->mService:Lcom/asus/dm/IDMService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/asus/cm/ConfirmUpdateNotification;Lcom/asus/dm/IDMService;)Lcom/asus/dm/IDMService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/asus/cm/ConfirmUpdateNotification;->mService:Lcom/asus/dm/IDMService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/asus/cm/ConfirmUpdateNotification;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/asus/cm/ConfirmUpdateNotification;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private bindDMService()V
    .locals 3

    .prologue
    .line 38
    new-instance v1, Lcom/asus/cm/ConfirmUpdateNotification$2;

    invoke-direct {v1, p0}, Lcom/asus/cm/ConfirmUpdateNotification$2;-><init>(Lcom/asus/cm/ConfirmUpdateNotification;)V

    invoke-virtual {v1}, Lcom/asus/cm/ConfirmUpdateNotification$2;->start()V

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/asus/cm/ConfirmUpdateNotification;->mService:Lcom/asus/dm/IDMService;

    if-nez v1, :cond_0

    .line 50
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 55
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method public static getPeddingIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter "context"

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/cm/ConfirmUpdateNotification;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, notificationIntent:Landroid/content/Intent;
    const-string v1, "cm.asus.dm.fumo.notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    return-object v0
.end method

.method private unBindDMService()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/asus/cm/ConfirmUpdateNotification;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/asus/cm/ConfirmUpdateNotification;->unbindService(Landroid/content/ServiceConnection;)V

    .line 61
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 66
    const-string v0, "ConfirmUpdateNotification"

    const-string v1, "===================== onCreate ======================="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/asus/cm/ConfirmUpdateNotification;->setContentView(I)V

    .line 69
    invoke-direct {p0}, Lcom/asus/cm/ConfirmUpdateNotification;->bindDMService()V

    .line 70
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 74
    const-string v1, "ConfirmUpdateNotification"

    const-string v2, "===================== onResume ======================="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 78
    const-string v1, "cm.asus.dm.fumo.notification"

    invoke-virtual {p0}, Lcom/asus/cm/ConfirmUpdateNotification;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/asus/cm/ConfirmUpdateNotification;->mService:Lcom/asus/dm/IDMService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/asus/dm/IDMService;->showConfirmUpdateDialog(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/asus/cm/ConfirmUpdateNotification;->finish()V

    .line 87
    return-void

    .line 81
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 82
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/asus/cm/ConfirmUpdateNotification;->unBindDMService()V

    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 93
    return-void
.end method
