.class Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;
.super Ljava/lang/Object;
.source "Layar3DActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;


# direct methods
.method constructor <init>(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    .line 967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;
    .locals 1
    .parameter

    .prologue
    .line 967
    iget-object v0, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 970
    iget-object v9, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v9

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$2(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1103
    :goto_0
    return-void

    .line 975
    :cond_0
    iget-object v9, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v9

    iget-boolean v9, v9, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->layoutReady:Z

    if-eqz v9, :cond_3

    .line 976
    iget-object v9, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v9

    iget-object v0, v9, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    .line 979
    .local v0, corrected:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v9, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v9

    iget v9, v9, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->orientation:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v9, :pswitch_data_0

    .line 1036
    :goto_1
    :pswitch_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1037
    const-string v10, "yyyyMMddkkmmss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpeg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1036
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1039
    .local v4, filename:Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1040
    const-string v10, "/layar/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1039
    invoke-direct {v5, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1042
    .local v5, imagePath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1044
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1046
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1061
    :cond_1
    const/4 v7, 0x0

    .line 1063
    .local v7, os:Ljava/io/OutputStream;
    :try_start_2
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1064
    .end local v7           #os:Ljava/io/OutputStream;
    .local v8, os:Ljava/io/OutputStream;
    :try_start_3
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x5a

    invoke-virtual {v0, v9, v10, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1067
    const-string v9, "layar.Layar3DActivity"

    const-string v10, "Failed to write screenshot"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object v9, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v9

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$4(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Lcom/layar/Layar3DActivity;

    move-result-object v9

    new-instance v10, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2$3;

    invoke-direct {v10, p0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2$3;-><init>(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;)V

    invoke-virtual {v9, v10}, Lcom/layar/Layar3DActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1091
    invoke-static {v8}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 1092
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 983
    .end local v3           #file:Ljava/io/File;
    .end local v4           #filename:Ljava/lang/String;
    .end local v5           #imagePath:Ljava/lang/String;
    .end local v8           #os:Ljava/io/OutputStream;
    :pswitch_1
    :try_start_4
    iget-object v9, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v9

    iget-object v9, v9, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 984
    iget-object v10, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v10}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v10

    iget-object v10, v10, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 983
    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 985
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 986
    .local v1, correctedCanvas:Landroid/graphics/Canvas;
    const/high16 v9, 0x4334

    iget-object v10, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v10}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v10

    iget-object v10, v10, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    .line 987
    iget-object v11, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v11}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v11

    iget-object v11, v11, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    .line 986
    invoke-virtual {v1, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 988
    iget-object v9, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v9

    iget-object v9, v9, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 989
    iget-object v9, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v9

    iget-object v9, v9, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 1021
    .end local v1           #correctedCanvas:Landroid/graphics/Canvas;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 1023
    .local v2, e:Ljava/lang/OutOfMemoryError;
    iget-object v9, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v9

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$4(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Lcom/layar/Layar3DActivity;

    move-result-object v9

    new-instance v10, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2$1;

    invoke-direct {v10, p0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2$1;-><init>(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;)V

    invoke-virtual {v9, v10}, Lcom/layar/Layar3DActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1030
    iget-object v9, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v9

    iget-object v9, v9, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 1031
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1032
    iget-object v9, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v9

    iget-object v9, v9, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->dlg:Lcom/layar/ui/SmartDialog;

    invoke-virtual {v9}, Lcom/layar/ui/SmartDialog;->dismiss()V

    goto/16 :goto_0

    .line 995
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :pswitch_2
    :try_start_5
    iget-object v9, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v9

    iget-object v9, v9, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 996
    iget-object v10, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v10}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v10

    iget-object v10, v10, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 995
    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 997
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 998
    .restart local v1       #correctedCanvas:Landroid/graphics/Canvas;
    iget-object v9, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v9

    iget-object v9, v9, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v10}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v10

    iget-object v10, v10, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v6, v9, 0x2

    .line 999
    .local v6, offset:I
    const/high16 v9, 0x42b4

    iget-object v10, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v10}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v10

    iget-object v10, v10, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    .line 1000
    iget-object v11, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v11}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v11

    iget-object v11, v11, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    .line 999
    invoke-virtual {v1, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1001
    iget-object v9, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v9

    iget-object v9, v9, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    int-to-float v10, v6

    int-to-float v11, v6

    .line 1002
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 1001
    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1003
    iget-object v9, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v9

    iget-object v9, v9, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1

    .line 1009
    .end local v1           #correctedCanvas:Landroid/graphics/Canvas;
    .end local v6           #offset:I
    :pswitch_3
    iget-object v9, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v9

    iget-object v9, v9, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 1010
    iget-object v10, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v10}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v10

    iget-object v10, v10, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1009
    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1011
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1012
    .restart local v1       #correctedCanvas:Landroid/graphics/Canvas;
    iget-object v9, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v9

    iget-object v9, v9, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v10}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v10

    iget-object v10, v10, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v6, v9, 0x2

    .line 1013
    .restart local v6       #offset:I
    const/high16 v9, -0x3d4c

    iget-object v10, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v10}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v10

    iget-object v10, v10, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    .line 1014
    iget-object v11, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v11}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v11

    iget-object v11, v11, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    .line 1013
    invoke-virtual {v1, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1015
    iget-object v9, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v9

    iget-object v9, v9, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    neg-int v10, v6

    int-to-float v10, v10

    neg-int v11, v6

    int-to-float v11, v11

    .line 1016
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 1015
    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1017
    iget-object v9, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v9

    iget-object v9, v9, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 1047
    .end local v1           #correctedCanvas:Landroid/graphics/Canvas;
    .end local v6           #offset:I
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #filename:Ljava/lang/String;
    .restart local v5       #imagePath:Ljava/lang/String;
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 1048
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "layar.Layar3DActivity"

    const-string v10, "Could not create image directory"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1049
    iget-object v9, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v9

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$4(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Lcom/layar/Layar3DActivity;

    move-result-object v9

    new-instance v10, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2$2;

    invoke-direct {v10, p0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2$2;-><init>(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;)V

    invoke-virtual {v9, v10}, Lcom/layar/Layar3DActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1079
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v7       #os:Ljava/io/OutputStream;
    :catch_2
    move-exception v9

    move-object v2, v9

    .line 1080
    .local v2, e:Ljava/io/IOException;
    :goto_2
    :try_start_6
    const-string v9, "layar.Layar3DActivity"

    const-string v10, "Could not write screenshot to file"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1081
    iget-object v9, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v9

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$4(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Lcom/layar/Layar3DActivity;

    move-result-object v9

    new-instance v10, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2$4;

    invoke-direct {v10, p0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2$4;-><init>(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;)V

    invoke-virtual {v9, v10}, Lcom/layar/Layar3DActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1091
    invoke-static {v7}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 1092
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 1090
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 1091
    :goto_3
    invoke-static {v7}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 1092
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1093
    throw v9

    .line 1091
    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v8       #os:Ljava/io/OutputStream;
    :cond_2
    invoke-static {v8}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 1092
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1095
    iget-object v9, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v9

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$4(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Lcom/layar/Layar3DActivity;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/layar/Layar3DActivity;->access$2(Lcom/layar/Layar3DActivity;Ljava/lang/String;)V

    .line 1097
    new-instance v9, Lcom/layar/Layar3DActivity$MediaScannerNotifier;

    iget-object v10, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v10}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v10

    invoke-static {v10}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$4(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Lcom/layar/Layar3DActivity;

    move-result-object v10

    iget-object v11, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v11}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v11

    iget-object v11, v11, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->dlg:Lcom/layar/ui/SmartDialog;

    const-string v12, "image/jpeg"

    invoke-direct {v9, v10, v11, v5, v12}, Lcom/layar/Layar3DActivity$MediaScannerNotifier;-><init>(Lcom/layar/Layar3DActivity;Lcom/layar/ui/SmartDialog;Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 1101
    .end local v0           #corrected:Landroid/graphics/Bitmap;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #filename:Ljava/lang/String;
    .end local v5           #imagePath:Ljava/lang/String;
    .end local v8           #os:Ljava/io/OutputStream;
    :cond_3
    iget-object v9, p0, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3$2;->this$2:Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;->access$0(Lcom/layar/Layar3DActivity$ScreenshotHandler3D$3;)Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    move-result-object v9

    invoke-static {v9}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->access$3(Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x3e8

    invoke-virtual {v9, p0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1090
    .restart local v0       #corrected:Landroid/graphics/Bitmap;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #filename:Ljava/lang/String;
    .restart local v5       #imagePath:Ljava/lang/String;
    .restart local v8       #os:Ljava/io/OutputStream;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    goto :goto_3

    .line 1079
    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v8       #os:Ljava/io/OutputStream;
    :catch_3
    move-exception v9

    move-object v2, v9

    move-object v7, v8

    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    goto :goto_2

    .line 979
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
