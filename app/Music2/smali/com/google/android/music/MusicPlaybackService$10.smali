.class Lcom/google/android/music/MusicPlaybackService$10;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->registerExternalStorageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$10;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 1019
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1020
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1021
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$10;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v1, v2}, Lcom/google/android/music/MusicPlaybackService;->access$2300(Lcom/google/android/music/MusicPlaybackService;Z)V

    .line 1022
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$10;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/music/MusicPlaybackService;->access$2502(Lcom/google/android/music/MusicPlaybackService;Z)Z

    .line 1023
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$10;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/MusicPlaybackService;->closeExternalStorageFiles(Ljava/lang/String;)V

    .line 1031
    :cond_0
    :goto_0
    return-void

    .line 1024
    :cond_1
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1025
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$10;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$2608(Lcom/google/android/music/MusicPlaybackService;)I

    .line 1026
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$10;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$1700(Lcom/google/android/music/MusicPlaybackService;)V

    .line 1027
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$10;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v1, v2}, Lcom/google/android/music/MusicPlaybackService;->access$2502(Lcom/google/android/music/MusicPlaybackService;Z)Z

    .line 1028
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$10;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v2, "com.android.music.queuechanged"

    invoke-static {v1, v2}, Lcom/google/android/music/MusicPlaybackService;->access$100(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V

    .line 1029
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$10;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v2, "com.android.music.metachanged"

    invoke-static {v1, v2}, Lcom/google/android/music/MusicPlaybackService;->access$100(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V

    goto :goto_0
.end method
