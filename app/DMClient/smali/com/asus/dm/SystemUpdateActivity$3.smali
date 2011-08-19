.class Lcom/asus/dm/SystemUpdateActivity$3;
.super Ljava/lang/Object;
.source "SystemUpdateActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/SystemUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dm/SystemUpdateActivity;


# direct methods
.method constructor <init>(Lcom/asus/dm/SystemUpdateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/asus/dm/SystemUpdateActivity$3;->this$0:Lcom/asus/dm/SystemUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 197
    const-string v1, "DMClient"

    const-string v2, "IStatusNotifyRegister onServiceConnected() starts.........."

    invoke-static {v1, v2}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/asus/dm/SystemUpdateActivity$3;->this$0:Lcom/asus/dm/SystemUpdateActivity;

    invoke-static {p2}, Lcom/asus/dm/IStatusNotifyRegister$Stub;->asInterface(Landroid/os/IBinder;)Lcom/asus/dm/IStatusNotifyRegister;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/dm/SystemUpdateActivity;->access$502(Lcom/asus/dm/SystemUpdateActivity;Lcom/asus/dm/IStatusNotifyRegister;)Lcom/asus/dm/IStatusNotifyRegister;

    .line 201
    iget-object v1, p0, Lcom/asus/dm/SystemUpdateActivity$3;->this$0:Lcom/asus/dm/SystemUpdateActivity;

    invoke-static {v1}, Lcom/asus/dm/SystemUpdateActivity;->access$500(Lcom/asus/dm/SystemUpdateActivity;)Lcom/asus/dm/IStatusNotifyRegister;

    move-result-object v1

    if-nez v1, :cond_0

    .line 202
    const-string v1, "SystemUpdateActivity"

    const-string v2, "onServiceConnected(), mService is null!"

    invoke-static {v1, v2}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void

    .line 207
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/asus/dm/SystemUpdateActivity$3;->this$0:Lcom/asus/dm/SystemUpdateActivity;

    invoke-static {v1}, Lcom/asus/dm/SystemUpdateActivity;->access$500(Lcom/asus/dm/SystemUpdateActivity;)Lcom/asus/dm/IStatusNotifyRegister;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dm/SystemUpdateActivity$3;->this$0:Lcom/asus/dm/SystemUpdateActivity;

    invoke-static {v2}, Lcom/asus/dm/SystemUpdateActivity;->access$600(Lcom/asus/dm/SystemUpdateActivity;)Lcom/asus/dm/SystemUpdateActivity$DMServStateCallBack;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/asus/dm/IStatusNotifyRegister;->registerStateCallback(Lcom/asus/dm/IDMServiceStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 209
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
    .line 214
    const-string v1, "SystemUpdateActivity"

    const-string v2, "mSNRConnection onServiceDisconnected()"

    invoke-static {v1, v2}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/asus/dm/SystemUpdateActivity$3;->this$0:Lcom/asus/dm/SystemUpdateActivity;

    invoke-static {v1}, Lcom/asus/dm/SystemUpdateActivity;->access$500(Lcom/asus/dm/SystemUpdateActivity;)Lcom/asus/dm/IStatusNotifyRegister;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dm/SystemUpdateActivity$3;->this$0:Lcom/asus/dm/SystemUpdateActivity;

    invoke-static {v2}, Lcom/asus/dm/SystemUpdateActivity;->access$600(Lcom/asus/dm/SystemUpdateActivity;)Lcom/asus/dm/SystemUpdateActivity$DMServStateCallBack;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/asus/dm/IStatusNotifyRegister;->unregisterStateCallback(Lcom/asus/dm/IDMServiceStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    iget-object v1, p0, Lcom/asus/dm/SystemUpdateActivity$3;->this$0:Lcom/asus/dm/SystemUpdateActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/asus/dm/SystemUpdateActivity;->access$502(Lcom/asus/dm/SystemUpdateActivity;Lcom/asus/dm/IStatusNotifyRegister;)Lcom/asus/dm/IStatusNotifyRegister;

    .line 221
    return-void

    .line 217
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 218
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
