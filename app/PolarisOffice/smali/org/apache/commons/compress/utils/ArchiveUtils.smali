.class public Lorg/apache/commons/compress/utils/ArchiveUtils;
.super Ljava/lang/Object;
.source "ArchiveUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static isEqual([BII[BII)Z
    .locals 7
    .parameter "buffer1"
    .parameter "offset1"
    .parameter "length1"
    .parameter "buffer2"
    .parameter "offset2"
    .parameter "length2"

    .prologue
    .line 191
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result v0

    return v0
.end method

.method public static isEqual([BII[BIIZ)Z
    .locals 6
    .parameter "buffer1"
    .parameter "offset1"
    .parameter "length1"
    .parameter "buffer2"
    .parameter "offset2"
    .parameter "length2"
    .parameter "ignoreTrailingNulls"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 149
    if-ge p2, p5, :cond_0

    move v1, p2

    .line 150
    .local v1, minLen:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 151
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p4, v0

    aget-byte v3, p3, v3

    if-eq v2, v3, :cond_1

    move v2, v4

    .line 174
    :goto_2
    return v2

    .end local v0           #i:I
    .end local v1           #minLen:I
    :cond_0
    move v1, p5

    .line 149
    goto :goto_0

    .line 150
    .restart local v0       #i:I
    .restart local v1       #minLen:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    :cond_2
    if-ne p2, p5, :cond_3

    move v2, v5

    .line 156
    goto :goto_2

    .line 158
    :cond_3
    if-eqz p6, :cond_8

    .line 159
    if-le p2, p5, :cond_5

    .line 160
    move v0, p5

    :goto_3
    if-ge v0, p2, :cond_7

    .line 161
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    if-eqz v2, :cond_4

    move v2, v4

    .line 162
    goto :goto_2

    .line 160
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 166
    :cond_5
    move v0, p2

    :goto_4
    if-ge v0, p5, :cond_7

    .line 167
    add-int v2, p4, v0

    aget-byte v2, p3, v2

    if-eqz v2, :cond_6

    move v2, v4

    .line 168
    goto :goto_2

    .line 166
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    move v2, v5

    .line 172
    goto :goto_2

    :cond_8
    move v2, v4

    .line 174
    goto :goto_2
.end method

.method public static isEqual([B[B)Z
    .locals 7
    .parameter "buffer1"
    .parameter "buffer2"

    .prologue
    const/4 v1, 0x0

    .line 202
    array-length v2, p0

    array-length v5, p1

    move-object v0, p0

    move-object v3, p1

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result v0

    return v0
.end method

.method public static isEqual([B[BZ)Z
    .locals 7
    .parameter "buffer1"
    .parameter "buffer2"
    .parameter "ignoreTrailingNulls"

    .prologue
    const/4 v1, 0x0

    .line 214
    array-length v2, p0

    array-length v5, p1

    move-object v0, p0

    move-object v3, p1

    move v4, v1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result v0

    return v0
.end method

.method public static isEqualWithNull([BII[BII)Z
    .locals 7
    .parameter "buffer1"
    .parameter "offset1"
    .parameter "length1"
    .parameter "buffer2"
    .parameter "offset2"
    .parameter "length2"

    .prologue
    .line 231
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result v0

    return v0
.end method

.method public static matchAsciiBuffer(Ljava/lang/String;[B)Z
    .locals 2
    .parameter "expected"
    .parameter "buffer"

    .prologue
    .line 85
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v0

    return v0
.end method

.method public static matchAsciiBuffer(Ljava/lang/String;[BII)Z
    .locals 8
    .parameter "expected"
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v1, 0x0

    .line 70
    :try_start_0
    const-string v2, "ASCII"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    .local v0, buffer1:[B
    array-length v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, v1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isEqual([BII[BIIZ)Z

    move-result v1

    return v1

    .line 71
    .end local v0           #buffer1:[B
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 72
    .local v7, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toAsciiBytes(Ljava/lang/String;)[B
    .locals 2
    .parameter "inputString"

    .prologue
    .line 97
    :try_start_0
    const-string v1, "ASCII"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 98
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 99
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toAsciiString([B)Ljava/lang/String;
    .locals 3
    .parameter "inputBytes"

    .prologue
    .line 111
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ASCII"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 112
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 113
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toAsciiString([BII)Ljava/lang/String;
    .locals 3
    .parameter "inputBytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 127
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ASCII"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 128
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 129
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toString(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Ljava/lang/String;
    .locals 6
    .parameter "entry"

    .prologue
    const/16 v5, 0x20

    .line 44
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-interface {p0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x64

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 46
    invoke-interface {p0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, size:Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 49
    const/4 v0, 0x7

    .local v0, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_1

    .line 50
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 49
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 45
    .end local v0           #i:I
    .end local v2           #size:Ljava/lang/String;
    :cond_0
    const/16 v3, 0x2d

    goto :goto_0

    .line 52
    .restart local v0       #i:I
    .restart local v2       #size:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {p0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
