.class Ljava/util/jar/InitManifest;
.super Ljava/lang/Object;
.source "InitManifest.java"


# instance fields
.field private final buf:[B

.field private consecutiveLineBreaks:I

.field private name:Ljava/util/jar/Attributes$Name;

.field private pos:I

.field private value:Ljava/lang/String;

.field private final valueBuffer:Ljava/lang/UnsafeByteSequence;


# direct methods
.method constructor <init>([BLjava/util/jar/Attributes;Ljava/util/jar/Attributes$Name;)V
    .registers 7
    .parameter "buf"
    .parameter "main"
    .parameter "ver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/UnsafeByteSequence;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/UnsafeByteSequence;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/InitManifest;->valueBuffer:Ljava/lang/UnsafeByteSequence;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    .line 42
    iput-object p1, p0, Ljava/util/jar/InitManifest;->buf:[B

    .line 45
    invoke-direct {p0}, Ljava/util/jar/InitManifest;->readHeader()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p3, :cond_3a

    iget-object v0, p0, Ljava/util/jar/InitManifest;->name:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, p3}, Ljava/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 46
    :cond_21
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing version attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_3a
    iget-object v0, p0, Ljava/util/jar/InitManifest;->name:Ljava/util/jar/Attributes$Name;

    iget-object v1, p0, Ljava/util/jar/InitManifest;->value:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :goto_41
    invoke-direct {p0}, Ljava/util/jar/InitManifest;->readHeader()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 51
    iget-object v0, p0, Ljava/util/jar/InitManifest;->name:Ljava/util/jar/Attributes$Name;

    iget-object v1, p0, Ljava/util/jar/InitManifest;->value:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 53
    :cond_4f
    return-void
.end method

.method private readHeader()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    iget v0, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    if-le v0, v2, :cond_a

    .line 102
    iput v1, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    move v0, v1

    .line 110
    :goto_9
    return v0

    .line 105
    :cond_a
    invoke-direct {p0}, Ljava/util/jar/InitManifest;->readName()V

    .line 106
    iput v1, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    .line 107
    invoke-direct {p0}, Ljava/util/jar/InitManifest;->readValue()V

    .line 110
    iget v0, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    if-lez v0, :cond_18

    move v0, v2

    goto :goto_9

    :cond_18
    move v0, v1

    goto :goto_9
.end method

.method private readName()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, i:I
    iget v2, p0, Ljava/util/jar/InitManifest;->pos:I

    .line 117
    .local v2, mark:I
    :cond_4
    iget v5, p0, Ljava/util/jar/InitManifest;->pos:I

    iget-object v6, p0, Ljava/util/jar/InitManifest;->buf:[B

    array-length v6, v6

    if-ge v5, v6, :cond_8f

    .line 118
    iget-object v5, p0, Ljava/util/jar/InitManifest;->buf:[B

    iget v6, p0, Ljava/util/jar/InitManifest;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ljava/util/jar/InitManifest;->pos:I

    aget-byte v0, v5, v6

    .line 120
    .local v0, b:B
    const/16 v5, 0x3a

    if-ne v0, v5, :cond_50

    .line 121
    iget-object v5, p0, Ljava/util/jar/InitManifest;->buf:[B

    iget v6, p0, Ljava/util/jar/InitManifest;->pos:I

    sub-int/2addr v6, v8

    invoke-static {v5, v2, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 123
    .local v4, nameBuffer:[B
    iget-object v5, p0, Ljava/util/jar/InitManifest;->buf:[B

    iget v6, p0, Ljava/util/jar/InitManifest;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ljava/util/jar/InitManifest;->pos:I

    aget-byte v5, v5, v6

    const/16 v6, 0x20

    if-eq v5, v6, :cond_48

    .line 124
    new-instance v3, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 125
    .local v3, name:Ljava/lang/String;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Invalid value for attribute \'%s\'"

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 128
    .end local v3           #name:Ljava/lang/String;
    :cond_48
    new-instance v5, Ljava/util/jar/Attributes$Name;

    invoke-direct {v5, v4}, Ljava/util/jar/Attributes$Name;-><init>([B)V

    iput-object v5, p0, Ljava/util/jar/InitManifest;->name:Ljava/util/jar/Attributes$Name;

    .line 141
    .end local v0           #b:B
    .end local v4           #nameBuffer:[B
    :cond_4f
    return-void

    .line 132
    .restart local v0       #b:B
    :cond_50
    const/16 v5, 0x61

    if-lt v0, v5, :cond_58

    const/16 v5, 0x7a

    if-le v0, v5, :cond_4

    :cond_58
    const/16 v5, 0x41

    if-lt v0, v5, :cond_60

    const/16 v5, 0x5a

    if-le v0, v5, :cond_4

    :cond_60
    const/16 v5, 0x5f

    if-eq v0, v5, :cond_4

    const/16 v5, 0x2d

    if-eq v0, v5, :cond_4

    const/16 v5, 0x30

    if-lt v0, v5, :cond_70

    const/16 v5, 0x39

    if-le v0, v5, :cond_4

    .line 134
    :cond_70
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid byte "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in attribute"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 137
    .end local v0           #b:B
    :cond_8f
    if-lez v1, :cond_4f

    .line 138
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid attribute name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/util/jar/InitManifest;->buf:[B

    iget-object v8, p0, Ljava/util/jar/InitManifest;->buf:[B

    array-length v8, v8

    invoke-static {v7, v2, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private readValue()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 144
    const/4 v1, 0x0

    .line 145
    .local v1, lastCr:Z
    iget v2, p0, Ljava/util/jar/InitManifest;->pos:I

    .line 146
    .local v2, mark:I
    iget v0, p0, Ljava/util/jar/InitManifest;->pos:I

    .line 147
    .local v0, last:I
    iget-object v4, p0, Ljava/util/jar/InitManifest;->valueBuffer:Ljava/lang/UnsafeByteSequence;

    invoke-virtual {v4}, Ljava/lang/UnsafeByteSequence;->rewind()V

    .line 148
    :goto_b
    iget v4, p0, Ljava/util/jar/InitManifest;->pos:I

    iget-object v5, p0, Ljava/util/jar/InitManifest;->buf:[B

    array-length v5, v5

    if-ge v4, v5, :cond_28

    .line 149
    iget-object v4, p0, Ljava/util/jar/InitManifest;->buf:[B

    iget v5, p0, Ljava/util/jar/InitManifest;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/util/jar/InitManifest;->pos:I

    aget-byte v3, v4, v5

    .line 150
    .local v3, next:B
    sparse-switch v3, :sswitch_data_6e

    .line 173
    :cond_1f
    iget v4, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    if-lt v4, v7, :cond_6a

    .line 174
    iget v4, p0, Ljava/util/jar/InitManifest;->pos:I

    sub-int/2addr v4, v7

    iput v4, p0, Ljava/util/jar/InitManifest;->pos:I

    .line 180
    .end local v3           #next:B
    :cond_28
    iget-object v4, p0, Ljava/util/jar/InitManifest;->valueBuffer:Ljava/lang/UnsafeByteSequence;

    iget-object v5, p0, Ljava/util/jar/InitManifest;->buf:[B

    sub-int v6, v0, v2

    invoke-virtual {v4, v5, v2, v6}, Ljava/lang/UnsafeByteSequence;->write([BII)V

    .line 181
    iget-object v4, p0, Ljava/util/jar/InitManifest;->valueBuffer:Ljava/lang/UnsafeByteSequence;

    sget-object v5, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/UnsafeByteSequence;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljava/util/jar/InitManifest;->value:Ljava/lang/String;

    .line 182
    return-void

    .line 152
    .restart local v3       #next:B
    :sswitch_3c
    new-instance v4, Ljava/io/IOException;

    const-string v5, "NUL character in a manifest"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 154
    :sswitch_44
    if-eqz v1, :cond_48

    .line 155
    const/4 v1, 0x0

    goto :goto_b

    .line 157
    :cond_48
    iget v4, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    goto :goto_b

    .line 161
    :sswitch_4f
    const/4 v1, 0x1

    .line 162
    iget v4, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    goto :goto_b

    .line 165
    :sswitch_57
    iget v4, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    if-ne v4, v7, :cond_1f

    .line 166
    iget-object v4, p0, Ljava/util/jar/InitManifest;->valueBuffer:Ljava/lang/UnsafeByteSequence;

    iget-object v5, p0, Ljava/util/jar/InitManifest;->buf:[B

    sub-int v6, v0, v2

    invoke-virtual {v4, v5, v2, v6}, Ljava/lang/UnsafeByteSequence;->write([BII)V

    .line 167
    iget v2, p0, Ljava/util/jar/InitManifest;->pos:I

    .line 168
    const/4 v4, 0x0

    iput v4, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    goto :goto_b

    .line 177
    :cond_6a
    iget v0, p0, Ljava/util/jar/InitManifest;->pos:I

    .line 178
    goto :goto_b

    .line 150
    nop

    :sswitch_data_6e
    .sparse-switch
        0x0 -> :sswitch_3c
        0xa -> :sswitch_44
        0xd -> :sswitch_4f
        0x20 -> :sswitch_57
    .end sparse-switch
.end method


# virtual methods
.method getPos()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Ljava/util/jar/InitManifest;->pos:I

    return v0
.end method

.method initEntries(Ljava/util/Map;Ljava/util/Map;)V
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Manifest$Chunk;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    .local p1, entries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .local p2, chunks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Manifest$Chunk;>;"
    iget v2, p0, Ljava/util/jar/InitManifest;->pos:I

    .line 59
    .local v2, mark:I
    :goto_2
    invoke-direct {p0}, Ljava/util/jar/InitManifest;->readHeader()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 60
    sget-object v3, Ljava/util/jar/Attributes$Name;->NAME:Ljava/util/jar/Attributes$Name;

    iget-object v4, p0, Ljava/util/jar/InitManifest;->name:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v3, v4}, Ljava/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 61
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Entry is not named"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    :cond_1a
    iget-object v1, p0, Ljava/util/jar/InitManifest;->value:Ljava/lang/String;

    .line 65
    .local v1, entryNameValue:Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    .line 66
    .local v0, entry:Ljava/util/jar/Attributes;
    if-nez v0, :cond_2b

    .line 67
    new-instance v0, Ljava/util/jar/Attributes;

    .end local v0           #entry:Ljava/util/jar/Attributes;
    const/16 v3, 0xc

    invoke-direct {v0, v3}, Ljava/util/jar/Attributes;-><init>(I)V

    .line 70
    .restart local v0       #entry:Ljava/util/jar/Attributes;
    :cond_2b
    :goto_2b
    invoke-direct {p0}, Ljava/util/jar/InitManifest;->readHeader()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 71
    iget-object v3, p0, Ljava/util/jar/InitManifest;->name:Ljava/util/jar/Attributes$Name;

    iget-object v4, p0, Ljava/util/jar/InitManifest;->value:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 74
    :cond_39
    if-eqz p2, :cond_55

    .line 75
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 82
    new-instance v3, Ljava/io/IOException;

    const-string v4, "A jar verifier does not support more than one entry with the same name"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 84
    :cond_49
    new-instance v3, Ljava/util/jar/Manifest$Chunk;

    iget v4, p0, Ljava/util/jar/InitManifest;->pos:I

    invoke-direct {v3, v2, v4}, Ljava/util/jar/Manifest$Chunk;-><init>(II)V

    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget v2, p0, Ljava/util/jar/InitManifest;->pos:I

    .line 88
    :cond_55
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 90
    .end local v0           #entry:Ljava/util/jar/Attributes;
    .end local v1           #entryNameValue:Ljava/lang/String;
    :cond_59
    return-void
.end method
