.class public Lcom/google/android/apps/books/sync/VolumesSynchronizable;
.super Ljava/lang/Object;
.source "VolumesSynchronizable.java"

# interfaces
.implements Lcom/google/android/apps/books/sync/Synchronizable;


# static fields
.field static final FULL_INITIAL_VERSION:Ljava/lang/String; = "full-1.0.0"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final LOCAL_VOLUMES_URI:Landroid/net/Uri; = null

.field static final PREVIEW_INITIAL_VERSION:Ljava/lang/String; = "preview-1.0.0"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "VolumesSynchronizable"

.field static final UNKNOWN_VERSION_NUMBER:Ljava/lang/String; = "unknown-version"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final sColumnToClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getVolumeColumnToClass()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->sColumnToClass:Ljava/util/Map;

    .line 44
    invoke-static {}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->createProjection()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->PROJECTION:[Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract;->markLocal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->LOCAL_VOLUMES_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "resolver"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    .line 73
    return-void
.end method

.method private blockContentWipe(Landroid/content/ContentValues;Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;Ljava/lang/String;Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;Ljava/lang/String;)Z
    .locals 16
    .parameter "oldValues"
    .parameter "oldAccess"
    .parameter "oldVersion"
    .parameter "newAccess"
    .parameter "newVersion"

    .prologue
    .line 259
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->shouldHonorTransition(Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;)Z

    move-result v11

    .line 260
    .local v11, honor:Z
    if-eqz v11, :cond_1

    .line 263
    const/4 v2, 0x0

    .line 294
    :cond_0
    :goto_0
    return v2

    .line 266
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 268
    const/4 v2, 0x0

    goto :goto_0

    .line 273
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->getRowUri(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 274
    .local v3, uri:Landroid/net/Uri;
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "preferred_mode"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "section_fraction"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "resource_fraction"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "page_fraction"

    aput-object v5, v4, v2

    .line 279
    .local v4, projection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    move-object v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 281
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3

    .line 282
    const-string v2, "VolumesSynchronizable"

    const-string v3, "shouldHonorTransition() could not move to first, honoring transition"

    .end local v3           #uri:Landroid/net/Uri;
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    const/4 v2, 0x0

    .line 293
    if-eqz v8, :cond_0

    .line 294
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 285
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 286
    .local v13, preferredMode:I
    const/4 v2, 0x1

    invoke-static {v8, v2}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v15

    .line 287
    .local v15, sectionFrac:Ljava/lang/Double;
    const/4 v2, 0x2

    invoke-static {v8, v2}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v14

    .line 288
    .local v14, resourceFrac:Ljava/lang/Double;
    const/4 v2, 0x3

    invoke-static {v8, v2}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v12

    .line 289
    .local v12, pageFrac:Ljava/lang/Double;
    invoke-static {v13, v15, v14, v12}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getDownloadedFraction(ILjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)D

    move-result-wide v9

    .line 291
    .local v9, fraction:D
    invoke-static {v9, v10}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->isFullyDownloaded(D)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 293
    if-eqz v8, :cond_0

    .line 294
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 293
    .end local v3           #uri:Landroid/net/Uri;
    .end local v9           #fraction:D
    .end local v12           #pageFrac:Ljava/lang/Double;
    .end local v13           #preferredMode:I
    .end local v14           #resourceFrac:Ljava/lang/Double;
    .end local v15           #sectionFrac:Ljava/lang/Double;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_4

    .line 294
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method private contentWedged(Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 4
    .parameter "access"
    .parameter "volumeId"
    .parameter "oldValues"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 360
    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->FREE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->PURCHASED:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v3

    .line 362
    .local v0, shouldHaveAllContent:Z
    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->hasForbiddenContent(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    :goto_1
    return v1

    .end local v0           #shouldHaveAllContent:Z
    :cond_1
    move v0, v2

    .line 360
    goto :goto_0

    .restart local v0       #shouldHaveAllContent:Z
    :cond_2
    move v1, v2

    .line 362
    goto :goto_1
.end method

.method private static createProjection()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->sColumnToClass:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->sColumnToClass:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static getNewValue(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "oldValue"
    .parameter "newValues"
    .parameter "columnName"

    .prologue
    .line 306
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 307
    .local v0, hasValue:Z
    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method

.method private static getRowUri(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter "values"

    .prologue
    .line 83
    const-string v1, "volume_id"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, volumeId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/books/provider/BooksContract;->markLocal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private hasForbiddenContent(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 8
    .parameter "volumeId"
    .parameter "oldValues"

    .prologue
    const/4 v7, 0x1

    const-string v6, "content_status"

    .line 314
    const-string v4, "has_text_mode"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 315
    .local v1, hasText:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_2

    .line 316
    :cond_0
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 317
    .local v2, resourcesUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->buildSectionDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 318
    .local v3, sectionsUri:Landroid/net/Uri;
    const-string v4, "content_status"

    invoke-direct {p0, v3, v6}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->hasForbiddenRows(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "content_status"

    invoke-direct {p0, v2, v6}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->hasForbiddenRows(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v4, v7

    .line 324
    .end local v2           #resourcesUri:Landroid/net/Uri;
    .end local v3           #sectionsUri:Landroid/net/Uri;
    :goto_0
    return v4

    .line 323
    :cond_2
    const-string v4, "has_image_mode"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 324
    .local v0, hasImage:Ljava/lang/Integer;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "content_status"

    invoke-direct {p0, v4, v6}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->hasForbiddenRows(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v7

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private hasForbiddenRows(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 10
    .parameter "uri"
    .parameter "contentStatusColumn"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v0, "VolumesSynchronizable"

    .line 332
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "COUNT(*)"

    aput-object v0, v2, v8

    .line 333
    .local v2, PROJECTION:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 336
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    move v7, v9

    .line 337
    .local v7, hasForbidden:Z
    :goto_0
    if-eqz v7, :cond_0

    const-string v0, "VolumesSynchronizable"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "VolumesSynchronizable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " has "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " forbidden rows"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v7

    .end local v7           #hasForbidden:Z
    :cond_1
    move v7, v8

    .line 336
    goto :goto_0

    .line 342
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isInitialVersion(Ljava/lang/String;)Z
    .locals 1
    .parameter "version"

    .prologue
    .line 351
    const-string v0, "full-1.0.0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "preview-1.0.0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private manifestParsed(Ljava/lang/String;)Z
    .locals 5
    .parameter "volumeId"

    .prologue
    .line 371
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->buildSectionDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 372
    .local v3, sectionDirUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 374
    .local v1, pageDirUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v3}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForDirCount(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v2

    .line 375
    .local v2, sectionCount:I
    iget-object v4, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v1}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForDirCount(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v0

    .line 378
    .local v0, pageCount:I
    if-gtz v2, :cond_0

    if-lez v0, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, rows:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/ContentValues;>;"
    return-void
.end method

.method public extractUpdates(Landroid/content/ContentValues;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 28
    .parameter "oldValues"
    .parameter "newValues"

    .prologue
    .line 143
    const-string v4, "viewability"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v23

    .line 144
    .local v23, hasViewability:Z
    const-string v4, "open_access"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    .line 145
    .local v22, hasOpenAccess:Z
    const-string v4, "buy_url"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v21

    .line 146
    .local v21, hasBuyUrl:Z
    move/from16 v0, v23

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    move/from16 v0, v23

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 147
    :cond_0
    const-string v4, "VolumesSynchronizable"

    const-string v5, ""

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incomplete access information in : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/google/android/apps/books/sync/SyncUtil;->extractUpdates(Landroid/content/ContentValues;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v24

    .line 154
    .local v24, rawUpdates:Landroid/content/ContentValues;
    const-string v4, "viewability"

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "open_access"

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "buy_url"

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "content_version"

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v4, v24

    .line 247
    :goto_0
    return-object v4

    .line 160
    :cond_2
    new-instance v25, Landroid/content/ContentValues;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 162
    .local v25, updates:Landroid/content/ContentValues;
    const-string v4, "viewability"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 163
    .local v10, oldViewability:Ljava/lang/String;
    const-string v4, "open_access"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 164
    .local v12, oldOpenAccess:Ljava/lang/String;
    const-string v4, "buy_url"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 165
    .local v11, oldBuyUrl:Ljava/lang/String;
    const-string v4, "content_version"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, oldVersion:Ljava/lang/String;
    invoke-static {v10, v12, v11}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->computeAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    move-result-object v6

    .line 168
    .local v6, oldAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    const-string v4, "viewability"

    move-object v0, v10

    move-object/from16 v1, p2

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->getNewValue(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 169
    .local v13, newViewability:Ljava/lang/String;
    const-string v4, "open_access"

    move-object v0, v12

    move-object/from16 v1, p2

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->getNewValue(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 170
    .local v15, newOpenAccess:Ljava/lang/String;
    const-string v4, "buy_url"

    move-object v0, v11

    move-object/from16 v1, p2

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->getNewValue(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 171
    .local v14, newBuyUrl:Ljava/lang/String;
    const-string v4, "content_version"

    move-object v0, v7

    move-object/from16 v1, p2

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->getNewValue(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 172
    .local v9, newVersion:Ljava/lang/String;
    invoke-static {v13, v15, v14}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->computeAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    move-result-object v8

    .line 174
    .local v8, newAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    const-string v4, "volume_id"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .local v26, volumeId:Ljava/lang/String;
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 175
    invoke-direct/range {v4 .. v9}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->blockContentWipe(Landroid/content/ContentValues;Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;Ljava/lang/String;Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;Ljava/lang/String;)Z

    move-result v16

    .line 177
    .local v16, blockWipe:Z
    if-eqz v16, :cond_7

    .line 179
    if-ne v6, v8, :cond_3

    invoke-static {v10, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v12, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v11, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 183
    :cond_3
    const-string v4, "viewability"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 184
    .local v20, explicitViewability:Ljava/lang/String;
    const-string v4, "open_access"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 185
    .local v18, explicitOpenAccess:Ljava/lang/String;
    const-string v4, "buy_url"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 186
    .local v17, explicitBuyUrl:Ljava/lang/String;
    const-string v4, "content_version"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 187
    .local v19, explicitVersion:Ljava/lang/String;
    const-string v4, "VolumesSynchronizable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not honoring "

    .end local v9           #newVersion:Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " -> "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " for "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "\nviewability: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " -> "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "\nopenAccess: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " -> "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "\nbuyUrl: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " -> "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "\nversion: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " -> "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v17           #explicitBuyUrl:Ljava/lang/String;
    .end local v18           #explicitOpenAccess:Ljava/lang/String;
    .end local v19           #explicitVersion:Ljava/lang/String;
    .end local v20           #explicitViewability:Ljava/lang/String;
    :cond_4
    const-string v4, "viewability"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 198
    const-string v4, "open_access"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 199
    const-string v4, "buy_url"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 200
    if-eqz v7, :cond_6

    .line 202
    const-string v4, "content_version"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 203
    const-string v4, "VolumesSynchronizable"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 204
    const-string v4, "VolumesSynchronizable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Blocking "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    .end local v6           #oldAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and version already known: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; rawUpdates: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; updates: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7           #oldVersion:Ljava/lang/String;
    .end local v8           #newAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .end local v10           #oldViewability:Ljava/lang/String;
    :cond_5
    :goto_1
    move-object/from16 v4, v25

    .line 247
    goto/16 :goto_0

    .line 213
    .restart local v6       #oldAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .restart local v7       #oldVersion:Ljava/lang/String;
    .restart local v8       #newAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .restart local v10       #oldViewability:Ljava/lang/String;
    :cond_6
    const-string v4, "content_version"

    const-string v5, "unknown-version"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v4, "VolumesSynchronizable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting version to unknown-version, but blocking "

    .end local v7           #oldVersion:Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    .end local v6           #oldAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; rawUpdates: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";  updates: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 218
    .restart local v6       #oldAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .restart local v7       #oldVersion:Ljava/lang/String;
    .restart local v9       #newVersion:Ljava/lang/String;
    :cond_7
    if-nez v7, :cond_5

    .line 221
    invoke-static/range {v10 .. v15}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->isContentInvalid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v27

    .line 224
    .local v27, willWipe:Z
    if-nez v27, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->manifestParsed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 227
    :cond_8
    const-string v4, "content_version"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 228
    const-string v4, "VolumesSynchronizable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Allowing "

    .end local v10           #oldViewability:Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    .end local v6           #oldAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (willWipe="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), blocking version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; parsed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->manifestParsed(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; rawUpdates: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; updates: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 232
    .restart local v6       #oldAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .restart local v10       #oldViewability:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->isInitialVersion(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v26

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->contentWedged(Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 235
    :cond_a
    const-string v4, "content_version"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 236
    const-string v4, "VolumesSynchronizable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Disallowing version: "

    .end local v8           #newAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "->"

    .end local v7           #oldVersion:Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " or content wedged: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v26

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->contentWedged(Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v6

    .end local v6           #oldAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; rawUpdates: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; updates: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 244
    .restart local v6       #oldAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .restart local v7       #oldVersion:Ljava/lang/String;
    .restart local v8       #newAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    :cond_b
    const-string v4, "VolumesSynchronizable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Old version unknown, setting version normally for "

    .end local v6           #oldAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public getRowKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "volume_id"

    return-object v0
.end method

.method public getWritableColumnToClass()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 98
    sget-object v0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->sColumnToClass:Ljava/util/Map;

    return-object v0
.end method

.method public insert(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter "values"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/content/ContentValues;)Landroid/database/Cursor;
    .locals 6
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->getRowUri(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryAll()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->LOCAL_VOLUMES_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 3
    .parameter "oldValues"
    .parameter "updateValues"

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->getRowUri(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
