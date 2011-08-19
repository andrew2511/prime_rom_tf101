.class Lcom/android/camera/Camera$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    .line 1178
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 1179
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 1186
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1187
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/Camera;->roundOrientation(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$4902(Lcom/android/camera/Camera;I)I

    .line 1190
    iget-object v1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$4900(Lcom/android/camera/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int v0, v1, v2

    .line 1192
    .local v0, orientationCompensation:I
    iget-object v1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$5000(Lcom/android/camera/Camera;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1193
    iget-object v1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1, v0}, Lcom/android/camera/Camera;->access$5002(Lcom/android/camera/Camera;I)I

    .line 1194
    iget-object v1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1195
    iget-object v1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$5000(Lcom/android/camera/Camera;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$5100(Lcom/android/camera/Camera;I)V

    .line 1197
    :cond_2
    iget-object v1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$2900(Lcom/android/camera/Camera;)Lcom/android/camera/ui/CameraHeadUpDisplay;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1198
    iget-object v1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$2900(Lcom/android/camera/Camera;)Lcom/android/camera/ui/CameraHeadUpDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$5000(Lcom/android/camera/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraHeadUpDisplay;->setOrientation(I)V

    goto :goto_0
.end method
