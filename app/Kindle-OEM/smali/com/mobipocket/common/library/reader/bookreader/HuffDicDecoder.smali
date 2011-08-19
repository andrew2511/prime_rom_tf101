.class Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;
.super Ljava/lang/Object;
.source "HuffDicDecoder.java"


# static fields
.field private static final CDIC_HEADER_SIZE:I = 0x10

.field private static final HUFFDIC_HEADER_SIZE:I = 0x18

.field private static final MAX_HUFFDIC_RECURSION_LEVEL:I = 0x20

.field private static final REC_TYPE_COMPDIC:I = 0x43444943

.field private static final REC_TYPE_HUFFMAN:I = 0x48554646


# instance fields
.field private final dicRecords:[[B

.field private final log2nbDicEntriesInOneRecord:I

.field private final mainTable:[I

.field private final secTable:[I


# direct methods
.method constructor <init>(Lcom/mobipocket/common/filesystem/ReadPDB;II)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-interface {p1, p2}, Lcom/mobipocket/common/filesystem/ReadPDB;->getRecord(I)[B

    move-result-object v0

    .line 55
    new-instance v1, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    invoke-direct {v1, v0, v6}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 56
    if-gt p3, v6, :cond_0

    .line 58
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File corrupted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    sub-int v2, p3, v6

    new-array v2, v2, [[B

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;->dicRecords:[[B

    move v2, v6

    .line 61
    :goto_0
    if-ge v2, p3, :cond_1

    .line 62
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;->dicRecords:[[B

    sub-int v4, v2, v6

    add-int v5, p2, v2

    invoke-interface {p1, v5}, Lcom/mobipocket/common/filesystem/ReadPDB;->getRecord(I)[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    new-instance v2, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;->dicRecords:[[B

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {v2, v3, v6}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 66
    :try_start_0
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v3

    const v4, 0x48554646

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v3

    const v4, 0x43444943

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v3

    const/16 v4, 0x18

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_3

    .line 70
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File corrupted OR book not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "File corrupted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v3

    .line 73
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    .line 74
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readVoid(I)V

    .line 76
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;->log2nbDicEntriesInOneRecord:I

    .line 79
    const/16 v2, 0x100

    invoke-static {v0, v3, v2}, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;->initTable([BII)[I

    move-result-object v2

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;->mainTable:[I

    .line 80
    const/16 v2, 0x40

    invoke-static {v0, v1, v2}, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;->initTable([BII)[I

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;->secTable:[I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    return-void
.end method

.method static initTable([BII)[I
    .locals 5
    .parameter "record"
    .parameter "beginOffset"
    .parameter "size"

    .prologue
    .line 91
    new-array v2, p2, [I

    .line 92
    .local v2, table:[I
    const/4 v1, 0x0

    .local v1, i:I
    move v0, p1

    .end local p1
    .local v0, beginOffset:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 94
    add-int/lit8 p1, v0, 0x1

    .end local v0           #beginOffset:I
    .restart local p1
    aget-byte v3, p0, v0

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #beginOffset:I
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 p1, v0, 0x1

    .end local v0           #beginOffset:I
    .restart local p1
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #beginOffset:I
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    aput v3, v2, v1

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    return-object v2
.end method


# virtual methods
.method uncompress([B[BI)I
    .locals 19
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 107
    const/4 v2, 0x0

    .line 113
    const/16 v3, 0x20

    new-array v3, v3, [I

    .line 114
    const/16 v4, 0x20

    new-array v4, v4, [I

    .line 116
    const/16 v5, 0x20

    new-array v5, v5, [I

    .line 117
    const/16 v6, 0x20

    new-array v6, v6, [I

    .line 119
    const/16 v7, 0x20

    new-array v7, v7, [[B

    .line 120
    const/4 v8, 0x0

    aput-object p1, v7, v8

    .line 121
    const/16 v8, 0x20

    new-array v8, v8, [I

    .line 122
    const/4 v9, 0x0

    aput p3, v8, v9

    .line 123
    const/16 v9, 0x20

    new-array v9, v9, [I

    .line 124
    const/16 v10, 0x20

    new-array v10, v10, [Z

    .line 125
    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-boolean v12, v10, v11

    move/from16 v18, v2

    move v2, v1

    move/from16 v1, v18

    .line 156
    :cond_0
    :goto_0
    aget v11, v6, v2

    if-gtz v11, :cond_1

    aget-boolean v11, v10, v2

    if-eqz v11, :cond_2

    .line 159
    :cond_1
    aget v11, v4, v2

    if-nez v11, :cond_5

    .line 161
    aget v11, v5, v2

    aput v11, v3, v2

    .line 162
    aget v11, v6, v2

    aput v11, v4, v2

    .line 163
    const/4 v11, 0x0

    aput v11, v6, v2

    .line 164
    aget-boolean v11, v10, v2

    if-nez v11, :cond_6

    aget v11, v4, v2

    const/16 v12, 0x20

    if-ge v11, v12, :cond_6

    .line 244
    :cond_2
    :goto_1
    aget v11, v9, v2

    aget v12, v8, v2

    if-lt v11, v12, :cond_d

    .line 253
    :cond_3
    if-lez v2, :cond_b

    .line 255
    add-int/lit8 v2, v2, -0x1

    .line 256
    aget v11, v6, v2

    if-nez v11, :cond_0

    aget-boolean v11, v10, v2

    if-eqz v11, :cond_4

    aget v11, v4, v2

    if-nez v11, :cond_0

    :cond_4
    aget v11, v9, v2

    aget v12, v8, v2

    if-ge v11, v12, :cond_3

    goto :goto_0

    .line 169
    :cond_5
    aget v11, v3, v2

    aget v12, v5, v2

    aget v13, v4, v2

    ushr-int/2addr v12, v13

    or-int/2addr v11, v12

    aput v11, v3, v2

    .line 171
    const/16 v11, 0x20

    aget v12, v4, v2

    sub-int/2addr v11, v12

    .line 172
    aget v12, v5, v2

    shl-int/2addr v12, v11

    aput v12, v5, v2

    .line 173
    aget v12, v6, v2

    if-lt v12, v11, :cond_7

    .line 175
    aget v12, v6, v2

    sub-int v11, v12, v11

    aput v11, v6, v2

    .line 177
    const/16 v11, 0x20

    aput v11, v4, v2

    .line 189
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;->mainTable:[I

    move-object v11, v0

    aget v12, v3, v2

    ushr-int/lit8 v12, v12, 0x18

    aget v11, v11, v12

    .line 190
    and-int/lit8 v12, v11, 0x1f

    .line 191
    ushr-int/lit8 v13, v11, 0x8

    .line 192
    aget v14, v3, v2

    const/16 v15, 0x20

    sub-int/2addr v15, v12

    ushr-int/2addr v14, v15

    .line 193
    and-int/lit16 v11, v11, 0x80

    const/16 v15, 0x80

    if-eq v11, v15, :cond_10

    move v11, v12

    move v12, v14

    .line 196
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;->secTable:[I

    move-object v13, v0

    const/4 v14, 0x1

    sub-int v14, v11, v14

    shl-int/lit8 v14, v14, 0x1

    aget v13, v13, v14

    if-ge v12, v13, :cond_8

    .line 198
    add-int/lit8 v11, v11, 0x1

    .line 199
    aget v12, v3, v2

    const/16 v13, 0x20

    sub-int/2addr v13, v11

    ushr-int/2addr v12, v13

    goto :goto_2

    .line 181
    :cond_7
    aget v11, v4, v2

    aget v12, v6, v2

    add-int/2addr v11, v12

    aput v11, v4, v2

    .line 182
    const/4 v11, 0x0

    aput v11, v6, v2

    .line 183
    aget-boolean v11, v10, v2

    if-nez v11, :cond_6

    goto/16 :goto_1

    .line 202
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;->secTable:[I

    move-object v13, v0

    const/4 v14, 0x1

    sub-int v14, v11, v14

    shl-int/lit8 v14, v14, 0x1

    add-int/lit8 v14, v14, 0x1

    aget v13, v13, v14

    move/from16 v18, v13

    move v13, v12

    move v12, v11

    move/from16 v11, v18

    .line 204
    :goto_3
    aget v14, v4, v2

    if-gt v12, v14, :cond_2

    .line 207
    aget v14, v3, v2

    shl-int/2addr v14, v12

    aput v14, v3, v2

    .line 208
    aget v14, v4, v2

    sub-int v12, v14, v12

    aput v12, v4, v2

    .line 210
    sub-int/2addr v11, v13

    .line 212
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;->log2nbDicEntriesInOneRecord:I

    move v12, v0

    ushr-int v12, v11, v12

    .line 213
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;->log2nbDicEntriesInOneRecord:I

    move v13, v0

    ushr-int v13, v11, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;->log2nbDicEntriesInOneRecord:I

    move v14, v0

    shl-int/2addr v13, v14

    sub-int/2addr v11, v13

    shl-int/lit8 v11, v11, 0x1

    add-int/lit8 v11, v11, 0x10

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;->dicRecords:[[B

    move-object v13, v0

    aget-object v13, v13, v12

    add-int/lit8 v14, v11, 0x1

    aget-byte v11, v13, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;->dicRecords:[[B

    move-object v13, v0

    aget-object v13, v13, v12

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v11, v13

    add-int/lit8 v11, v11, 0x10

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;->dicRecords:[[B

    move-object v13, v0

    aget-object v13, v13, v12

    add-int/lit8 v14, v11, 0x1

    aget-byte v11, v13, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;->dicRecords:[[B

    move-object v13, v0

    aget-object v13, v13, v12

    add-int/lit8 v15, v14, 0x1

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v11, v13

    .line 219
    const v13, -0x8001

    and-int/2addr v13, v11

    .line 220
    if-eq v11, v13, :cond_a

    .line 222
    const/4 v11, 0x0

    move v14, v1

    move v1, v11

    move v11, v15

    :goto_4
    if-ge v1, v13, :cond_9

    .line 224
    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;->dicRecords:[[B

    move-object/from16 v16, v0

    aget-object v16, v16, v12

    add-int/lit8 v17, v11, 0x1

    aget-byte v11, v16, v11

    aput-byte v11, p2, v14

    .line 222
    add-int/lit8 v1, v1, 0x1

    move/from16 v11, v17

    move v14, v15

    goto :goto_4

    :cond_9
    move v1, v14

    goto/16 :goto_0

    .line 229
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 230
    const/16 v11, 0x20

    if-lt v2, v11, :cond_c

    .line 264
    :cond_b
    return v1

    .line 235
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/bookreader/HuffDicDecoder;->dicRecords:[[B

    move-object v11, v0

    aget-object v11, v11, v12

    aput-object v11, v7, v2

    .line 236
    aput v15, v9, v2

    .line 237
    add-int v11, v15, v13

    aput v11, v8, v2

    .line 239
    const/4 v11, 0x0

    aput v11, v3, v2

    .line 240
    const/4 v11, 0x0

    aput v11, v4, v2

    .line 241
    const/4 v11, 0x0

    aput v11, v6, v2

    .line 242
    const/4 v11, 0x0

    aput-boolean v11, v10, v2

    goto/16 :goto_1

    .line 271
    :cond_d
    aget v11, v8, v2

    aget v12, v9, v2

    sub-int/2addr v11, v12

    const/4 v12, 0x4

    if-le v11, v12, :cond_e

    .line 273
    aget-object v11, v7, v2

    aget v12, v9, v2

    add-int/lit8 v13, v12, 0x1

    aput v13, v9, v2

    aget-byte v11, v11, v12

    shl-int/lit8 v11, v11, 0x18

    aget-object v12, v7, v2

    aget v13, v9, v2

    add-int/lit8 v14, v13, 0x1

    aput v14, v9, v2

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    aget-object v12, v7, v2

    aget v13, v9, v2

    add-int/lit8 v14, v13, 0x1

    aput v14, v9, v2

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    aget-object v12, v7, v2

    aget v13, v9, v2

    add-int/lit8 v14, v13, 0x1

    aput v14, v9, v2

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    aput v11, v5, v2

    .line 277
    const/16 v11, 0x20

    aput v11, v6, v2

    goto/16 :goto_0

    .line 280
    :cond_e
    const/4 v11, 0x0

    .line 282
    :goto_5
    aget v12, v8, v2

    aget v13, v9, v2

    sub-int/2addr v12, v13

    if-lez v12, :cond_f

    .line 284
    shl-int/lit8 v11, v11, 0x8

    .line 285
    aget-object v12, v7, v2

    aget v13, v9, v2

    add-int/lit8 v14, v13, 0x1

    aput v14, v9, v2

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    .line 286
    aget v12, v6, v2

    add-int/lit8 v12, v12, 0x8

    aput v12, v6, v2

    goto :goto_5

    .line 288
    :cond_f
    const/16 v12, 0x20

    aget v13, v6, v2

    sub-int/2addr v12, v13

    shl-int/2addr v11, v12

    aput v11, v5, v2

    .line 289
    const/4 v11, 0x1

    aput-boolean v11, v10, v2

    goto/16 :goto_0

    :cond_10
    move v11, v13

    move v13, v14

    goto/16 :goto_3
.end method
