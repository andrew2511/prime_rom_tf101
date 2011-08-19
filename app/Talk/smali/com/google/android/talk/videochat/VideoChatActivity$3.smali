.class Lcom/google/android/talk/videochat/VideoChatActivity$3;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;->transitionUiToConnected(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$3;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 270
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$3;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$000(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/GlVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlVideoView;->showRemoteVideo()V

    .line 273
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$3;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$000(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/GlVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlVideoView;->showCameraVideo()V

    .line 274
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$3;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$000(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/GlVideoView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/GlVideoView;->showDarkBackgroundImage(Z)V

    .line 275
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$3;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$200(Lcom/google/android/talk/videochat/VideoChatActivity;Z)V

    .line 276
    return-void
.end method
