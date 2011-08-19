.class public final Lxdict/k;
.super Ljava/lang/Object;


# instance fields
.field private N:Ljava/lang/String;

.field private O:Lxdict/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxdict/k;->N:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lxdict/e;

    iget-object v1, p0, Lxdict/k;->N:Ljava/lang/String;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Lxdict/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lxdict/j;

    invoke-direct {v1, v0}, Lxdict/j;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    invoke-virtual {v1}, Lxdict/j;->e()Lxdict/h;

    move-result-object v2

    iput-object v2, p0, Lxdict/k;->O:Lxdict/h;

    invoke-virtual {v0}, Lxdict/e;->close()V

    invoke-virtual {v1}, Lxdict/j;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :try_start_3
    invoke-virtual {v1}, Lxdict/j;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_0
    :try_start_4
    invoke-virtual {v0}, Lxdict/e;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    :goto_2
    :try_start_5
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot initialize DICTZIP header: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Lxdict/j;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_0
    :goto_4
    if-eqz v2, :cond_1

    :try_start_7
    invoke-virtual {v2}, Lxdict/e;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_1
    :goto_5
    throw v0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_3

    :catchall_3
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_3

    :catch_5
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_2

    :catch_6
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_2
.end method


# virtual methods
.method public final a(JJ)[B
    .locals 10

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lxdict/k;->N:Ljava/lang/String;

    :try_start_0
    new-instance v1, Lxdict/e;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Lxdict/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v0, Lxdict/j;

    invoke-direct {v0, v1}, Lxdict/j;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    iget-object v2, p0, Lxdict/k;->O:Lxdict/h;

    long-to-int v3, p1

    iget v4, v2, Lxdict/h;->chunkLength:I

    div-int/2addr v3, v4

    long-to-int v4, p1

    iget v5, v2, Lxdict/h;->chunkLength:I

    rem-int/2addr v4, v5

    iget-object v2, v2, Lxdict/h;->offsets:[I

    aget v2, v2, v3

    int-to-long v2, v2

    iget-object v5, v1, Lxdict/e;->s:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    long-to-int v2, p3

    add-int/2addr v2, v4

    new-array v2, v2, [B

    array-length v3, v2

    move v5, v6

    :goto_0
    if-ge v5, v3, :cond_1

    add-int/lit8 v6, v5, 0x0

    sub-int v7, v3, v5

    invoke-virtual {v0, v2, v6, v7}, Lxdict/j;->read([BII)I

    move-result v6

    if-gez v6, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lxdict/j;->close()V

    invoke-virtual {v1}, Lxdict/e;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    invoke-virtual {v1}, Lxdict/e;->close()V

    invoke-virtual {v0}, Lxdict/j;->close()V

    move-object v0, v8

    :goto_3
    return-object v0

    :cond_0
    add-int/2addr v5, v6

    goto :goto_0

    :cond_1
    long-to-int v3, p3

    :try_start_4
    new-array v3, v3, [B

    const/4 v5, 0x0

    long-to-int v6, p3

    invoke-static {v2, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-virtual {v0}, Lxdict/j;->close()V

    invoke-virtual {v1}, Lxdict/e;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :goto_4
    invoke-virtual {v1}, Lxdict/e;->close()V

    invoke-virtual {v0}, Lxdict/j;->close()V

    move-object v0, v3

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v8

    move-object v2, v8

    :goto_5
    :try_start_6
    invoke-virtual {v1}, Lxdict/j;->close()V

    invoke-virtual {v2}, Lxdict/e;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    invoke-virtual {v2}, Lxdict/e;->close()V

    invoke-virtual {v1}, Lxdict/j;->close()V

    throw v0

    :catch_1
    move-exception v3

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v1, v8

    goto :goto_5

    :catchall_2
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_5

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v0, v8

    move-object v1, v8

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v0, v8

    goto :goto_1

    :catch_5
    move-exception v2

    goto :goto_4
.end method
