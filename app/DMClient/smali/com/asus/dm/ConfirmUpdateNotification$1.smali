.class Lcom/asus/dm/ConfirmUpdateNotification$1;
.super Ljava/lang/Object;
.source "ConfirmUpdateNotification.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/ConfirmUpdateNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dm/ConfirmUpdateNotification;


# direct methods
.method constructor <init>(Lcom/asus/dm/ConfirmUpdateNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/asus/dm/ConfirmUpdateNotification$1;->this$0:Lcom/asus/dm/ConfirmUpdateNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 22
    const-string v0, "DMClient"

    const-string v1, "onServiceConnected() starts.........."

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/asus/dm/ConfirmUpdateNotification$1;->this$0:Lcom/asus/dm/ConfirmUpdateNotification;

    invoke-static {p2}, Lcom/asus/dm/IDMService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/asus/dm/IDMService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/dm/ConfirmUpdateNotification;->access$002(Lcom/asus/dm/ConfirmUpdateNotification;Lcom/asus/dm/IDMService;)Lcom/asus/dm/IDMService;

    .line 24
    iget-object v0, p0, Lcom/asus/dm/ConfirmUpdateNotification$1;->this$0:Lcom/asus/dm/ConfirmUpdateNotification;

    invoke-static {v0}, Lcom/asus/dm/ConfirmUpdateNotification;->access$000(Lcom/asus/dm/ConfirmUpdateNotification;)Lcom/asus/dm/IDMService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected(), mService is null!"

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/asus/dm/ConfirmUpdateNotification$1;->this$0:Lcom/asus/dm/ConfirmUpdateNotification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/dm/ConfirmUpdateNotification;->access$002(Lcom/asus/dm/ConfirmUpdateNotification;Lcom/asus/dm/IDMService;)Lcom/asus/dm/IDMService;

    .line 32
    return-void
.end method
