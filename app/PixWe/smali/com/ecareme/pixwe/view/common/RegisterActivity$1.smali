.class Lcom/ecareme/pixwe/view/common/RegisterActivity$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/common/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/common/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$1;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 379
    invoke-static {p2}, Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ecareme/pixwe/service/UploadServiceInterface;

    move-result-object v1

    sput-object v1, Lcom/ecareme/pixwe/PixWe;->uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

    .line 381
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 382
    .local v0, _msg:Landroid/os/Message;
    const/16 v1, 0x50

    iput v1, v0, Landroid/os/Message;->what:I

    .line 383
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$1;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$0(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 384
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 387
    const/4 v0, 0x0

    sput-object v0, Lcom/ecareme/pixwe/PixWe;->uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

    .line 388
    return-void
.end method
