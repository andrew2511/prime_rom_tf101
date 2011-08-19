.class Lcom/google/android/talk/videochat/VideoChatActivity$8$1;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatActivity$8;->onCameraViewSizeChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/videochat/VideoChatActivity$8;

.field final synthetic val$cameraViewButton:Landroid/view/View;

.field final synthetic val$cameraViewParams:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic val$sliderParams:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity$8;Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 777
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$8$1;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$8;

    iput-object p2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$8$1;->val$sliderParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object p3, p0, Lcom/google/android/talk/videochat/VideoChatActivity$8$1;->val$cameraViewButton:Landroid/view/View;

    iput-object p4, p0, Lcom/google/android/talk/videochat/VideoChatActivity$8$1;->val$cameraViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$8$1;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$8;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$8;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2000(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$8$1;->val$sliderParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 781
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$8$1;->val$cameraViewButton:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$8$1;->val$cameraViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 782
    return-void
.end method
