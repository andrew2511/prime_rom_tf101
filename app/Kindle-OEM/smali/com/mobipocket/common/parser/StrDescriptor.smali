.class public Lcom/mobipocket/common/parser/StrDescriptor;
.super Ljava/lang/Object;
.source "StrDescriptor.java"


# instance fields
.field public content:[C

.field public length:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/mobipocket/common/parser/StrDescriptor;)V
    .locals 1
    .parameter "to_copy"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget v0, p1, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    iput v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    .line 68
    iget v0, p1, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    iput v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    .line 69
    iget-object v0, p1, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    iput-object v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    .line 48
    iget-object v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    array-length v0, v0

    iput v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter "str"
    .parameter "_start"
    .parameter "_length"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p2, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    .line 54
    iput p3, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    .line 56
    return-void
.end method

.method public constructor <init>([C)V
    .locals 1
    .parameter "_content"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    .line 40
    array-length v0, p1

    iput v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    .line 41
    iput-object p1, p0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    .line 42
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 0
    .parameter "_content"
    .parameter "_start"
    .parameter "_length"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p2, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    .line 61
    iput p3, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    .line 62
    iput-object p1, p0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    .line 63
    return-void
.end method


# virtual methods
.method public addToStart(I)V
    .locals 1
    .parameter "toAdd"

    .prologue
    .line 86
    iget v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    .line 87
    return-void
.end method

.method public allocate(I)V
    .locals 6
    .parameter "size"

    .prologue
    const/4 v5, 0x0

    .line 181
    iget v2, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    if-ge p1, v2, :cond_1

    iget v2, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    move v0, v2

    .line 183
    .local v0, min_size:I
    :goto_0
    new-array v1, v0, [C

    .line 184
    .local v1, new_content:[C
    iget v2, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    if-lez v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    iget v3, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    iget v4, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    invoke-static {v2, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    :cond_0
    iput v5, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    .line 187
    iput-object v1, p0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    .line 188
    return-void

    .end local v0           #min_size:I
    .end local v1           #new_content:[C
    :cond_1
    move v0, p1

    .line 181
    goto :goto_0
.end method

.method public allocate_more(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 192
    iget v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/parser/StrDescriptor;->allocate(I)V

    .line 193
    return-void
.end method

.method public attach([C)V
    .locals 1
    .parameter "pContent"

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/StrDescriptor;->reuse()V

    .line 171
    iput-object p1, p0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    .line 175
    array-length v0, p1

    iput v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    .line 176
    return-void
.end method

.method public charAt(I)C
    .locals 2
    .parameter "index"

    .prologue
    .line 122
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    if-lt p1, v0, :cond_1

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    iget v1, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public concat(C)V
    .locals 1
    .parameter "character"

    .prologue
    .line 197
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/parser/StrDescriptor;->allocate_more(I)V

    .line 198
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/parser/StrDescriptor;->concat_fast(C)V

    .line 199
    return-void
.end method

.method public concat(Lcom/mobipocket/common/parser/StrDescriptor;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 211
    invoke-virtual {p1}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {p1}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/parser/StrDescriptor;->allocate_more(I)V

    .line 214
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/parser/StrDescriptor;->concat_fast(Lcom/mobipocket/common/parser/StrDescriptor;)V

    goto :goto_0
.end method

.method public concat([CI)V
    .locals 0
    .parameter "txt"
    .parameter "length"

    .prologue
    .line 203
    if-nez p2, :cond_0

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mobipocket/common/parser/StrDescriptor;->allocate_more(I)V

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/mobipocket/common/parser/StrDescriptor;->concat_fast([CI)V

    goto :goto_0
.end method

.method public concat_fast(C)V
    .locals 3
    .parameter "character"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    iget v1, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    iget v2, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    add-int/2addr v1, v2

    aput-char p1, v0, v1

    .line 230
    iget v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    .line 231
    return-void
.end method

.method public concat_fast(Lcom/mobipocket/common/parser/StrDescriptor;)V
    .locals 5
    .parameter "str"

    .prologue
    .line 219
    iget v0, p1, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    if-gtz v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p1, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    iget v1, p1, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    iget-object v2, p0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    iget v3, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    iget v4, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    add-int/2addr v3, v4

    iget v4, p1, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    iget v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    iget v1, p1, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    goto :goto_0
.end method

.method public concat_fast(Lcom/mobipocket/common/parser/StrDescriptor;II)V
    .locals 5
    .parameter "str"
    .parameter "begin"
    .parameter "_length"

    .prologue
    .line 241
    iget-object v0, p1, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    iget v1, p1, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    iget v3, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    iget v4, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    add-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    iget v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    .line 243
    return-void
.end method

.method public concat_fast([CI)V
    .locals 4
    .parameter "txt"
    .parameter "_length"

    .prologue
    .line 235
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    iget v2, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    iget v3, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    add-int/2addr v2, v3

    invoke-static {p1, v0, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    iget v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    .line 237
    return-void
.end method

.method public copy(Lcom/mobipocket/common/parser/StrDescriptor;)V
    .locals 1
    .parameter "to_copy"

    .prologue
    .line 74
    iget v0, p1, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    iput v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    .line 75
    iget v0, p1, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    iput v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    .line 76
    iget-object v0, p1, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    iput-object v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    .line 77
    return-void
.end method

.method public indexOf(CII)I
    .locals 2
    .parameter "ch"
    .parameter "fromIndex"
    .parameter "maxIndex"

    .prologue
    const/4 v1, -0x1

    .line 132
    if-ne p3, v1, :cond_0

    iget p3, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    .line 133
    :cond_0
    iget v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    add-int/2addr p2, v0

    .line 134
    iget v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    add-int/2addr p3, v0

    .line 136
    :goto_0
    if-ge p2, p3, :cond_2

    .line 138
    iget-object v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    aget-char v0, v0, p2

    if-ne v0, p1, :cond_1

    .line 140
    iget v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    sub-int v0, p2, v0

    .line 145
    :goto_1
    return v0

    .line 142
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 145
    goto :goto_1
.end method

.method public length()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    return v0
.end method

.method public mid_of(Lcom/mobipocket/common/parser/StrDescriptor;II)V
    .locals 1
    .parameter "src"
    .parameter "_start"
    .parameter "_length"

    .prologue
    .line 156
    if-nez p3, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/StrDescriptor;->reuse()V

    .line 166
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p1, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    iput-object v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    .line 163
    iget v0, p1, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    .line 164
    iput p3, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    goto :goto_0
.end method

.method public reuse()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    .line 116
    iput v1, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    .line 117
    iput v1, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    .line 118
    return-void
.end method

.method public serialize(Ljava/io/DataOutputStream;)V
    .locals 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    iget v2, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    iget v3, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    add-int v0, v2, v3

    .line 256
    .local v0, end:I
    iget v1, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 258
    iget-object v2, p0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    aget-char v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_0
    return-void
.end method

.method public setLength(I)V
    .locals 0
    .parameter "length"

    .prologue
    .line 103
    iput p1, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    .line 104
    return-void
.end method

.method public stripBlanks(ZZ)V
    .locals 7
    .parameter "stripLeft"
    .parameter "stripRight"

    .prologue
    const/16 v6, 0x20

    const/16 v5, 0xd

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/4 v2, 0x1

    .line 265
    if-eqz p1, :cond_1

    .line 267
    :goto_0
    iget v1, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v0

    .local v0, c:C
    if-eq v0, v6, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    if-ne v0, v3, :cond_1

    .line 269
    :cond_0
    iget v1, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    .line 270
    iget v1, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    goto :goto_0

    .line 274
    .end local v0           #c:C
    :cond_1
    if-eqz p2, :cond_3

    .line 276
    :goto_1
    iget v1, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v0

    .restart local v0       #c:C
    if-eq v0, v6, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_2

    if-ne v0, v3, :cond_3

    .line 277
    :cond_2
    iget v1, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    goto :goto_1

    .line 279
    .end local v0           #c:C
    :cond_3
    return-void
.end method

.method public substring(I)V
    .locals 1
    .parameter "beginIndex"

    .prologue
    .line 91
    iget v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    .line 92
    iget v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    .line 93
    return-void
.end method

.method public substring(II)V
    .locals 1
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    .line 97
    iget v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    .line 98
    sub-int v0, p2, p1

    iput v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    .line 99
    return-void
.end method

.method public toInteger(I)I
    .locals 7
    .parameter "begin"

    .prologue
    const/16 v6, 0x30

    const/4 v5, -0x1

    .line 288
    iget v3, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    if-nez v3, :cond_0

    move v3, v5

    .line 300
    :goto_0
    return v3

    .line 291
    :cond_0
    const/4 v2, 0x0

    .line 292
    .local v2, val:I
    move v1, p1

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    if-ge v1, v3, :cond_2

    .line 294
    invoke-virtual {p0, v1}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v0

    .line 295
    .local v0, c:C
    if-lt v0, v6, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    .line 296
    mul-int/lit8 v3, v2, 0xa

    sub-int v4, v0, v6

    add-int v2, v3, v4

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v3, v5

    .line 298
    goto :goto_0

    .end local v0           #c:C
    :cond_2
    move v3, v2

    .line 300
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    if-nez v0, :cond_0

    .line 249
    const-string v0, ""

    .line 250
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    iget v2, p0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    iget v3, p0, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method
