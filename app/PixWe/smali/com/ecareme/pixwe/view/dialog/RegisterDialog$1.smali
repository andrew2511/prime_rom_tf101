.class Lcom/ecareme/pixwe/view/dialog/RegisterDialog$1;
.super Ljava/lang/Object;
.source "RegisterDialog.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/dialog/RegisterDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$1;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 388
    invoke-static {p2}, Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ecareme/pixwe/service/UploadServiceInterface;

    move-result-object v1

    sput-object v1, Lcom/ecareme/pixwe/PixWe;->uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

    .line 390
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 391
    .local v0, _msg:Landroid/os/Message;
    const/16 v1, 0x50

    iput v1, v0, Landroid/os/Message;->what:I

    .line 392
    iget-object v1, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$1;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$0(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 393
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 396
    const/4 v0, 0x0

    sput-object v0, Lcom/ecareme/pixwe/PixWe;->uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

    .line 397
    return-void
.end method
