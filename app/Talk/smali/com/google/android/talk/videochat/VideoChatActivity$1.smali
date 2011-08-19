.class Lcom/google/android/talk/videochat/VideoChatActivity$1;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;->transitionUiToVanity(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

.field final synthetic val$animate:Z


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$1;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    iput-boolean p2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$1;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$1;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$000(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/GlVideoView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$1;->val$animate:Z

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/GlVideoView;->placeCameraViewInVanity(Z)V

    .line 226
    return-void
.end method
