.class Lnet/yostore/aws/view/common/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/common/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/common/SplashActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/common/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/common/SplashActivity$1;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 415
    invoke-static {p2}, Lnet/yostore/aws/service/PlayerServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lnet/yostore/aws/service/PlayerServiceInterface;

    move-result-object v1

    sput-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    .line 416
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 417
    .local v0, _msg:Landroid/os/Message;
    const/16 v1, 0x28

    iput v1, v0, Landroid/os/Message;->what:I

    .line 418
    iget-object v1, p0, Lnet/yostore/aws/view/common/SplashActivity$1;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/SplashActivity;->access$0(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 419
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 422
    const/4 v0, 0x0

    sput-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    .line 423
    return-void
.end method
