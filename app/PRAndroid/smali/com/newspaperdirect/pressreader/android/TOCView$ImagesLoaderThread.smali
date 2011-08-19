.class Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;
.super Ljava/lang/Thread;
.source "TOCView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/TOCView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagesLoaderThread"
.end annotation


# instance fields
.field private mCacheDir:Ljava/io/File;

.field private mPagesFile:Ljava/util/zip/ZipFile;

.field private final mSleepLength:J

.field public volatile stop:Z

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/TOCView;


# direct methods
.method private constructor <init>(Lcom/newspaperdirect/pressreader/android/TOCView;)V
    .locals 2
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->stop:Z

    .line 434
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/TOCView;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->mCacheDir:Ljava/io/File;

    .line 436
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->mSleepLength:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/TOCView;Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;-><init>(Lcom/newspaperdirect/pressreader/android/TOCView;)V

    return-void
.end method

.method private getThumbnailBitmap(I)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "page"

    .prologue
    const/4 v13, 0x0

    .line 480
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    invoke-static {v11}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$0(Lcom/newspaperdirect/pressreader/android/TOCView;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v11

    invoke-virtual {v11}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "_pt_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 481
    .local v4, fileName:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->mCacheDir:Ljava/io/File;

    invoke-direct {v3, v10, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 482
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 537
    :goto_0
    return-object v10

    .line 483
    :cond_0
    const/4 v9, 0x0

    .line 484
    .local v9, result:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 485
    .local v6, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v10, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 486
    const/4 v10, 0x2

    iput v10, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 487
    const/4 v5, 0x0

    .line 489
    .local v5, istream:Ljava/io/InputStream;
    :try_start_0
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->mPagesFile:Ljava/util/zip/ZipFile;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "p"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".jpg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 490
    .local v2, entry:Ljava/util/zip/ZipEntry;
    if-nez v2, :cond_2

    .line 491
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->mPagesFile:Ljava/util/zip/ZipFile;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "p"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 492
    if-nez v2, :cond_2

    .line 493
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->mPagesFile:Ljava/util/zip/ZipFile;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "p"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_bg.jpg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 494
    if-nez v2, :cond_2

    .line 520
    if-eqz v5, :cond_1

    .line 521
    :try_start_1
    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 522
    :goto_1
    const/4 v5, 0x0

    :cond_1
    move-object v10, v13

    .line 494
    goto :goto_0

    .line 497
    :cond_2
    :try_start_2
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->mPagesFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v10, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 498
    const/4 v10, 0x0

    invoke-static {v5, v10, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 499
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 500
    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 501
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 502
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->mPagesFile:Ljava/util/zip/ZipFile;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "p"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_fg.png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 503
    if-eqz v2, :cond_3

    .line 504
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 505
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->mPagesFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v10, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 506
    const/4 v10, 0x0

    invoke-static {v5, v10, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 507
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 508
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v0, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 509
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 511
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :cond_3
    const/4 v5, 0x0

    .line 512
    move-object v0, v9

    .line 513
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    invoke-static {v10}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$4(Lcom/newspaperdirect/pressreader/android/TOCView;)I

    move-result v10

    iget-object v11, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    invoke-static {v11}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$4(Lcom/newspaperdirect/pressreader/android/TOCView;)I

    move-result v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    mul-int/2addr v11, v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    div-int/2addr v11, v12

    const/4 v12, 0x1

    invoke-static {v0, v10, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 514
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 515
    const/4 v0, 0x0

    .line 520
    if-eqz v5, :cond_4

    .line 521
    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 522
    :goto_2
    const/4 v5, 0x0

    .line 525
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    :cond_4
    :goto_3
    const/4 v7, 0x0

    .line 527
    .local v7, ostream:Ljava/io/OutputStream;
    :try_start_4
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 528
    .end local v7           #ostream:Ljava/io/OutputStream;
    .local v8, ostream:Ljava/io/OutputStream;
    :try_start_5
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x55

    invoke-virtual {v9, v10, v11, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    .line 532
    if-eqz v8, :cond_8

    .line 533
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    .line 534
    :goto_4
    const/4 v7, 0x0

    .end local v8           #ostream:Ljava/io/OutputStream;
    .restart local v7       #ostream:Ljava/io/OutputStream;
    :cond_5
    :goto_5
    move-object v10, v9

    .line 537
    goto/16 :goto_0

    .line 517
    .end local v7           #ostream:Ljava/io/OutputStream;
    :catch_0
    move-exception v10

    .line 520
    if-eqz v5, :cond_4

    .line 521
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 522
    :goto_6
    const/4 v5, 0x0

    goto :goto_3

    .line 518
    :catch_1
    move-exception v10

    .line 520
    if-eqz v5, :cond_4

    .line 521
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 522
    :goto_7
    const/4 v5, 0x0

    goto :goto_3

    .line 519
    :catchall_0
    move-exception v10

    .line 520
    if-eqz v5, :cond_6

    .line 521
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 522
    :goto_8
    const/4 v5, 0x0

    .line 524
    :cond_6
    throw v10

    .line 530
    .restart local v7       #ostream:Ljava/io/OutputStream;
    :catch_2
    move-exception v10

    .line 532
    :goto_9
    if-eqz v7, :cond_5

    .line 533
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 534
    :goto_a
    const/4 v7, 0x0

    goto :goto_5

    .line 531
    :catchall_1
    move-exception v10

    .line 532
    :goto_b
    if-eqz v7, :cond_7

    .line 533
    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 534
    :goto_c
    const/4 v7, 0x0

    .line 536
    :cond_7
    throw v10

    .line 521
    .end local v7           #ostream:Ljava/io/OutputStream;
    .restart local v2       #entry:Ljava/util/zip/ZipEntry;
    :catch_3
    move-exception v10

    goto/16 :goto_1

    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    :catch_4
    move-exception v10

    goto :goto_6

    :catch_5
    move-exception v10

    goto :goto_7

    :catch_6
    move-exception v11

    goto :goto_8

    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v2       #entry:Ljava/util/zip/ZipEntry;
    :catch_7
    move-exception v10

    goto :goto_2

    .line 533
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .restart local v7       #ostream:Ljava/io/OutputStream;
    :catch_8
    move-exception v10

    goto :goto_a

    :catch_9
    move-exception v11

    goto :goto_c

    .end local v7           #ostream:Ljava/io/OutputStream;
    .restart local v8       #ostream:Ljava/io/OutputStream;
    :catch_a
    move-exception v10

    goto :goto_4

    .line 531
    :catchall_2
    move-exception v10

    move-object v7, v8

    .end local v8           #ostream:Ljava/io/OutputStream;
    .restart local v7       #ostream:Ljava/io/OutputStream;
    goto :goto_b

    .line 530
    .end local v7           #ostream:Ljava/io/OutputStream;
    .restart local v8       #ostream:Ljava/io/OutputStream;
    :catch_b
    move-exception v10

    move-object v7, v8

    .end local v8           #ostream:Ljava/io/OutputStream;
    .restart local v7       #ostream:Ljava/io/OutputStream;
    goto :goto_9

    .end local v7           #ostream:Ljava/io/OutputStream;
    .restart local v8       #ostream:Ljava/io/OutputStream;
    :cond_8
    move-object v7, v8

    .end local v8           #ostream:Ljava/io/OutputStream;
    .restart local v7       #ostream:Ljava/io/OutputStream;
    goto :goto_5
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 442
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 443
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$0(Lcom/newspaperdirect/pressreader/android/TOCView;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->mPagesFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 444
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->stop:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$2(Lcom/newspaperdirect/pressreader/android/TOCView;)Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;

    move-result-object v3

    if-nez v3, :cond_3

    .line 473
    :cond_1
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->mPagesFile:Ljava/util/zip/ZipFile;

    if-eqz v3, :cond_2

    .line 474
    :try_start_1
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->mPagesFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 475
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->mPagesFile:Ljava/util/zip/ZipFile;

    .line 477
    :cond_2
    :goto_2
    return-void

    .line 446
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$2(Lcom/newspaperdirect/pressreader/android/TOCView;)Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;

    move-result-object v3

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->access$0(Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;)Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 447
    .local v2, task:Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;
    if-nez v2, :cond_4

    .line 449
    const-wide/16 v3, 0xa

    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 469
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v2           #task:Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 470
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 456
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #task:Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;
    :cond_4
    :try_start_5
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->getThumbnailBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 457
    .local v1, result:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 458
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    new-instance v4, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread$1;

    invoke-direct {v4, p0, v2, v1}, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread$1;-><init>(Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lcom/newspaperdirect/pressreader/android/TOCView;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 474
    .end local v1           #result:Landroid/graphics/Bitmap;
    .end local v2           #task:Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;
    :catch_2
    move-exception v3

    goto :goto_1

    .line 443
    :catch_3
    move-exception v3

    goto :goto_0
.end method
