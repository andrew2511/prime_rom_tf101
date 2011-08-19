.class Lcom/google/android/talk/videochat/VideoChatActivity$7;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;->clickHandler(Landroid/view/View;)V
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
    .line 631
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$7;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 634
    invoke-static {}, Lcom/google/android/talk/videochat/CameraManager;->getInstance()Lcom/google/android/talk/videochat/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/CameraManager;->switchCamera()V

    .line 635
    return-void
.end method
