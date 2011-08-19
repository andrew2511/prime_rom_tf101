.class public Lcom/google/android/apps/books/model/VolumeMetadata;
.super Ljava/lang/Object;
.source "VolumeMetadata.java"

# interfaces
.implements Lcom/google/android/apps/books/util/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/model/VolumeMetadata$ChaptersQuery;,
        Lcom/google/android/apps/books/model/VolumeMetadata$SectionsQuery;,
        Lcom/google/android/apps/books/model/VolumeMetadata$PagesQuery;,
        Lcom/google/android/apps/books/model/VolumeMetadata$VolumeStatesQuery;,
        Lcom/google/android/apps/books/model/VolumeMetadata$VolumesQuery;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumeMetadata"


# instance fields
.field public access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

.field public account:Landroid/accounts/Account;

.field public adapterChapters:Landroid/database/Cursor;

.field public creator:Ljava/lang/CharSequence;

.field public fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public hasImageMode:Z

.field public hasTextMode:Z

.field private mChapters:Landroid/database/Cursor;

.field private volatile mClosed:Z

.field private mDefaultPosition:Lcom/google/android/apps/books/common/Position;

.field private mIsInMyEBooksCollection:Z

.field private mLastAccess:J

.field private mLastMode:I

.field private mLastPosition:Lcom/google/android/apps/books/common/Position;

.field private mPageIdToChapterOrder:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPages:Landroid/database/Cursor;

