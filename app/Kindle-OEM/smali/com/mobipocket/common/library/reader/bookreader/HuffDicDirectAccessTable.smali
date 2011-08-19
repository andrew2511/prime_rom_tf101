.class Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;
.super Ljava/lang/Object;
.source "HuffDicDirectAccessTable.java"


# static fields
.field private static final DATP_HEADER_SIZE:I = 0xc

.field private static final REC_TYPE_DATP:I = 0x44415450


# instance fields
.field private datRecords:[[B

.field private mainTable:[I

.field private nbRec:I

.field private nbent:[I

.field private shift:I

.field private subTables:[[I


# direct methods
.method constructor <init>(Lcom/mobipocket/common/filesystem/ReadPDB;II)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const v9, 0x44415450

    const v8, 0xffff

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-ge p3, v7, :cond_1

    .line 50
    iput-object v10, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->mainTable:[I

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iput p3, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->nbRec:I

    .line 54
    iget v0, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->nbRec:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->nbent:[I

    .line 55
    iget v0, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->nbRec:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->mainTable:[I

    .line 56
    iget v0, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->nbRec:I

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->subTables:[[I

    .line 57
    iget v0, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->nbRec:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->datRecords:[[B

    .line 59
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->datRecords:[[B

    invoke-interface {p1, p2}, Lcom/mobipocket/common/filesystem/ReadPDB;->getRecord(I)[B

    move-result-object v1

    aput-object v1, v0, v6

    .line 60
    new-instance v0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->datRecords:[[B

    aget-object v1, v1, v6

    invoke-direct {v0, v1, v7}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 63
    :try_start_0
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    if-ne v1, v9, :cond_2

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_3

    .line 66
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "File corrupted OR book not supported"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :catch_0
    move-exception v0

    iput-object v10, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->mainTable:[I

    goto :goto_0

    .line 68
    :cond_3
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readVoid(I)V

    .line 69
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->shift:I

    .line 70
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->nbent:[I

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readShort()S

    move-result v3

    and-int/2addr v3, v8

    aput v3, v1, v2

    move v1, v6

    .line 72
    :goto_1
    iget v2, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->nbRec:I

    if-ge v1, v2, :cond_4

    .line 74
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->mainTable:[I

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    :cond_4
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->nbent:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v1, v7

    iget v2, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->shift:I

    shr-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 77
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->subTables:[[I

    const/4 v3, 0x0

    new-array v4, v1, [I

    aput-object v4, v2, v3

    move v2, v6

    .line 78
    :goto_2
    if-ge v2, v1, :cond_5

    .line 80
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->subTables:[[I

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v4

    aput v4, v3, v2

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v0, v7

    .line 83
    :goto_3
    iget v1, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->nbRec:I

    if-ge v0, v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->datRecords:[[B

    add-int v2, p2, v0

    invoke-interface {p1, v2}, Lcom/mobipocket/common/filesystem/ReadPDB;->getRecord(I)[B

    move-result-object v2

    aput-object v2, v1, v0

    .line 86
    new-instance v1, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->datRecords:[[B

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 87
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v2

    if-eq v2, v9, :cond_6

    .line 88
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "File corrupted OR book not supported"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_6
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readVoid(I)V

    .line 90
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->nbent:[I

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readShort()S

    move-result v3

    and-int/2addr v3, v8

    aput v3, v2, v0

    .line 91
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->nbent:[I

    aget v2, v2, v0

    sub-int/2addr v2, v7

    iget v3, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->shift:I

    shr-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 92
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->subTables:[[I

    new-array v4, v2, [I

    aput-object v4, v3, v0

    move v3, v6

    .line 93
    :goto_4
    if-ge v3, v2, :cond_7

    .line 95
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->subTables:[[I

    aget-object v4, v4, v0

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v5

    aput v5, v4, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 83
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private getOffset([II)I
    .locals 7
    .parameter "table"
    .parameter "toFind"

    .prologue
    const/4 v6, 0x1

    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, begin:I
    array-length v5, p1

    sub-int v1, v5, v6

    .line 256
    .local v1, end:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 258
    add-int v5, v0, v1

    shr-int/lit8 v2, v5, 0x1

    .line 259
    .local v2, mid:I
    aget v4, p1, v2

    .line 260
    .local v4, value:I
    if-ge v4, p2, :cond_0

    .line 262
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 264
    :cond_0
    if-le v4, p2, :cond_1

    .line 266
    sub-int v1, v2, v6

    goto :goto_0

    :cond_1
    move v3, v2

    .line 276
    .end local v2           #mid:I
    .end local v4           #value:I
    .local v3, mid:I
    :goto_1
    return v3

    .line 273
    .end local v3           #mid:I
    :cond_2
    move v2, v0

    .line 274
    .restart local v2       #mid:I
    aget v5, p1, v2

    if-le v5, p2, :cond_3

    .line 275
    add-int/lit8 v2, v2, -0x1

    :cond_3
    move v3, v2

    .line 276
    .end local v2           #mid:I
    .restart local v3       #mid:I
    goto :goto_1
.end method

.method private getRecordSize(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 136
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->datRecords:[[B

    aget-object v0, v0, p1

    .line 137
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->nbent:[I

    aget v1, v1, p1

    sub-int/2addr v1, v3

    iget v2, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->shift:I

    shr-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0xc

    shl-int/lit8 v2, p2, 0x1

    add-int/2addr v1, v2

    .line 138
    if-nez p1, :cond_0

    .line 139
    iget v2, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->nbRec:I

    shl-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 140
    :cond_0
    array-length v2, v0

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_1

    .line 142
    array-length v1, v0

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    .line 145
    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method getNumOfRecord(I)I
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 157
    .line 158
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->mainTable:[I

    if-nez v0, :cond_0

    .line 160
    const/4 v0, -0x1

    .line 210
    :goto_0
    return v0

    :cond_0
    move v0, v5

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->mainTable:[I

    aget v1, v1, v0

    if-ge v1, p1, :cond_3

    .line 166
    add-int/lit8 v0, v0, 0x1

    .line 167
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->mainTable:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    move v0, v5

    move v1, v5

    .line 171
    :goto_1
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->mainTable:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 173
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->nbent:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 175
    goto :goto_0

    .line 180
    :cond_3
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->subTables:[[I

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1}, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->getOffset([II)I

    move-result v1

    .line 186
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->subTables:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    .line 187
    iget v3, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->shift:I

    shl-int/2addr v1, v3

    move v6, v2

    move v2, v1

    move v1, v6

    .line 193
    :cond_4
    invoke-direct {p0, v0, v2}, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->getRecordSize(II)I

    move-result v3

    add-int v4, v1, v3

    if-gt v4, p1, :cond_5

    .line 197
    add-int/lit8 v2, v2, 0x1

    .line 198
    add-int/2addr v1, v3

    .line 199
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->nbent:[I

    aget v3, v3, v0

    if-lt v2, v3, :cond_4

    .line 201
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    :cond_5
    move v1, v5

    move v3, v5

    .line 205
    :goto_2
    if-ge v1, v0, :cond_6

    .line 207
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->nbent:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 210
    :cond_6
    add-int/lit8 v0, v2, 0x1

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method getPosOfrecord(I)I
    .locals 6
    .parameter

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 223
    const/4 v1, 0x1

    sub-int v1, p1, v1

    move v5, v1

    move v1, v0

    move v0, v5

    .line 224
    :goto_0
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->nbent:[I

    aget v2, v2, v1

    if-lt v0, v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->nbent:[I

    add-int/lit8 v3, v1, 0x1

    aget v1, v2, v1

    sub-int/2addr v0, v1

    move v1, v3

    .line 227
    goto :goto_0

    .line 229
    :cond_0
    iget v2, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->shift:I

    shr-int v2, v0, v2

    .line 230
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->subTables:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    .line 232
    iget v4, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->shift:I

    shl-int/2addr v2, v4

    :goto_1
    if-ge v2, v0, :cond_1

    .line 234
    invoke-direct {p0, v1, v2}, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->getRecordSize(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 236
    :cond_1
    return v3
.end method

.method getRecordSize(I)I
    .locals 5
    .parameter

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    const/4 v1, 0x1

    sub-int v1, p1, v1

    move v4, v1

    move v1, v0

    move v0, v4

    .line 119
    :goto_0
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->nbent:[I

    aget v2, v2, v1

    if-lt v0, v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->nbent:[I

    add-int/lit8 v3, v1, 0x1

    aget v1, v2, v1

    sub-int/2addr v0, v1

    move v1, v3

    .line 122
    goto :goto_0

    .line 124
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDirectAccessTable;->getRecordSize(II)I

    move-result v0

    return v0
.end method
