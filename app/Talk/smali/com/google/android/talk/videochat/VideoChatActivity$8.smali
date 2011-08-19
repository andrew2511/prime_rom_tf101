.class Lcom/google/android/talk/videochat/VideoChatActivity$8;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Lcom/google/android/talk/videochat/VideoAnimator$CameraViewSizeChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;->onStart()V
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
    .line 735
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$8;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraViewSizeChanged(II)V
    .locals 10
    .parameter "width"
    .parameter "height"

    .prologue
    const v6, 0x7f0b0025

    const v9, 0x7f0b0024

    const v8, 0x7f0b0023

    const/4 v7, 0x0

    .line 740
    if-le p1, p2, :cond_0

    .line 742
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity$8;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 744
    .local v3, rightMargin:I
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity$8;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/talk/videochat/VideoChatActivity$8;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v6}, Lcom/google/android/talk/videochat/VideoChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int v0, v5, p2

    .line 763
    .local v0, bottomMargin:I
    :goto_0
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity$8;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2000(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 766
    .local v4, sliderParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v7, v7, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 770
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity$8;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const v6, 0x7f1000a7

    invoke-virtual {v5, v6}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 771
    .local v1, cameraViewButton:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 773
    .local v2, cameraViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 774
    iput p2, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 777
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity$8;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1000(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/google/android/talk/videochat/VideoChatActivity$8$1;

    invoke-direct {v6, p0, v4, v1, v2}, Lcom/google/android/talk/videochat/VideoChatActivity$8$1;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity$8;Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 784
    return-void

    .line 751
    .end local v0           #bottomMargin:I
    .end local v1           #cameraViewButton:Landroid/view/View;
    .end local v2           #cameraViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #rightMargin:I
    .end local v4           #sliderParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity$8;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/talk/videochat/VideoChatActivity$8;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v6}, Lcom/google/android/talk/videochat/VideoChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int v3, v5, p1

    .line 756
    .restart local v3       #rightMargin:I
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity$8;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0       #bottomMargin:I
    goto :goto_0
.end method
