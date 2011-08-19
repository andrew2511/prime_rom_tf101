.class Lcom/layar/Layar3DActivity$ScreenshotHandler3D;
.super Ljava/lang/Object;
.source "Layar3DActivity.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lcom/layar/core/ARRenderer$ScreenshotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/Layar3DActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenshotHandler3D"
.end annotation


# instance fields
.field cameraReady:Z

.field canvas:Landroid/graphics/Canvas;

.field dlg:Lcom/layar/ui/SmartDialog;

.field private handler:Landroid/os/Handler;

.field private isFinishing:Z

.field layoutReady:Z

.field openGLScreenshot:Landroid/graphics/Bitmap;

.field orientation:I

.field private processRawPreview:Ljava/lang/Runnable;

.field rawPreview:[B

.field screenshot:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/layar/Layar3DActivity;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/layar/Layar3DActivity;Z)V
    .locals 6
    .parameter
    .parameter "ignoreCamera"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 887
    iput-object p1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->this$0:Lcom/layar/Layar3DActivity;

    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->isFinishing:Z

    .line 750
    new-instance v1, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;

    invoke-direct {v1, p0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;-><init>(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)V

    iput-object v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->processRawPreview:Ljava/lang/Runnable;

    .line 852
    iput-boolean p2, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->cameraReady:Z

    .line 853
    new-instance v1, Lcom/layar/ui/SmartDialog$Builder;

    .line 854
    const v2, 0x7f0900b3

    invoke-direct {v1, p1, v2, v4}, Lcom/layar/ui/SmartDialog$Builder;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1}, Lcom/layar/ui/SmartDialog$Builder;->build()Lcom/layar/ui/SmartDialog;

    move-result-object v1

    .line 853
    iput-object v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->dlg:Lcom/layar/ui/SmartDialog;

    .line 855
    iget-object v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->dlg:Lcom/layar/ui/SmartDialog;

    invoke-virtual {v1}, Lcom/layar/ui/SmartDialog;->show()V

    .line 857
    iget-object v1, p1, Lcom/layar/Layar3DActivity;->mLayout:Lcom/layar/ui/RotateLayout;

    invoke-virtual {v1}, Lcom/layar/ui/RotateLayout;->getLayoutRotation()I

    move-result v1

    iput v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->orientation:I

    .line 859
    :try_start_0
    invoke-static {p1}, Lcom/layar/Layar3DActivity;->access$1(Lcom/layar/Layar3DActivity;)Lcom/layar/core/ARView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/core/ARView;->getWidth()I

    move-result v1

    invoke-static {p1}, Lcom/layar/Layar3DActivity;->access$1(Lcom/layar/Layar3DActivity;)Lcom/layar/core/ARView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layar/core/ARView;->getHeight()I

    move-result v2

    .line 860
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 859
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    .line 861
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->canvas:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$2;

    invoke-direct {v2, p0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$2;-><init>(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->thread:Ljava/lang/Thread;

    .line 886
    iget-object v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    .line 862
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 863
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {p1}, Lcom/layar/Layar3DActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 864
    const v2, 0x7f090037

    .line 863
    invoke-static {v1, v2, v4}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v1

    .line 864
    invoke-virtual {v1}, Lcom/layar/ui/SmartToast;->show()V

    .line 865
    iput-object v5, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->canvas:Landroid/graphics/Canvas;

    .line 866
    iput-object v5, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    .line 867
    invoke-virtual {p0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->finish()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)V
    .locals 0
    .parameter

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->constructScreenshot()V

    return-void
.end method

.method static synthetic access$1(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 735
    iput-object p1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$2(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Z
    .locals 1
    .parameter

    .prologue
    .line 748
    iget-boolean v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->isFinishing:Z

    return v0
.end method

.method static synthetic access$3(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 735
    iget-object v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Lcom/layar/Layar3DActivity;
    .locals 1
    .parameter

    .prologue
    .line 731
    iget-object v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->this$0:Lcom/layar/Layar3DActivity;

    return-object v0
.end method

.method private constructScreenshot()V
    .locals 2

    .prologue
    .line 930
    iget-object v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-direct {v1, p0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;-><init>(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1108
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 917
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->isFinishing:Z

    .line 918
    iget-object v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 919
    iget-object v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->thread:Ljava/lang/Thread;

    .line 920
    .local v0, inherited:Ljava/lang/Thread;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->thread:Ljava/lang/Thread;

    .line 921
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 923
    .end local v0           #inherited:Ljava/lang/Thread;
    :cond_0
    iget-object v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->dlg:Lcom/layar/ui/SmartDialog;

    if-eqz v1, :cond_1

    .line 924
    iget-object v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->dlg:Lcom/layar/ui/SmartDialog;

    invoke-virtual {v1}, Lcom/layar/ui/SmartDialog;->dismiss()V

    .line 925
    :cond_1
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4
    .parameter "data"
    .parameter "camera"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 893
    iget-boolean v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->isFinishing:Z

    if-eqz v0, :cond_1

    .line 894
    sget-object v0, Lcom/layar/Layar3DActivity;->preview:Lcom/layar/Layar3DActivity$Preview;

    if-eqz v0, :cond_0

    .line 895
    sget-object v0, Lcom/layar/Layar3DActivity;->preview:Lcom/layar/Layar3DActivity$Preview;

    iget-object v0, v0, Lcom/layar/Layar3DActivity$Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    iget-boolean v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->cameraReady:Z

    if-nez v0, :cond_2

    .line 900
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->rawPreview:[B

    .line 901
    iget-object v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->rawPreview:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 902
    iget-object v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->processRawPreview:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 905
    :cond_2
    sget-object v0, Lcom/layar/Layar3DActivity;->preview:Lcom/layar/Layar3DActivity$Preview;

    iget-object v0, v0, Lcom/layar/Layar3DActivity$Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0
.end method

.method public screenshotReady(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "screenshot"

    .prologue
    .line 911
    iput-object p1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->openGLScreenshot:Landroid/graphics/Bitmap;

    .line 912
    iget-boolean v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->cameraReady:Z

    if-eqz v0, :cond_0

    .line 913
    invoke-direct {p0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->constructScreenshot()V

    .line 914
    :cond_0
    return-void
.end method
