.class Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;
.super Ljava/lang/Object;
.source "Simple8BitZipEncoding.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;
    }
.end annotation


# instance fields
.field private final highChars:[C

.field private final reverseMapping:Ljava/util/List;


# direct methods
.method public constructor <init>([C)V
    .locals 5
    .parameter "highChars"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    check-cast v3, [C

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->highChars:[C

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->highChars:[C

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .local v2, temp:Ljava/util/List;
    const/16 v0, 0x7f

    .line 97
    .local v0, code:B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->highChars:[C

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 98
    new-instance v3, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;

    add-int/lit8 v4, v0, 0x1

    int-to-byte v0, v4

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->highChars:[C

    aget-char v4, v4, v1

    invoke-direct {v3, v0, v4}, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;-><init>(BC)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 102
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    .line 103
    return-void
.end method

.method private encodeHighChar(C)Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;
    .locals 7
    .parameter "c"

    .prologue
    const/4 v6, 0x0

    .line 168
    const/4 v1, 0x0

    .line 169
    .local v1, i0:I
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 171
    .local v2, i1:I
    :goto_0
    if-le v2, v1, :cond_2

    .line 173
    sub-int v5, v2, v1

    div-int/lit8 v5, v5, 0x2

    add-int v0, v1, v5

    .line 175
    .local v0, i:I
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;

    .line 177
    .local v3, m:Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;
    iget-char v5, v3, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    if-ne v5, p1, :cond_0

    move-object v5, v3

    .line 198
    .end local v0           #i:I
    .end local v3           #m:Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;
    :goto_1
    return-object v5

    .line 181
    .restart local v0       #i:I
    .restart local v3       #m:Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;
    :cond_0
    iget-char v5, v3, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    if-ge v5, p1, :cond_1

    .line 182
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 184
    :cond_1
    move v2, v0

    goto :goto_0

    .line 188
    .end local v0           #i:I
    .end local v3           #m:Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;
    :cond_2
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_3

    move-object v5, v6

    .line 189
    goto :goto_1

    .line 192
    :cond_3
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;

    .line 194
    .local v4, r:Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;
    iget-char v5, v4, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    if-eq v5, p1, :cond_4

    move-object v5, v6

    .line 195
    goto :goto_1

    :cond_4
    move-object v5, v4

    .line 198
    goto :goto_1
.end method


# virtual methods
.method public canEncode(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 207
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 209
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 211
    .local v0, c:C
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->canEncodeChar(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    const/4 v2, 0x0

    .line 216
    .end local v0           #c:C
    :goto_1
    return v2

    .line 207
    .restart local v0       #c:C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v0           #c:C
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public canEncodeChar(C)Z
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    .line 127
    if-ltz p1, :cond_0

    const/16 v1, 0x80

    if-ge p1, v1, :cond_0

    move v1, v2

    .line 132
    :goto_0
    return v1

    .line 131
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->encodeHighChar(C)Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;

    move-result-object v0

    .line 132
    .local v0, r:Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;
    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public decode([B)Ljava/lang/String;
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    array-length v2, p1

    new-array v1, v2, [C

    .line 253
    .local v1, ret:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 254
    aget-byte v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->decodeByte(B)C

    move-result v2

    aput-char v2, v1, v0

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public decodeByte(B)C
    .locals 2
    .parameter "b"

    .prologue
    .line 113
    if-ltz p1, :cond_0

    .line 114
    int-to-char v0, p1

    .line 118
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->highChars:[C

    add-int/lit16 v1, p1, 0x80

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 5
    .parameter "name"

    .prologue
    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 227
    .local v2, out:Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 229
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 231
    .local v0, c:C
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_0

    .line 232
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->growBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 235
    :cond_0
    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->pushEncodedChar(Ljava/nio/ByteBuffer;C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 237
    invoke-static {v2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->appendSurrogate(Ljava/nio/ByteBuffer;C)V

    .line 227
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 242
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 243
    return-object v2
.end method

.method public pushEncodedChar(Ljava/nio/ByteBuffer;C)Z
    .locals 3
    .parameter "bb"
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    .line 146
    if-ltz p2, :cond_0

    const/16 v1, 0x80

    if-ge p2, v1, :cond_0

    .line 147
    int-to-byte v1, p2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move v1, v2

    .line 156
    :goto_0
    return v1

    .line 151
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding;->encodeHighChar(C)Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;

    move-result-object v0

    .line 152
    .local v0, r:Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;
    if-nez v0, :cond_1

    .line 153
    const/4 v1, 0x0

    goto :goto_0

    .line 155
    :cond_1
    iget-byte v1, v0, Lorg/apache/commons/compress/archivers/zip/Simple8BitZipEncoding$Simple8BitChar;->code:B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move v1, v2

    .line 156
    goto :goto_0
.end method
