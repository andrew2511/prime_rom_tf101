.class public Lcom/mobipocket/common/library/reader/NavigationCache;
.super Ljava/lang/Object;
.source "NavigationCache.java"


# instance fields
.field private cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

.field private cacheSize:I

.field private cacheSizeMax:I

.field private mostRecentEntryIdx:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "cacheSizeMax"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cacheSizeMax:I

    .line 31
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    .line 33
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/NavigationCache;->empty()V

    .line 34
    return-void
.end method


# virtual methods
.method public add(IIII)V
    .locals 5
    .parameter "start"
    .parameter "startYOffset"
    .parameter "dest"
    .parameter "destYOffset"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    iget v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->mostRecentEntryIdx:I

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    array-length v1, v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cacheSize:I

    if-nez v0, :cond_3

    .line 73
    :cond_0
    iput v3, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->mostRecentEntryIdx:I

    .line 75
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    aget-object v0, v0, v3

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    new-instance v1, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    invoke-direct {v1}, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;-><init>()V

    aput-object v1, v0, v3

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    aget-object v0, v0, v4

    if-nez v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    new-instance v1, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    invoke-direct {v1}, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;-><init>()V

    aput-object v1, v0, v4

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    aget-object v0, v0, v3

    iput p1, v0, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->position:I

    .line 84
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    aget-object v0, v0, v3

    iput p2, v0, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->yOffset:I

    .line 85
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    aget-object v0, v0, v4

    iput p3, v0, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->position:I

    .line 86
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    aget-object v0, v0, v4

    iput p4, v0, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->yOffset:I

    .line 107
    :goto_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cacheSize:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cacheSizeMax:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cacheSize:I

    .line 108
    return-void

    .line 90
    :cond_3
    iget v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->mostRecentEntryIdx:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->mostRecentEntryIdx:I

    .line 91
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    iget v1, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->mostRecentEntryIdx:I

    aget-object v0, v0, v1

    if-nez v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    iget v1, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->mostRecentEntryIdx:I

    new-instance v2, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    invoke-direct {v2}, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;-><init>()V

    aput-object v2, v0, v1

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    iget v1, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->mostRecentEntryIdx:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_5

    .line 97
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    iget v1, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->mostRecentEntryIdx:I

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    invoke-direct {v2}, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;-><init>()V

    aput-object v2, v0, v1

    .line 100
    :cond_5
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    iget v1, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->mostRecentEntryIdx:I

    aget-object v0, v0, v1

    iput p1, v0, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->position:I

    .line 101
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    iget v1, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->mostRecentEntryIdx:I

    aget-object v0, v0, v1

    iput p2, v0, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->yOffset:I

    .line 102
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    iget v1, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->mostRecentEntryIdx:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iput p3, v0, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->position:I

    .line 103
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    iget v1, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->mostRecentEntryIdx:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iput p4, v0, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->yOffset:I

    goto :goto_0
.end method

.method public empty()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cacheSize:I

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->mostRecentEntryIdx:I

    .line 51
    return-void
.end method

.method public getDestOf(II)Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 117
    const/4 v0, 0x0

    .line 118
    iget v1, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cacheSize:I

    if-lez v1, :cond_2

    if-ltz p1, :cond_2

    .line 124
    const/4 v1, 0x0

    .line 127
    iget v2, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->mostRecentEntryIdx:I

    :goto_0
    if-ltz v2, :cond_0

    .line 129
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->position:I

    if-ne v3, p1, :cond_3

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->yOffset:I

    if-ne v3, p2, :cond_3

    move v1, v5

    .line 137
    :cond_0
    if-nez v1, :cond_1

    iget v3, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cacheSize:I

    iget v4, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cacheSizeMax:I

    if-ne v3, v4, :cond_1

    .line 139
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    array-length v2, v2

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    :goto_1
    iget v3, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->mostRecentEntryIdx:I

    if-le v2, v3, :cond_1

    .line 141
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->position:I

    if-ne v3, p1, :cond_4

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->yOffset:I

    if-ne v3, p2, :cond_4

    move v1, v5

    .line 149
    :cond_1
    if-eqz v1, :cond_2

    .line 151
    new-instance v0, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;-><init>()V

    .line 153
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    add-int/lit8 v3, v2, 0x1

    aget-object v1, v1, v3

    iget v1, v1, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->position:I

    iput v1, v0, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->position:I

    .line 154
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cache:[Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->yOffset:I

    iput v1, v0, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->yOffset:I

    .line 158
    :cond_2
    return-object v0

    .line 127
    :cond_3
    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 139
    :cond_4
    add-int/lit8 v2, v2, -0x2

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/mobipocket/common/library/reader/NavigationCache;->cacheSize:I

    return v0
.end method
