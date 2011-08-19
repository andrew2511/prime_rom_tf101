.class public Lcom/google/googlenav/appwidget/hotpot/persistence/g;
.super Lcom/google/googlenav/appwidget/hotpot/persistence/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/persistence/f;-><init>()V

    return-void
.end method

.method private a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/appwidget/hotpot/persistence/b;)Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "name"

    iget-object v2, p1, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "address"

    iget-object v2, p1, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "details_url"

    iget-object v2, p1, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "clickUrl"

    iget-object v2, p1, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->a()Law/e;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->a()Law/e;

    move-result-object v3

    invoke-virtual {v3, v2}, Law/e;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "placemark"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/appwidget/hotpot/persistence/g;->c(Landroid/database/Cursor;)Lcom/google/googlenav/appwidget/hotpot/persistence/b;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/database/Cursor;)Lcom/google/googlenav/appwidget/hotpot/persistence/b;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "placemark"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Law/e;

    sget-object v2, Ls/p;->t:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Law/e;->a(Ljava/io/InputStream;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_0
    :goto_0
    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "address"

    invoke-direct {p0, p1, v2}, Lcom/google/googlenav/appwidget/hotpot/persistence/g;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "details_url"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "clickUrl"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Law/e;)Lcom/google/googlenav/appwidget/hotpot/persistence/b;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "tblListings"

    return-object v0
.end method

.method public d()[Lcom/google/googlenav/appwidget/hotpot/persistence/e;
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/googlenav/appwidget/hotpot/persistence/e;

    const/4 v1, 0x0

    const-string v2, "name"

    sget-object v3, Lcom/google/googlenav/appwidget/hotpot/persistence/c;->c:Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    invoke-static {v2, v3}, Lcom/google/googlenav/appwidget/hotpot/persistence/e;->a(Ljava/lang/String;Lcom/google/googlenav/appwidget/hotpot/persistence/c;)Lcom/google/googlenav/appwidget/hotpot/persistence/e;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "address"

    sget-object v3, Lcom/google/googlenav/appwidget/hotpot/persistence/c;->c:Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    invoke-static {v2, v3}, Lcom/google/googlenav/appwidget/hotpot/persistence/e;->a(Ljava/lang/String;Lcom/google/googlenav/appwidget/hotpot/persistence/c;)Lcom/google/googlenav/appwidget/hotpot/persistence/e;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "details_url"

    sget-object v3, Lcom/google/googlenav/appwidget/hotpot/persistence/c;->c:Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    invoke-static {v2, v3}, Lcom/google/googlenav/appwidget/hotpot/persistence/e;->a(Ljava/lang/String;Lcom/google/googlenav/appwidget/hotpot/persistence/c;)Lcom/google/googlenav/appwidget/hotpot/persistence/e;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "clickUrl"

    sget-object v3, Lcom/google/googlenav/appwidget/hotpot/persistence/c;->c:Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    invoke-static {v2, v3}, Lcom/google/googlenav/appwidget/hotpot/persistence/e;->a(Ljava/lang/String;Lcom/google/googlenav/appwidget/hotpot/persistence/c;)Lcom/google/googlenav/appwidget/hotpot/persistence/e;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "placemark"

    sget-object v3, Lcom/google/googlenav/appwidget/hotpot/persistence/c;->d:Lcom/google/googlenav/appwidget/hotpot/persistence/c;

    invoke-static {v2, v3}, Lcom/google/googlenav/appwidget/hotpot/persistence/e;->a(Ljava/lang/String;Lcom/google/googlenav/appwidget/hotpot/persistence/c;)Lcom/google/googlenav/appwidget/hotpot/persistence/e;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT COUNT(*) FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/hotpot/persistence/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/hotpot/persistence/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
