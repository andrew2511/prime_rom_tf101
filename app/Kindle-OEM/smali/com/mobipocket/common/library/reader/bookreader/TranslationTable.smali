.class Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;
.super Ljava/lang/Object;
.source "TranslationTable.java"


# instance fields
.field private lastCurrentPosition:I

.field private lastFilePosition:I

.field private translationTable:[B

.field private final utf8BeginOffset:I


# direct methods
.method constructor <init>([BII)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->translationTable:[B

    .line 118
    invoke-static {p1}, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->getUTF8BeginOffset([B)I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->utf8BeginOffset:I

    .line 119
    iget v0, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->utf8BeginOffset:I

    .line 125
    shl-int/lit8 v1, v7, 0x2

    iput v1, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->lastCurrentPosition:I

    .line 126
    iput v0, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->lastFilePosition:I

    move v1, v7

    move v2, v0

    move v0, v7

    .line 128
    :goto_0
    if-ge v2, p2, :cond_2

    .line 131
    aget-byte v3, p1, v2

    and-int/lit16 v4, v3, 0xc0

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_5

    move v4, v7

    .line 135
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 136
    shl-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    .line 137
    and-int/lit16 v5, v3, 0xc0

    const/16 v6, 0x80

    if-eq v5, v6, :cond_1

    const/4 v5, 0x4

    if-lt v4, v5, :cond_0

    .line 138
    :cond_1
    add-int/2addr v2, v4

    move v3, v2

    move v2, v4

    .line 141
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 142
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->translationTable:[B

    aget-byte v5, v4, v0

    shl-int/lit8 v6, v1, 0x1

    shl-int/2addr v2, v6

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 145
    const/4 v2, 0x3

    if-le v1, v2, :cond_4

    .line 148
    add-int/lit8 v0, v0, 0x1

    .line 149
    if-lt p3, v3, :cond_3

    .line 151
    shl-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->lastCurrentPosition:I

    .line 152
    iput v3, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->lastFilePosition:I

    move v1, v7

    move v2, v3

    goto :goto_0

    .line 156
    :cond_2
    return-void

    :cond_3
    move v1, v7

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_0

    :cond_5
    move v3, v2

    move v2, v7

    goto :goto_1
.end method

.method static getUTF8BeginOffset([B)I
    .locals 3
    .parameter "src"

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xc0

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    return v0
.end method


# virtual methods
.method getFilePositionInRecord(I)I
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 164
    iget v0, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->utf8BeginOffset:I

    .line 166
    iget v1, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->lastCurrentPosition:I

    if-lt p1, v1, :cond_4

    .line 169
    iget v0, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->lastFilePosition:I

    .line 170
    iget v1, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->lastCurrentPosition:I

    shr-int/lit8 v1, v1, 0x2

    move v7, v1

    move v1, v0

    move v0, v7

    .line 173
    :goto_0
    shr-int/lit8 v2, p1, 0x2

    .line 174
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->translationTable:[B

    array-length v3, v3

    if-le v2, v3, :cond_3

    .line 176
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->translationTable:[B

    array-length v2, v2

    move v7, v2

    move v2, v1

    move v1, v0

    move v0, v7

    .line 177
    :goto_1
    if-ge v1, v0, :cond_0

    .line 182
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->translationTable:[B

    aget-byte v3, v3, v1

    .line 183
    and-int/lit8 v4, v3, 0x3

    shr-int/lit8 v5, v3, 0x2

    and-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    shr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    shr-int/lit8 v3, v3, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    :cond_0
    iput v2, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->lastFilePosition:I

    .line 186
    shl-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->lastCurrentPosition:I

    .line 188
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->translationTable:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->translationTable:[B

    aget-byte v0, v1, v0

    .line 190
    and-int/lit8 v1, p1, 0x3

    move v3, v2

    move v2, v6

    .line 191
    :goto_2
    if-ge v2, v1, :cond_1

    .line 192
    and-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 193
    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move v0, v3

    .line 198
    :goto_3
    return v0

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    move v7, v2

    move v2, v1

    move v1, v0

    move v0, v7

    goto :goto_1

    :cond_4
    move v1, v0

    move v0, v6

    goto :goto_0
.end method

.method getTextPositionInRecord(I)I
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 209
    iget v0, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->utf8BeginOffset:I

    .line 216
    iget v1, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->utf8BeginOffset:I

    if-gt p1, v1, :cond_0

    move v0, v5

    .line 251
    :goto_0
    return v0

    .line 221
    :cond_0
    iget v1, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->lastFilePosition:I

    if-lt p1, v1, :cond_5

    .line 224
    iget v0, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->lastFilePosition:I

    .line 225
    iget v1, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->lastCurrentPosition:I

    shr-int/lit8 v1, v1, 0x2

    move v2, v0

    move v0, v5

    .line 229
    :goto_1
    if-ge v2, p1, :cond_1

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->translationTable:[B

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 231
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->translationTable:[B

    aget-byte v0, v0, v1

    .line 232
    and-int/lit8 v3, v0, 0x3

    ushr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x4

    and-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    .line 233
    add-int/lit8 v1, v1, 0x1

    .line 234
    goto :goto_1

    .line 236
    :cond_1
    if-le v2, p1, :cond_4

    .line 238
    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    .line 239
    const/4 v3, 0x1

    move v6, v3

    move v3, v2

    move v2, v6

    .line 241
    :goto_2
    if-le v3, p1, :cond_3

    .line 243
    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    sub-int v0, v3, v0

    .line 244
    const/4 v2, 0x2

    move v6, v2

    move v2, v0

    move v0, v6

    .line 246
    :goto_3
    if-le v2, p1, :cond_2

    .line 248
    const/4 v0, 0x3

    .line 251
    :cond_2
    shl-int/lit8 v1, v1, 0x2

    sub-int v0, v1, v0

    goto :goto_0

    :cond_3
    move v0, v2

    move v2, v3

    goto :goto_3

    :cond_4
    move v3, v2

    move v2, v5

    goto :goto_2

    :cond_5
    move v1, v5

    move v2, v0

    move v0, v5

    goto :goto_1
.end method
