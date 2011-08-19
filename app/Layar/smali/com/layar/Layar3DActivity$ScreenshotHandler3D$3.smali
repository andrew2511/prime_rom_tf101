.class Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;
.super Ljava/lang/Object;
.source "Layar3DActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->constructScreenshot()V
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
    iput-object p1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;
    .locals 1
    .parameter

    .prologue
    .line 930
    iget-object v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 933
    iget-object v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    invoke-static {v1}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$2(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1105
    :cond_0
    :goto_0
    return-void

    .line 935
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 936
    .local v0, paint:Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    iget-object v1, v1, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    iget-object v2, v2, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->openGLScreenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 937
    iget-object v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    iget-object v1, v1, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->openGLScreenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 941
    iget-object v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    invoke-static {v1}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$2(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 944
    iget-object v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    invoke-static {v1}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$4(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Lcom/layar/Layar3DActivity;

    move-result-object v1

    new-instance v2, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$1;

    invoke-direct {v2, p0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$1;-><init>(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)V

    invoke-virtual {v1, v2}, Lcom/layar/Layar3DActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 962
    iget-object v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    invoke-static {v1}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$2(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 965
    iget-object v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    iget-object v1, v1, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->dlg:Lcom/layar/ui/SmartDialog;

    iget-object v2, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    invoke-static {v2}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$4(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Lcom/layar/Layar3DActivity;

    move-result-object v2

    const v3, 0x7f0900b4

    invoke-virtual {v2, v3}, Lcom/layar/Layar3DActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layar/ui/SmartDialog;->setMessage(Ljava/lang/String;)V

    .line 967
    iget-object v1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    invoke-static {v1}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$3(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;

    invoke-direct {v2, p0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;-><init>(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)V

    .line 1104
    const-wide/16 v3, 0x3e8

    .line 967
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
