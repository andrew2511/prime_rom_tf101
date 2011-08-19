.class public final Lcom/ecareme/pixwe/media/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addAll([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "first"
    .parameter "second"

    .prologue
    .line 89
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 90
    const/4 v4, 0x0

    .line 104
    :goto_0
    return-object v4

    .line 91
    :cond_0
    if-nez p0, :cond_1

    move-object v4, p1

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    if-nez p1, :cond_2

    move-object v4, p0

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    array-length v2, p0

    .line 96
    .local v2, numFirst:I
    array-length v3, p1

    .line 97
    .local v3, numSecond:I
    add-int v4, v2, v3

    new-array v1, v4, [Ljava/lang/String;

    .line 98
    .local v1, newArray:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v2, :cond_3

    .line 101
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v3, :cond_4

    move-object v4, v1

    .line 104
    goto :goto_0

    .line 99
    :cond_3
    aget-object v4, p0, v0

    aput-object v4, v1, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    :cond_4
    add-int v4, v2, v0

    aget-object v5, p1, v0

    aput-object v5, v1, v4

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static clear([Ljava/lang/Object;)V
    .locals 3
    .parameter "array"

    .prologue
    .line 70
    array-length v1, p0

    .line 71
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 74
    return-void

    .line 72
    :cond_0
    const/4 v2, 0x0

    aput-object v2, p0, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final computeSortedIntersection(Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/util/ArrayList;[Lcom/ecareme/pixwe/media/MediaItem;)V
    .locals 9
    .parameter
    .parameter
    .parameter "maxSize"
    .parameter
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaItem;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaItem;",
            ">;[",
            "Lcom/ecareme/pixwe/media/MediaItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, firstList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .local p1, secondList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .local p3, intersectionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    array-length v0, p4

    const/4 v1, 0x1

    sub-int v4, v0, v1

    .line 28
    .local v4, mask:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v1, p4

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 29
    .local v2, numItemsToHash:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 37
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 38
    .local v1, firstListSize:I
    const/4 v0, 0x0

    move v3, v0

    .end local v0           #i:I
    .end local v2           #numItemsToHash:I
    .local v3, i:I
    :goto_1
    if-lt v3, v1, :cond_2

    .line 53
    :goto_2
    const/4 p0, 0x0

    invoke-static {p4, p0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .end local p0           #firstList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    return-void

    .line 30
    .end local v1           #firstListSize:I
    .end local v3           #i:I
    .restart local v0       #i:I
    .restart local v2       #numItemsToHash:I
    .restart local p0       #firstList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecareme/pixwe/media/MediaItem;

    .line 31
    .local v1, item:Lcom/ecareme/pixwe/media/MediaItem;
    if-eqz v1, :cond_1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    and-int/2addr v3, v4

    aput-object v1, p4, v3

    .line 29
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    .end local v0           #i:I
    .end local v2           #numItemsToHash:I
    .local v1, firstListSize:I
    .restart local v3       #i:I
    :cond_2
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MediaItem;

    .line 40
    .local v0, firstListItem:Lcom/ecareme/pixwe/media/MediaItem;
    if-nez v0, :cond_4

    .line 38
    :cond_3
    add-int/lit8 v0, v3, 0x1

    .end local v3           #i:I
    .local v0, i:I
    move v3, v0

    .end local v0           #i:I
    .restart local v3       #i:I
    goto :goto_1

    .line 42
    .local v0, firstListItem:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_4
    if-eqz p4, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    and-int/2addr v2, v4

    aget-object v2, p4, v2

    .line 43
    .local v2, hashItem:Lcom/ecareme/pixwe/media/MediaItem;
    :goto_3
    if-eqz v2, :cond_3

    .line 44
    iget-wide v5, v2, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .end local v2           #hashItem:Lcom/ecareme/pixwe/media/MediaItem;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    if-eq v2, v5, :cond_6

    :cond_5
    invoke-static {p1, v0}, Lcom/ecareme/pixwe/media/ArrayUtils;->contains(Ljava/util/ArrayList;Lcom/ecareme/pixwe/media/MediaItem;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 45
    :cond_6
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_3

    goto :goto_2

    .line 42
    :cond_7
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public static final contains(Ljava/util/ArrayList;Lcom/ecareme/pixwe/media/MediaItem;)Z
    .locals 8
    .parameter
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaItem;",
            ">;",
            "Lcom/ecareme/pixwe/media/MediaItem;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    const/4 v7, 0x0

    .line 77
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 78
    .local v1, numItems:I
    iget-wide v3, p1, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move v3, v7

    .line 85
    :goto_0
    return v3

    .line 80
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_1

    move v3, v7

    .line 85
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecareme/pixwe/media/MediaItem;

    .line 82
    .local v2, thisItem:Lcom/ecareme/pixwe/media/MediaItem;
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 83
    const/4 v3, 0x1

    goto :goto_0

    .line 80
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static final contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .parameter "array"
    .parameter "object"

    .prologue
    const/4 v3, 0x0

    .line 57
    if-nez p1, :cond_0

    move v2, v3

    .line 66
    :goto_0
    return v2

    .line 60
    :cond_0
    array-length v1, p0

    .line 61
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_1

    move v2, v3

    .line 66
    goto :goto_0

    .line 62
    :cond_1
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    const/4 v2, 0x1

    goto :goto_0

    .line 61
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
