.class Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TransferService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/transfer/TransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaMountedReceiver"
.end annotation


# instance fields
.field private mediaMounted:Z

.field final synthetic this$0:Lcom/google/android/youtube/core/transfer/TransferService;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/transfer/TransferService;)V
    .locals 2
    .parameter

    .prologue
    .line 569
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 570
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;->mediaMounted:Z

    .line 571
    return-void
.end method


# virtual methods
.method public isMediaMounted()Z
    .locals 1

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;->mediaMounted:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 591
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;->mediaMounted:Z

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media mounted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;->mediaMounted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferService;->ping()V

    .line 594
    return-void
.end method

.method public register()V
    .locals 2

    .prologue
    .line 578
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 579
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 580
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 581
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 582
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 583
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 587
    return-void
.end method
