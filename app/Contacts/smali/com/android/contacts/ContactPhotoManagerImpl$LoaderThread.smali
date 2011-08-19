.class Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;
.super Landroid/os/HandlerThread;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactPhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field private mBuffer:[B

.field private mLoaderThreadHandler:Landroid/os/Handler;

.field private final mPhotoIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoIdsAsStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadPhotoIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadStatus:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/android/contacts/ContactPhotoManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter
    .parameter "resolver"

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    .line 511
    const-string v0, "ContactPhotoLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 496
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    .line 497
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/ArrayList;

    .line 498
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/ArrayList;

    .line 499
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/ArrayList;

    .line 508
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 512
    iput-object p2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    .line 513
    return-void
.end method

.method private loadPhotosFromDatabase(Z)V
    .locals 13
    .parameter "preloading"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 657
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 658
    .local v7, count:I
    if-nez v7, :cond_0

    .line 712
    :goto_0
    return-void

    .line 664
    :cond_0
    if-nez p1, :cond_2

    iget v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    if-ne v0, v1, :cond_2

    .line 665
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v7, :cond_1

    .line 666
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 665
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 669
    iput v11, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 673
    .end local v9           #i:I
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 674
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "_id IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_2
    if-ge v9, v7, :cond_4

    .line 676
    if-eqz v9, :cond_3

    .line 677
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 679
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 675
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 681
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 683
    const/4 v8, 0x0

    .line 685
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$300()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$400()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 691
    if-eqz v8, :cond_6

    .line 692
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 693
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 694
    .local v10, id:Ljava/lang/Long;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 695
    .local v6, bytes:[B
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-static {v0, v10, v6, p1}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$500(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZ)V

    .line 696
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 700
    .end local v6           #bytes:[B
    .end local v10           #id:Ljava/lang/Long;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 701
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 700
    :cond_6
    if-eqz v8, :cond_7

    .line 701
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 706
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 707
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v7, :cond_8

    .line 708
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, v12, p1}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$500(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZ)V

    .line 707
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 711
    :cond_8
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$600(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private loadPhotosInBackground()V
    .locals 4

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$200(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 651
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->loadPhotosFromDatabase(Z)V

    .line 652
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->loadRemotePhotos()V

    .line 653
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    .line 654
    return-void
.end method

.method private loadRemotePhotos()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 715
    iget-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 716
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 717
    iget-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 718
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    if-nez v7, :cond_0

    .line 719
    const/16 v7, 0x4000

    new-array v7, v7, [B

    iput-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    .line 722
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 723
    .local v4, is:Ljava/io/InputStream;
    if-eqz v4, :cond_2

    .line 724
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_1
    iget-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, size:I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    .line 728
    iget-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 731
    .end local v5           #size:I
    :catchall_0
    move-exception v7

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 739
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 740
    .local v2, ex:Ljava/lang/Exception;
    const-string v7, "ContactPhotoManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot load photo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 741
    iget-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-static {v7, v6, v11, v10}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$500(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZ)V

    .line 716
    .end local v2           #ex:Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 731
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #size:I
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 733
    iget-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v6, v8, v9}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$500(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZ)V

    .line 734
    iget-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-static {v7}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$600(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 736
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #size:I
    :cond_2
    const-string v7, "ContactPhotoManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot load photo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v6, v8, v9}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$500(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 744
    .end local v4           #is:Ljava/io/InputStream;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_3
    return-void
.end method

.method private preloadPhotosInBackground()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 576
    iget v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    if-ne v3, v5, :cond_0

    .line 621
    :goto_0
    return-void

    .line 580
    :cond_0
    iget v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    if-nez v3, :cond_2

    .line 581
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->queryPhotosForPreload()V

    .line 582
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 583
    iput v5, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 587
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    goto :goto_0

    .line 585
    :cond_1
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    goto :goto_1

    .line 591
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-static {v3}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$000(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/util/LruCache;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/LruCache;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-static {v4}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$100(Lcom/android/contacts/ContactPhotoManagerImpl;)I

    move-result v4

    if-le v3, v4, :cond_3

    .line 592
    iput v5, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    goto :goto_0

    .line 596
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 597
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 599
    const/4 v0, 0x0

    .line 600
    .local v0, count:I
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 601
    .local v2, preloadSize:I
    :goto_2
    if-lez v2, :cond_4

    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x19

    if-ge v3, v4, :cond_4

    .line 602
    add-int/lit8 v2, v2, -0x1

    .line 603
    add-int/lit8 v0, v0, 0x1

    .line 604
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 605
    .local v1, photoId:Ljava/lang/Long;
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 610
    .end local v1           #photoId:Ljava/lang/Long;
    :cond_4
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->loadPhotosFromDatabase(Z)V

    .line 612
    if-nez v2, :cond_5

    .line 613
    iput v5, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 616
    :cond_5
    const-string v3, "ContactPhotoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preloaded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " photos. Photos in cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-static {v5}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$000(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/util/LruCache;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/LruCache;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Total size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-static {v5}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$000(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/util/LruCache;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/LruCache;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    goto/16 :goto_0
.end method

.method private queryPhotosForPreload()V
    .locals 7

    .prologue
    .line 624
    const/4 v6, 0x0

    .line 626
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "directory"

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 629
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "photo_id"

    aput-object v4, v2, v3

    const-string v3, "photo_id NOT NULL AND photo_id!=0"

    const/4 v4, 0x0

    const-string v5, "starred DESC, last_time_contacted DESC LIMIT 500"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 635
    if-eqz v6, :cond_1

    .line 636
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 643
    .end local v1           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 644
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 643
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_1
    if-eqz v6, :cond_2

    .line 644
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 647
    :cond_2
    return-void
.end method


# virtual methods
.method public ensureHandler()V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 517
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 519
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 558
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 566
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 560
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->preloadPhotosInBackground()V

    goto :goto_0

    .line 563
    :pswitch_1
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->loadPhotosInBackground()V

    goto :goto_0

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLoading()V
    .locals 2

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->ensureHandler()V

    .line 549
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 551
    return-void
.end method

.method public requestPreloading()V
    .locals 4

    .prologue
    .line 529
    iget v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->ensureHandler()V

    .line 534
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
