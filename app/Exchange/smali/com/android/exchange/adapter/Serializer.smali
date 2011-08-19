.class public Lcom/android/exchange/adapter/Serializer;
.super Ljava/lang/Object;
.source "Serializer.java"


# instance fields
.field buf:Ljava/io/ByteArrayOutputStream;

.field depth:I

.field private logging:Z

.field nameStack:[Ljava/lang/String;

.field out:Ljava/io/ByteArrayOutputStream;

.field pendingTag:I

.field private tagPage:I

.field tagTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/Serializer;-><init>(Z)V

    .line 59
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "startDocument"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "Serializer"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/Serializer;->logging:Z

    .line 44
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    .line 45
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    .line 51
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/Serializer;->nameStack:[Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/Serializer;->tagTable:Ljava/util/Hashtable;

    .line 68
    if-eqz p1, :cond_0

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Serializer;->startDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public checkPendingTag(Z)V
    .locals 6
    .parameter "degenerated"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 107
    iget v3, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    if-ne v3, v5, :cond_0

    .line 125
    :goto_0
    return-void

    .line 110
    :cond_0
    iget v3, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    shr-int/lit8 v1, v3, 0x6

    .line 111
    .local v1, page:I
    iget v3, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    and-int/lit8 v2, v3, 0x3f

    .line 112
    .local v2, tag:I
    iget v3, p0, Lcom/android/exchange/adapter/Serializer;->tagPage:I

    if-eq v1, v3, :cond_1

    .line 113
    iput v1, p0, Lcom/android/exchange/adapter/Serializer;->tagPage:I

    .line 114
    iget-object v3, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 115
    iget-object v3, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 118
    :cond_1
    iget-object v3, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    if-eqz p1, :cond_3

    move v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 119
    iget-boolean v3, p0, Lcom/android/exchange/adapter/Serializer;->logging:Z

    if-eqz v3, :cond_2

    .line 120
    sget-object v3, Lcom/android/exchange/adapter/Tags;->pages:[[Ljava/lang/String;

    aget-object v3, v3, v1

    const/4 v4, 0x5

    sub-int v4, v2, v4

    aget-object v0, v3, v4

    .line 121
    .local v0, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exchange/adapter/Serializer;->nameStack:[Ljava/lang/String;

    iget v4, p0, Lcom/android/exchange/adapter/Serializer;->depth:I

    aput-object v0, v3, v4

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    .line 124
    .end local v0           #name:Ljava/lang/String;
    :cond_2
    iput v5, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    goto :goto_0

    .line 118
    :cond_3
    or-int/lit8 v4, v2, 0x40

    goto :goto_1
.end method

.method public data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;
    .locals 3
    .parameter "tag"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    if-nez p2, :cond_0

    .line 155
    const-string v0, "Serializer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing null data for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 158
    invoke-virtual {p0, p2}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 159
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 160
    return-object p0
.end method

.method public done()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget v0, p0, Lcom/android/exchange/adapter/Serializer;->depth:I

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Done received with unclosed tags"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/adapter/Serializer;->writeInteger(Ljava/io/OutputStream;I)V

    .line 96
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 97
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 98
    return-void
.end method

.method public end()Lcom/android/exchange/adapter/Serializer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 135
    iget v0, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    if-ltz v0, :cond_1

    .line 136
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/Serializer;->checkPendingTag(Z)V

    .line 143
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/exchange/adapter/Serializer;->depth:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/exchange/adapter/Serializer;->depth:I

    .line 144
    return-object p0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 139
    iget-boolean v0, p0, Lcom/android/exchange/adapter/Serializer;->logging:Z

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/Serializer;->nameStack:[Ljava/lang/String;

    iget v2, p0, Lcom/android/exchange/adapter/Serializer;->depth:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method log(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 81
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 82
    .local v0, cr:I
    if-lez v0, :cond_0

    .line 83
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 85
    :cond_0
    const-string v1, "Serializer"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-boolean v1, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v1, :cond_1

    .line 87
    const-string v1, "Serializer"

    invoke-static {v1, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_1
    return-void
.end method

.method public start(I)Lcom/android/exchange/adapter/Serializer;
    .locals 1
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Serializer;->checkPendingTag(Z)V

    .line 129
    iput p1, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    .line 130
    iget v0, p0, Lcom/android/exchange/adapter/Serializer;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/Serializer;->depth:I

    .line 131
    return-object p0
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 102
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 103
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 104
    return-void
.end method

.method public tag(I)Lcom/android/exchange/adapter/Serializer;
    .locals 0
    .parameter "t"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 149
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 150
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;
    .locals 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 174
    const-string v0, "Serializer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing null text for pending tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/adapter/Serializer;->pendingTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Serializer;->checkPendingTag(Z)V

    .line 178
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 180
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, v0, p1}, Lcom/android/exchange/adapter/Serializer;->writeLiteralString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 181
    iget-boolean v0, p0, Lcom/android/exchange/adapter/Serializer;->logging:Z

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    .line 186
    :cond_1
    return-object p0
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeInteger(Ljava/io/OutputStream;I)V
    .locals 4
    .parameter "out"
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    const/4 v3, 0x5

    new-array v0, v3, [B

    .line 191
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 194
    .local v1, idx:I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #idx:I
    .local v2, idx:I
    and-int/lit8 v3, p2, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 195
    shr-int/lit8 p2, p2, 0x7

    .line 196
    if-nez p2, :cond_2

    move v1, v2

    .line 198
    .end local v2           #idx:I
    .restart local v1       #idx:I
    :goto_1
    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 199
    add-int/lit8 v1, v1, -0x1

    aget-byte v3, v0, v1

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 201
    :cond_0
    const/4 v3, 0x0

    aget-byte v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 202
    iget-boolean v3, p0, Lcom/android/exchange/adapter/Serializer;->logging:Z

    if-eqz v3, :cond_1

    .line 203
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    .line 205
    :cond_1
    return-void

    .end local v1           #idx:I
    .restart local v2       #idx:I
    :cond_2
    move v1, v2

    .end local v2           #idx:I
    .restart local v1       #idx:I
    goto :goto_0
.end method

.method writeLiteralString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .parameter "out"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 209
    .local v0, data:[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 210
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 211
    return-void
.end method

.method writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V
    .locals 2
    .parameter "cv"
    .parameter "key"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 216
    invoke-virtual {p0, p3, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 218
    :cond_0
    return-void
.end method
