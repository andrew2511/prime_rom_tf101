.class Lcom/android/server/asus/DockManagerService$1;
.super Landroid/os/HandlerThread;
.source "DockManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/asus/DockManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/asus/DockManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/asus/DockManagerService;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/server/asus/DockManagerService$1;->this$0:Lcom/android/server/asus/DockManagerService;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService$1;->this$0:Lcom/android/server/asus/DockManagerService;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #setter for: Lcom/android/server/asus/DockManagerService;->mFirmwareUpdateHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/server/asus/DockManagerService;->access$002(Lcom/android/server/asus/DockManagerService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 204
    return-void
.end method
