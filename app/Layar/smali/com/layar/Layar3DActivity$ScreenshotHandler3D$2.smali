.class Lcom/layar/Layar3DActivity$ScreenshotHandler3D$2;
.super Ljava/lang/Object;
.source "Layar3DActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/Layar3DActivity$ScreenshotHandler3D;-><init>(Lcom/layar/Layar3DActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;


# direct methods
.method constructor <init>(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$2;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 874
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 875
    iget-object v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$2;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$1(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;Landroid/os/Handler;)V

    .line 877
    iget-object v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$2;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    invoke-static {v0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$2(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$2;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    iget-boolean v0, v0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->cameraReady:Z

    if-nez v0, :cond_0

    .line 879
    sget-object v0, Lcom/layar/Layar3DActivity;->preview:Lcom/layar/Layar3DActivity$Preview;

    iget-object v0, v0, Lcom/layar/Layar3DActivity$Preview;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$2;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$2;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    invoke-static {v0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$4(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Lcom/layar/Layar3DActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/layar/Layar3DActivity;->mRenderer:Lcom/layar/core/ARRenderer;

    iget-object v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$2;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    invoke-virtual {v0, v1}, Lcom/layar/core/ARRenderer;->requestScreenshot(Lcom/layar/core/ARRenderer$ScreenshotListener;)V

    .line 883
    :cond_1
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 884
    return-void
.end method
