.class Lcom/android/camera/Camera$4;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 990
    iput-object p1, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 993
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$4502(Lcom/android/camera/Camera;Z)Z

    .line 994
    iget-object v1, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$4600(Lcom/android/camera/Camera;)V
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    :goto_0
    return-void

    .line 995
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 998
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 999
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1001
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$4502(Lcom/android/camera/Camera;Z)Z

    goto :goto_0
.end method
