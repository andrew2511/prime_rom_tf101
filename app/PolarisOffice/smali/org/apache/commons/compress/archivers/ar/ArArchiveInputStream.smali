.class public Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "ArArchiveInputStream.java"


# instance fields
.field private closed:Z

.field private currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

.field private entryOffset:J

.field private final input:Ljava/io/InputStream;

.field private namebuffer:[B

.field private offset:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .parameter "pInput"

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    .line 44
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 47
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    .line 62
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->closed:Z

    .line 64
    return-void
.end method

.method private asInt([B)I
    .locals 1
    .parameter "input"

    .prologue
    .line 196
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BI)I

    move-result v0

    return v0
.end method

.method private asInt([BI)I
    .locals 1
    .parameter "input"
    .parameter "base"

    .prologue
    .line 200
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private asLong([B)J
    .locals 2
    .parameter "input"

    .prologue
    .line 192
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getExtendedName(I)Ljava/lang/String;
    .locals 4
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    if-nez v1, :cond_0

    .line 179
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot process GNU long filename as no // record was found"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_0
    move v0, p1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 182
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    aget-byte v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 183
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    const/4 v2, 0x1

    sub-int v2, v0, v2

    aget-byte v1, v1, v2

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    .line 184
    add-int/lit8 v0, v0, -0x1

    .line 186
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    sub-int v2, v0, p1

    invoke-static {v1, p1, v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 181
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Failed to read entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static matches([BI)Z
    .locals 4
    .parameter "signature"
    .parameter "length"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 260
    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    move v0, v2

    .line 288
    :goto_0
    return v0

    .line 263
    :cond_0
    aget-byte v0, p0, v2

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    move v0, v2

    .line 264
    goto :goto_0

    .line 266
    :cond_1
    aget-byte v0, p0, v3

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 267
    goto :goto_0

    .line 269
    :cond_2
    const/4 v0, 0x2

    aget-byte v0, p0, v0

    const/16 v1, 0x61

    if-eq v0, v1, :cond_3

    move v0, v2

    .line 270
    goto :goto_0

    .line 272
    :cond_3
    const/4 v0, 0x3

    aget-byte v0, p0, v0

    const/16 v1, 0x72

    if-eq v0, v1, :cond_4

    move v0, v2

    .line 273
    goto :goto_0

    .line 275
    :cond_4
    const/4 v0, 0x4

    aget-byte v0, p0, v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_5

    move v0, v2

    .line 276
    goto :goto_0

    .line 278
    :cond_5
    const/4 v0, 0x5

    aget-byte v0, p0, v0

    const/16 v1, 0x68

    if-eq v0, v1, :cond_6

    move v0, v2

    .line 279
    goto :goto_0

    .line 281
    :cond_6
    const/4 v0, 0x6

    aget-byte v0, p0, v0

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_7

    move v0, v2

    .line 282
    goto :goto_0

    .line 284
    :cond_7
    const/4 v0, 0x7

    aget-byte v0, p0, v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_8

    move v0, v2

    .line 285
    goto :goto_0

    :cond_8
    move v0, v3

    .line 288
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->closed:Z

    .line 221
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 223
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 224
    return-void
.end method

.method public getNextArEntry()Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    move-object v4, v0

    if-eqz v4, :cond_2

    .line 75
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    move-wide v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLength()J

    move-result-wide v8

    add-long v14, v6, v8

    .line 76
    .local v14, entryEnd:J
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    move-wide v6, v0

    cmp-long v4, v6, v14

    if-gez v4, :cond_1

    .line 77
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->read()I

    move-result v27

    .line 78
    .local v27, x:I
    const/4 v4, -0x1

    move/from16 v0, v27

    move v1, v4

    if-ne v0, v1, :cond_0

    .line 81
    const/4 v4, 0x0

    .line 167
    .end local v14           #entryEnd:J
    .end local v27           #x:I
    :goto_0
    return-object v4

    .line 84
    .restart local v14       #entryEnd:J
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 87
    .end local v14           #entryEnd:J
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    move-wide v6, v0

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_5

    .line 88
    const-string v4, "!<arch>\n"

    invoke-static {v4}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    move-result-object v16

    .line 89
    .local v16, expected:[B
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    move v0, v4

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .line 90
    .local v25, realized:[B
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->read([B)I

    move-result v24

    .line 91
    .local v24, read:I
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    move/from16 v0, v24

    move v1, v4

    if-eq v0, v1, :cond_3

    .line 92
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "failed to read header. Occured at byte: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getBytesRead()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 94
    :cond_3
    const/16 v19, 0x0

    .local v19, i:I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    move/from16 v0, v19

    move v1, v4

    if-ge v0, v1, :cond_5

    .line 95
    aget-byte v4, v16, v19

    aget-byte v5, v25, v19

    if-eq v4, v5, :cond_4

    .line 96
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "invalid header "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static/range {v25 .. v25}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 94
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 101
    .end local v16           #expected:[B
    .end local v19           #i:I
    .end local v24           #read:I
    .end local v25           #realized:[B
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    move-wide v6, v0

    const-wide/16 v8, 0x2

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_6

    .line 102
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->read()I

    move-result v4

    if-gez v4, :cond_6

    .line 104
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 108
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    if-nez v4, :cond_7

    .line 109
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 112
    :cond_7
    const/16 v4, 0x10

    move v0, v4

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 113
    .local v22, name:[B
    const/16 v4, 0xc

    move v0, v4

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 114
    .local v20, lastmodified:[B
    const/4 v4, 0x6

    move v0, v4

    new-array v0, v0, [B

    move-object/from16 v26, v0

    .line 115
    .local v26, userid:[B
    const/4 v4, 0x6

    move v0, v4

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 116
    .local v18, groupid:[B
    const/16 v4, 0x8

    move v0, v4

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 117
    .local v17, filemode:[B
    const/16 v4, 0xa

    move v0, v4

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 119
    .local v21, length:[B
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->read([B)I

    .line 120
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->read([B)I

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->read([B)I

    .line 122
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->read([B)I

    .line 123
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->read([B)I

    .line 124
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->read([B)I

    .line 127
    const-string v4, "`\n"

    invoke-static {v4}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    move-result-object v16

    .line 128
    .restart local v16       #expected:[B
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    move v0, v4

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .line 129
    .restart local v25       #realized:[B
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->read([B)I

    move-result v24

    .line 130
    .restart local v24       #read:I
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    move/from16 v0, v24

    move v1, v4

    if-eq v0, v1, :cond_8

    .line 131
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "failed to read entry trailer. Occured at byte: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getBytesRead()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 133
    :cond_8
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_2
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    move/from16 v0, v19

    move v1, v4

    if-ge v0, v1, :cond_a

    .line 134
    aget-byte v4, v16, v19

    aget-byte v5, v25, v19

    if-eq v4, v5, :cond_9

    .line 135
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "invalid entry trailer. not read the content? Occured at byte: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getBytesRead()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 133
    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 140
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    move-wide v6, v0

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    .line 147
    invoke-static/range {v22 .. v22}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, temp:Ljava/lang/String;
    const-string v4, "//"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 150
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([B)I

    move-result v13

    .line 151
    .local v13, bufflen:I
    new-array v4, v13, [B

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    move-object v4, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v6

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->read([BII)I

    move-result v24

    .line 153
    move/from16 v0, v24

    move v1, v13

    if-eq v0, v1, :cond_b

    .line 154
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuffer;

    .end local v5           #temp:Ljava/lang/String;
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Failed to read complete // record: expected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " read="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 156
    .restart local v5       #temp:Ljava/lang/String;
    :cond_b
    new-instance v4, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    int-to-long v6, v13

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;-><init>(Ljava/lang/String;J)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 157
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getNextArEntry()Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    move-result-object v4

    goto/16 :goto_0

    .line 158
    .end local v13           #bufflen:I
    :cond_c
    const-string v4, "/"

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 159
    const/4 v4, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 164
    :cond_d
    :goto_3
    new-instance v4, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asLong([B)J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([B)I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([B)I

    move-result v9

    const/16 v10, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v10

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BI)I

    move-result v10

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asLong([B)J

    move-result-wide v11

    invoke-direct/range {v4 .. v12}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;-><init>(Ljava/lang/String;JIIIJ)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    move-object v4, v0

    goto/16 :goto_0

    .line 160
    :cond_e
    const-string v4, "^/\\d+"

    invoke-virtual {v5, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 161
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 162
    .local v23, offset:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getExtendedName(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getNextArEntry()Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 8
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    move v3, p3

    .line 233
    .local v3, toRead:I
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    if-eqz v4, :cond_0

    .line 234
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLength()J

    move-result-wide v6

    add-long v0, v4, v6

    .line 235
    .local v0, entryEnd:J
    if-lez p3, :cond_1

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 236
    int-to-long v4, p3

    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    sub-long v6, v0, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    .line 241
    .end local v0           #entryEnd:J
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v4, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 242
    .local v2, ret:I
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->count(I)V

    .line 243
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    if-lez v2, :cond_2

    move v6, v2

    :goto_0
    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    move v4, v2

    .line 244
    .end local v2           #ret:I
    :goto_1
    return v4

    .line 238
    .restart local v0       #entryEnd:J
    :cond_1
    const/4 v4, -0x1

    goto :goto_1

    .line 243
    .end local v0           #entryEnd:J
    .restart local v2       #ret:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method
