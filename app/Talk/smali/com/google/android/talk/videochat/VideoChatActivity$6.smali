.class Lcom/google/android/talk/videochat/VideoChatActivity$6;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;
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
    .line 559
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$6;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$6;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1800(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 563
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$6;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1900(Lcom/google/android/talk/videochat/VideoChatActivity;Z)V

    .line 565
    :cond_0
    return-void
.end method
