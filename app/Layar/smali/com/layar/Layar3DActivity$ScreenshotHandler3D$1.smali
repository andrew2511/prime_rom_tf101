.class Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;
.super Ljava/lang/Object;
.source "Layar3DActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/Layar3DActivity$ScreenshotHandler3D;
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
    iput-object p1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;
    .locals 1
    .parameter

    .prologue
    .line 750
    iget-object v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 753
    iget-object v8, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    iget-object v8, v8, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->rawPreview:[B

    if-eqz v8, :cond_0

    .line 756
    sget-object v8, Lcom/layar/Layar3DActivity;->preview:Lcom/layar/Layar3DActivity$Preview;

    iget-object v8, v8, Lcom/layar/Layar3DActivity$Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 757
    .local v7, size:Landroid/hardware/Camera$Size;
    sget-object v8, Lcom/layar/Layar3DActivity;->preview:Lcom/layar/Layar3DActivity$Preview;

    iget-object v8, v8, Lcom/layar/Layar3DActivity$Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    .line 760
    .local v1, format:I
    :try_start_0
    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    iget v9, v7, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v8, v9

    new-array v6, v8, [I

    .line 762
    .local v6, rgb:[I
    iget-object v8, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    iget-object v8, v8, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->rawPreview:[B

    iget v9, v7, Landroid/hardware/Camera$Size;->width:I

    .line 763
    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    .line 762
    invoke-static {v1, v6, v8, v9, v10}, Lcom/layar/util/YUVUtil;->decodeYUV(I[I[BII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_3

    .line 773
    const/4 v3, 0x0

    .line 775
    .local v3, picture:Landroid/graphics/Bitmap;
    :try_start_1
    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    .line 776
    iget v9, v7, Landroid/hardware/Camera$Size;->height:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 775
    invoke-static {v6, v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 791
    if-eqz v3, :cond_2

    .line 795
    :try_start_2
    new-instance v4, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 796
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 795
    invoke-direct {v4, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 797
    .local v4, rectP:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    iget-object v10, v10, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    iget-object v11, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    iget-object v11, v11, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    .line 798
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 797
    invoke-direct {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 800
    .local v5, rectS:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    iget-object v8, v8, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 801
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 802
    .local v2, paint:Landroid/graphics/Paint;
    iget-object v8, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    iget-object v8, v8, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 803
    iget-object v8, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    iget-object v8, v8, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 805
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 843
    .end local v1           #format:I
    .end local v2           #paint:Landroid/graphics/Paint;
    .end local v3           #picture:Landroid/graphics/Bitmap;
    .end local v4           #rectP:Landroid/graphics/Rect;
    .end local v5           #rectS:Landroid/graphics/Rect;
    .end local v6           #rgb:[I
    .end local v7           #size:Landroid/hardware/Camera$Size;
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->cameraReady:Z

    .line 844
    iget-object v8, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    iget-object v8, v8, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->openGLScreenshot:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_1

    .line 845
    iget-object v8, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    invoke-static {v8}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)V

    .line 846
    :cond_1
    :goto_1
    return-void

    .line 777
    .restart local v1       #format:I
    .restart local v3       #picture:Landroid/graphics/Bitmap;
    .restart local v6       #rgb:[I
    .restart local v7       #size:Landroid/hardware/Camera$Size;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 779
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    iget-object v8, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    invoke-static {v8}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$4(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Lcom/layar/Layar3DActivity;

    move-result-object v8

    new-instance v9, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1$1;

    invoke-direct {v9, p0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1$1;-><init>(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;)V

    invoke-virtual {v8, v9}, Lcom/layar/Layar3DActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 787
    iget-object v8, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    invoke-virtual {v8}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->finish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 822
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    .end local v3           #picture:Landroid/graphics/Bitmap;
    .end local v6           #rgb:[I
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 823
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "layar.Layar3DActivity"

    .line 824
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Exception caught during YUV decoding for preview type: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 825
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 824
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 823
    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 827
    const-string v8, "layar.Layar3DActivity"

    const-string v9, "--- additional information"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const-string v8, "layar.Layar3DActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "------- preview width="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " height="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 829
    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 828
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const-string v8, "layar.Layar3DActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "------- rawPreview data length="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    iget-object v10, v10, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->rawPreview:[B

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v8, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    invoke-static {v8}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$4(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Lcom/layar/Layar3DActivity;

    move-result-object v8

    new-instance v9, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1$3;

    invoke-direct {v9, p0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1$3;-><init>(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;)V

    invoke-virtual {v8, v9}, Lcom/layar/Layar3DActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 839
    iget-object v8, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    invoke-virtual {v8}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->finish()V

    goto/16 :goto_0

    .line 807
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #picture:Landroid/graphics/Bitmap;
    .restart local v6       #rgb:[I
    :cond_2
    :try_start_4
    iget-object v8, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    invoke-virtual {v8}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->finish()V

    goto/16 :goto_1

    .line 811
    .end local v3           #picture:Landroid/graphics/Bitmap;
    :cond_3
    const-string v8, "layar.Layar3DActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unsupported camera format: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v8, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    invoke-static {v8}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$4(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Lcom/layar/Layar3DActivity;

    move-result-object v8

    new-instance v9, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1$2;

    invoke-direct {v9, p0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1$2;-><init>(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;)V

    invoke-virtual {v8, v9}, Lcom/layar/Layar3DActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 820
    iget-object v8, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$1;->this$1:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    invoke-virtual {v8}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->finish()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method
