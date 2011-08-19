.class Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;
.super Lcom/google/android/apps/books/provider/NotifyingProvidelet;
.source "LocalVolumesProvidelet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/provider/LocalVolumesProvidelet$Query;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalVolumesProvidelet"

.field private static sNativeVolumeColumns:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sStopWords:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

.field private final mProvider:Landroid/content/ContentProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->buildStopWords()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->sStopWords:Ljava/util/HashSet;

    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->sNativeVolumeColumns:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;Lcom/google/android/apps/books/util/pool/Pool;Landroid/content/ContentProvider;)V
    .locals 0
    .parameter "context"
    .parameter "database"
    .parameter
    .parameter "booksProvider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/books/provider/database/BooksDatabase;",
            "Lcom/google/android/apps/books/util/pool/Pool",
            "<",
            "Lcom/google/android/apps/books/util/SelectionBuilder;",
            ">;",
            "Landroid/content/ContentProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p3, builderPool:Lcom/google/android/apps/books/util/pool/Pool;,"Lcom/google/android/apps/books/util/pool/Pool<Lcom/google/android/apps/books/util/SelectionBuilder;>;"
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/books/provider/NotifyingProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/util/pool/Pool;)V

    .line 81
    iput-object p2, p0, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    .line 82
    iput-object p4, p0, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->mProvider:Landroid/content/ContentProvider;

    .line 83
    return-void
.end method

