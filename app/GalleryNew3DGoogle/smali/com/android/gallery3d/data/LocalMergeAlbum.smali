.class public Lcom/android/gallery3d/data/LocalMergeAlbum;
.super Lcom/android/gallery3d/data/MediaSet;
.source "LocalMergeAlbum.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;
    }
.end annotation


# instance fields
.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFetcher:[Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

.field private mIndex:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private final mSources:[Lcom/android/gallery3d/data/MediaSet;

.field private mSupportedOperation:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Ljava/util/Comparator;[Lcom/android/gallery3d/data/MediaSet;)V
    .locals 6
    .parameter "path"
    .parameter
    .parameter "sources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/Path;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;[",
            "Lcom/android/gallery3d/data/MediaSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/gallery3d/data/MediaItem;>;"
    const-wide/16 v4, -0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 43
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    iput-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    .line 48
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mComparator:Ljava/util/Comparator;

    .line 49
    iput-object p3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .line 50
    array-length v4, p3

    if-nez v4, :cond_0

    const-string v4, ""

    :goto_0
    iput-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mName:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 52
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 50
    .end local v0           #arr$:[Lcom/android/gallery3d/data/MediaSet;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    const/4 v4, 0x0

    aget-object v4, p3, v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 54
    .restart local v0       #arr$:[Lcom/android/gallery3d/data/MediaSet;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    :cond_1
    return-void
.end method

.method private invalidateCache()V
    .locals 5

    .prologue
    .line 71
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 72
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->invalidate()V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    .line 75
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v4, v4

    new-array v4, v4, [I

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method private updateData()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v1, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v4, v4

    if-nez v4, :cond_0

    move v3, v7

    .line 59
    .local v3, supported:I
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v4, v4

    new-array v4, v4, [Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    iput-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    .line 60
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v2, v4

    .local v2, n:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 61
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    new-instance v5, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    iget-object v6, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    aget-object v6, v6, v0

    invoke-direct {v5, v6}, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;-><init>(Lcom/android/gallery3d/data/MediaSet;)V

    aput-object v5, v4, v0

    .line 62
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v4

    and-int/2addr v3, v4

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    .end local v0           #i:I
    .end local v2           #n:I
    .end local v3           #supported:I
    :cond_0
    const/4 v4, -0x1

    move v3, v4

    goto :goto_0

    .line 64
    .restart local v0       #i:I
    .restart local v2       #n:I
    .restart local v3       #supported:I
    :cond_1
    iput v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSupportedOperation:I

    .line 65
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->clear()V

    .line 66
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v6, v6

    new-array v6, v6, [I

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v4, v4

    if-nez v4, :cond_2

    const-string v4, ""

    :goto_2
    iput-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mName:Ljava/lang/String;

    .line 68
    return-void

    .line 67
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method


# virtual methods
.method public delete()V
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 170
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->delete()V

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    return-void
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 13
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    .line 92
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    add-int/lit8 v10, p1, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 93
    .local v0, head:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;[I>;"
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 94
    .local v4, markPos:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    invoke-virtual {v9}, [I->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 95
    .local v8, subPos:[I
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v9, v9

    new-array v7, v9, [Lcom/android/gallery3d/data/MediaItem;

    .line 97
    .local v7, slot:[Lcom/android/gallery3d/data/MediaItem;
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v6, v9

    .line 100
    .local v6, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 101
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    aget-object v9, v9, v1

    aget v10, v8, v1

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v9

    aput-object v9, v7, v1

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    move v1, v4

    :goto_1
    add-int v9, p1, p2

    if-ge v1, v9, :cond_4

    .line 107
    const/4 v3, -0x1

    .line 108
    .local v3, k:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    if-ge v2, v6, :cond_3

    .line 109
    aget-object v9, v7, v2

    if-eqz v9, :cond_2

    .line 110
    if-eq v3, v12, :cond_1

    iget-object v9, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mComparator:Ljava/util/Comparator;

    aget-object v10, v7, v2

    aget-object v11, v7, v3

    invoke-interface {v9, v10, v11}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    if-gez v9, :cond_2

    .line 111
    :cond_1
    move v3, v2

    .line 108
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 117
    :cond_3
    if-ne v3, v12, :cond_5

    .line 132
    .end local v2           #j:I
    .end local v3           #k:I
    :cond_4
    return-object v5

    .line 120
    .restart local v2       #j:I
    .restart local v3       #k:I
    :cond_5
    aget v9, v8, v3

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v3

    .line 121
    if-lt v1, p1, :cond_6

    .line 122
    aget-object v9, v7, v3

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_6
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    aget-object v9, v9, v3

    aget v10, v8, v3

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v9

    aput-object v9, v7, v3

    .line 127
    add-int/lit8 v9, v1, 0x1

    rem-int/lit8 v9, v9, 0x40

    if-nez v9, :cond_7

    .line 128
    iget-object v9, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    add-int/lit8 v10, v1, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8}, [I->clone()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalMergeAlbum;->getTotalMediaItemCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSupportedOperation:I

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 6

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, count:I
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 139
    .local v4, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v4           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    return v1
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalMergeAlbum;->notifyContentChanged()V

    .line 160
    return-void
.end method

.method public reload()J
    .locals 7

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, changed:Z
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v2, v3

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 148
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mDataVersion:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v0, 0x1

    .line 147
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_1
    if-eqz v0, :cond_2

    .line 151
    invoke-static {}, Lcom/android/gallery3d/data/LocalMergeAlbum;->nextVersionNumber()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mDataVersion:J

    .line 152
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalMergeAlbum;->updateData()V

    .line 153
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalMergeAlbum;->invalidateCache()V

    .line 155
    :cond_2
    iget-wide v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mDataVersion:J

    return-wide v3
.end method

.method public rotate(I)V
    .locals 4
    .parameter "degrees"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 177
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3, p1}, Lcom/android/gallery3d/data/MediaSet;->rotate(I)V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    return-void
.end method
