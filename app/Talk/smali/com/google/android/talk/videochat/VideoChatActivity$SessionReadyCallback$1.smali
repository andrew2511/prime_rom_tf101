.class Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback$1;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;->onSessionReady(Lcom/google/android/talk/videochat/VideoChatSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback$1;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "level"
    .parameter "fromUser"

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback$1;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2900(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatSession;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/talk/videochat/VideoChatSession;->setImageStabilizationLevel(I)V

    .line 1054
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback$1;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v0, p2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3600(Lcom/google/android/talk/videochat/VideoChatActivity;I)V

    .line 1055
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1058
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1060
    return-void
.end method
