.class Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PinManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/PinManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaMountedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/PinManager;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/videos/PinManager;)V
    .locals 0
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;-><init>(Lcom/google/android/youtube/videos/PinManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$1800(Lcom/google/android/youtube/videos/PinManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$1900(Lcom/google/android/youtube/videos/PinManager;)V

    .line 501
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$700(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/PinManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/videos/PinManager$Listener;->onDirectoryMountedChange()V

    .line 503
    :cond_0
    return-void
.end method

.method public register()V
    .locals 2

    .prologue
    .line 486
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 487
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 488
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v1}, Lcom/google/android/youtube/videos/PinManager;->access$1400(Lcom/google/android/youtube/videos/PinManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 491
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$1400(Lcom/google/android/youtube/videos/PinManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 495
    return-void
.end method
