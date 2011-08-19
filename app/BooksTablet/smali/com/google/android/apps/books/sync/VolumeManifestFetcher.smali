.class public Lcom/google/android/apps/books/sync/VolumeManifestFetcher;
.super Ljava/lang/Object;
.source "VolumeManifestFetcher.java"

# interfaces
.implements Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/sync/VolumeManifestFetcher$1;,
        Lcom/google/android/apps/books/sync/VolumeManifestFetcher$Attrs;,
        Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ManifestTags;,
        Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageTags;,
        Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentTags;,
        Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterTags;,
        Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;,
        Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;,
        Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    }
.end annotation


# static fields
.field static final FLAGS_VALUE_FORBIDDEN:Ljava/lang/String; = "16"

.field private static final PROFILE_FETCH:Z = false

.field private static final TAG:Ljava/lang/String; = "VolumeManifestFetcher"


# instance fields
.field private final mConfig:Lcom/google/android/apps/books/util/Config;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/net/ResponseGetter;Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/Config;)V
    .locals 1
    .parameter "responseGetter"
    .parameter "resolver"
    .parameter "config"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "missing responseGetter"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 72
    const-string v0, "missing resolver"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->mResolver:Landroid/content/ContentResolver;

    .line 73
    const-string v0, "missing config"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/Config;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    .line 74
    return-void
.end method

