.class public Lv/B;
.super Ljava/lang/Object;


# instance fields
.field private a:Lad/g;

.field private b:Ljava/util/Map;

.field private c:Ljava/util/Map;

.field private d:J

.field private e:Law/e;

.field private f:Ln/a;


# direct methods
.method public constructor <init>(Ln/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/B;->f:Ln/a;

    new-instance v0, Lad/g;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lad/g;-><init>(I)V

    iput-object v0, p0, Lv/B;->a:Lad/g;

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lv/B;->b:Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lv/B;->a()V

    :cond_0
    return-void
.end method

.method private a(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "star_details_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 9

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lv/B;->c:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lv/B;->d:J

    new-instance v0, Law/e;

    sget-object v1, LaX/a;->g:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iput-object v0, p0, Lv/B;->e:Law/e;

    iget-object v0, p0, Lv/B;->f:Ln/a;

    const-string v1, "star_details_index"

    invoke-interface {v0, v1}, Ln/a;->c(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lv/B;->b([B)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/io/ByteArrayInputStream;->skip(J)J

    iget-object v0, p0, Lv/B;->e:Law/e;

    invoke-virtual {v0, v1}, Law/e;->a(Ljava/io/InputStream;)Law/e;

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    iget-object v0, p0, Lv/B;->e:Law/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lv/B;->e:Law/e;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Law/e;->e(I)J

    move-result-wide v3

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lv/B;->c:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v5, p0, Lv/B;->d:J

    const-wide/16 v7, 0x1

    add-long v2, v3, v7

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lv/B;->d:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PlaceDetailsCache"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lv/B;->c()V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lv/B;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lv/B;->e:Law/e;

    invoke-virtual {v0, v4}, Law/e;->i(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lv/B;->e:Law/e;

    invoke-virtual {v2, v4, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lv/B;->e:Law/e;

    invoke-virtual {v0, v4, v1}, Law/e;->g(II)V

    :cond_0
    iget-object v0, p0, Lv/B;->f:Ln/a;

    invoke-interface {v0, p2}, Ln/a;->a(Ljava/lang/String;)Z

    invoke-direct {p0}, Lv/B;->b()V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static a([B)V
    .locals 9

    const/4 v5, 0x4

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    array-length v1, p0

    sub-int/2addr v1, v5

    invoke-virtual {v0, p0, v5, v1}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    const/4 v2, 0x0

    move v6, v2

    move-wide v7, v0

    move-wide v1, v7

    move v0, v6

    :goto_0
    if-ge v0, v5, :cond_0

    const/16 v3, 0x18

    shr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b()V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lv/B;->e:Law/e;

    invoke-virtual {v1, v0}, Law/e;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lv/B;->a([B)V

    iget-object v1, p0, Lv/B;->f:Ln/a;

    const-string v2, "star_details_index"

    invoke-interface {v1, v0, v2}, Ln/a;->b([BLjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Persistent store write failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "PlaceDetailsCache"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lv/B;->c()V

    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;Law/e;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lv/B;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_1

    :goto_0
    if-eqz v1, :cond_0

    iget-wide v2, p0, Lv/B;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lv/B;->a(J)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_1
    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v3}, Law/e;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lv/B;->a([B)V

    iget-object v4, p0, Lv/B;->f:Ln/a;

    invoke-interface {v4, v3, v2}, Ln/a;->b([BLjava/lang/String;)I

    move-result v3

    if-gez v3, :cond_4

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Persistent store write failed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "PlaceDetailsCache"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, v2}, Lv/B;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    if-eqz v1, :cond_3

    :try_start_1
    iget-object v1, p0, Lv/B;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v3, p0, Lv/B;->d:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lv/B;->d:J

    new-instance v1, Law/e;

    sget-object v3, LaX/a;->h:Law/f;

    invoke-direct {v1, v3}, Law/e;-><init>(Law/f;)V

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Law/e;->b(IJ)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0, p1}, Law/e;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lv/B;->e:Law/e;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Law/e;->a(ILaw/e;)V

    invoke-direct {p0}, Lv/B;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static b([B)V
    .locals 10

    const/4 v6, 0x4

    array-length v0, p0

    if-ge v0, v6, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing checksum"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    array-length v1, p0

    sub-int/2addr v1, v6

    invoke-virtual {v0, p0, v6, v1}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    const/4 v2, 0x0

    move v7, v2

    move-wide v8, v0

    move-wide v1, v8

    move v0, v7

    :goto_0
    if-ge v0, v6, :cond_2

    aget-byte v3, p0, v0

    const/16 v4, 0x18

    shr-long v4, v1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    if-eq v3, v4, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Checksum mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v3, 0x8

    shl-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lv/B;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lv/B;->d:J

    iget-object v0, p0, Lv/B;->e:Law/e;

    invoke-virtual {v0}, Law/e;->b()V

    iget-object v0, p0, Lv/B;->f:Ln/a;

    const-string v1, "star_details_"

    invoke-interface {v0, v1}, Ln/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)Law/e;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lv/B;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lv/B;->a(J)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lv/B;->f:Ln/a;

    invoke-interface {v1, v0}, Ln/a;->c(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Block not found"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "PlaceDetailsCache"

    invoke-static {v2, v1}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, v0}, Lv/B;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {v1}, Lv/B;->b([B)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v3, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/io/ByteArrayInputStream;->skip(J)J

    new-instance v1, Law/e;

    sget-object v3, LaX/a;->a:Law/f;

    invoke-direct {v1, v3}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v1, v2}, Law/e;->a(Ljava/io/InputStream;)Law/e;

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL mismatch: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] != ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Law/e;
    .locals 2

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lv/B;->a:Lad/g;

    invoke-virtual {v0, p1}, Lad/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lv/B;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lv/B;->f:Ln/a;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lv/B;->e(Ljava/lang/String;)Law/e;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lv/B;->a:Lad/g;

    invoke-virtual {v1, p1, v0}, Lad/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Law/e;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lv/B;->a:Lad/g;

    invoke-virtual {v0, p1, p2}, Lad/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x4

    invoke-static {p2, v0}, Law/b;->h(Law/e;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lv/B;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lv/B;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lv/B;->f:Ln/a;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lv/B;->b(Ljava/lang/String;Law/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lv/B;->a:Lad/g;

    invoke-virtual {v0, p1}, Lad/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lv/B;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lv/B;->f:Ln/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lv/B;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lv/B;->a:Lad/g;

    invoke-virtual {v0, p1}, Lad/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Law/b;->h(Law/e;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lv/B;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lv/B;->f:Ln/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lv/B;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lv/B;->a:Lad/g;

    invoke-virtual {v0, p1}, Lad/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lv/B;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lv/B;->f:Ln/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv/B;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lv/B;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lv/B;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
