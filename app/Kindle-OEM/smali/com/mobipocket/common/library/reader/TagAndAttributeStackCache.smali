.class public Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;
.super Ljava/lang/Object;
.source "TagAndAttributeStackCache.java"


# instance fields
.field private cache:[Lcom/mobipocket/common/parser/TagAndAttributeStack;

.field private cacheSize:I

.field private mostRecentEntryIdx:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "cacheSizeMax"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array v0, p1, [Lcom/mobipocket/common/parser/TagAndAttributeStack;

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->cache:[Lcom/mobipocket/common/parser/TagAndAttributeStack;

    .line 29
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->empty()V

    .line 30
    return-void
.end method

.method private getTagAndAttributeStack(II)Lcom/mobipocket/common/parser/TagAndAttributeStack;
    .locals 3
    .parameter "position"
    .parameter "idx"

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, res:Lcom/mobipocket/common/parser/TagAndAttributeStack;
    iget v2, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->cacheSize:I

    if-ge p2, v2, :cond_0

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->cache:[Lcom/mobipocket/common/parser/TagAndAttributeStack;

    aget-object v2, v2, p2

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->cache:[Lcom/mobipocket/common/parser/TagAndAttributeStack;

    aget-object v2, v2, p2

    invoke-virtual {v2, p1}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->getTagAndAttributeStackAt(I)Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v1

    .line 150
    .local v1, temp:Lcom/mobipocket/common/parser/TagAndAttributeStack;
    if-eqz v1, :cond_0

    .line 152
    new-instance v0, Lcom/mobipocket/common/parser/TagAndAttributeStack;

    .end local v0           #res:Lcom/mobipocket/common/parser/TagAndAttributeStack;
    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/parser/TagAndAttributeStack;-><init>(Lcom/mobipocket/common/parser/TagAndAttributeStack;Z)V

    .line 155
    .end local v1           #temp:Lcom/mobipocket/common/parser/TagAndAttributeStack;
    .restart local v0       #res:Lcom/mobipocket/common/parser/TagAndAttributeStack;
    :cond_0
    return-object v0
.end method

.method private knowsTagAndAttributeStackAt(II)Z
    .locals 2
    .parameter "position"
    .parameter "idx"

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, res:Z
    iget v1, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->cacheSize:I

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->cache:[Lcom/mobipocket/common/parser/TagAndAttributeStack;

    aget-object v1, v1, p2

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->cache:[Lcom/mobipocket/common/parser/TagAndAttributeStack;

    aget-object v1, v1, p2

    invoke-virtual {v1, p1}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->knowsTagAndAttributeStackAt(I)Z

    move-result v0

    .line 165
    :cond_0
    return v0
.end method


# virtual methods
.method public add(Lcom/mobipocket/common/parser/TagAndAttributeStack;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 64
    .line 68
    iget v0, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->cacheSize:I

    if-nez v0, :cond_1

    .line 70
    iput v2, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->mostRecentEntryIdx:I

    .line 71
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->cache:[Lcom/mobipocket/common/parser/TagAndAttributeStack;

    iget v1, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->mostRecentEntryIdx:I

    new-instance v2, Lcom/mobipocket/common/parser/TagAndAttributeStack;

    invoke-direct {v2, p1, v3}, Lcom/mobipocket/common/parser/TagAndAttributeStack;-><init>(Lcom/mobipocket/common/parser/TagAndAttributeStack;Z)V

    aput-object v2, v0, v1

    move v0, v3

    .line 95
    :goto_0
    if-eqz v0, :cond_0

    .line 98
    iget v0, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->cacheSize:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->cache:[Lcom/mobipocket/common/parser/TagAndAttributeStack;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->cacheSize:I

    .line 100
    :cond_0
    return-void

    .line 74
    :cond_1
    iget v0, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->mostRecentEntryIdx:I

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->cache:[Lcom/mobipocket/common/parser/TagAndAttributeStack;

    array-length v1, v1

    sub-int/2addr v1, v3

    if-lt v0, v1, :cond_2

    .line 78
    iget v0, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->mostRecentEntryIdx:I

    invoke-direct {p0, p2, v0}, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->knowsTagAndAttributeStackAt(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 80
    iput v2, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->mostRecentEntryIdx:I

    .line 81
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->cache:[Lcom/mobipocket/common/parser/TagAndAttributeStack;

    iget v1, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->mostRecentEntryIdx:I

    new-instance v2, Lcom/mobipocket/common/parser/TagAndAttributeStack;

    invoke-direct {v2, p1, v3}, Lcom/mobipocket/common/parser/TagAndAttributeStack;-><init>(Lcom/mobipocket/common/parser/TagAndAttributeStack;Z)V

    aput-object v2, v0, v1

    move v0, v3

    .line 82
    goto :goto_0

    .line 87
    :cond_2
    iget v0, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->mostRecentEntryIdx:I

    invoke-direct {p0, p2, v0}, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->knowsTagAndAttributeStackAt(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 89
    iget v0, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->mostRecentEntryIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->mostRecentEntryIdx:I

    .line 90
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->cache:[Lcom/mobipocket/common/parser/TagAndAttributeStack;

    iget v1, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->mostRecentEntryIdx:I

    new-instance v2, Lcom/mobipocket/common/parser/TagAndAttributeStack;

    invoke-direct {v2, p1, v3}, Lcom/mobipocket/common/parser/TagAndAttributeStack;-><init>(Lcom/mobipocket/common/parser/TagAndAttributeStack;Z)V

    aput-object v2, v0, v1

    move v0, v3

    .line 91
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public empty()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->cacheSize:I

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->mostRecentEntryIdx:I

    .line 47
    return-void
.end method

.method public getTagAndAttributeStackAt(I)Lcom/mobipocket/common/parser/TagAndAttributeStack;
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 108
    const/4 v0, 0x0

    .line 113
    iget v1, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->cacheSize:I

    if-lez v1, :cond_0

    if-ltz p1, :cond_0

    .line 115
    const/4 v1, 0x0

    .line 117
    iget v2, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->mostRecentEntryIdx:I

    move v4, v2

    move-object v2, v0

    move v0, v4

    :goto_0
    if-ltz v0, :cond_4

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->getTagAndAttributeStack(II)Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v2

    .line 120
    if-eqz v2, :cond_1

    move v0, v3

    move-object v1, v2

    .line 128
    :goto_1
    if-nez v0, :cond_3

    iget v0, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->cacheSize:I

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->cache:[Lcom/mobipocket/common/parser/TagAndAttributeStack;

    array-length v2, v2

    if-ne v0, v2, :cond_3

    .line 130
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->cache:[Lcom/mobipocket/common/parser/TagAndAttributeStack;

    array-length v0, v0

    sub-int/2addr v0, v3

    :goto_2
    iget v2, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->mostRecentEntryIdx:I

    if-le v0, v2, :cond_3

    .line 132
    invoke-direct {p0, p1, v0}, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->getTagAndAttributeStack(II)Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 141
    :cond_0
    :goto_3
    return-object v0

    .line 117
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 130
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_3

    :cond_4
    move v0, v1

    move-object v1, v2

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->cacheSize:I

    return v0
.end method
