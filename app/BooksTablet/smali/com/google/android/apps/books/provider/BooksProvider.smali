.class public Lcom/google/android/apps/books/provider/BooksProvider;
.super Landroid/content/ContentProvider;
.source "BooksProvider.java"


# static fields
.field public static final DEFAULT_DOWNLOAD_AGE_MILLIS:J = 0xf731400L

.field public static final DEFAULT_KEEP_AGE_MILLIS:J = 0x9a7ec800L

.field private static final MIME_HTML:Ljava/lang/String; = "text/html"

.field private static final MIME_PNG:Ljava/lang/String; = "image/png"

.field private static final MIME_RAW:Ljava/lang/String; = "application/octet-stream"

.field public static final STORAGE_LOW_KEEP_AGE_MILLIS:J = 0x240c8400L

.field static final TAG:Ljava/lang/String; = "BooksProvider"

.field private static mBuilderPool:Lcom/google/android/apps/books/util/pool/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/util/pool/Pool",
            "<",
            "Lcom/google/android/apps/books/util/SelectionBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnnotationsProv:Lcom/google/android/apps/books/provider/AnnotationsProvidelet;

.field private mBookSearchProvidelet:Lcom/google/android/apps/books/provider/BookSearchProvidelet;

.field private mConfigurationProvidelet:Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

.field private mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

.field private mLocalCollectionVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;

.field private mLocalCollectionsProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;

.field private mLocalLibraryVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;

.field private mLocalStatesProvidelet:Lcom/google/android/apps/books/provider/LocalStatesProvidelet;

.field private mLocalVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;

.field private mManifestProv:Lcom/google/android/apps/books/provider/ManifestProvidelet;

.field private mSessionKeysProv:Lcom/google/android/apps/books/provider/SessionKeysProvidelet;

.field private mSuggestProvidelet:Lcom/google/android/apps/books/provider/SuggestProvidelet;

