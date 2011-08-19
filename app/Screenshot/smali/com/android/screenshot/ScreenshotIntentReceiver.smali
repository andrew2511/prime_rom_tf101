.class public Lcom/android/screenshot/ScreenshotIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenshotIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/screenshot/ScreenshotIntentReceiver$ScreenshotThreadHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static mHandler:Landroid/os/Handler;

.field private static mIsProcessing:Z

.field private static mThread:Landroid/os/HandlerThread;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/screenshot/ScreenshotIntentReceiver;->DEBUG:Z

    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ScreenshotIntentReceiver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/screenshot/ScreenshotIntentReceiver;->mThread:Landroid/os/HandlerThread;

    .line 49
    sput-boolean v2, Lcom/android/screenshot/ScreenshotIntentReceiver;->mIsProcessing:Z

    return-void

    :cond_0
    move v0, v2

    .line 41
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    invoke-direct {p0}, Lcom/android/screenshot/ScreenshotIntentReceiver;->startThread()V

    .line 53
    return-void
.end method

.method private startThread()V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/android/screenshot/ScreenshotIntentReceiver;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lcom/android/screenshot/ScreenshotIntentReceiver;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 59
    new-instance v0, Lcom/android/screenshot/ScreenshotIntentReceiver$ScreenshotThreadHandler;

    sget-object v1, Lcom/android/screenshot/ScreenshotIntentReceiver;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/screenshot/ScreenshotIntentReceiver$ScreenshotThreadHandler;-><init>(Lcom/android/screenshot/ScreenshotIntentReceiver;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/screenshot/ScreenshotIntentReceiver;->mHandler:Landroid/os/Handler;

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public addImage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 10
    .parameter "ctx"
    .parameter "cr"
    .parameter "mimeType"
    .parameter "description"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "orientation"
    .parameter "directory"
    .parameter "fileName"

    .prologue
    .line 324
    new-instance v6, Landroid/content/ContentValues;

    const/4 v7, 0x7

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 325
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "title"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v7, "_display_name"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v7, "description"

    invoke-virtual {v6, v7, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v7, "datetaken"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 329
    const-string v7, "mime_type"

    invoke-virtual {v6, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v7, "orientation"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    if-eqz p7, :cond_0

    .line 333
    const-string v7, "latitude"

    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 334
    const-string v7, "longitude"

    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 337
    :cond_0
    if-eqz p9, :cond_1

    if-eqz p10, :cond_1

    .line 338
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, value:Ljava/lang/String;
    const-string v7, "_data"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .end local v5           #value:Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 343
    .local v3, StorageUri:Landroid/net/Uri;
    invoke-virtual {p2, v3, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 345
    .local v4, uri:Landroid/net/Uri;
    return-object v4
.end method

.method public calculatePicturesRemaining()I
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 203
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    iput-object v5, p0, Lcom/android/screenshot/ScreenshotIntentReceiver;->mDisplay:Landroid/view/Display;

    .line 204
    iget-object v5, p0, Lcom/android/screenshot/ScreenshotIntentReceiver;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/screenshot/ScreenshotIntentReceiver;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    mul-int/lit8 v1, v5, 0x4

    .line 206
    .local v1, pictureSize:I
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, storageDirectory:Ljava/lang/String;
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 208
    .local v3, stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    int-to-float v6, v1

    div-float v2, v5, v6

    .line 210
    .local v2, remaining:F
    sget-boolean v5, Lcom/android/screenshot/ScreenshotIntentReceiver;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 211
    const-string v5, "ScreenshotIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PicturesRemain: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    move v5, v8

    .line 217
    .end local v1           #pictureSize:I
    .end local v2           #remaining:F
    .end local v3           #stat:Landroid/os/StatFs;
    .end local v4           #storageDirectory:Ljava/lang/String;
    :goto_0
    return v5

    .line 213
    .restart local v1       #pictureSize:I
    .restart local v2       #remaining:F
    .restart local v3       #stat:Landroid/os/StatFs;
    .restart local v4       #storageDirectory:Ljava/lang/String;
    :cond_1
    float-to-int v5, v2

    goto :goto_0

    .line 215
    .end local v1           #pictureSize:I
    .end local v2           #remaining:F
    .end local v3           #stat:Landroid/os/StatFs;
    .end local v4           #storageDirectory:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, ex:Ljava/lang/Exception;
    move v5, v8

    .line 217
    goto :goto_0
.end method

.method public captureScreen(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/android/screenshot/ScreenshotIntentReceiver;->doScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/screenshot/ScreenshotIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/screenshot/ScreenshotIntentReceiver;->writeBitmapToFile(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    const/4 v0, 0x0

    .line 126
    :cond_0
    if-nez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/screenshot/ScreenshotIntentReceiver;->mContext:Landroid/content/Context;

    const v1, 0x7f030006

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 131
    sput-boolean v4, Lcom/android/screenshot/ScreenshotIntentReceiver;->mIsProcessing:Z

    .line 168
    :goto_0
    return-void

    .line 136
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/android/screenshot/ScreenshotIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    if-eqz p1, :cond_4

    .line 143
    const-string v1, "ScreenshotTrigger"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    const-string v2, "NotFromScreenshotKey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 146
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/screenshot/ScreenshotIntentReceiver;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/screenshot/ScreenshotNotifyDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    const/high16 v2, 0x1004

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 150
    iget-object v2, p0, Lcom/android/screenshot/ScreenshotIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 162
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 163
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 167
    :cond_3
    sput-boolean v4, Lcom/android/screenshot/ScreenshotIntentReceiver;->mIsProcessing:Z

    goto :goto_0

    .line 155
    :cond_4
    iget-object v1, p0, Lcom/android/screenshot/ScreenshotIntentReceiver;->mContext:Landroid/content/Context;

    const v2, 0x7f030004

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public doScreenshot()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v1}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 226
    return-object v0
.end method

.method public ensurePathExists(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 184
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 187
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 85
    iput-object p1, p0, Lcom/android/screenshot/ScreenshotIntentReceiver;->mContext:Landroid/content/Context;

    .line 86
    sget-boolean v2, Lcom/android/screenshot/ScreenshotIntentReceiver;->mIsProcessing:Z

    if-ne v2, v6, :cond_0

    .line 112
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, extState:Ljava/lang/String;
    sget-boolean v2, Lcom/android/screenshot/ScreenshotIntentReceiver;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 92
    const-string v2, "ScreenshotIntentReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 95
    invoke-virtual {p0}, Lcom/android/screenshot/ScreenshotIntentReceiver;->calculatePicturesRemaining()I

    move-result v2

    if-lez v2, :cond_2

    .line 97
    sput-boolean v6, Lcom/android/screenshot/ScreenshotIntentReceiver;->mIsProcessing:Z

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 99
    .local v1, extras:Landroid/os/Bundle;
    sget-object v2, Lcom/android/screenshot/ScreenshotIntentReceiver;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/screenshot/ScreenshotIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v5, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 102
    .end local v1           #extras:Landroid/os/Bundle;
    :cond_2
    const v2, 0x7f030007

    invoke-static {p1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 108
    :cond_3
    const v2, 0x7f030005

    invoke-static {p1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public rotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 290
    const/4 v7, 0x0

    .line 291
    .local v7, degree:I
    iget-object v0, p0, Lcom/android/screenshot/ScreenshotIntentReceiver;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 305
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 306
    .local v5, mtx:Landroid/graphics/Matrix;
    int-to-float v0, v7

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 307
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 310
    .local v8, rotatedBMP:Landroid/graphics/Bitmap;
    return-object v8

    .line 293
    .end local v5           #mtx:Landroid/graphics/Matrix;
    .end local v8           #rotatedBMP:Landroid/graphics/Bitmap;
    :pswitch_0
    const/4 v7, 0x0

    .line 294
    goto :goto_0

    .line 296
    :pswitch_1
    const/16 v7, 0x10e

    .line 297
    goto :goto_0

    .line 299
    :pswitch_2
    const/16 v7, 0xb4

    .line 300
    goto :goto_0

    .line 302
    :pswitch_3
    const/16 v7, 0x5a

    goto :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public writeBitmapToFile(Landroid/content/Context;Landroid/graphics/Bitmap;)Z
    .locals 22
    .parameter "context"
    .parameter "bitmap"

    .prologue
    .line 231
    const/16 v17, 0x0

    .line 235
    .local v17, fOS:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 236
    .local v9, time:J
    const-string v4, "yyyyMMddkkmmss"

    invoke-static {v4, v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v21

    .line 237
    .local v21, timeFormat:Ljava/lang/CharSequence;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    .line 238
    .local v16, ext:Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Screenshots"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 239
    .local v13, directory:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "P"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 241
    .local v14, fileName:Ljava/lang/String;
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object v1, v13

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .local v19, file:Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/screenshot/ScreenshotIntentReceiver;->ensurePathExists(Ljava/lang/String;)V

    .line 243
    new-instance v18, Ljava/io/FileOutputStream;

    invoke-direct/range {v18 .. v19}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 245
    .end local v17           #fOS:Ljava/io/FileOutputStream;
    .local v18, fOS:Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/screenshot/ScreenshotIntentReceiver;->rotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 246
    .local v20, rotatedBMP:Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object/from16 v0, v20

    move-object v1, v4

    move v2, v5

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 248
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "image/png"

    const-string v8, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v14}, Lcom/android/screenshot/ScreenshotIntentReceiver;->addImage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 259
    if-eqz v20, :cond_0

    .line 260
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6

    .line 277
    :cond_0
    if-eqz v18, :cond_1

    .line 279
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 285
    :cond_1
    :goto_0
    const/4 v4, 0x1

    move-object/from16 v17, v18

    .end local v9           #time:J
    .end local v13           #directory:Ljava/lang/String;
    .end local v14           #fileName:Ljava/lang/String;
    .end local v16           #ext:Ljava/io/File;
    .end local v18           #fOS:Ljava/io/FileOutputStream;
    .end local v19           #file:Ljava/io/File;
    .end local v20           #rotatedBMP:Landroid/graphics/Bitmap;
    .end local v21           #timeFormat:Ljava/lang/CharSequence;
    .restart local v17       #fOS:Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    return v4

    .line 264
    :catch_0
    move-exception v4

    move-object v15, v4

    .line 266
    .local v15, ex:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    sget-boolean v4, Lcom/android/screenshot/ScreenshotIntentReceiver;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 267
    const-string v4, "ScreenshotIntentReceiver"

    const-string v5, "File not found"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    :cond_3
    const/4 v4, 0x0

    .line 277
    if-eqz v17, :cond_2

    .line 279
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 280
    :catch_1
    move-exception v5

    goto :goto_1

    .line 270
    .end local v15           #ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v4

    move-object v15, v4

    .line 271
    .local v15, ex:Ljava/lang/IllegalStateException;
    :goto_3
    :try_start_5
    sget-boolean v4, Lcom/android/screenshot/ScreenshotIntentReceiver;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 272
    const-string v4, "ScreenshotIntentReceiver"

    const-string v5, "Illegal State Exception while inserting screenshot image."

    invoke-static {v4, v5, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 273
    :cond_4
    const/4 v4, 0x0

    .line 277
    if-eqz v17, :cond_2

    .line 279
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 280
    :catch_3
    move-exception v5

    goto :goto_1

    .line 277
    .end local v15           #ex:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v17, :cond_5

    .line 279
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 282
    :cond_5
    :goto_5
    throw v4

    .line 280
    .end local v17           #fOS:Ljava/io/FileOutputStream;
    .restart local v9       #time:J
    .restart local v13       #directory:Ljava/lang/String;
    .restart local v14       #fileName:Ljava/lang/String;
    .restart local v16       #ext:Ljava/io/File;
    .restart local v18       #fOS:Ljava/io/FileOutputStream;
    .restart local v19       #file:Ljava/io/File;
    .restart local v20       #rotatedBMP:Landroid/graphics/Bitmap;
    .restart local v21       #timeFormat:Ljava/lang/CharSequence;
    :catch_4
    move-exception v4

    goto :goto_0

    .end local v9           #time:J
    .end local v13           #directory:Ljava/lang/String;
    .end local v14           #fileName:Ljava/lang/String;
    .end local v16           #ext:Ljava/io/File;
    .end local v18           #fOS:Ljava/io/FileOutputStream;
    .end local v19           #file:Ljava/io/File;
    .end local v20           #rotatedBMP:Landroid/graphics/Bitmap;
    .end local v21           #timeFormat:Ljava/lang/CharSequence;
    .restart local v17       #fOS:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v5

    goto :goto_5

    .line 277
    .end local v17           #fOS:Ljava/io/FileOutputStream;
    .restart local v9       #time:J
    .restart local v13       #directory:Ljava/lang/String;
    .restart local v14       #fileName:Ljava/lang/String;
    .restart local v16       #ext:Ljava/io/File;
    .restart local v18       #fOS:Ljava/io/FileOutputStream;
    .restart local v19       #file:Ljava/io/File;
    .restart local v21       #timeFormat:Ljava/lang/CharSequence;
    :catchall_1
    move-exception v4

    move-object/from16 v17, v18

    .end local v18           #fOS:Ljava/io/FileOutputStream;
    .restart local v17       #fOS:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 270
    .end local v17           #fOS:Ljava/io/FileOutputStream;
    .restart local v18       #fOS:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v4

    move-object v15, v4

    move-object/from16 v17, v18

    .end local v18           #fOS:Ljava/io/FileOutputStream;
    .restart local v17       #fOS:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 264
    .end local v17           #fOS:Ljava/io/FileOutputStream;
    .restart local v18       #fOS:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v4

    move-object v15, v4

    move-object/from16 v17, v18

    .end local v18           #fOS:Ljava/io/FileOutputStream;
    .restart local v17       #fOS:Ljava/io/FileOutputStream;
    goto :goto_2
.end method