.method private static buildStopWords()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "an"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "the"

    aput-object v2, v0, v1

    .line 54
    .local v0, stopwords:[Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private clearAnyInvalidContent(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 28
    .parameter "db"
    .parameter "values"
    .parameter "oldCursor"

    .prologue
    .line 279
    const-string v23, "viewability"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    .line 280
    .local v14, hasViewability:Z
    const-string v23, "buy_url"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    .line 281
    .local v11, hasBuyUrl:Z
    const-string v23, "open_access"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    .line 282
    .local v12, hasOpenAccess:Z
    const-string v23, "content_version"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    .line 283
    .local v13, hasVersion:Z
    invoke-static {}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getValuesToClearContentColumns()Landroid/content/ContentValues;

    move-result-object v17

    .line 285
    .local v17, resetValues:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 286
    const/16 v23, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 287
    .local v5, oldViewability:Ljava/lang/String;
    const/16 v23, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 288
    .local v6, oldBuyUrl:Ljava/lang/String;
    const/16 v23, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, oldOpenAccess:Ljava/lang/String;
    const/16 v23, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 292
    .local v16, oldVersion:Ljava/lang/String;
    if-eqz v14, :cond_3

    const-string v23, "viewability"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v8, v23

    .line 294
    .local v8, newViewability:Ljava/lang/String;
    :goto_1
    if-eqz v11, :cond_4

    const-string v23, "buy_url"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v9, v23

    .line 295
    .local v9, newBuyUrl:Ljava/lang/String;
    :goto_2
    if-eqz v12, :cond_5

    const-string v23, "open_access"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v10, v23

    .line 297
    .local v10, newOpenAccess:Ljava/lang/String;
    :goto_3
    const-string v23, "content_version"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 301
    .local v15, newVersion:Ljava/lang/String;
    if-eqz v13, :cond_6

    if-eqz v15, :cond_1

    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    :cond_1
    const/16 v23, 0x1

    move/from16 v21, v23

    .line 304
    .local v21, versionChanged:Z
    :goto_4
    invoke-static/range {v5 .. v10}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->isContentInvalid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_2

    if-eqz v21, :cond_0

    .line 306
    :cond_2
    const/16 v23, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 309
    .local v22, volumeId:Ljava/lang/String;
    const-string v18, "volume_id=?"

    .line 310
    .local v18, selection:Ljava/lang/String;
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v23, 0x0

    aput-object v22, v19, v23

    .line 311
    .local v19, selectionArgs:[Ljava/lang/String;
    const-string v23, "volumes"

    const-string v24, "volume_id=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 313
    .local v20, updateCount:I
    const-string v23, "Bad update count"

    const-wide/16 v24, 0x1

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v23 .. v27}, Lcom/google/android/apps/books/util/Assert;->assertEquals(Ljava/lang/String;JJ)V

    .line 315
    const-string v23, "LocalVolumesProvidelet"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "update(): clearing content for volume "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " due to viewability: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " -> "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", buyUrl: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " -> "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", open access: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " -> "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", version: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " -> "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->clearContentTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v8           #newViewability:Ljava/lang/String;
    .end local v9           #newBuyUrl:Ljava/lang/String;
    .end local v10           #newOpenAccess:Ljava/lang/String;
    .end local v15           #newVersion:Ljava/lang/String;
    .end local v18           #selection:Ljava/lang/String;
    .end local v19           #selectionArgs:[Ljava/lang/String;
    .end local v20           #updateCount:I
    .end local v21           #versionChanged:Z
    .end local v22           #volumeId:Ljava/lang/String;
    :cond_3
    move-object v8, v5

    .line 292
    goto/16 :goto_1

    .restart local v8       #newViewability:Ljava/lang/String;
    :cond_4
    move-object v9, v6

    .line 294
    goto/16 :goto_2

    .restart local v9       #newBuyUrl:Ljava/lang/String;
    :cond_5
    move-object v10, v7

    .line 295
    goto/16 :goto_3

    .line 301
    .restart local v10       #newOpenAccess:Ljava/lang/String;
    .restart local v15       #newVersion:Ljava/lang/String;
    :cond_6
    const/16 v23, 0x0

    move/from16 v21, v23

    goto/16 :goto_4

    .line 324
    .end local v5           #oldViewability:Ljava/lang/String;
    .end local v6           #oldBuyUrl:Ljava/lang/String;
    .end local v7           #oldOpenAccess:Ljava/lang/String;
    .end local v8           #newViewability:Ljava/lang/String;
    .end local v9           #newBuyUrl:Ljava/lang/String;
    .end local v10           #newOpenAccess:Ljava/lang/String;
    .end local v15           #newVersion:Ljava/lang/String;
    .end local v16           #oldVersion:Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private clearContentTables(Ljava/lang/String;)V
    .locals 5
    .parameter "volumeId"

    .prologue
    const/4 v4, 0x0

    .line 327
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getContentUris(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 328
    .local v1, contentUris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 331
    .local v0, contentUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->mProvider:Landroid/content/ContentProvider;

    invoke-virtual {v3, v0, v4, v4}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 333
    .end local v0           #contentUri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private deleteVolumeAndContent(Lcom/google/android/apps/books/util/SelectionBuilder;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 8
    .parameter "builder"
    .parameter "db"

    .prologue
    const-string v5, "volumes"

    .line 358
    const-string v3, "volumes"

    sget-object v3, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet$Query;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v5, v3, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 361
    .local v1, oldCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 364
    const-string v3, "volumes"

    invoke-virtual {p1, p2, v3}, Lcom/google/android/apps/books/util/SelectionBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    .line 365
    .local v0, count:I
    const-string v3, "Bad delete count"

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    int-to-long v4, v4

    int-to-long v6, v0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/google/android/apps/books/util/Assert;->assertEquals(Ljava/lang/String;JJ)V

    .line 368
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, volumeId:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->clearContentTables(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 374
    .end local v0           #count:I
    .end local v2           #volumeId:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3

    .restart local v0       #count:I
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0
.end method

.method private static declared-synchronized getNativeVolumeColumns()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    const-class v1, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->sNativeVolumeColumns:Ljava/util/Set;

    if-nez v2, :cond_0

    .line 93
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 94
    .local v0, nativeVolumeColumns:Lcom/google/common/collect/ImmutableSet$Builder;,"Lcom/google/common/collect/ImmutableSet$Builder<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getVolumeColumnToClass()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 95
    const-string v2, "_count"

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 96
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->sNativeVolumeColumns:Ljava/util/Set;

    .line 98
    .end local v0           #nativeVolumeColumns:Lcom/google/common/collect/ImmutableSet$Builder;,"Lcom/google/common/collect/ImmutableSet$Builder<Ljava/lang/String;>;"
    :cond_0
    sget-object v2, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->sNativeVolumeColumns:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v2

    .line 92
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private initSelectionBuilder(Lcom/google/android/apps/books/util/SelectionBuilder;ILandroid/net/Uri;)V
    .locals 4
    .parameter "builder"
    .parameter "match"
    .parameter "uri"

    .prologue
    .line 395
    packed-switch p2, :pswitch_data_0

    .line 402
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :pswitch_0
    const-string v0, "volume_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 404
    :pswitch_1
    return-void

    .line 395
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private normalizeAuthorForSort(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "author"

    .prologue
    const-string v3, " "

    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 211
    const-string v1, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 212
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 216
    :cond_0
    return-object p1
.end method

.method private normalizeTitleForSort(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "title"

    .prologue
    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 190
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 191
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->sStopWords:Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 194
    :cond_0
    return-object p1
.end method

.method private updateInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Lcom/google/android/apps/books/util/SelectionBuilder;)I
    .locals 7
    .parameter "db"
    .parameter "values"
    .parameter "builder"

    .prologue
    const-string v4, "volumes"

    .line 252
    const-string v2, "volumes"

    sget-object v2, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet$Query;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p3, p1, v4, v2, v3}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 255
    .local v1, oldCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 258
    const-string v2, "volumes"

    invoke-virtual {p3, p1, v2, p2}, Lcom/google/android/apps/books/util/SelectionBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 259
    .local v0, count:I
    const-string v2, "Bad update count"

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    int-to-long v3, v3

    int-to-long v5, v0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/android/apps/books/util/Assert;->assertEquals(Ljava/lang/String;JJ)V

    .line 261
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->clearAnyInvalidContent(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    .end local v0           #count:I
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method


# virtual methods
.method public deleteWithoutNotify(ILandroid/net/Uri;Lcom/google/android/apps/books/util/SelectionBuilder;)I
    .locals 3
    .parameter "match"
    .parameter "uri"
    .parameter "builder"

    .prologue
    .line 345
    iget-object v2, p0, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v2}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 346
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p3, p1, p2}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->initSelectionBuilder(Lcom/google/android/apps/books/util/SelectionBuilder;ILandroid/net/Uri;)V

    .line 347
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 349
    :try_start_0
    invoke-direct {p0, p3, v1}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->deleteVolumeAndContent(Lcom/google/android/apps/books/util/SelectionBuilder;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    .line 350
    .local v0, count:I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    .end local v0           #count:I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public insertWithoutNotify(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter "match"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 144
    const/16 v6, 0x64

    if-eq p1, v6, :cond_0

    .line 145
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad match "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 149
    :cond_0
    const-string v6, "price_amount"

    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 150
    const-string v6, "price_currency"

    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 151
    const-string v6, "suggested_price_amount"

    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 152
    const-string v6, "suggested_price_currency"

    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 154
    const-string v6, "title"

    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, title:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 156
    invoke-direct {p0, v4}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->normalizeTitleForSort(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, sortableTitle:Ljava/lang/String;
    const-string v6, "sortable_title"

    invoke-virtual {p3, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .end local v3           #sortableTitle:Ljava/lang/String;
    :cond_1
    const-string v6, "creator"

    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, author:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 163
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->normalizeAuthorForSort(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, sortableAuthor:Ljava/lang/String;
    const-string v6, "sortable_creator"

    invoke-virtual {p3, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .end local v2           #sortableAuthor:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v6}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 168
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "volumes"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 170
    const-string v6, "volume_id"

    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, volumeId:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    return-object v6
.end method

.method public openFile(ILandroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "match"
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 385
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public queryWithoutNotify(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/books/util/SelectionBuilder;)Landroid/database/Cursor;
    .locals 18
    .parameter "match"
    .parameter "uri"
    .parameter "projection"
    .parameter "sortOrder"
    .parameter "builder"

    .prologue
    .line 115
    const/16 v17, 0x0

    .line 116
    .local v17, projectionContainsJoinColumn:Z
    if-eqz p3, :cond_0

    .line 117
    invoke-static {}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->getNativeVolumeColumns()Ljava/util/Set;

    move-result-object v16

    .line 118
    .local v16, nativeVolumeColumns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v12, p3

    .local v12, arr$:[Ljava/lang/String;
    array-length v15, v12

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    if-ge v14, v15, :cond_0

    aget-object v13, v12, v14

    .line 119
    .local v13, column:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object v1, v13

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 120
    const/16 v17, 0x1

    .line 125
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v13           #column:Ljava/lang/String;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v16           #nativeVolumeColumns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    if-eqz v17, :cond_2

    const-string v4, "view_volumes"

    move-object v6, v4

    .line 128
    .local v6, table:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 129
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->initSelectionBuilder(Lcom/google/android/apps/books/util/SelectionBuilder;ILandroid/net/Uri;)V

    .line 131
    const-string v4, "_count"

    const-string v7, "COUNT(*)"

    move-object/from16 v0, p5

    move-object v1, v4

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->map(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 133
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p5

    move-object/from16 v7, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v4 .. v11}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    return-object v4

    .line 118
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v6           #table:Ljava/lang/String;
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v13       #column:Ljava/lang/String;
    .restart local v14       #i$:I
    .restart local v15       #len$:I
    .restart local v16       #nativeVolumeColumns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 125
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v13           #column:Ljava/lang/String;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v16           #nativeVolumeColumns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string v4, "volumes"

    move-object v6, v4

    goto :goto_1
.end method

.method public updateWithoutNotify(ILandroid/net/Uri;Landroid/content/ContentValues;Lcom/google/android/apps/books/util/SelectionBuilder;)I
    .locals 3
    .parameter "match"
    .parameter "uri"
    .parameter "values"
    .parameter "builder"

    .prologue
    .line 230
    iget-object v2, p0, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v2}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 231
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p4, p1, p2}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->initSelectionBuilder(Lcom/google/android/apps/books/util/SelectionBuilder;ILandroid/net/Uri;)V

    .line 234
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 236
    :try_start_0
    invoke-direct {p0, v1, p3, p4}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->updateInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Lcom/google/android/apps/books/util/SelectionBuilder;)I

    move-result v0

    .line 237
    .local v0, count:I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    .end local v0           #count:I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method
