.class Lcom/asus/cm/CMClient$3;
.super Ljava/lang/Object;
.source "CMClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/CMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/cm/CMClient;


# direct methods
.method constructor <init>(Lcom/asus/cm/CMClient;)V
    .locals 0
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/asus/cm/CMClient$3;->this$0:Lcom/asus/cm/CMClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 475
    const-string v1, "DMClient"

    const-string v2, "IStatusNotifyRegister onServiceConnected() starts.........."

    invoke-static {v1, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Lcom/asus/cm/CMClient$3;->this$0:Lcom/asus/cm/CMClient;

    invoke-static {p2}, Lcom/asus/cm/IStatusNotifyRegister$Stub;->asInterface(Landroid/os/IBinder;)Lcom/asus/cm/IStatusNotifyRegister;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/cm/CMClient;->access$502(Lcom/asus/cm/CMClient;Lcom/asus/cm/IStatusNotifyRegister;)Lcom/asus/cm/IStatusNotifyRegister;

    .line 479
    iget-object v1, p0, Lcom/asus/cm/CMClient$3;->this$0:Lcom/asus/cm/CMClient;

    invoke-static {v1}, Lcom/asus/cm/CMClient;->access$500(Lcom/asus/cm/CMClient;)Lcom/asus/cm/IStatusNotifyRegister;

    move-result-object v1

    if-nez v1, :cond_0

    .line 480
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onServiceConnected(), mService is null!"

    invoke-static {v1, v2}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :goto_0
    return-void

    .line 486
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/asus/cm/CMClient$3;->this$0:Lcom/asus/cm/CMClient;

    invoke-static {v1}, Lcom/asus/cm/CMClient;->access$500(Lcom/asus/cm/CMClient;)Lcom/asus/cm/IStatusNotifyRegister;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/cm/CMClient$3;->this$0:Lcom/asus/cm/CMClient;

    invoke-static {v2}, Lcom/asus/cm/CMClient;->access$1000(Lcom/asus/cm/CMClient;)Lcom/asus/cm/CMClient$DMServStateCallBack;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/asus/cm/IStatusNotifyRegister;->registerStateCallback(Lcom/asus/cm/IDMServiceStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 488
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "cladismissssName"

    .prologue
    .line 492
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mSNRConnection onServiceDisconnected()"

    invoke-static {v1, v2}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :try_start_0
    iget-object v1, p0, Lcom/asus/cm/CMClient$3;->this$0:Lcom/asus/cm/CMClient;

    invoke-static {v1}, Lcom/asus/cm/CMClient;->access$500(Lcom/asus/cm/CMClient;)Lcom/asus/cm/IStatusNotifyRegister;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/cm/CMClient$3;->this$0:Lcom/asus/cm/CMClient;

    invoke-static {v2}, Lcom/asus/cm/CMClient;->access$1000(Lcom/asus/cm/CMClient;)Lcom/asus/cm/CMClient$DMServStateCallBack;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/asus/cm/IStatusNotifyRegister;->unregisterStateCallback(Lcom/asus/cm/IDMServiceStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :goto_0
    iget-object v1, p0, Lcom/asus/cm/CMClient$3;->this$0:Lcom/asus/cm/CMClient;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/asus/cm/CMClient;->access$502(Lcom/asus/cm/CMClient;Lcom/asus/cm/IStatusNotifyRegister;)Lcom/asus/cm/IStatusNotifyRegister;

    .line 500
    return-void

    .line 496
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 497
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
