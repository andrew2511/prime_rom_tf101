.class Lcom/android/camera/VideoCamera$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/VideoCamera;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    .line 554
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 555
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 559
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$400(Lcom/android/camera/VideoCamera;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {p1}, Lcom/android/camera/VideoCamera;->roundOrientation(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/VideoCamera;->access$1802(Lcom/android/camera/VideoCamera;I)I

    .line 567
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$1800(Lcom/android/camera/VideoCamera;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int v0, v1, v2

    .line 569
    .local v0, orientationCompensation:I
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$1900(Lcom/android/camera/VideoCamera;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 570
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1, v0}, Lcom/android/camera/VideoCamera;->access$1902(Lcom/android/camera/VideoCamera;I)I

    .line 571
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$2000(Lcom/android/camera/VideoCamera;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 572
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v2, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v2}, Lcom/android/camera/VideoCamera;->access$1900(Lcom/android/camera/VideoCamera;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/VideoCamera;->access$2100(Lcom/android/camera/VideoCamera;I)V

    .line 574
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$2200(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 575
    iget-object v1, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$2200(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v2}, Lcom/android/camera/VideoCamera;->access$1900(Lcom/android/camera/VideoCamera;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->setOrientation(I)V

    goto :goto_0
.end method
