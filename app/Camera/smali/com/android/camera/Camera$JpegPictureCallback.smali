.class final Lcom/android/camera/Camera$JpegPictureCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 720
    iput-object p1, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    iput-object p2, p0, Lcom/android/camera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 722
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 12
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const/4 v11, 0x3

    const-wide/16 v9, 0x0

    .line 726
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/Camera;->access$1600(Lcom/android/camera/Camera;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/camera/Camera;->access$702(Lcom/android/camera/Camera;J)J

    .line 734
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)J

    move-result-wide v4

    cmp-long v4, v4, v9

    if-eqz v4, :cond_3

    .line 735
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v5}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v7}, Lcom/android/camera/Camera;->access$3100(Lcom/android/camera/Camera;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v4, Lcom/android/camera/Camera;->mShutterToPictureDisplayedTime:J

    .line 737
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v5}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v7}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v4, Lcom/android/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    .line 745
    :goto_1
    const-string v4, "camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-wide v6, v6, Lcom/android/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 749
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/camera/Camera;->access$3600(Lcom/android/camera/Camera;Z)V

    .line 753
    const-wide/16 v4, 0x4b0

    iget-object v6, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-wide v6, v6, Lcom/android/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    sub-long v0, v4, v6

    .line 754
    .local v0, delay:J
    cmp-long v4, v0, v9

    if-gez v4, :cond_4

    .line 755
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)Z

    .line 760
    .end local v0           #delay:J
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-virtual {v4, p1, p2, v5}, Lcom/android/camera/Camera;->storeImage([BLandroid/hardware/Camera;Landroid/location/Location;)V

    .line 766
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/Camera;->access$2400(Lcom/android/camera/Camera;)V

    .line 768
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 770
    .local v2, now:J
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v5}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)J

    move-result-wide v5

    sub-long v5, v2, v5

    iput-wide v5, v4, Lcom/android/camera/Camera;->mJpegCallbackFinishTime:J

    .line 771
    const-string v4, "camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mJpegCallbackFinishTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-wide v6, v6, Lcom/android/camera/Camera;->mJpegCallbackFinishTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v4, v9, v10}, Lcom/android/camera/Camera;->access$702(Lcom/android/camera/Camera;J)J

    goto/16 :goto_0

    .line 740
    .end local v2           #now:J
    :cond_3
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v5}, Lcom/android/camera/Camera;->access$3500(Lcom/android/camera/Camera;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v7}, Lcom/android/camera/Camera;->access$3100(Lcom/android/camera/Camera;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v4, Lcom/android/camera/Camera;->mShutterToPictureDisplayedTime:J

    .line 742
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v5}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v7}, Lcom/android/camera/Camera;->access$3500(Lcom/android/camera/Camera;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v4, Lcom/android/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 757
    .restart local v0       #delay:J
    :cond_4
    iget-object v4, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v11, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2
.end method
