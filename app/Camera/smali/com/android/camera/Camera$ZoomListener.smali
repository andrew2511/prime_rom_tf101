.class final Lcom/android/camera/Camera$ZoomListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 814
    iput-object p1, p0, Lcom/android/camera/Camera$ZoomListener;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 814
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$ZoomListener;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .locals 3
    .parameter "value"
    .parameter "stopped"
    .parameter "camera"

    .prologue
    .line 818
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zoom changed: value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". stopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0, p1}, Lcom/android/camera/Camera;->access$4302(Lcom/android/camera/Camera;I)I

    .line 822
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$1700(Lcom/android/camera/Camera;)Lcom/android/camera/ui/ZoomPicker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$ZoomListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$1700(Lcom/android/camera/Camera;)Lcom/android/camera/ui/ZoomPicker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomPicker;->setZoomIndex(I)V

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$4400(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 828
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera$ZoomListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$2000(Lcom/android/camera/Camera;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 829
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$1900(Lcom/android/camera/Camera;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera$ZoomListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$1900(Lcom/android/camera/Camera;)I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 830
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$2100(Lcom/android/camera/Camera;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$ZoomListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$1900(Lcom/android/camera/Camera;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 831
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomListener;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$2002(Lcom/android/camera/Camera;I)I

    .line 836
    :cond_1
    :goto_0
    return-void

    .line 833
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomListener;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$2002(Lcom/android/camera/Camera;I)I

    goto :goto_0
.end method
