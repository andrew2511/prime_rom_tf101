.class public Lcom/asus/reader/util/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/util/Downloader$UpdateListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 911
    return-void
.end method

.method public static checkStorage()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 869
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 870
    .local v2, status:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 872
    const-string v3, "shared"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 875
    const-string v3, "vibe"

    const-string v4, "sdcard busy"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v3, v5

    .line 892
    :goto_1
    return v3

    .line 879
    :cond_0
    const-string v3, "vibe"

    const-string v4, "no sdcard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 885
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/mnt/sdcard/Download/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 886
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 887
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 888
    .end local v0           #dir:Ljava/io/File;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 889
    .local v1, e:Ljava/lang/SecurityException;
    const-string v3, "vibe"

    const-string v4, "cannot create cache DIR"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 890
    goto :goto_1
.end method

.method private static chooseUniqueFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "pathfilename"
    .parameter "extension"

    .prologue
    .line 755
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 770
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/util/Random;-><init>(J)V

    .line 771
    .local v3, sRandom:Ljava/util/Random;
    const/4 v4, 0x1

    .line 772
    .local v4, sequence:I
    const/4 v2, 0x1

    .local v2, magnitude:I
    :goto_0
    const v5, 0x3b9aca00

    if-ge v2, v5, :cond_2

    .line 773
    const/4 v1, 0x0

    .local v1, iteration:I
    :goto_1
    const/16 v5, 0x9

    if-ge v1, v5, :cond_1

    .line 774
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, fullFilename:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 776
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 781
    .end local v0           #fullFilename:Ljava/lang/String;
    .end local v1           #iteration:I
    :goto_2
    return-object v5

    .line 778
    .restart local v0       #fullFilename:Ljava/lang/String;
    .restart local v1       #iteration:I
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 773
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 772
    .end local v0           #fullFilename:Ljava/lang/String;
    :cond_1
    mul-int/lit8 v2, v2, 0xa

    goto :goto_0

    .line 781
    .end local v1           #iteration:I
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private static chooseUniqueFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "path"
    .parameter "filename"
    .parameter "extension"

    .prologue
    .line 724
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 739
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/util/Random;-><init>(J)V

    .line 740
    .local v3, sRandom:Ljava/util/Random;
    const/4 v4, 0x1

    .line 741
    .local v4, sequence:I
    const/4 v2, 0x1

    .local v2, magnitude:I
    :goto_0
    const v5, 0x3b9aca00

    if-ge v2, v5, :cond_2

    .line 742
    const/4 v1, 0x0

    .local v1, iteration:I
    :goto_1
    const/16 v5, 0x9

    if-ge v1, v5, :cond_1

    .line 743
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, fullFilename:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 745
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 750
    .end local v0           #fullFilename:Ljava/lang/String;
    .end local v1           #iteration:I
    :goto_2
    return-object v5

    .line 747
    .restart local v0       #fullFilename:Ljava/lang/String;
    .restart local v1       #iteration:I
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 742
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 741
    .end local v0           #fullFilename:Ljava/lang/String;
    :cond_1
    mul-int/lit8 v2, v2, 0xa

    goto :goto_0

    .line 750
    .end local v1           #iteration:I
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static downloadBook(Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;)Z
    .locals 7
    .parameter "url"
    .parameter "autoopen"
    .parameter "coverURL"
    .parameter "context"

    .prologue
    .line 657
    invoke-static {p0, p3}, Lcom/asus/reader/util/Downloader;->getDownloadInfo(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, infos:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 659
    .local v2, mimeType:Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    .line 660
    .local v1, contentDisposition:Ljava/lang/String;
    invoke-static {}, Lcom/asus/reader/util/Downloader;->checkStorage()Z

    move-result v0

    .end local v0           #infos:[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 661
    const/4 p0, 0x0

    .line 719
    .end local v1           #contentDisposition:Ljava/lang/String;
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :goto_0
    return p0

    .line 667
    .restart local v1       #contentDisposition:Ljava/lang/String;
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_0
    :try_start_0
    new-instance v4, Landroid/net/WebAddress;

    invoke-direct {v4, p0}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 668
    .local v4, webAddress:Landroid/net/WebAddress;
    invoke-virtual {v4}, Landroid/net/WebAddress;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/asus/reader/util/Downloader;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/net/WebAddress;->setPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    invoke-virtual {v4}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, addressString:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 677
    .local v3, uri:Landroid/net/Uri;
    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .end local v0           #addressString:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 678
    const/4 p0, 0x0

    goto :goto_0

    .line 669
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #webAddress:Landroid/net/WebAddress;
    :catch_0
    move-exception p1

    .line 672
    .local p1, e:Ljava/lang/Exception;
    const-string p1, "vibe"

    .end local p1           #e:Ljava/lang/Exception;
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception trying to parse url:"

    .end local p3
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 p0, 0x0

    goto :goto_0

    .line 680
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v4       #webAddress:Landroid/net/WebAddress;
    .restart local p0
    .local p1, autoopen:Z
    .restart local p2
    .restart local p3
    :cond_1
    invoke-static {p0, v1, v2}, Lcom/asus/reader/util/Downloader;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 681
    .local p0, filenames:[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 682
    .local v0, filename:Ljava/lang/String;
    const/4 v1, 0x1

    aget-object p0, p0, v1

    .line 683
    .end local v1           #contentDisposition:Ljava/lang/String;
    .local p0, extention:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 684
    const/4 p0, 0x0

    goto :goto_0

    .line 686
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/mnt/sdcard/Download/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 696
    const-string v1, "/mnt/sdcard/Download/"

    invoke-static {v1, v0, p0}, Lcom/asus/reader/util/Downloader;->chooseUniqueFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    :cond_3
    if-nez v0, :cond_4

    .line 699
    const/4 p0, 0x0

    goto :goto_0

    .line 701
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/mnt/sdcard/Download/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #filename:Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #extention:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 702
    .local p0, downloadPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v0, v1, p3}, Lcom/asus/reader/util/Downloader;->launchDownload(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)V

    .line 703
    if-eqz p1, :cond_5

    .line 710
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #autoopen:Z
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 711
    .local v0, pathuri:Landroid/net/Uri;
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 712
    .local p1, i:Landroid/content/Intent;
    const-string v1, "application/epub+zip"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 714
    .end local v0           #pathuri:Landroid/net/Uri;
    const-string v0, "skipcheckfile"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 715
    invoke-virtual {p3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 717
    .end local p1           #i:Landroid/content/Intent;
    :cond_5
    if-eqz p2, :cond_6

    .line 718
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/asus/reader/book/ReaderDatabase;->addPathCoverCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    :cond_6
    const/4 p0, 0x1

    goto/16 :goto_0
.end method

.method public static downloadFromWeb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "url"
    .parameter "fileName"
    .parameter "description"
    .parameter "mimetype"
    .parameter "contentDisposition"
    .parameter "coverURL"
    .parameter "context"

    .prologue
    .line 357
    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 358
    :cond_0
    invoke-static {p0, p6}, Lcom/asus/reader/util/Downloader;->getDownloadInfo(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, infos:[Ljava/lang/String;
    if-nez p3, :cond_1

    .line 360
    const/4 p3, 0x0

    aget-object p3, v0, p3

    .line 361
    :cond_1
    if-nez p4, :cond_2

    .line 362
    const/4 p4, 0x1

    aget-object p4, v0, p4

    .line 367
    .end local v0           #infos:[Ljava/lang/String;
    :cond_2
    :try_start_0
    new-instance v0, Landroid/net/WebAddress;

    invoke-direct {v0, p0}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, webAddress:Landroid/net/WebAddress;
    invoke-virtual {v0}, Landroid/net/WebAddress;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/reader/util/Downloader;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/WebAddress;->setPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    if-nez p1, :cond_6

    .line 377
    invoke-static {p0, p4, p3}, Lcom/asus/reader/util/Downloader;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 378
    .local p0, filenames:[Ljava/lang/String;
    const/4 p1, 0x0

    aget-object p1, p0, p1

    .line 379
    .local p1, filename:Ljava/lang/String;
    const/4 p4, 0x1

    aget-object p0, p0, p4

    .line 391
    .end local p4
    .local p0, extention:Ljava/lang/String;
    :goto_0
    new-instance p4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/mnt/sdcard/Download/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 392
    const-string p4, "/mnt/sdcard/Download/"

    invoke-static {p4, p1, p0}, Lcom/asus/reader/util/Downloader;->chooseUniqueFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 394
    :cond_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt/sdcard/Download/"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #filename:Ljava/lang/String;
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #extention:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 395
    .local p1, downloadPath:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object p0

    .line 396
    .local p0, addressString:Ljava/lang/String;
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 397
    .local p0, uri:Landroid/net/Uri;
    if-nez p2, :cond_4

    .line 398
    :cond_4
    invoke-virtual {v0}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object p2

    .line 399
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p4

    invoke-static {p0, p3, p4, p2, p6}, Lcom/asus/reader/util/Downloader;->launchDownload(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)V

    .line 400
    if-eqz p5, :cond_5

    .line 401
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object p0

    .end local p0           #uri:Landroid/net/Uri;
    invoke-virtual {p0, p1, p5}, Lcom/asus/reader/book/ReaderDatabase;->addPathCoverCache(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object p0, p1

    .line 402
    .end local v0           #webAddress:Landroid/net/WebAddress;
    .end local p1           #downloadPath:Ljava/lang/String;
    .end local p3
    :goto_1
    return-object p0

    .line 369
    .local p0, url:Ljava/lang/String;
    .local p1, fileName:Ljava/lang/String;
    .restart local p3
    .restart local p4
    :catch_0
    move-exception p1

    .line 372
    .local p1, e:Ljava/lang/Exception;
    const-string p1, "vibe"

    .end local p1           #e:Ljava/lang/Exception;
    new-instance p3, Ljava/lang/StringBuilder;

    .end local p3
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Exception trying to parse url:"

    .end local p4
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #url:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 p0, 0x0

    goto :goto_1

    .line 381
    .restart local v0       #webAddress:Landroid/net/WebAddress;
    .restart local p0       #url:Ljava/lang/String;
    .local p1, fileName:Ljava/lang/String;
    .restart local p3
    .restart local p4
    :cond_6
    const/16 p0, 0x2e

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    .end local p0           #url:Ljava/lang/String;
    move-result p0

    .line 382
    .local p0, dotIndex:I
    if-lez p0, :cond_7

    .line 383
    const/4 p4, 0x0

    invoke-virtual {p1, p4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local p4
    move-result-object p4

    .line 384
    .local p4, filename:Ljava/lang/String;
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .local p0, extention:Ljava/lang/String;
    move-object p1, p4

    .end local p4           #filename:Ljava/lang/String;
    .local p1, filename:Ljava/lang/String;
    goto/16 :goto_0

    .line 386
    .local p0, dotIndex:I
    .local p1, fileName:Ljava/lang/String;
    .local p4, contentDisposition:Ljava/lang/String;
    :cond_7
    move-object p1, p1

    .line 387
    .local p1, filename:Ljava/lang/String;
    const-string p0, ""

    .local p0, extention:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "path"

    .prologue
    const/16 v9, 0x5d

    const/16 v8, 0x5b

    .line 785
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 787
    .local v2, chars:[C
    const/4 v5, 0x0

    .line 788
    .local v5, needed:Z
    move-object v0, v2

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-char v1, v0, v3

    .line 789
    .local v1, c:C
    if-eq v1, v8, :cond_0

    if-ne v1, v9, :cond_2

    .line 790
    :cond_0
    const/4 v5, 0x1

    .line 794
    .end local v1           #c:C
    :cond_1
    if-nez v5, :cond_3

    move-object v7, p0

    .line 808
    :goto_1
    return-object v7

    .line 788
    .restart local v1       #c:C
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 798
    .end local v1           #c:C
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 799
    .local v6, sb:Ljava/lang/StringBuilder;
    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_6

    aget-char v1, v0, v3

    .line 800
    .restart local v1       #c:C
    if-eq v1, v8, :cond_4

    if-ne v1, v9, :cond_5

    .line 801
    :cond_4
    const/16 v7, 0x25

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 802
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 804
    :cond_5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 808
    .end local v1           #c:C
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method private static getDownloadInfo(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .parameter "url"
    .parameter "context"

    .prologue
    .line 564
    const-string v0, "AndroidDownloadManager"

    .line 567
    .local v0, userAgent:Ljava/lang/String;
    const/4 v3, 0x0

    .line 568
    .local v3, mimeType:Ljava/lang/String;
    const/4 v1, 0x0

    .line 569
    .local v1, contentDisposition:Ljava/lang/String;
    const/4 v2, 0x0

    .line 570
    .local v2, cookies:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 571
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    invoke-static {p1, p0}, Landroid/net/Proxy;->getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;

    move-result-object p1

    .line 572
    .local p1, httpHost:Lorg/apache/http/HttpHost;
    if-eqz p1, :cond_0

    .line 573
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    invoke-static {v4, p1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 575
    :cond_0
    new-instance p1, Lorg/apache/http/client/methods/HttpGet;

    .end local p1           #httpHost:Lorg/apache/http/HttpHost;
    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 577
    .local p1, request:Lorg/apache/http/client/methods/HttpGet;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 578
    const-string v4, "Cookie"

    invoke-virtual {p1, v4, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 585
    .local v4, response:Lorg/apache/http/HttpResponse;
    const-string p1, "Content-Type"

    .end local p1           #request:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v4, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    .line 586
    .local p1, header:Lorg/apache/http/Header;
    if-eqz p1, :cond_6

    .line 587
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 588
    .end local v3           #mimeType:Ljava/lang/String;
    .local p1, mimeType:Ljava/lang/String;
    const/16 v2, 0x3b

    :try_start_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    .end local v2           #cookies:Ljava/lang/String;
    move-result v2

    .line 589
    .local v2, semicolonIndex:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 590
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object p1

    move-object v2, p1

    .line 593
    .end local p1           #mimeType:Ljava/lang/String;
    .local v2, mimeType:Ljava/lang/String;
    :goto_0
    :try_start_2
    const-string p1, "Content-Disposition"

    invoke-interface {v4, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    .line 594
    .local p1, contentDispositionHeader:Lorg/apache/http/Header;
    if-eqz p1, :cond_4

    .line 595
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object p1

    .line 602
    .end local v1           #contentDisposition:Ljava/lang/String;
    .local p1, contentDisposition:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v0, v2

    .line 605
    .end local v2           #mimeType:Ljava/lang/String;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .local v0, mimeType:Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_3

    .line 606
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "application/octet-stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 608
    :cond_2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 611
    .local p0, newMimeType:Ljava/lang/String;
    if-eqz p0, :cond_3

    .line 612
    move-object p0, p0

    .line 616
    .end local v0           #mimeType:Ljava/lang/String;
    .local p0, mimeType:Ljava/lang/String;
    :goto_3
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .end local p0           #mimeType:Ljava/lang/String;
    return-object v0

    .line 597
    .end local p1           #contentDisposition:Ljava/lang/String;
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    .restart local v1       #contentDisposition:Ljava/lang/String;
    .local v2, cookies:Ljava/lang/String;
    .restart local v3       #mimeType:Ljava/lang/String;
    .local p0, url:Ljava/lang/String;
    :catch_0
    move-exception p1

    move-object p1, v3

    .line 602
    .end local v2           #cookies:Ljava/lang/String;
    .end local v3           #mimeType:Ljava/lang/String;
    .local p1, mimeType:Ljava/lang/String;
    :goto_4
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v0, p1

    .end local p1           #mimeType:Ljava/lang/String;
    .local v0, mimeType:Ljava/lang/String;
    move-object p1, v1

    .line 603
    .end local v1           #contentDisposition:Ljava/lang/String;
    .local p1, contentDisposition:Ljava/lang/String;
    goto :goto_2

    .line 599
    .end local p1           #contentDisposition:Ljava/lang/String;
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    .restart local v1       #contentDisposition:Ljava/lang/String;
    .restart local v2       #cookies:Ljava/lang/String;
    .restart local v3       #mimeType:Ljava/lang/String;
    :catch_1
    move-exception p1

    move-object p1, v3

    .line 602
    .end local v2           #cookies:Ljava/lang/String;
    .end local v3           #mimeType:Ljava/lang/String;
    .local p1, mimeType:Ljava/lang/String;
    :goto_5
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v0, p1

    .end local p1           #mimeType:Ljava/lang/String;
    .local v0, mimeType:Ljava/lang/String;
    move-object p1, v1

    .line 603
    .end local v1           #contentDisposition:Ljava/lang/String;
    .local p1, contentDisposition:Ljava/lang/String;
    goto :goto_2

    .line 602
    .end local p1           #contentDisposition:Ljava/lang/String;
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    .restart local v1       #contentDisposition:Ljava/lang/String;
    .restart local v2       #cookies:Ljava/lang/String;
    .restart local v3       #mimeType:Ljava/lang/String;
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v3

    .end local v2           #cookies:Ljava/lang/String;
    .end local v3           #mimeType:Ljava/lang/String;
    .local p0, mimeType:Ljava/lang/String;
    :goto_6
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw p1

    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .local p0, url:Ljava/lang/String;
    .local p1, mimeType:Ljava/lang/String;
    :catchall_1
    move-exception p0

    move-object v5, p0

    move-object p0, p1

    .end local p1           #mimeType:Ljava/lang/String;
    .local p0, mimeType:Ljava/lang/String;
    move-object p1, v5

    goto :goto_6

    .local v2, mimeType:Ljava/lang/String;
    .local p0, url:Ljava/lang/String;
    :catchall_2
    move-exception p0

    move-object p1, p0

    move-object p0, v2

    .end local v2           #mimeType:Ljava/lang/String;
    .local p0, mimeType:Ljava/lang/String;
    goto :goto_6

    .line 599
    .local p0, url:Ljava/lang/String;
    .restart local p1       #mimeType:Ljava/lang/String;
    :catch_2
    move-exception v2

    goto :goto_5

    .end local p1           #mimeType:Ljava/lang/String;
    .restart local v2       #mimeType:Ljava/lang/String;
    :catch_3
    move-exception p1

    move-object p1, v2

    .end local v2           #mimeType:Ljava/lang/String;
    .restart local p1       #mimeType:Ljava/lang/String;
    goto :goto_5

    .line 597
    :catch_4
    move-exception v2

    goto :goto_4

    .end local p1           #mimeType:Ljava/lang/String;
    .restart local v2       #mimeType:Ljava/lang/String;
    :catch_5
    move-exception p1

    move-object p1, v2

    .end local v2           #mimeType:Ljava/lang/String;
    .restart local p1       #mimeType:Ljava/lang/String;
    goto :goto_4

    .end local v1           #contentDisposition:Ljava/lang/String;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p0           #url:Ljava/lang/String;
    .local v0, mimeType:Ljava/lang/String;
    .local p1, contentDisposition:Ljava/lang/String;
    :cond_3
    move-object p0, v0

    .end local v0           #mimeType:Ljava/lang/String;
    .local p0, mimeType:Ljava/lang/String;
    goto :goto_3

    .local v0, client:Landroid/net/http/AndroidHttpClient;
    .restart local v1       #contentDisposition:Ljava/lang/String;
    .restart local v2       #mimeType:Ljava/lang/String;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .local p0, url:Ljava/lang/String;
    .local p1, contentDispositionHeader:Lorg/apache/http/Header;
    :cond_4
    move-object p1, v1

    .end local v1           #contentDisposition:Ljava/lang/String;
    .local p1, contentDisposition:Ljava/lang/String;
    goto :goto_1

    .restart local v1       #contentDisposition:Ljava/lang/String;
    .local v2, semicolonIndex:I
    .local p1, mimeType:Ljava/lang/String;
    :cond_5
    move-object v2, p1

    .end local p1           #mimeType:Ljava/lang/String;
    .local v2, mimeType:Ljava/lang/String;
    goto :goto_0

    .local v2, cookies:Ljava/lang/String;
    .restart local v3       #mimeType:Ljava/lang/String;
    .local p1, header:Lorg/apache/http/Header;
    :cond_6
    move-object v2, v3

    .end local v3           #mimeType:Ljava/lang/String;
    .local v2, mimeType:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getFileURLfromHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 79
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 80
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 81
    const/4 v2, 0x0

    .line 84
    :try_start_0
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 86
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move v4, v9

    .line 88
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 89
    const-string v6, "<!--"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 90
    const-string v7, "-->"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 92
    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    move v4, v9

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    if-eqz v6, :cond_2

    if-nez v7, :cond_2

    move v4, v10

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    if-nez v6, :cond_3

    if-eqz v7, :cond_3

    move v4, v9

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    if-nez v4, :cond_0

    .line 105
    const-string v6, "<frame src="

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 106
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 107
    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 108
    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const-class v8, Landroid/text/style/URLSpan;

    invoke-virtual {v6, v7, v5, v8}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/URLSpan;

    .line 109
    if-eqz p0, :cond_0

    array-length v5, p0

    if-eqz v5, :cond_0

    .line 111
    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 115
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v2

    .line 124
    :goto_1
    return-object v0

    .line 117
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 118
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 121
    :catchall_0
    move-exception v0

    throw v0

    .line 119
    :catch_1
    move-exception v0

    move-object v0, v2

    .line 120
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 119
    :catch_2
    move-exception v0

    move-object v0, v2

    goto :goto_3

    .line 117
    :catch_3
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method private static guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter "url"
    .parameter "contentDisposition"
    .parameter "mimeType"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 620
    invoke-static {p0, p1, p2}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 622
    .local v2, filename:Ljava/lang/String;
    const-string v4, "[!\"#$%&\'()*+,/:;<=>?@\\[\\\\\\]^`{|}~]"

    const-string v5, "_"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 624
    const-string v1, ".bin"

    .line 625
    .local v1, extention:Ljava/lang/String;
    new-array v3, v8, [Ljava/lang/String;

    aput-object v2, v3, v6

    aput-object v1, v3, v7

    .line 626
    .local v3, filenames:[Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 627
    .local v0, dotIndex:I
    if-gez v0, :cond_2

    if-eqz p2, :cond_2

    .line 628
    const-string v4, "application/epub+zip"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 629
    const-string v1, ".epub"

    .line 636
    :cond_0
    :goto_0
    new-array v4, v8, [Ljava/lang/String;

    aput-object v2, v4, v6

    aput-object v1, v4, v7

    return-object v4

    .line 630
    :cond_1
    const-string v4, "application/pdf"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 631
    const-string v1, ".pdf"

    goto :goto_0

    .line 632
    :cond_2
    if-lez v0, :cond_0

    .line 633
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 634
    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static launchDownload(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter "uri"
    .parameter "mimeType"
    .parameter "destination"
    .parameter "description"
    .parameter "context"

    .prologue
    .line 640
    if-nez p1, :cond_0

    .line 641
    const-string p1, "application/octet-stream"

    .line 642
    :cond_0
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-direct {v0, p0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 643
    .local v0, downloadRequest:Landroid/app/DownloadManager$Request;
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 644
    invoke-virtual {v0, p2}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 645
    invoke-virtual {v0}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 646
    invoke-virtual {v0, p3}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 647
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 650
    const-string v2, "download"

    invoke-virtual {p4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 652
    .local v1, manager:Landroid/app/DownloadManager;
    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 653
    return-void
.end method

.method public static loadFileImage(Lcom/asus/reader/util/Downloader$UpdateListener;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "updatelistener"
    .parameter "url"
    .parameter "context"

    .prologue
    .line 192
    new-instance v0, Lcom/asus/reader/util/Downloader$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/asus/reader/util/Downloader$2;-><init>(Lcom/asus/reader/util/Downloader$UpdateListener;Ljava/lang/String;Landroid/content/Context;)V

    .line 224
    .local v0, loadingthread:Ljava/lang/Runnable;
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/asus/reader/book/ReaderDatabase;->pushTask(Ljava/lang/Runnable;)V

    .line 225
    return-void
.end method

.method public static loadURLImage(Lcom/asus/reader/util/Downloader$UpdateListener;Ljava/lang/String;)V
    .locals 2
    .parameter "updatelistener"
    .parameter "url"

    .prologue
    .line 228
    new-instance v0, Lcom/asus/reader/util/Downloader$3;

    invoke-direct {v0, p0, p1}, Lcom/asus/reader/util/Downloader$3;-><init>(Lcom/asus/reader/util/Downloader$UpdateListener;Ljava/lang/String;)V

    .line 251
    .local v0, loadingthread:Ljava/lang/Runnable;
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/asus/reader/book/ReaderDatabase;->pushTask(Ljava/lang/Runnable;)V

    .line 252
    return-void
.end method

.method public static saveCover(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 6
    .parameter "cover"
    .parameter "path"

    .prologue
    .line 896
    const/4 v2, 0x0

    .line 897
    .local v2, outStream:Ljava/io/OutputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 899
    .local v1, file:Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 900
    .end local v2           #outStream:Ljava/io/OutputStream;
    .local v3, outStream:Ljava/io/OutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 901
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 902
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .line 909
    .end local v3           #outStream:Ljava/io/OutputStream;
    .restart local v2       #outStream:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 903
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 904
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 905
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 906
    .local v0, e:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 905
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #outStream:Ljava/io/OutputStream;
    .restart local v3       #outStream:Ljava/io/OutputStream;
    :catch_2
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #outStream:Ljava/io/OutputStream;
    .restart local v2       #outStream:Ljava/io/OutputStream;
    goto :goto_2

    .line 903
    .end local v2           #outStream:Ljava/io/OutputStream;
    .restart local v3       #outStream:Ljava/io/OutputStream;
    :catch_3
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #outStream:Ljava/io/OutputStream;
    .restart local v2       #outStream:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static saveInputStream(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "uri"
    .parameter "contentType"
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 830
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 831
    .local v3, extension:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 832
    invoke-static {p1}, Lcom/asus/reader/book/ReaderDatabase;->getExtensionFromMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 833
    :cond_0
    if-nez v3, :cond_2

    move-object v7, v9

    .line 863
    :cond_1
    :goto_0
    return-object v7

    .line 835
    :cond_2
    const-string v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 836
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 837
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/mnt/sdcard/Download/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 838
    .local v6, pathfilename:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 839
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 840
    invoke-static {v6, v3}, Lcom/asus/reader/util/Downloader;->chooseUniqueFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 842
    :cond_4
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 843
    .local v0, destFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 844
    const/4 v5, 0x0

    .line 846
    .local v5, input:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 847
    if-eqz v5, :cond_5

    .line 848
    invoke-static {v5, v0}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v1

    .line 849
    .local v1, done:Z
    if-eqz v1, :cond_5

    .line 850
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    .line 855
    if-eqz v5, :cond_1

    .line 857
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 858
    :catch_0
    move-exception v2

    .line 859
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 855
    .end local v1           #done:Z
    .end local v2           #e:Ljava/io/IOException;
    :cond_5
    if-eqz v5, :cond_6

    .line 857
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_6
    :goto_1
    move-object v7, v9

    .line 863
    goto/16 :goto_0

    .line 858
    :catch_1
    move-exception v2

    .line 859
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 852
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 853
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 855
    if-eqz v5, :cond_6

    .line 857
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 858
    :catch_3
    move-exception v2

    .line 859
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 855
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v5, :cond_7

    .line 857
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 860
    :cond_7
    :goto_2
    throw v7

    .line 858
    :catch_4
    move-exception v2

    .line 859
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static saveURLImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "url"

    .prologue
    .line 255
    new-instance v0, Lcom/asus/reader/util/Downloader$4;

    invoke-direct {v0, p1, p0}, Lcom/asus/reader/util/Downloader$4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .local v0, loadingthread:Ljava/lang/Runnable;
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/asus/reader/book/ReaderDatabase;->pushTask(Ljava/lang/Runnable;)V

    .line 271
    return-void
.end method
