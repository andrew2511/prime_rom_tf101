.class Lcom/asus/dm/DMClient$3;
.super Ljava/lang/Object;
.source "DMClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/DMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dm/DMClient;


# direct methods
.method constructor <init>(Lcom/asus/dm/DMClient;)V
    .locals 0
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/asus/dm/DMClient$3;->this$0:Lcom/asus/dm/DMClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 442
    const-string v1, "DMClient"

    const-string v2, "IStatusNotifyRegister onServiceConnected() starts.........."

    invoke-static {v1, v2}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/asus/dm/DMClient$3;->this$0:Lcom/asus/dm/DMClient;

    invoke-static {p2}, Lcom/asus/dm/IStatusNotifyRegister$Stub;->asInterface(Landroid/os/IBinder;)Lcom/asus/dm/IStatusNotifyRegister;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/dm/DMClient;->access$502(Lcom/asus/dm/DMClient;Lcom/asus/dm/IStatusNotifyRegister;)Lcom/asus/dm/IStatusNotifyRegister;

    .line 446
    iget-object v1, p0, Lcom/asus/dm/DMClient$3;->this$0:Lcom/asus/dm/DMClient;

    invoke-static {v1}, Lcom/asus/dm/DMClient;->access$500(Lcom/asus/dm/DMClient;)Lcom/asus/dm/IStatusNotifyRegister;

    move-result-object v1

    if-nez v1, :cond_0

    .line 447
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onServiceConnected(), mService is null!"

    invoke-static {v1, v2}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :goto_0
    return-void

    .line 453
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/asus/dm/DMClient$3;->this$0:Lcom/asus/dm/DMClient;

    invoke-static {v1}, Lcom/asus/dm/DMClient;->access$500(Lcom/asus/dm/DMClient;)Lcom/asus/dm/IStatusNotifyRegister;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dm/DMClient$3;->this$0:Lcom/asus/dm/DMClient;

    invoke-static {v2}, Lcom/asus/dm/DMClient;->access$900(Lcom/asus/dm/DMClient;)Lcom/asus/dm/DMClient$DMServStateCallBack;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/asus/dm/IStatusNotifyRegister;->registerStateCallback(Lcom/asus/dm/IDMServiceStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 455
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "cladismissssName"

    .prologue
    .line 459
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mSNRConnection onServiceDisconnected()"

    invoke-static {v1, v2}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/asus/dm/DMClient$3;->this$0:Lcom/asus/dm/DMClient;

    invoke-static {v1}, Lcom/asus/dm/DMClient;->access$500(Lcom/asus/dm/DMClient;)Lcom/asus/dm/IStatusNotifyRegister;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dm/DMClient$3;->this$0:Lcom/asus/dm/DMClient;

    invoke-static {v2}, Lcom/asus/dm/DMClient;->access$900(Lcom/asus/dm/DMClient;)Lcom/asus/dm/DMClient$DMServStateCallBack;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/asus/dm/IStatusNotifyRegister;->unregisterStateCallback(Lcom/asus/dm/IDMServiceStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :goto_0
    iget-object v1, p0, Lcom/asus/dm/DMClient$3;->this$0:Lcom/asus/dm/DMClient;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/asus/dm/DMClient;->access$502(Lcom/asus/dm/DMClient;Lcom/asus/dm/IStatusNotifyRegister;)Lcom/asus/dm/IStatusNotifyRegister;

    .line 467
    return-void

    .line 463
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 464
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
