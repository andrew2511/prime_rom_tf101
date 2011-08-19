.class Lcom/android/camera/VideoCamera$5;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoCamera;->addBaseMenuItems(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1340
    iput-object p1, p0, Lcom/android/camera/VideoCamera$5;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/camera/VideoCamera$5;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$2700(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoCamera$5;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$2800(Lcom/android/camera/VideoCamera;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera$5;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v2}, Lcom/android/camera/VideoCamera;->access$2900(Lcom/android/camera/VideoCamera;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoCamera$5;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$3000(Lcom/android/camera/VideoCamera;)I

    move-result v1

    :goto_0
    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 1345
    iget-object v0, p0, Lcom/android/camera/VideoCamera$5;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3100(Lcom/android/camera/VideoCamera;)V

    .line 1346
    const/4 v0, 0x1

    return v0

    .line 1342
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera$5;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$2900(Lcom/android/camera/VideoCamera;)I

    move-result v1

    goto :goto_0
.end method