.field private mPagesToTrimmed:[I

.field private mPinned:Z

.field private mPreferredMode:I

.field private mSections:Landroid/database/Cursor;

.field private mTrimmedToPages:[I

.field public title:Ljava/lang/CharSequence;

.field public volumeId:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mClosed:Z

    .line 66
    iput v2, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPreferredMode:I

    .line 67
    iput v2, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mLastMode:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPinned:Z

    .line 92
    iput-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPageIdToChapterOrder:Ljava/util/HashMap;

    .line 99
    iput-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPagesToTrimmed:[I

    .line 107
    iput-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTrimmedToPages:[I

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 3
    .parameter "volumeId"
    .parameter "account"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mClosed:Z

    .line 66
    iput v2, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPreferredMode:I

    .line 67
    iput v2, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mLastMode:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPinned:Z

    .line 92
    iput-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPageIdToChapterOrder:Ljava/util/HashMap;

    .line 99
    iput-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPagesToTrimmed:[I

    .line 107
    iput-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTrimmedToPages:[I

    .line 115
    const-string v0, "missing volumeid"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    .line 116
    const-string v0, "missing account"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->account:Landroid/accounts/Account;

    .line 117
    return-void
.end method

.method private static buildEndOfVolume(Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;
    .locals 4
    .parameter "original"

    .prologue
    .line 510
    new-instance v0, Lcom/google/android/apps/books/render/RenderPosition;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;II)V

    return-object v0
.end method

.method private buildPageIdToChapterOrderLocked()V
    .locals 13

    .prologue
    .line 664
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPageIdToChapterOrder:Ljava/util/HashMap;

    .line 669
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 673
    .local v6, start:J
    iget-object v9, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_0

    const/4 v9, 0x1

    move v2, v9

    .line 677
    .local v2, hasSections:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 678
    new-instance v5, Ljava/util/HashMap;

    iget-object v9, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 679
    .local v5, sectionToStartPosition:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    const/4 v10, -0x1

    invoke-interface {v9, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 680
    :goto_1
    iget-object v9, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 681
    iget-object v9, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    const/4 v11, 0x4

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 673
    .end local v2           #hasSections:Z
    .end local v5           #sectionToStartPosition:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v9, 0x0

    move v2, v9

    goto :goto_0

    .line 685
    .restart local v2       #hasSections:Z
    :cond_1
    const/4 v5, 0x0

    .line 688
    .restart local v5       #sectionToStartPosition:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v9, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    const/4 v10, -0x1

    invoke-interface {v9, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 689
    :goto_2
    iget-object v9, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 690
    iget-object v9, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 691
    .local v0, chapterOrder:I
    if-eqz v2, :cond_3

    iget-object v9, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    const/4 v10, 0x5

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v8, v1

    .line 694
    .local v8, startPosition:Ljava/lang/String;
    :goto_3
    const-string v9, "null start position"

    invoke-static {v8, v9}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    invoke-static {v8}, Lcom/google/android/apps/books/common/Position;->extractPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 702
    .local v4, pageId:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPageIdToChapterOrder:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 691
    .end local v4           #pageId:Ljava/lang/String;
    .end local v8           #startPosition:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    const/4 v10, 0x3

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    goto :goto_3

    .line 706
    .end local v0           #chapterOrder:I
    :cond_4
    const-string v9, "VolumeMetadata"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 707
    const-string v9, "VolumeMetadata"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Time to build initial page ID -> chapter order map: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v6

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_5
    const/4 v1, 0x0

    .line 714
    .local v1, currentChapterOrder:I
    iget-object v9, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v10, -0x1

    invoke-interface {v9, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 715
    :goto_4
    iget-object v9, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 716
    iget-object v9, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 717
    .restart local v4       #pageId:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPageIdToChapterOrder:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 719
    .local v3, matchingChapterOrder:Ljava/lang/Integer;
    if-eqz v3, :cond_6

    .line 723
    iget-object v9, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPageIdToChapterOrder:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_4

    .line 728
    :cond_6
    iget-object v9, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPageIdToChapterOrder:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 732
    .end local v3           #matchingChapterOrder:Ljava/lang/Integer;
    .end local v4           #pageId:Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private static buildPreviewGap(Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;
    .locals 4
    .parameter "original"

    .prologue
    .line 514
    new-instance v0, Lcom/google/android/apps/books/render/RenderPosition;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;II)V

    return-object v0
.end method

.method private static buildStartOfVolume(Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;
    .locals 4
    .parameter "original"

    .prologue
    .line 506
    new-instance v0, Lcom/google/android/apps/books/render/RenderPosition;

    const/4 v1, 0x0

    const/high16 v2, -0x8000

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;II)V

    return-object v0
.end method

.method private buildTrimmedMappingLocked()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 612
    iget-object v11, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 613
    .local v3, pageCount:I
    new-array v5, v3, [I

    .line 614
    .local v5, pagesToTrimmed:[I
    new-array v9, v3, [I

    .line 616
    .local v9, trimmedToPages:[I
    const/4 v7, 0x0

    .line 617
    .local v7, trimmedIndex:I
    const/high16 v2, -0x8000

    .line 619
    .local v2, lastTrimmedValue:I
    const/4 v0, 0x0

    .line 620
    .local v0, gapCount:I
    const/4 v10, 0x0

    .line 623
    .local v10, validCount:I
    iget-object v11, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v12, -0x1

    invoke-interface {v11, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 624
    :goto_0
    iget-object v11, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 625
    iget-object v11, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 626
    .local v4, pageIndex:I
    iget-object v11, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-ne v11, v14, :cond_0

    move v1, v14

    .line 630
    .local v1, isForbidden:Z
    :goto_1
    aput v7, v5, v4

    .line 633
    if-eqz v1, :cond_4

    const/4 v11, -0x2

    if-eq v2, v11, :cond_4

    .line 634
    const/4 v2, -0x2

    .line 635
    add-int/lit8 v8, v7, 0x1

    .end local v7           #trimmedIndex:I
    .local v8, trimmedIndex:I
    aput v2, v9, v7

    .line 636
    add-int/lit8 v0, v0, 0x1

    .line 640
    :goto_2
    if-nez v1, :cond_3

    .line 641
    move v2, v4

    .line 642
    add-int/lit8 v7, v8, 0x1

    .end local v8           #trimmedIndex:I
    .restart local v7       #trimmedIndex:I
    aput v2, v9, v8

    .line 643
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .end local v1           #isForbidden:Z
    :cond_0
    move v1, v13

    .line 626
    goto :goto_1

    .line 648
    .end local v4           #pageIndex:I
    :cond_1
    iput-object v5, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPagesToTrimmed:[I

    .line 651
    if-eq v7, v3, :cond_2

    .line 652
    new-array v6, v7, [I

    .line 653
    .local v6, temp:[I
    invoke-static {v9, v13, v6, v13, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 654
    iput-object v6, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTrimmedToPages:[I

    .line 659
    .end local v6           #temp:[I
    :goto_3
    const-string v11, "VolumeMetadata"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "buildPreviewGaps() found "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " gaps and "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " valid pages"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return-void

    .line 656
    :cond_2
    iput-object v9, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTrimmedToPages:[I

    goto :goto_3

    .end local v7           #trimmedIndex:I
    .restart local v1       #isForbidden:Z
    .restart local v4       #pageIndex:I
    .restart local v8       #trimmedIndex:I
    :cond_3
    move v7, v8

    .end local v8           #trimmedIndex:I
    .restart local v7       #trimmedIndex:I
    goto :goto_0

    :cond_4
    move v8, v7

    .end local v7           #trimmedIndex:I
    .restart local v8       #trimmedIndex:I
    goto :goto_2
.end method

.method private static clamp(III)I
    .locals 1
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 895
    if-ge p0, p1, :cond_0

    move v0, p1

    :goto_0
    return v0

    :cond_0
    if-le p0, p2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method private static getChapterStartPositionLocked(Landroid/database/Cursor;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 6
    .parameter "chapters"
    .parameter "sections"

    .prologue
    const/4 v5, 0x1

    .line 404
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    move v0, v5

    .line 405
    .local v0, hasSections:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 406
    const/4 v4, 0x5

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, startSectionId:Ljava/lang/String;
    invoke-static {p1, v5, v3}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 408
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, position:Ljava/lang/String;
    move-object v4, v1

    .line 413
    .end local v1           #position:Ljava/lang/String;
    .end local v3           #startSectionId:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 404
    .end local v0           #hasSections:Z
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 412
    .restart local v0       #hasSections:Z
    :cond_1
    const/4 v4, 0x3

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, startPageId:Ljava/lang/String;
    move-object v4, v2

    .line 413
    goto :goto_1
.end method

.method private getDefaultPosition(Landroid/content/ContentResolver;)Lcom/google/android/apps/books/common/Position;
    .locals 11
    .parameter "resolver"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 743
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 744
    .local v10, volumeUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->buildSectionDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 746
    .local v1, sectionDirUri:Landroid/net/Uri;
    const-string v0, "first_chapter_start_section"

    invoke-static {p1, v10, v0}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 749
    .local v7, defaultSectionOrder:Ljava/lang/String;
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "start_position"

    aput-object v0, v2, v5

    .line 750
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "section_order=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 753
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 755
    .local v9, position:Ljava/lang/String;
    new-instance v0, Lcom/google/android/apps/books/common/Position;

    invoke-direct {v0, v9}, Lcom/google/android/apps/books/common/Position;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v9           #position:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 757
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 758
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 759
    .local v8, pageId:Ljava/lang/String;
    new-instance v0, Lcom/google/android/apps/books/common/Position;

    invoke-direct {v0, v8}, Lcom/google/android/apps/books/common/Position;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 762
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8           #pageId:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 773
    monitor-enter p0

    :try_start_0
    const-string v0, "VolumeMetadata"

    const-string v1, "VolumeMetadata.close() closing all cursors"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 777
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 782
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 786
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 787
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    .line 790
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->adapterChapters:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->adapterChapters:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 791
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->adapterChapters:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 792
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->adapterChapters:Landroid/database/Cursor;

    .line 795
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPageIdToChapterOrder:Ljava/util/HashMap;

    .line 796
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    monitor-exit p0

    return-void

    .line 773
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getChapterCount()I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getChapterId(I)Ljava/lang/String;
    .locals 2
    .parameter "chapterIndex"

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 365
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChapterIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "chapterId"

    .prologue
    .line 369
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getChapterIndexForPageId(Ljava/lang/String;)I
    .locals 3
    .parameter "pageId"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, chapterId:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 381
    .end local v0           #chapterId:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getChapterJsonArray()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 583
    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 585
    .local v1, chapters:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .line 586
    .local v4, currentChapterId:Ljava/lang/String;
    const/4 v3, 0x0

    .line 588
    .local v3, currentChapter:Lorg/json/JSONArray;
    iget-object v6, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    .line 590
    .local v6, sections:Landroid/database/Cursor;
    const/4 v7, -0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 591
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 592
    const/4 v7, 0x2

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, chapterId:Ljava/lang/String;
    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 594
    .local v5, sectionId:Ljava/lang/String;
    const/4 v7, 0x3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 596
    .local v2, contentStatus:I
    invoke-static {v4, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 597
    new-instance v3, Lorg/json/JSONArray;

    .end local v3           #currentChapter:Lorg/json/JSONArray;
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 598
    .restart local v3       #currentChapter:Lorg/json/JSONArray;
    move-object v4, v0

    .line 599
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 602
    :cond_1
    if-eq v2, v8, :cond_0

    .line 603
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 583
    .end local v0           #chapterId:Ljava/lang/String;
    .end local v1           #chapters:Lorg/json/JSONArray;
    .end local v2           #contentStatus:I
    .end local v3           #currentChapter:Lorg/json/JSONArray;
    .end local v4           #currentChapterId:Ljava/lang/String;
    .end local v5           #sectionId:Ljava/lang/String;
    .end local v6           #sections:Landroid/database/Cursor;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 607
    .restart local v1       #chapters:Lorg/json/JSONArray;
    .restart local v3       #currentChapter:Lorg/json/JSONArray;
    .restart local v4       #currentChapterId:Ljava/lang/String;
    .restart local v6       #sections:Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    monitor-exit p0

    return-object v7
.end method

.method public declared-synchronized getChapterStartPosition(Ljava/lang/String;)Lcom/google/android/apps/books/common/Position;
    .locals 3
    .parameter "chapterId"

    .prologue
    .line 399
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 400
    new-instance v0, Lcom/google/android/apps/books/common/Position;

    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    invoke-static {v1, v2}, Lcom/google/android/apps/books/model/VolumeMetadata;->getChapterStartPositionLocked(Landroid/database/Cursor;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/common/Position;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChapterTitle(I)Ljava/lang/String;
    .locals 2
    .parameter "chapterIndex"

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 375
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getContainingChapterIndexForPageId(Ljava/lang/String;)I
    .locals 2
    .parameter "pageId"

    .prologue
    .line 388
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPageIdToChapterOrder:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 389
    .local v0, chapterIndex:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 388
    .end local v0           #chapterIndex:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getLastAccess()J
    .locals 2

    .prologue
    .line 296
    iget-wide v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mLastAccess:J

    return-wide v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mLastMode:I

    packed-switch v0, :pswitch_data_0

    .line 314
    iget v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPreferredMode:I

    :goto_0
    return v0

    .line 312
    :pswitch_0
    iget v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mLastMode:I

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getPageId(I)Ljava/lang/String;
    .locals 2
    .parameter "pageIndex"

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 340
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPageIndex(Lcom/google/android/apps/books/common/Position;)I
    .locals 2
    .parameter "position"

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/apps/books/common/Position;->getPageName()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, pageId:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageIndex(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 349
    .end local v0           #pageId:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPageIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "pageId"

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPageTitle(I)Ljava/lang/String;
    .locals 2
    .parameter "pageIndex"

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 355
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPosition()Lcom/google/android/apps/books/common/Position;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mLastPosition:Lcom/google/android/apps/books/common/Position;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mLastPosition:Lcom/google/android/apps/books/common/Position;

    .line 291
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mDefaultPosition:Lcom/google/android/apps/books/common/Position;

    goto :goto_0
.end method

.method public declared-synchronized getStartPageIndex(I)I
    .locals 3
    .parameter "chapterIndex"

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 394
    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, pageId:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageIndex(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 393
    .end local v0           #pageId:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized hasReadableSections()Z
    .locals 3

    .prologue
    .line 565
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 566
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 568
    .local v0, contentStatus:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 571
    :pswitch_0
    const/4 v1, 0x1

    .line 574
    .end local v0           #contentStatus:I
    :goto_1
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 565
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 568
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 768
    iget-boolean v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mClosed:Z

    return v0
.end method

.method public isInMyEBooksCollection()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mIsInMyEBooksCollection:Z

    return v0
.end method

.method public declared-synchronized isPageEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pageId"

    .prologue
    const/4 v2, 0x1

    .line 359
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v2

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPinned()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPinned:Z

    return v0
.end method

.method public declared-synchronized normalizePosition(Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;
    .locals 14
    .parameter "request"

    .prologue
    .line 428
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/apps/books/render/RenderPosition;->hasValidPosition()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 429
    iget-object v10, p1, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v10}, Lcom/google/android/apps/books/common/Position;->getPageName()Ljava/lang/String;

    move-result-object v3

    .line 430
    .local v3, pageId:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageIndex(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 447
    .end local v3           #pageId:Ljava/lang/String;
    .local v9, volumePageIndex:I
    :goto_0
    :try_start_1
    iget-object v10, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPagesToTrimmed:[I

    if-eqz v10, :cond_4

    .line 450
    iget-object v10, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPagesToTrimmed:[I

    aget v8, v10, v9

    .line 451
    .local v8, trimmedIndex:I
    iget v10, p1, Lcom/google/android/apps/books/render/RenderPosition;->pageOffset:I

    add-int/2addr v8, v10

    .line 454
    if-gez v8, :cond_2

    .line 455
    invoke-static {p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->buildStartOfVolume(Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 502
    .end local v8           #trimmedIndex:I
    :goto_1
    monitor-exit p0

    return-object v10

    .line 432
    .end local v9           #volumePageIndex:I
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/apps/books/render/RenderPosition;->hasValidIndices()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 433
    iget v10, p1, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-static {v10, v11, v12}, Lcom/google/android/apps/books/model/VolumeMetadata;->clamp(III)I

    move-result v1

    .line 434
    .local v1, chapterIndex:I
    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getStartPageIndex(I)I

    move-result v5

    .line 435
    .local v5, pageStartIndex:I
    iget v10, p1, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    add-int v9, v5, v10

    .line 437
    .restart local v9       #volumePageIndex:I
    goto :goto_0

    .line 438
    .end local v1           #chapterIndex:I
    .end local v5           #pageStartIndex:I
    .end local v9           #volumePageIndex:I
    :cond_1
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "request missing both indices and position"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 440
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 443
    .local v2, e:Ljava/util/NoSuchElementException;
    :try_start_3
    const-string v10, "VolumeMetadata"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "normalizePosition() in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v9, 0x0

    .restart local v9       #volumePageIndex:I
    goto :goto_0

    .line 456
    .end local v2           #e:Ljava/util/NoSuchElementException;
    .restart local v8       #trimmedIndex:I
    :cond_2
    iget-object v10, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTrimmedToPages:[I

    array-length v10, v10

    if-lt v8, v10, :cond_3

    .line 457
    invoke-static {p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->buildEndOfVolume(Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v10

    goto :goto_1

    .line 461
    :cond_3
    iget-object v10, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTrimmedToPages:[I

    aget v9, v10, v8

    .line 463
    const/4 v10, -0x2

    if-ne v9, v10, :cond_6

    .line 464
    invoke-static {p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->buildPreviewGap(Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v10

    goto :goto_1

    .line 469
    .end local v8           #trimmedIndex:I
    :cond_4
    iget v10, p1, Lcom/google/android/apps/books/render/RenderPosition;->pageOffset:I

    add-int/2addr v9, v10

    .line 472
    if-gez v9, :cond_5

    .line 473
    invoke-static {p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->buildStartOfVolume(Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v10

    goto :goto_1

    .line 474
    :cond_5
    iget-object v10, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-lt v9, v10, :cond_6

    .line 475
    invoke-static {p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->buildEndOfVolume(Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v10

    goto :goto_1

    .line 479
    :cond_6
    const-string v10, "VolumeMetadata"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "normalizePosition() found volumePageIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v10, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v10, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 483
    iget-object v10, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 484
    invoke-static {p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->buildPreviewGap(Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v10

    goto/16 :goto_1

    .line 488
    :cond_7
    iget-object v10, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v11, 0x4

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, chapterId:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->getChapterIndex(Ljava/lang/String;)I

    move-result v1

    .line 492
    .restart local v1       #chapterIndex:I
    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getStartPageIndex(I)I

    move-result v7

    .line 493
    .local v7, startPageIndex:I
    sub-int v4, v9, v7

    .line 496
    .local v4, pageIndex:I
    if-ltz v4, :cond_8

    const/4 v10, 0x1

    :goto_2
    const-string v11, "invalid page index"

    invoke-static {v10, v11}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 499
    invoke-virtual {p0, v9}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageId(I)Ljava/lang/String;

    move-result-object v3

    .line 500
    .restart local v3       #pageId:Ljava/lang/String;
    new-instance v6, Lcom/google/android/apps/books/common/Position;

    invoke-direct {v6, v3}, Lcom/google/android/apps/books/common/Position;-><init>(Ljava/lang/String;)V

    .line 502
    .local v6, position:Lcom/google/android/apps/books/common/Position;
    new-instance v10, Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v11, p1, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    invoke-direct {v10, v6, v1, v4, v11}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;IILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 428
    .end local v0           #chapterId:Ljava/lang/String;
    .end local v1           #chapterIndex:I
    .end local v3           #pageId:Ljava/lang/String;
    .end local v4           #pageIndex:I
    .end local v6           #position:Lcom/google/android/apps/books/common/Position;
    .end local v7           #startPageIndex:I
    .end local v9           #volumePageIndex:I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 496
    .restart local v0       #chapterId:Ljava/lang/String;
    .restart local v1       #chapterIndex:I
    .restart local v4       #pageIndex:I
    .restart local v7       #startPageIndex:I
    .restart local v9       #volumePageIndex:I
    :cond_8
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public declared-synchronized parseChaptersCursorInto(Lcom/google/android/apps/books/util/VolumeScrubIndex;)V
    .locals 10
    .parameter "index"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 518
    monitor-enter p0

    :try_start_0
    iget-object v6, p1, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChapterIdToIndex:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 519
    iget-object v6, p1, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChapterIdToPageId:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 520
    iget-object v6, p1, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mIndexToChapterId:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 522
    iget-object v6, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 523
    .local v3, count:I
    new-array v6, v3, [Z

    iput-object v6, p1, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mTextChapterEnabled:[Z

    .line 524
    new-array v6, v3, [Z

    iput-object v6, p1, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mImageChapterEnabled:[Z

    .line 526
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 527
    iget-object v6, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    invoke-interface {v6, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 529
    iget-object v6, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 530
    .local v2, chapterId:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 532
    .local v5, pageId:Ljava/lang/String;
    iget-object v6, p1, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChapterIdToIndex:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    iget-object v6, p1, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChapterIdToPageId:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    iget-object v6, p1, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mIndexToChapterId:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    iget-object v6, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    const/4 v7, 0x7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v8

    .line 538
    .local v1, allSectionsForbidden:Z
    :goto_1
    iget-object v6, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    const/16 v7, 0x8

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_1

    move v0, v8

    .line 541
    .local v0, allPagesForbidden:Z
    :goto_2
    iget-object v6, p1, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mTextChapterEnabled:[Z

    if-nez v1, :cond_2

    move v7, v8

    :goto_3
    aput-boolean v7, v6, v4

    .line 542
    iget-object v6, p1, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mImageChapterEnabled:[Z

    if-nez v0, :cond_3

    move v7, v8

    :goto_4
    aput-boolean v7, v6, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0           #allPagesForbidden:Z
    .end local v1           #allSectionsForbidden:Z
    :cond_0
    move v1, v9

    .line 536
    goto :goto_1

    .restart local v1       #allSectionsForbidden:Z
    :cond_1
    move v0, v9

    .line 538
    goto :goto_2

    .restart local v0       #allPagesForbidden:Z
    :cond_2
    move v7, v9

    .line 541
    goto :goto_3

    :cond_3
    move v7, v9

    .line 542
    goto :goto_4

    .line 544
    .end local v0           #allPagesForbidden:Z
    .end local v1           #allSectionsForbidden:Z
    .end local v2           #chapterId:Ljava/lang/String;
    .end local v5           #pageId:Ljava/lang/String;
    :cond_4
    monitor-exit p0

    return-void

    .line 518
    .end local v3           #count:I
    .end local v4           #i:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized parsePagesCursorInto(Lcom/google/android/apps/books/util/VolumeScrubIndex;)V
    .locals 6
    .parameter "index"

    .prologue
    .line 547
    monitor-enter p0

    :try_start_0
    iget-object v4, p1, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPageIdToIndex:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 548
    iget-object v4, p1, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPageIdToChapterId:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 549
    iget-object v4, p1, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mIndexToPageId:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 551
    iget-object v4, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 552
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 553
    iget-object v4, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v4, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 555
    iget-object v4, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 556
    .local v3, pageId:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, chapterId:Ljava/lang/String;
    iget-object v4, p1, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPageIdToIndex:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v4, p1, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPageIdToChapterId:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    iget-object v4, p1, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mIndexToPageId:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 562
    .end local v0           #chapterId:Ljava/lang/String;
    .end local v3           #pageId:Ljava/lang/String;
    :cond_0
    monitor-exit p0

    return-void

    .line 547
    .end local v1           #count:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public populateFrom(Lcom/google/android/apps/books/service/ContentFetchService;Landroid/content/ContentResolver;ZZ)V
    .locals 7
    .parameter "fetchService"
    .parameter "resolver"
    .parameter "updateVolumeOverview"
    .parameter "checkShelfMembership"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    const/4 v6, 0x1

    .line 126
    .local v6, populateVolumeState:Z
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/model/VolumeMetadata;->populateFrom(Lcom/google/android/apps/books/service/ContentFetchService;Landroid/content/ContentResolver;ZZZ)V

    .line 128
    return-void
.end method

.method public populateFrom(Lcom/google/android/apps/books/service/ContentFetchService;Landroid/content/ContentResolver;ZZZ)V
    .locals 4
    .parameter "fetchService"
    .parameter "resolver"
    .parameter "populateVolumeState"
    .parameter "updateVolumeOverview"
    .parameter "checkShelfMembership"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 137
    const-string v0, "missing fetchService"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v0, v1, p4}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeManifest(Ljava/lang/String;Landroid/accounts/Account;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeCover(Ljava/lang/String;Landroid/accounts/Account;)V

    .line 150
    invoke-virtual {p0, p2, p3, p5}, Lcom/google/android/apps/books/model/VolumeMetadata;->populateFromAfterEnsure(Landroid/content/ContentResolver;ZZ)V

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->account:Landroid/accounts/Account;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v3, v0, v1}, Lcom/google/android/apps/books/provider/BooksContract;->requestManualVolumeContentSync(ZLandroid/accounts/Account;[Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public populateFromAfterEnsure(Landroid/content/ContentResolver;ZZ)V
    .locals 27
    .parameter "resolver"
    .parameter "populateVolumeState"
    .parameter "checkShelfMembership"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 162
    .local v5, pageDirUri:Landroid/net/Uri;
    sget-object v6, Lcom/google/android/apps/books/model/VolumeMetadata$PagesQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "page_order ASC"

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    move-object v4, v0

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 165
    const-string v4, "VolumeMetadata"

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pageDirUri:Landroid/net/Uri;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing pages for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->buildSectionDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 169
    .local v7, sectionDirUri:Landroid/net/Uri;
    sget-object v8, Lcom/google/android/apps/books/model/VolumeMetadata$SectionsQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "section_order ASC"

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    move-object v4, v0

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 172
    const-string v4, "VolumeMetadata"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing sections for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->buildChapterDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 176
    .local v9, chapterDirUri:Landroid/net/Uri;
    sget-object v10, Lcom/google/android/apps/books/model/VolumeMetadata$ChaptersQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "chapter_order ASC"

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    move-object v4, v0

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 179
    const-string v4, "VolumeMetadata"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing chapters for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/books/model/VolumeMetadata;->buildPageIdToChapterOrderLocked()V

    .line 185
    sget-object v10, Lcom/google/android/apps/books/model/VolumeMetadata$ChaptersQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "chapter_order ASC"

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->adapterChapters:Landroid/database/Cursor;

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->adapterChapters:Landroid/database/Cursor;

    move-object v4, v0

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 188
    const-string v4, "VolumeMetadata"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing chapters for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 193
    .local v11, volumeUri:Landroid/net/Uri;
    sget-object v12, Lcom/google/android/apps/books/model/VolumeMetadata$VolumesQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 195
    .local v22, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    const/4 v4, 0x1

    :goto_0
    const-string v5, "unexpected volumes cursor"

    invoke-static {v4, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 196
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 197
    const/4 v4, 0x0

    move-object/from16 v0, v22

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->title:Ljava/lang/CharSequence;

    .line 198
    const/4 v4, 0x1

    move-object/from16 v0, v22

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->creator:Ljava/lang/CharSequence;

    .line 200
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getDefaultPosition(Landroid/content/ContentResolver;)Lcom/google/android/apps/books/common/Position;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->mDefaultPosition:Lcom/google/android/apps/books/common/Position;

    .line 201
    const/4 v4, 0x2

    move-object/from16 v0, v22

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->mPreferredMode:I

    .line 203
    const/4 v4, 0x4

    move-object/from16 v0, v22

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->hasTextMode:Z

    .line 204
    const/4 v4, 0x3

    move-object/from16 v0, v22

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->hasImageMode:Z

    .line 208
    const/4 v4, 0x5

    move-object/from16 v0, v22

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 209
    .local v26, viewability:Ljava/lang/String;
    const/4 v4, 0x6

    move-object/from16 v0, v22

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 210
    .local v20, buyUrl:Ljava/lang/String;
    const/4 v4, 0x7

    move-object/from16 v0, v22

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 212
    .local v24, openAccess:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->computeAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    .line 213
    const-string v4, "VolumeMetadata"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VolumeMetadata found vid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with access="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object v4, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->SAMPLE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->equals(Ljava/lang/Object;)Z

    move-result v23

    .line 216
    .local v23, isSample:Z
    if-eqz v23, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->hasImageMode:Z

    move v4, v0

    if-eqz v4, :cond_4

    .line 219
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/books/model/VolumeMetadata;->buildTrimmedMappingLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .end local v20           #buyUrl:Ljava/lang/String;
    .end local v23           #isSample:Z
    .end local v24           #openAccess:Ljava/lang/String;
    .end local v26           #viewability:Ljava/lang/String;
    :cond_4
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/model/VolumeMetadata;->hasReadableSections()Z

    move-result v4

    if-nez v4, :cond_5

    .line 228
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->hasTextMode:Z

    .line 232
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPreferredMode:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->hasImageMode:Z

    move v4, v0

    if-nez v4, :cond_6

    .line 233
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->hasTextMode:Z

    move v4, v0

    if-eqz v4, :cond_f

    const/4 v4, 0x2

    :goto_3
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->mPreferredMode:I

    .line 235
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPreferredMode:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->hasTextMode:Z

    move v4, v0

    if-nez v4, :cond_7

    .line 236
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->hasImageMode:Z

    move v4, v0

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    :goto_4
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->mPreferredMode:I

    .line 239
    :cond_7
    if-eqz p2, :cond_9

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->account:Landroid/accounts/Account;

    move-object v4, v0

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v4, v5}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;->buildItemUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 241
    .local v13, stateUri:Landroid/net/Uri;
    sget-object v14, Lcom/google/android/apps/books/model/VolumeMetadata$VolumeStatesQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 244
    .local v25, stateCursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 245
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/books/common/Position;->createPositionOrNull(Ljava/lang/String;)Lcom/google/android/apps/books/common/Position;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->mLastPosition:Lcom/google/android/apps/books/common/Position;

    .line 247
    const/4 v4, 0x3

    move-object/from16 v0, v25

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/apps/books/model/VolumeMetadata;->mLastAccess:J

    .line 248
    const/4 v4, 0x1

    move-object/from16 v0, v25

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->mLastMode:I

    .line 249
    const/4 v4, 0x2

    move-object/from16 v0, v25

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    :goto_5
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->mPinned:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 252
    :cond_8
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 257
    .end local v13           #stateUri:Landroid/net/Uri;
    .end local v25           #stateCursor:Landroid/database/Cursor;
    :cond_9
    if-eqz p3, :cond_b

    .line 258
    const/16 v21, 0x0

    .line 260
    .local v21, collectionItemCursor:Landroid/database/Cursor;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->account:Landroid/accounts/Account;

    move-object v4, v0

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-wide/16 v17, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v4

    move-wide/from16 v1, v17

    move-object v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->itemUri(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 262
    .local v15, itemUri:Landroid/net/Uri;
    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v4, 0x0

    const-string v5, "COUNT(*)"

    aput-object v5, v16, v4

    .line 263
    .local v16, projection:[Ljava/lang/String;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v14, p1

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 264
    if-eqz v21, :cond_a

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 265
    const/4 v4, 0x0

    move-object/from16 v0, v21

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-lez v4, :cond_12

    const/4 v4, 0x1

    :goto_6
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->mIsInMyEBooksCollection:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 268
    :cond_a
    if-eqz v21, :cond_b

    .line 269
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 275
    .end local v15           #itemUri:Landroid/net/Uri;
    .end local v16           #projection:[Ljava/lang/String;
    .end local v21           #collectionItemCursor:Landroid/database/Cursor;
    :cond_b
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->mClosed:Z

    .line 276
    return-void

    .line 195
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 203
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 204
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 223
    :catchall_0
    move-exception v4

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    throw v4

    .line 233
    :cond_f
    const/4 v4, -0x1

    goto/16 :goto_3

    .line 236
    :cond_10
    const/4 v4, -0x1

    goto/16 :goto_4

    .line 249
    .restart local v13       #stateUri:Landroid/net/Uri;
    .restart local v25       #stateCursor:Landroid/database/Cursor;
    :cond_11
    const/4 v4, 0x0

    goto :goto_5

    .line 252
    :catchall_1
    move-exception v4

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    throw v4

    .line 265
    .end local v13           #stateUri:Landroid/net/Uri;
    .end local v25           #stateCursor:Landroid/database/Cursor;
    .restart local v15       #itemUri:Landroid/net/Uri;
    .restart local v16       #projection:[Ljava/lang/String;
    .restart local v21       #collectionItemCursor:Landroid/database/Cursor;
    :cond_12
    const/4 v4, 0x0

    goto :goto_6

    .line 268
    .end local v15           #itemUri:Landroid/net/Uri;
    .end local v16           #projection:[Ljava/lang/String;
    :catchall_2
    move-exception v4

    if-eqz v21, :cond_13

    .line 269
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v4
.end method

.method public setForceMode(I)V
    .locals 0
    .parameter "mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 305
    iput p1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mLastMode:I

    .line 306
    return-void
.end method

.method public setForcePosition(Lcom/google/android/apps/books/common/Position;)V
    .locals 0
    .parameter "position"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 284
    iput-object p1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mLastPosition:Lcom/google/android/apps/books/common/Position;

    .line 285
    return-void
.end method