.method private static clearVolumeColumns(Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .locals 4
    .parameter "volumeId"

    .prologue
    .line 624
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 625
    .local v1, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getValuesToClearManifestContentColumns()Landroid/content/ContentValues;

    move-result-object v2

    .line 626
    .local v2, values:Landroid/content/ContentValues;
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 627
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 628
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    return-object v3
.end method

.method private parseChapter(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    .locals 12
    .parameter "parser"
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-string v11, "int"

    .line 583
    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->buildChapterDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 584
    .local v6, uri:Landroid/net/Uri;
    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 587
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v3, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;

    invoke-direct {v3, v10}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;-><init>(Lcom/google/android/apps/books/sync/VolumeManifestFetcher$1;)V

    .line 588
    .local v3, result:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    iput-object v0, v3, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->builder:Landroid/content/ContentProviderOperation$Builder;

    .line 590
    const-string v8, "volume_id"

    invoke-virtual {v0, v8, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 593
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 595
    .local v2, depth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, type:I
    const/4 v8, 0x3

    if-ne v5, v8, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v2, :cond_5

    :cond_1
    const/4 v8, 0x1

    if-eq v5, v8, :cond_5

    .line 596
    const/4 v8, 0x2

    if-ne v5, v8, :cond_0

    .line 597
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 598
    .local v4, tag:Ljava/lang/String;
    const-string v8, "label"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 599
    const-string v8, "data"

    invoke-interface {p1, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 600
    .local v7, value:Ljava/lang/String;
    const-string v8, "title"

    invoke-virtual {v0, v8, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 601
    .end local v7           #value:Ljava/lang/String;
    :cond_2
    const-string v8, "segment_index"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 602
    const-string v8, "int"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 603
    .restart local v7       #value:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->segmentIndex:I

    goto :goto_0

    .line 604
    .end local v7           #value:Ljava/lang/String;
    :cond_3
    const-string v8, "page_index"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 605
    const-string v8, "int"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 606
    .restart local v7       #value:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->startPageIndex:I

    goto :goto_0

    .line 607
    .end local v7           #value:Ljava/lang/String;
    :cond_4
    const-string v8, "order"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 608
    const-string v8, "int"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, chapterIds:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 610
    .local v7, value:I
    iput-object v1, v3, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->chapterId:Ljava/lang/String;

    .line 611
    const-string v8, "chapter_id"

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 612
    const-string v8, "chapter_order"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 617
    .end local v1           #chapterIds:Ljava/lang/String;
    .end local v4           #tag:Ljava/lang/String;
    .end local v7           #value:I
    :cond_5
    return-object v3
.end method

.method private parsePage(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;
    .locals 18
    .parameter "parser"
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    new-instance v7, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;

    const/16 v16, 0x0

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;-><init>(Lcom/google/android/apps/books/sync/VolumeManifestFetcher$1;)V

    .line 510
    .local v7, info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;
    invoke-static/range {p2 .. p2}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 511
    .local v10, pagesDirUri:Landroid/net/Uri;
    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 514
    .local v3, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v16, "volume_id"

    move-object v0, v3

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 516
    const/4 v9, 0x0

    .line 519
    .local v9, pageId:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 520
    .local v5, depth:I
    const/4 v6, 0x0

    .line 521
    .local v6, hasSrc:Z
    const/4 v8, 0x0

    .line 523
    .local v8, isForbidden:Z
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, type:I
    const/16 v16, 0x3

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v16

    move/from16 v0, v16

    move v1, v5

    if-le v0, v1, :cond_7

    :cond_1
    const/16 v16, 0x1

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_7

    .line 524
    const/16 v16, 0x2

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 525
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 526
    .local v12, tag:Ljava/lang/String;
    const-string v16, "pid"

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 527
    const/16 v16, 0x0

    const-string v17, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 528
    const-string v16, "page_id"

    move-object v0, v3

    move-object/from16 v1, v16

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 529
    :cond_2
    const-string v16, "src"

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 530
    const/16 v16, 0x0

    const-string v17, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 531
    .local v14, url:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 534
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 536
    .local v11, relative:Landroid/net/Uri;
    const-string v16, "remote_url"

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 537
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 539
    .end local v11           #relative:Landroid/net/Uri;
    .end local v14           #url:Ljava/lang/String;
    :cond_3
    const-string v16, "order"

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 540
    const/16 v16, 0x0

    const-string v17, "int"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 541
    .local v15, value:I
    const-string v16, "page_order"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v0, v3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 542
    const-string v16, "Null pageId"

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-static {v0, v1}, Lcom/google/android/apps/books/util/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 543
    iput-object v9, v7, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;->pageId:Ljava/lang/String;

    goto/16 :goto_0

    .line 544
    .end local v15           #value:I
    :cond_4
    const-string v16, "title"

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 545
    const/16 v16, 0x0

    const-string v17, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 546
    .local v15, value:Ljava/lang/String;
    const-string v16, "title"

    move-object v0, v3

    move-object/from16 v1, v16

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_0

    .line 547
    .end local v15           #value:Ljava/lang/String;
    :cond_5
    const-string v16, "flags"

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 548
    const/16 v16, 0x0

    const-string v17, "int"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 549
    .restart local v15       #value:Ljava/lang/String;
    const-string v16, "16"

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    or-int v8, v8, v16

    .line 550
    goto/16 :goto_0

    .end local v15           #value:Ljava/lang/String;
    :cond_6
    const-string v16, "text_segment"

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 551
    const/16 v16, 0x0

    const-string v17, "int"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 552
    .restart local v15       #value:Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object v1, v7

    iput v0, v1, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;->segmentIndex:I

    goto/16 :goto_0

    .line 557
    .end local v12           #tag:Ljava/lang/String;
    .end local v15           #value:Ljava/lang/String;
    :cond_7
    const-string v16, "missing pageId"

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-static {v0, v1}, Lcom/google/android/apps/books/util/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 561
    if-eqz v8, :cond_8

    .line 562
    const/4 v4, 0x1

    .line 568
    .local v4, contentStatus:I
    :goto_1
    const-string v16, "content_status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v0, v3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 570
    iput-boolean v8, v7, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;->isForbidden:Z

    .line 571
    iput-object v3, v7, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;->builder:Landroid/content/ContentProviderOperation$Builder;

    .line 573
    return-object v7

    .line 563
    .end local v4           #contentStatus:I
    :cond_8
    if-eqz v6, :cond_9

    .line 564
    const/4 v4, 0x2

    .restart local v4       #contentStatus:I
    goto :goto_1

    .line 566
    .end local v4           #contentStatus:I
    :cond_9
    const/4 v4, 0x0

    .restart local v4       #contentStatus:I
    goto :goto_1
.end method

.method private parseSegment(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    .locals 18
    .parameter "parser"
    .parameter "volumeId"
    .parameter "sectionIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    new-instance v7, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;

    const/16 v16, 0x0

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;-><init>(Lcom/google/android/apps/books/sync/VolumeManifestFetcher$1;)V

    .line 432
    .local v7, info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    invoke-static/range {p2 .. p2}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->buildSectionDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 433
    .local v9, sectionDirUri:Landroid/net/Uri;
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 439
    .local v3, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v16, "volume_id"

    move-object v0, v3

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 440
    const-string v16, "section_order"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v0, v3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 442
    const/4 v10, 0x0

    .line 443
    .local v10, sectionId:Ljava/lang/String;
    const/4 v11, 0x0

    .line 446
    .local v11, startPosition:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 447
    .local v5, depth:I
    const/4 v6, 0x0

    .line 448
    .local v6, hasLink:Z
    const/4 v8, 0x0

    .line 450
    .local v8, isForbidden:Z
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, type:I
    const/16 v16, 0x3

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v16

    move/from16 v0, v16

    move v1, v5

    if-le v0, v1, :cond_8

    :cond_1
    const/16 v16, 0x1

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_8

    .line 451
    const/16 v16, 0x2

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 452
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 453
    .local v12, tag:Ljava/lang/String;
    const-string v16, "label"

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 454
    const/16 v16, 0x0

    const-string v17, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 455
    const-string v16, "section_id"

    move-object v0, v3

    move-object/from16 v1, v16

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 456
    iput-object v10, v7, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;->segmentId:Ljava/lang/String;

    goto :goto_0

    .line 457
    :cond_2
    const-string v16, "num_pages"

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 458
    const/16 v16, 0x0

    const-string v17, "int"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 459
    .local v15, value:I
    const-string v16, "page_count"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v0, v3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 460
    .end local v15           #value:I
    :cond_3
    const-string v16, "start_position"

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 461
    const/16 v16, 0x0

    const-string v17, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 462
    const-string v16, "start_position"

    move-object v0, v3

    move-object/from16 v1, v16

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_0

    .line 463
    :cond_4
    const-string v16, "link"

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 464
    const/16 v16, 0x0

    const-string v17, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 465
    .local v14, url:Ljava/lang/String;
    const-string v16, "remote_url"

    move-object v0, v3

    move-object/from16 v1, v16

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 466
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_5

    const/16 v16, 0x1

    :goto_1
    or-int v6, v6, v16

    .line 467
    goto/16 :goto_0

    .line 466
    :cond_5
    const/16 v16, 0x0

    goto :goto_1

    .line 467
    .end local v14           #url:Ljava/lang/String;
    :cond_6
    const-string v16, "title"

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 468
    const/16 v16, 0x0

    const-string v17, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 469
    .local v15, value:Ljava/lang/String;
    const-string v16, "title"

    move-object v0, v3

    move-object/from16 v1, v16

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_0

    .line 470
    .end local v15           #value:Ljava/lang/String;
    :cond_7
    const-string v16, "not_viewable"

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 471
    const/16 v16, 0x0

    const-string v17, "bool"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 472
    .restart local v15       #value:Ljava/lang/String;
    const-string v16, "true"

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    or-int v8, v8, v16

    goto/16 :goto_0

    .line 478
    .end local v12           #tag:Ljava/lang/String;
    .end local v15           #value:Ljava/lang/String;
    :cond_8
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "missing sectionId for segment "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " in volume "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/google/android/apps/books/util/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 481
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "missing startPosition for segment "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " in volume "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-static {v0, v1}, Lcom/google/android/apps/books/util/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 486
    if-eqz v8, :cond_9

    .line 487
    const/4 v4, 0x1

    .line 493
    .local v4, contentStatus:I
    :goto_2
    const-string v16, "content_status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v0, v3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 495
    iput-boolean v8, v7, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;->isForbidden:Z

    .line 496
    iput-object v3, v7, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;->builder:Landroid/content/ContentProviderOperation$Builder;

    .line 498
    return-object v7

    .line 488
    .end local v4           #contentStatus:I
    :cond_9
    if-eqz v6, :cond_a

    .line 489
    const/4 v4, 0x2

    .restart local v4       #contentStatus:I
    goto :goto_2

    .line 491
    .end local v4           #contentStatus:I
    :cond_a
    const/4 v4, 0x0

    .restart local v4       #contentStatus:I
    goto :goto_2
.end method

.method private parseVolumeManifest(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 27
    .parameter "volumeId"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 175
    .local v10, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->clearVolumeColumns(Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getManifestContentUris(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/net/Uri;

    .line 177
    .local v24, uri:Landroid/net/Uri;
    invoke-static/range {v24 .. v24}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    .end local v24           #uri:Landroid/net/Uri;
    :cond_0
    const/16 v19, 0x0

    .line 181
    .local v19, segmentIndex:I
    const/4 v11, 0x0

    .line 182
    .local v11, chapterIndex:I
    const/16 v17, 0x0

    .line 184
    .local v17, pageIndex:I
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 189
    .local v6, chapterIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;>;"
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 190
    .local v7, segmentIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;>;"
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 194
    .local v8, segmentIndexToChapterInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;>;"
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 196
    .local v9, pageOrderToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;>;"
    const/16 v21, 0x0

    .line 197
    .local v21, textModeAvailable:Z
    const/4 v15, 0x0

    .line 198
    .local v15, imageModeAvailable:Z
    const/16 v26, 0x0

    .line 201
    .local v26, version:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/google/android/apps/books/service/ContentFetchService;->newPullParserLocked()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v18

    .line 202
    .local v18, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 205
    :cond_1
    :goto_1
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v23

    .local v23, type:I
    const/4 v5, 0x1

    move/from16 v0, v23

    move v1, v5

    if-eq v0, v1, :cond_a

    .line 206
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 207
    .local v20, tag:Ljava/lang/String;
    const/4 v5, 0x2

    move/from16 v0, v23

    move v1, v5

    if-ne v0, v1, :cond_1

    .line 208
    const-string v5, "segment"

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 209
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->parseSegment(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;

    move-result-object v16

    .line 210
    .local v16, info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    move-object v0, v7

    move/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    add-int/lit8 v19, v19, 0x1

    .line 212
    goto :goto_1

    .end local v16           #info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    :cond_2
    const-string v5, "toc_entry"

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->parseChapter(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;

    move-result-object v16

    .line 217
    .local v16, info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->segmentIndex:I

    move v5, v0

    move-object v0, v8

    move v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 218
    move-object v0, v6

    move v1, v11

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    add-int/lit8 v11, v11, 0x1

    .line 220
    goto :goto_1

    .end local v16           #info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    :cond_3
    const-string v5, "page"

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 221
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->parsePage(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;

    move-result-object v16

    .line 222
    .local v16, info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;
    move-object v0, v9

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 223
    add-int/lit8 v17, v17, 0x1

    .line 224
    goto :goto_1

    .end local v16           #info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;
    :cond_4
    const-string v5, "preferred_mode"

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 225
    const/4 v5, 0x0

    const-string v12, "int"

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v12

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 226
    .local v25, value:I
    const-string v5, "preferred_mode"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->updateVolumeColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 242
    .end local v18           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v20           #tag:Ljava/lang/String;
    .end local v23           #type:I
    .end local v25           #value:I
    :catch_0
    move-exception v5

    move-object v13, v5

    .line 243
    .local v13, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v22, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem parsing manifest for volumeId: "

    .end local v6           #chapterIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;>;"
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 245
    .local v22, thrown:Ljava/net/ProtocolException;
    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/net/ProtocolException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 246
    throw v22

    .line 227
    .end local v13           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v22           #thrown:Ljava/net/ProtocolException;
    .restart local v6       #chapterIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;>;"
    .restart local v18       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20       #tag:Ljava/lang/String;
    .restart local v23       #type:I
    :cond_5
    :try_start_1
    const-string v5, "available_mode"

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 228
    const/4 v5, 0x0

    const-string v12, "int"

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v12

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 229
    .restart local v25       #value:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->updateAvailableMode(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 230
    const/4 v5, 0x2

    move/from16 v0, v25

    move v1, v5

    if-ne v0, v1, :cond_6

    const/4 v5, 0x1

    :goto_2
    or-int v21, v21, v5

    .line 231
    const/4 v5, 0x1

    move/from16 v0, v25

    move v1, v5

    if-ne v0, v1, :cond_7

    const/4 v5, 0x1

    :goto_3
    or-int/2addr v15, v5

    .line 232
    goto/16 :goto_1

    .line 230
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 231
    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    .line 232
    .end local v25           #value:I
    :cond_8
    const-string v5, "volume_version"

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 233
    const/4 v5, 0x0

    const-string v12, "data"

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v12

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 234
    const-string v5, "content_version"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->updateVolumeColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 235
    :cond_9
    const-string v5, "first_chapter_start_segment"

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 236
    const-string v12, "first_chapter_start_section"

    .line 237
    .local v12, columnName:Ljava/lang/String;
    const/4 v5, 0x0

    const-string v13, "int"

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v13

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 238
    .restart local v25       #value:I
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->updateVolumeColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 249
    .end local v12           #columnName:Ljava/lang/String;
    .end local v20           #tag:Ljava/lang/String;
    .end local v25           #value:I
    :cond_a
    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->verifyTextModeConsistency(Ljava/lang/String;ZLandroid/util/SparseArray;)V

    .line 250
    move-object/from16 v0, p1

    move v1, v15

    move-object v2, v9

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->verifyImageModeConsistency(Ljava/lang/String;ZLandroid/util/SparseArray;)V

    .line 251
    if-nez v26, :cond_b

    .line 257
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #chapterIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;>;"
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing content version for "

    .end local v7           #segmentIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;>;"
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 261
    .restart local v6       #chapterIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;>;"
    .restart local v7       #segmentIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;>;"
    :cond_b
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->processPartialChapters(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/ArrayList;)V

    .line 263
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->unsparsifyChapters(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 268
    if-eqz v21, :cond_c

    .line 270
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v7

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->processPartialSegments(Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    :cond_c
    move-object/from16 v5, p0

    .line 274
    invoke-direct/range {v5 .. v10}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->processPartialPages(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/ArrayList;)V

    .line 279
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v6, "com.google.android.apps.books"

    .end local v6           #chapterIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;>;"
    invoke-virtual {v5, v6, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 280
    const-string v5, "VolumeManifestFetcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finished parsing "

    .end local v7           #segmentIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;>;"
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " manifest: found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " chapters, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " segments, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pages; textMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 289
    return-void

    .line 284
    :catch_1
    move-exception v5

    move-object v13, v5

    .line 285
    .local v13, e:Landroid/content/OperationApplicationException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Problem inserting update"

    invoke-direct {v5, v6, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 286
    .end local v13           #e:Landroid/content/OperationApplicationException;
    :catch_2
    move-exception v5

    move-object v13, v5

    .line 287
    .local v13, e:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Problem inserting update"

    invoke-direct {v5, v6, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private processPartialChapters(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    .local p1, segmentIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;>;"
    .local p2, segementIndexToChapterInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;>;"
    .local p3, pageOrderToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;>;"
    .local p4, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 306
    .local v1, chapterCount:I
    const/4 v2, 0x0

    .end local p0
    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 307
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;

    .line 308
    .local v0, chapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    iget v5, v0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->startPageIndex:I

    invoke-virtual {p3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;

    iget-object v3, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;->pageId:Ljava/lang/String;

    .line 309
    .local v3, pageId:Ljava/lang/String;
    const-string v5, "missing/null pageId"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/google/android/apps/books/util/Assert;->assertFalse(Ljava/lang/String;Z)V

    .line 310
    iget-object v5, v0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->builder:Landroid/content/ContentProviderOperation$Builder;

    const-string v6, "start_page_id"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 306
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    .end local v0           #chapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    .end local v3           #pageId:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 315
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;

    .line 316
    .restart local v0       #chapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    iget v5, v0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->segmentIndex:I

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;

    .line 317
    .local v4, segment:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    if-nez v4, :cond_1

    .line 318
    new-instance v5, Ljava/net/ProtocolException;

    const-string v6, "Manifest parse error: no segment name for index"

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 321
    :cond_1
    iget-object v5, v0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->builder:Landroid/content/ContentProviderOperation$Builder;

    const-string v6, "start_section_id"

    iget-object v7, v4, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;->segmentId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 323
    iget-object v5, v0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->builder:Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 325
    .end local v0           #chapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    .end local v4           #segment:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    :cond_2
    return-void
.end method

.method private processPartialPages(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p1, chapterIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;>;"
    .local p2, segmentIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;>;"
    .local p3, segmentIndexToChapterInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;>;"
    .local p4, pageOrderToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;>;"
    .local p5, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v2, 0x0

    .line 388
    .local v2, currentChapterIndex:I
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;

    .line 389
    .local v1, currentChapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;

    .line 391
    .local v5, nextChapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 392
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 393
    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;

    .line 395
    .local v4, info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;
    iget v7, v4, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;->segmentIndex:I

    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;

    .line 396
    .local v6, segmentInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    if-eqz v6, :cond_0

    .line 397
    iget-object v7, v4, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;->builder:Landroid/content/ContentProviderOperation$Builder;

    const-string v8, "first_section_id"

    iget-object v9, v6, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;->segmentId:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 398
    iget-object v7, v4, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;->builder:Landroid/content/ContentProviderOperation$Builder;

    const-string v8, "last_section_id"

    iget-object v9, v6, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;->segmentId:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 402
    :cond_0
    if-eqz v5, :cond_1

    iget v7, v5, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->startPageIndex:I

    if-ne v7, v3, :cond_1

    .line 403
    add-int/lit8 v2, v2, 0x1

    .line 404
    move-object v1, v5

    .line 405
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #nextChapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    check-cast v5, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;

    .line 408
    .restart local v5       #nextChapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    :cond_1
    if-eqz v1, :cond_2

    .line 409
    iget-object v7, v4, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;->builder:Landroid/content/ContentProviderOperation$Builder;

    const-string v8, "first_chapter_id"

    iget-object v9, v1, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->chapterId:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 413
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    iget v7, v5, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->startPageIndex:I

    if-ne v7, v3, :cond_3

    .line 414
    add-int/lit8 v2, v2, 0x1

    .line 415
    move-object v1, v5

    .line 416
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #nextChapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    check-cast v5, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;

    .restart local v5       #nextChapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    goto :goto_1

    .line 419
    :cond_3
    iget-object v7, v4, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;->builder:Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 421
    .end local v4           #info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;
    .end local v6           #segmentInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    :cond_4
    return-void
.end method

.method private processPartialSegments(Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p2, segmentIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;>;"
    .local p3, segmentIndexToChapterInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;>;"
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 365
    .local v3, segmentCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 366
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;

    .line 367
    .local v4, segmentInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;

    .line 368
    .local v1, chapterInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    iget-object v0, v4, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;->builder:Landroid/content/ContentProviderOperation$Builder;

    .line 369
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v5, "chapter_id"

    iget-object v6, v1, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->chapterId:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 371
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v1           #chapterInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    .end local v4           #segmentInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    :cond_0
    return-void
.end method

.method private unsparsifyChapters(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, segmentIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;>;"
    .local p2, segmentIndexToChapterInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;>;"
    const/4 v2, 0x0

    .line 337
    .local v2, prevChapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 338
    .local v3, segmentCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 339
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;

    .line 340
    .local v0, chapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 341
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "missing chapter for first section"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 342
    :cond_0
    if-nez v0, :cond_1

    .line 344
    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    :cond_1
    move-object v2, v0

    goto :goto_1

    .line 350
    .end local v0           #chapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    :cond_2
    return-void
.end method

.method private updateAvailableMode(Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 5
    .parameter "volumeId"
    .parameter "mode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 655
    .local p3, output:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 656
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 657
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    packed-switch p2, :pswitch_data_0

    .line 665
    const-string v2, "VolumeManifestFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :goto_0
    return-void

    .line 659
    :pswitch_0
    const-string v2, "has_image_mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 668
    :goto_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 662
    :pswitch_1
    const-string v2, "has_text_mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 657
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateVolumeColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation;
    .locals 3
    .parameter "volumeId"
    .parameter "columnName"
    .parameter "value"

    .prologue
    .line 637
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 638
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 639
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 640
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    return-object v2
.end method

.method private static verifyImageModeConsistency(Ljava/lang/String;ZLandroid/util/SparseArray;)V
    .locals 7
    .parameter "volumeId"
    .parameter "modeAvailable"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 702
    .local p2, pageOrderToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;>;"
    if-eqz p1, :cond_2

    .line 703
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 704
    .local v2, pageCount:I
    const/4 v0, 0x0

    .line 705
    .local v0, allowedCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 706
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;

    .line 707
    .local v3, pageInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;
    iget-boolean v4, v3, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;->isForbidden:Z

    if-nez v4, :cond_0

    .line 708
    add-int/lit8 v0, v0, 0x1

    .line 705
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 711
    .end local v3           #pageInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;
    :cond_1
    if-nez v0, :cond_2

    .line 712
    const-string v4, "VolumeManifestFetcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Image mode allowed, but no pages allowed in volume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    .end local v0           #allowedCount:I
    .end local v1           #i:I
    .end local v2           #pageCount:I
    :cond_2
    return-void
.end method

.method private static verifyTextModeConsistency(Ljava/lang/String;ZLandroid/util/SparseArray;)V
    .locals 7
    .parameter "volumeId"
    .parameter "modeAvailable"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 679
    .local p2, segmentIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;>;"
    if-eqz p1, :cond_2

    .line 680
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 681
    .local v2, segmentCount:I
    const/4 v0, 0x0

    .line 682
    .local v0, allowedCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 683
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;

    .line 684
    .local v3, segmentInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    iget-boolean v4, v3, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;->isForbidden:Z

    if-nez v4, :cond_0

    .line 685
    add-int/lit8 v0, v0, 0x1

    .line 682
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 688
    .end local v3           #segmentInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    :cond_1
    if-nez v0, :cond_2

    .line 689
    const-string v4, "VolumeManifestFetcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Text mode allowed, but no segments allowed in volume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    .end local v0           #allowedCount:I
    .end local v1           #i:I
    .end local v2           #segmentCount:I
    :cond_2
    return-void
.end method


# virtual methods
.method public fetch(Landroid/net/Uri;Landroid/accounts/Account;)V
    .locals 10
    .parameter "uri"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, volumeId:Ljava/lang/String;
    const-string v7, "VolumeManifestFetcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fetching vid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v7, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    invoke-virtual {v7}, Lcom/google/android/apps/books/util/Config;->getSourceParam()Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, sourceParam:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "books"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "volumes"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "content"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "manifest"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "alt"

    const-string v9, "xml"

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "source"

    invoke-virtual {v7, v8, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 96
    .local v2, manifestUrl:Landroid/net/Uri;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 97
    .local v3, req:Lorg/apache/http/client/methods/HttpGet;
    invoke-static {v3, p2}, Lcom/google/android/apps/books/app/BooksApplication$AccountParams;->setAccount(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;)V

    .line 98
    const-string v7, "Accept"

    const-string v8, "application/xml,application/xhtml+xml,text/xml"

    invoke-virtual {v3, v7, v8}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v7, "Accept-Charset"

    const-string v8, "utf-8"

    invoke-virtual {v3, v7, v8}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v7, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    const/4 v8, 0x0

    new-array v8, v8, [I

    invoke-virtual {v7, v3, p2, v8}, Lcom/google/android/apps/books/net/ResponseGetter;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 102
    .local v4, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 105
    .local v0, entity:Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 107
    .local v1, input:Ljava/io/InputStream;
    :try_start_1
    invoke-direct {p0, v6, v1}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->parseVolumeManifest(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 112
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 118
    :cond_1
    return-void

    .line 109
    :catchall_0
    move-exception v7

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    .end local v1           #input:Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_3
    throw v7
.end method

.method public isAlreadyFetched(Landroid/net/Uri;)Z
    .locals 6
    .parameter "uri"

    .prologue
    .line 125
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, volumeId:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->buildSectionDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 127
    .local v3, sectionDirUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 129
    .local v1, pageDirUri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v3}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForDirCount(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v2

    .line 130
    .local v2, sectionCount:I
    iget-object v5, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v1}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForDirCount(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v0

    .line 133
    .local v0, pageCount:I
    if-gtz v2, :cond_0

    if-lez v0, :cond_1

    :cond_0
    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method