.field private mVolumeContentProv:Lcom/google/android/apps/books/provider/VolumeContentProvidelet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/google/android/apps/books/provider/BooksProvider$1;

    invoke-direct {v0}, Lcom/google/android/apps/books/provider/BooksProvider$1;-><init>()V

    invoke-static {v0}, Lcom/google/android/apps/books/util/pool/Pools;->simplePool(Lcom/google/android/apps/books/util/pool/PoolableManager;)Lcom/google/android/apps/books/util/pool/Pool;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/pool/Pools;->synchronizedPool(Lcom/google/android/apps/books/util/pool/Pool;)Lcom/google/android/apps/books/util/pool/Pool;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/BooksProvider;->mBuilderPool:Lcom/google/android/apps/books/util/pool/Pool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private dispatchQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 329
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract;->match(Landroid/net/Uri;)I

    move-result v1

    .line 330
    .local v1, match:I
    sparse-switch v1, :sswitch_data_0

    .line 408
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalStatesProvidelet:Lcom/google/android/apps/books/provider/LocalStatesProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 405
    :goto_0
    return-object v0

    .line 341
    :sswitch_1
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksProvider;->hasLocalFlag(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    move v8, v0

    .line 343
    .local v8, forceLocal:Z
    :goto_1
    if-nez v8, :cond_1

    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksProvider;->hasSearchQuery(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksProvider;->hasPriceColumn([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 350
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    if-eqz v8, :cond_4

    :cond_2
    move-object v0, v7

    .line 351
    goto :goto_0

    .line 341
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #forceLocal:Z
    :cond_3
    const/4 v0, 0x0

    move v8, v0

    goto :goto_1

    .line 353
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v8       #forceLocal:Z
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 356
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mBookSearchProvidelet:Lcom/google/android/apps/books/provider/BookSearchProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/BookSearchProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 366
    .end local v8           #forceLocal:Z
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mManifestProv:Lcom/google/android/apps/books/provider/ManifestProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/ManifestProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 371
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mVolumeContentProv:Lcom/google/android/apps/books/provider/VolumeContentProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 375
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mAnnotationsProv:Lcom/google/android/apps/books/provider/AnnotationsProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/AnnotationsProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 379
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mSessionKeysProv:Lcom/google/android/apps/books/provider/SessionKeysProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/SessionKeysProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 382
    :sswitch_6
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mSuggestProvidelet:Lcom/google/android/apps/books/provider/SuggestProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/SuggestProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 387
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalCollectionsProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_8
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 390
    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/provider/BooksProvider;->queryCollectionVolumes(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 394
    :sswitch_9
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalCollectionVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 397
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/BooksProvider;->shouldCollectionVolumesUseLocal(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 398
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalLibraryVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 401
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mBookSearchProvidelet:Lcom/google/android/apps/books/provider/BookSearchProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/BookSearchProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 405
    :sswitch_b
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mConfigurationProvidelet:Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 330
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_2
        0xca -> :sswitch_3
        0xcd -> :sswitch_2
        0xce -> :sswitch_2
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x12e -> :sswitch_3
        0x190 -> :sswitch_2
        0x191 -> :sswitch_2
        0x192 -> :sswitch_3
        0x1ae -> :sswitch_4
        0x1af -> :sswitch_4
        0x1c2 -> :sswitch_5
        0x1c3 -> :sswitch_5
        0x1f4 -> :sswitch_6
        0x258 -> :sswitch_0
        0x259 -> :sswitch_0
        0x2bc -> :sswitch_7
        0x2bd -> :sswitch_7
        0x2be -> :sswitch_7
        0x2c6 -> :sswitch_9
        0x2c7 -> :sswitch_8
        0x2c8 -> :sswitch_9
        0x2d0 -> :sswitch_a
        0x320 -> :sswitch_b
    .end sparse-switch
.end method

.method private ensureResourceContent(Landroid/net/Uri;)V
    .locals 13
    .parameter "resContentUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/BooksProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 628
    .local v2, context:Landroid/content/Context;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 629
    .local v9, volumeId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getResourceId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 632
    .local v7, resId:Ljava/lang/String;
    invoke-static {v9, v7}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 633
    .local v8, resourceUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/BooksProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "content_status"

    invoke-static {v10, v8, v11}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 635
    .local v1, contentStatus:I
    const/4 v10, 0x3

    if-ne v1, v10, :cond_1

    .line 673
    :cond_0
    return-void

    .line 639
    :cond_1
    invoke-static {v2, v9}, Lcom/google/android/apps/books/provider/BooksProvider;->getFirstParentAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 643
    .local v0, account:Landroid/accounts/Account;
    const/4 v6, 0x0

    .line 648
    .local v6, handler:Landroid/os/Handler;
    new-instance v5, Ljava/util/concurrent/Semaphore;

    const/4 v10, 0x0

    invoke-direct {v5, v10}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 649
    .local v5, ensureSemaphore:Ljava/util/concurrent/Semaphore;
    new-instance v10, Lcom/google/android/apps/books/provider/BooksProvider$2;

    invoke-direct {v10, p0, v6, v5}, Lcom/google/android/apps/books/provider/BooksProvider$2;-><init>(Lcom/google/android/apps/books/provider/BooksProvider;Landroid/os/Handler;Ljava/util/concurrent/Semaphore;)V

    invoke-static {v2, p1, v10, v0}, Lcom/google/android/apps/books/service/ContentFetchService;->createFetchIntent(Landroid/content/Context;Landroid/net/Uri;Landroid/os/ResultReceiver;Landroid/accounts/Account;)Landroid/content/Intent;

    move-result-object v4

    .line 664
    .local v4, ensureIntent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {v2, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 665
    const-wide/16 v10, 0x3c

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v10, v11, v12}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 666
    new-instance v10, Ljava/io/FileNotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "timeout while ensuring resource: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 670
    .local v3, e:Ljava/lang/InterruptedException;
    new-instance v10, Ljava/io/FileNotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "interrupted while ensuring resource: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public static externalStorageIsAvailable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 837
    :try_start_0
    invoke-static {p0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 841
    .local v1, result:Z
    :goto_0
    return v1

    .line 838
    .end local v1           #result:Z
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 839
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    .restart local v1       #result:Z
    goto :goto_0
.end method

.method public static getAllAccountNames(Landroid/content/Context;)Ljava/util/Set;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 713
    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Collections;->CONTENT_URI:Landroid/net/Uri;

    .line 714
    .local v1, uri:Landroid/net/Uri;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "DISTINCT(account_name)"

    aput-object v4, v2, v5

    .line 717
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    move-object v4, v3

    move-object v5, v3

    .line 718
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 719
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 721
    .local v8, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 722
    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 723
    .local v7, name:Ljava/lang/String;
    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 726
    .end local v7           #name:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 728
    return-object v8
.end method

.method public static getFileStorageDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 850
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "value"

    aput-object v0, v2, v1

    .line 851
    .local v2, columns:[Ljava/lang/String;
    const-string v3, "key=?"

    .line 852
    .local v3, where:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    const-string v0, "base_path"

    aput-object v0, v4, v1

    .line 853
    .local v4, whereArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Configuration;->CONFIGURATION_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 855
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 857
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    new-instance v7, Ljava/io/File;

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    .local v7, result:Ljava/io/File;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 868
    return-object v7

    .line 860
    .end local v7           #result:Ljava/io/File;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No rows returned for base path query"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 863
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 866
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Null cursor returned for base path query"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getFirstParentAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 11
    .parameter "context"
    .parameter "volumeId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 685
    sget-object v3, Lcom/google/android/apps/books/provider/BooksContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "accounts"

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "collections"

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "volumes"

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 688
    .local v1, uri:Landroid/net/Uri;
    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "account_name"

    aput-object v3, v2, v9

    .line 689
    .local v2, projection:[Ljava/lang/String;
    const-string v8, "volume_id=?"

    .line 690
    .local v8, selection:Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v9

    .line 692
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 693
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "volume_id=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 695
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 696
    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 697
    .local v7, name:Ljava/lang/String;
    new-instance v3, Landroid/accounts/Account;

    const-string v5, "com.google"

    invoke-direct {v3, v7, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 705
    .end local v7           #name:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 700
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 705
    new-instance v3, Lcom/google/android/apps/books/preference/LocalPreferences;

    invoke-direct {v3, p0}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/google/android/apps/books/preference/LocalPreferences;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    goto :goto_0

    .line 700
    :catchall_0
    move-exception v3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public static getVolumeIdsToDelete(Landroid/content/ContentResolver;J)Ljava/util/Set;
    .locals 10
    .parameter "resolver"
    .parameter "cutoffTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 789
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "volume_id"

    aput-object v0, v2, v1

    const-string v0, "max_collection_volumes_timestamp"

    aput-object v0, v2, v3

    const-string v0, "max_last_local_access"

    aput-object v0, v2, v5

    .line 796
    .local v2, columns:[Ljava/lang/String;
    const-string v8, "(max_collection_volumes_timestamp IS NULL) OR (max_last_local_access IS NULL) OR (pinned=0 AND max_collection_volumes_timestamp < CAST(? AS INTEGER) AND max_last_local_access < CAST(? AS INTEGER))"

    .line 801
    .local v8, selection:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 803
    .local v4, selectionArgs:[Ljava/lang/String;
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract;->markLocal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "(max_collection_volumes_timestamp IS NULL) OR (max_last_local_access IS NULL) OR (pinned=0 AND max_collection_volumes_timestamp < CAST(? AS INTEGER) AND max_last_local_access < CAST(? AS INTEGER))"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 806
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    .line 807
    .local v7, idsToDelete:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 809
    .local v9, volumeId:Ljava/lang/String;
    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 813
    .end local v7           #idsToDelete:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9           #volumeId:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v7       #idsToDelete:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v7
.end method

.method private static hasLocalFlag(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 416
    const-string v0, "local"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/books/util/UriUtils;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static hasPriceColumn([Ljava/lang/String;)Z
    .locals 2
    .parameter "projection"

    .prologue
    .line 431
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 432
    .local v0, columnNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "price_amount"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "price_currency"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "suggested_price_amount"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "suggested_price_currency"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static hasSearchQuery(Landroid/net/Uri;)Z
    .locals 1
    .parameter "uri"

    .prologue
    .line 420
    const-string v0, "query"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryCollectionVolumes(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "match"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 289
    const/16 v0, 0x2c7

    if-eq p1, v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/provider/BooksProvider;->uriAccountIsUid(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mBookSearchProvidelet:Lcom/google/android/apps/books/provider/BookSearchProvidelet;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/BookSearchProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 299
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalCollectionVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public static removeAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 14
    .parameter "context"
    .parameter "accountName"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v13, "account_name=?"

    .line 737
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 739
    .local v6, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->CONTENT_URI:Landroid/net/Uri;

    .line 740
    .local v2, collectionVolumesUri:Landroid/net/Uri;
    const-string v0, "account_name=?"

    .line 741
    .local v0, collectionVolumesSelection:Ljava/lang/String;
    new-array v1, v12, [Ljava/lang/String;

    aput-object p1, v1, v11

    .line 742
    .local v1, collectionVolumesSelectionArgs:[Ljava/lang/String;
    const-string v10, "account_name=?"

    invoke-virtual {v6, v2, v13, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 745
    sget-object v5, Lcom/google/android/apps/books/provider/BooksContract$Collections;->CONTENT_URI:Landroid/net/Uri;

    .line 746
    .local v5, collectionsUri:Landroid/net/Uri;
    const-string v3, "account_name=?"

    .line 747
    .local v3, collectionsSelection:Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    aput-object p1, v4, v11

    .line 748
    .local v4, collectionsSelectionArgs:[Ljava/lang/String;
    const-string v10, "account_name=?"

    invoke-virtual {v6, v5, v13, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 750
    sget-object v9, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;->CONTENT_URI:Landroid/net/Uri;

    .line 751
    .local v9, statesUri:Landroid/net/Uri;
    const-string v7, "account_name=?"

    .line 752
    .local v7, statesSelection:Ljava/lang/String;
    new-array v8, v12, [Ljava/lang/String;

    aput-object p1, v8, v11

    .line 753
    .local v8, statesSelectionArgs:[Ljava/lang/String;
    const-string v10, "account_name=?"

    invoke-virtual {v6, v9, v13, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 754
    return-void
.end method

.method public static resetFileStorageLocation(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 892
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->resetBasePath(Landroid/content/ContentResolver;)V

    .line 893
    return-void
.end method

.method public static setUseExternalStorage(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "useExternalStorage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 877
    if-eqz p1, :cond_1

    .line 878
    invoke-static {p0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 882
    .local v0, newPath:Ljava/io/File;
    :goto_0
    if-eqz v0, :cond_0

    .line 883
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->setBasePath(Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 885
    :cond_0
    return-void

    .line 880
    .end local v0           #newPath:Ljava/io/File;
    :cond_1
    invoke-static {p0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->getInternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .restart local v0       #newPath:Ljava/io/File;
    goto :goto_0
.end method

.method private shouldCollectionVolumesUseLocal(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 444
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksProvider;->hasLocalFlag(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    const/4 v0, 0x1

    .line 453
    .local v0, result:Z
    :goto_0
    return v0

    .line 446
    .end local v0           #result:Z
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/BooksProvider;->uriAccountIsUid(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    const/4 v0, 0x0

    .restart local v0       #result:Z
    goto :goto_0

    .line 451
    .end local v0           #result:Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0       #result:Z
    goto :goto_0
.end method

.method private uriAccountIsUid(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 273
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, accountName:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static usingExternalStorage(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 826
    invoke-static {p0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->getInternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 827
    .local v1, internalStorageDir:Ljava/io/File;
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksProvider;->getFileStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 828
    .local v0, currentStorageDir:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 762
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v2}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 763
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 765
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    .line 766
    .local v1, results:[Landroid/content/ContentProviderResult;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v1

    .end local v1           #results:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const-string v3, "BooksProvider"

    .line 511
    const-string v1, "BooksProvider"

    const/4 v1, 0x2

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    const-string v1, "BooksProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete(uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", selection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", selectionArgs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/BooksProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/apps/books/util/ProviderUtils;->ensureNotOnMainThread(Landroid/content/Context;Landroid/net/Uri;)V

    .line 517
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract;->match(Landroid/net/Uri;)I

    move-result v0

    .line 518
    .local v0, match:I
    sparse-switch v0, :sswitch_data_0

    .line 564
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported URI for delete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 521
    :sswitch_0
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalStatesProvidelet:Lcom/google/android/apps/books/provider/LocalStatesProvidelet;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 562
    :goto_0
    return v1

    .line 524
    :sswitch_1
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 533
    :sswitch_2
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mManifestProv:Lcom/google/android/apps/books/provider/ManifestProvidelet;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/apps/books/provider/ManifestProvidelet;->delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 542
    :sswitch_3
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mVolumeContentProv:Lcom/google/android/apps/books/provider/VolumeContentProvidelet;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 545
    :sswitch_4
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mAnnotationsProv:Lcom/google/android/apps/books/provider/AnnotationsProvidelet;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/apps/books/provider/AnnotationsProvidelet;->delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 548
    :sswitch_5
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mSessionKeysProv:Lcom/google/android/apps/books/provider/SessionKeysProvidelet;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/apps/books/provider/SessionKeysProvidelet;->delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 552
    :sswitch_6
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalCollectionsProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 556
    :sswitch_7
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalCollectionVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 559
    :sswitch_8
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalLibraryVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 561
    :sswitch_9
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mConfigurationProvidelet:Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

    invoke-virtual {v1}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->deleteAllFiles()V

    .line 562
    const/4 v1, 0x0

    goto :goto_0

    .line 518
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x96 -> :sswitch_3
        0x97 -> :sswitch_3
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_2
        0xca -> :sswitch_3
        0xcd -> :sswitch_2
        0xce -> :sswitch_2
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x190 -> :sswitch_2
        0x191 -> :sswitch_2
        0x192 -> :sswitch_3
        0x19a -> :sswitch_3
        0x19b -> :sswitch_3
        0x19c -> :sswitch_3
        0x19d -> :sswitch_3
        0x1ae -> :sswitch_4
        0x1af -> :sswitch_4
        0x1c2 -> :sswitch_5
        0x1c3 -> :sswitch_5
        0x258 -> :sswitch_0
        0x259 -> :sswitch_0
        0x2bc -> :sswitch_6
        0x2bd -> :sswitch_6
        0x2be -> :sswitch_6
        0x2c6 -> :sswitch_7
        0x2c7 -> :sswitch_7
        0x2c8 -> :sswitch_7
        0x2d0 -> :sswitch_8
        0x384 -> :sswitch_9
    .end sparse-switch
.end method

.method public getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter "uri"

    .prologue
    const-string v4, "vnd.android.cursor.item/com.google.android.apps.books.volume"

    const-string v3, "image/png"

    const-string v2, "vnd.android.cursor.dir/com.google.android.apps.books.volume"

    .line 169
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract;->match(Landroid/net/Uri;)I

    move-result v0

    .line 170
    .local v0, match:I
    sparse-switch v0, :sswitch_data_0

    .line 230
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 172
    :sswitch_0
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.volume"

    move-object v1, v2

    goto :goto_0

    .line 174
    :sswitch_1
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.volume"

    move-object v1, v4

    goto :goto_0

    .line 176
    :sswitch_2
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.state"

    goto :goto_0

    .line 178
    :sswitch_3
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.state"

    goto :goto_0

    .line 181
    :sswitch_4
    const-string v1, "image/png"

    move-object v1, v3

    goto :goto_0

    .line 183
    :sswitch_5
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.section"

    goto :goto_0

    .line 185
    :sswitch_6
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.section"

    goto :goto_0

    .line 187
    :sswitch_7
    const-string v1, "text/html"

    goto :goto_0

    .line 189
    :sswitch_8
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.chapter"

    goto :goto_0

    .line 191
    :sswitch_9
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.chapter"

    goto :goto_0

    .line 193
    :sswitch_a
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.resource"

    goto :goto_0

    .line 195
    :sswitch_b
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.resource"

    goto :goto_0

    .line 197
    :sswitch_c
    const-string v1, "application/octet-stream"

    goto :goto_0

    .line 199
    :sswitch_d
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.page"

    goto :goto_0

    .line 201
    :sswitch_e
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.page"

    goto :goto_0

    .line 203
    :sswitch_f
    const-string v1, "image/png"

    move-object v1, v3

    goto :goto_0

    .line 205
    :sswitch_10
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.annotation"

    goto :goto_0

    .line 207
    :sswitch_11
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.annotation"

    goto :goto_0

    .line 209
    :sswitch_12
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.volume"

    move-object v1, v2

    goto :goto_0

    .line 212
    :sswitch_13
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.account.collection"

    goto :goto_0

    .line 214
    :sswitch_14
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.account.collection"

    goto :goto_0

    .line 216
    :sswitch_15
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.account.collection.volume"

    goto :goto_0

    .line 218
    :sswitch_16
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.volume"

    move-object v1, v2

    goto :goto_0

    .line 220
    :sswitch_17
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.volume"

    move-object v1, v4

    goto :goto_0

    .line 222
    :sswitch_18
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.volume"

    move-object v1, v2

    goto :goto_0

    .line 224
    :sswitch_19
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.session_key"

    goto :goto_0

    .line 226
    :sswitch_1a
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.session_key"

    goto :goto_0

    .line 228
    :sswitch_1b
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.configuration"

    goto :goto_0

    .line 170
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x96 -> :sswitch_4
        0x97 -> :sswitch_4
        0xc8 -> :sswitch_5
        0xc9 -> :sswitch_6
        0xca -> :sswitch_7
        0xcd -> :sswitch_8
        0xce -> :sswitch_9
        0x12c -> :sswitch_a
        0x12d -> :sswitch_b
        0x12e -> :sswitch_c
        0x190 -> :sswitch_d
        0x191 -> :sswitch_e
        0x192 -> :sswitch_f
        0x1ae -> :sswitch_10
        0x1af -> :sswitch_11
        0x1c2 -> :sswitch_19
        0x1c3 -> :sswitch_1a
        0x1f4 -> :sswitch_12
        0x258 -> :sswitch_2
        0x259 -> :sswitch_3
        0x2bc -> :sswitch_13
        0x2bd -> :sswitch_13
        0x2be -> :sswitch_14
        0x2c6 -> :sswitch_15
        0x2c7 -> :sswitch_16
        0x2c8 -> :sswitch_17
        0x2d0 -> :sswitch_18
        0x320 -> :sswitch_1b
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter "uri"
    .parameter "values"

    .prologue
    const-string v3, "BooksProvider"

    .line 236
    const-string v1, "BooksProvider"

    const/4 v1, 0x2

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const-string v1, "BooksProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert(uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", values="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/BooksProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/apps/books/util/ProviderUtils;->ensureNotOnMainThread(Landroid/content/Context;Landroid/net/Uri;)V

    .line 241
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract;->match(Landroid/net/Uri;)I

    move-result v0

    .line 242
    .local v0, match:I
    sparse-switch v0, :sswitch_data_0

    .line 267
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported URI for insert: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :sswitch_0
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalStatesProvidelet:Lcom/google/android/apps/books/provider/LocalStatesProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 265
    :goto_0
    return-object v1

    .line 247
    :sswitch_1
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 252
    :sswitch_2
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mManifestProv:Lcom/google/android/apps/books/provider/ManifestProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/ManifestProvidelet;->insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 254
    :sswitch_3
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mAnnotationsProv:Lcom/google/android/apps/books/provider/AnnotationsProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/AnnotationsProvidelet;->insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 257
    :sswitch_4
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mSessionKeysProv:Lcom/google/android/apps/books/provider/SessionKeysProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/SessionKeysProvidelet;->insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 259
    :sswitch_5
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalCollectionsProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 261
    :sswitch_6
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalCollectionVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 263
    :sswitch_7
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalLibraryVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 265
    :sswitch_8
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mConfigurationProvidelet:Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 242
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_2
        0xcd -> :sswitch_2
        0x12c -> :sswitch_2
        0x190 -> :sswitch_2
        0x1ae -> :sswitch_3
        0x1c2 -> :sswitch_4
        0x1c3 -> :sswitch_4
        0x258 -> :sswitch_0
        0x259 -> :sswitch_0
        0x2bc -> :sswitch_5
        0x2c6 -> :sswitch_6
        0x2d0 -> :sswitch_7
        0x320 -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/BooksProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-direct {v1, v0}, Lcom/google/android/apps/books/provider/database/BooksDatabase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    .line 145
    new-instance v1, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

    iget-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;)V

    iput-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mConfigurationProvidelet:Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

    .line 147
    new-instance v1, Lcom/google/android/apps/books/provider/ManifestProvidelet;

    iget-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    sget-object v3, Lcom/google/android/apps/books/provider/BooksProvider;->mBuilderPool:Lcom/google/android/apps/books/util/pool/Pool;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/apps/books/provider/ManifestProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;Lcom/google/android/apps/books/util/pool/Pool;)V

    iput-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mManifestProv:Lcom/google/android/apps/books/provider/ManifestProvidelet;

    .line 148
    new-instance v1, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;

    iget-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mConfigurationProvidelet:Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/ConfigurationProvidelet;)V

    iput-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mVolumeContentProv:Lcom/google/android/apps/books/provider/VolumeContentProvidelet;

    .line 149
    new-instance v1, Lcom/google/android/apps/books/provider/AnnotationsProvidelet;

    iget-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    sget-object v3, Lcom/google/android/apps/books/provider/BooksProvider;->mBuilderPool:Lcom/google/android/apps/books/util/pool/Pool;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/apps/books/provider/AnnotationsProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;Lcom/google/android/apps/books/util/pool/Pool;)V

    iput-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mAnnotationsProv:Lcom/google/android/apps/books/provider/AnnotationsProvidelet;

    .line 150
    new-instance v1, Lcom/google/android/apps/books/provider/SessionKeysProvidelet;

    iget-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    sget-object v3, Lcom/google/android/apps/books/provider/BooksProvider;->mBuilderPool:Lcom/google/android/apps/books/util/pool/Pool;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/apps/books/provider/SessionKeysProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;Lcom/google/android/apps/books/util/pool/Pool;)V

    iput-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mSessionKeysProv:Lcom/google/android/apps/books/provider/SessionKeysProvidelet;

    .line 152
    new-instance v1, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;

    iget-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    sget-object v3, Lcom/google/android/apps/books/provider/BooksProvider;->mBuilderPool:Lcom/google/android/apps/books/util/pool/Pool;

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;Lcom/google/android/apps/books/util/pool/Pool;Landroid/content/ContentProvider;)V

    iput-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;

    .line 154
    new-instance v1, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;

    iget-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;)V

    iput-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalStatesProvidelet:Lcom/google/android/apps/books/provider/LocalStatesProvidelet;

    .line 155
    new-instance v1, Lcom/google/android/apps/books/provider/SuggestProvidelet;

    iget-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-direct {v1, v2}, Lcom/google/android/apps/books/provider/SuggestProvidelet;-><init>(Lcom/google/android/apps/books/provider/database/BooksDatabase;)V

    iput-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mSuggestProvidelet:Lcom/google/android/apps/books/provider/SuggestProvidelet;

    .line 157
    new-instance v1, Lcom/google/android/apps/books/provider/BookSearchProvidelet;

    invoke-direct {v1, v0}, Lcom/google/android/apps/books/provider/BookSearchProvidelet;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mBookSearchProvidelet:Lcom/google/android/apps/books/provider/BookSearchProvidelet;

    .line 159
    new-instance v1, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;

    iget-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;)V

    iput-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalCollectionsProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;

    .line 160
    new-instance v1, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;

    iget-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;)V

    iput-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalCollectionVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;

    .line 162
    new-instance v1, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;

    iget-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;)V

    iput-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalLibraryVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;

    .line 164
    const/4 v1, 0x1

    return v1
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 577
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, e:Ljava/io/FileNotFoundException;
    throw v0

    .line 580
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 581
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "BooksProvider"

    const-string v2, "Problem during openAssetFile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 582
    throw v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const-string v3, "BooksProvider"

    .line 588
    const-string v1, "BooksProvider"

    const/4 v1, 0x2

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    const-string v1, "BooksProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile(uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/BooksProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/apps/books/util/ProviderUtils;->ensureNotOnMainThread(Landroid/content/Context;Landroid/net/Uri;)V

    .line 593
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract;->match(Landroid/net/Uri;)I

    move-result v0

    .line 594
    .local v0, match:I
    sparse-switch v0, :sswitch_data_0

    .line 618
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    throw v1

    .line 597
    :sswitch_0
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->openFile(ILandroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 616
    :goto_0
    return-object v1

    .line 600
    :sswitch_1
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalStatesProvidelet:Lcom/google/android/apps/books/provider/LocalStatesProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->openFile(ILandroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0

    .line 605
    :sswitch_2
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mVolumeContentProv:Lcom/google/android/apps/books/provider/VolumeContentProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->openFile(ILandroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0

    .line 607
    :sswitch_3
    const-string v1, "r"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 611
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/BooksProvider;->ensureResourceContent(Landroid/net/Uri;)V

    .line 613
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mVolumeContentProv:Lcom/google/android/apps/books/provider/VolumeContentProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->openFile(ILandroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0

    .line 616
    :sswitch_4
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalLibraryVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->openFile(ILandroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0

    .line 594
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x96 -> :sswitch_2
        0x97 -> :sswitch_2
        0xca -> :sswitch_2
        0x12e -> :sswitch_3
        0x192 -> :sswitch_2
        0x258 -> :sswitch_1
        0x259 -> :sswitch_1
        0x2d0 -> :sswitch_4
    .end sparse-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const-string v3, "BooksProvider"

    .line 307
    const-string v1, "BooksProvider"

    const/4 v1, 0x2

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    const-string v1, "BooksProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query(uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", projection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", selection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", selectionArgs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sortOrder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/BooksProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/apps/books/util/ProviderUtils;->ensureNotOnMainThread(Landroid/content/Context;Landroid/net/Uri;)V

    .line 314
    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/books/provider/BooksProvider;->dispatchQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 315
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 319
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 321
    :cond_1
    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const-string v3, "BooksProvider"

    .line 458
    const-string v0, "BooksProvider"

    const/4 v0, 0x2

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    const-string v0, "BooksProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update(uri="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", selection="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", selectionArgs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", values="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/BooksProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/apps/books/util/ProviderUtils;->ensureNotOnMainThread(Landroid/content/Context;Landroid/net/Uri;)V

    .line 464
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract;->match(Landroid/net/Uri;)I

    move-result v1

    .line 465
    .local v1, match:I
    sparse-switch v1, :sswitch_data_0

    .line 504
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported URI for update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalStatesProvidelet:Lcom/google/android/apps/books/provider/LocalStatesProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 501
    :goto_0
    return v0

    .line 471
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 480
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mManifestProv:Lcom/google/android/apps/books/provider/ManifestProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/provider/ManifestProvidelet;->update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 483
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mAnnotationsProv:Lcom/google/android/apps/books/provider/AnnotationsProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/provider/AnnotationsProvidelet;->update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 486
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mSessionKeysProv:Lcom/google/android/apps/books/provider/SessionKeysProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/provider/SessionKeysProvidelet;->update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 490
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalCollectionsProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 495
    :sswitch_6
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalCollectionVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 498
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalLibraryVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 501
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mConfigurationProvidelet:Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 465
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_2
        0xcd -> :sswitch_2
        0xce -> :sswitch_2
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x190 -> :sswitch_2
        0x191 -> :sswitch_2
        0x1ae -> :sswitch_3
        0x1af -> :sswitch_3
        0x1c2 -> :sswitch_4
        0x1c3 -> :sswitch_4
        0x258 -> :sswitch_0
        0x259 -> :sswitch_0
        0x2bc -> :sswitch_5
        0x2bd -> :sswitch_5
        0x2be -> :sswitch_5
        0x2c6 -> :sswitch_6
        0x2c7 -> :sswitch_6
        0x2c8 -> :sswitch_6
        0x2d0 -> :sswitch_7
        0x320 -> :sswitch_8
    .end sparse-switch
.end method
