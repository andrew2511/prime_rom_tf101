.class public Lo/bf;
.super Ljava/lang/Object;


# instance fields
.field private a:Law/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lo/bf;->a:Law/e;

    if-nez v0, :cond_0

    new-instance v0, Law/e;

    sget-object v1, Ls/T;->C:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iput-object v0, p0, Lo/bf;->a:Law/e;

    invoke-virtual {p0}, Lo/bf;->b()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iget-object v2, p0, Lo/bf;->a:Law/e;

    invoke-virtual {v2, v0, v1}, Law/e;->a(Ljava/io/InputStream;I)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/bf;->a([B)V

    :cond_0
    return-void
.end method


# virtual methods
.method a()Ljava/util/Vector;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0}, Lo/bf;->c()V

    iget-object v1, p0, Lo/bf;->a:Law/e;

    invoke-virtual {v1, v4}, Law/e;->i(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lo/bf;->a:Law/e;

    invoke-virtual {v3, v4, v2}, Law/e;->f(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected a([B)V
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "LATITUDE_OPT_IN_HISTORY"

    invoke-interface {v0, v1, p1}, Ln/a;->a(Ljava/lang/String;[B)Z

    new-instance v0, Lo/P;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lo/P;-><init>(Lo/bf;LT/c;)V

    invoke-virtual {v0}, Lo/P;->b()V

    return-void
.end method

.method protected b()[B
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "LATITUDE_OPT_IN_HISTORY"

    invoke-interface {v0, v1}, Ln/a;->b_(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
