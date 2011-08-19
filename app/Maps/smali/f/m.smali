.class public Lf/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lf/K;

.field private b:[Lf/o;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Lf/K;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lf/m;->c:J

    iput-object p1, p0, Lf/m;->a:Lf/K;

    return-void
.end method


# virtual methods
.method public a()Lf/K;
    .locals 1

    iget-object v0, p0, Lf/m;->a:Lf/K;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lf/m;->d:J

    return-void
.end method

.method protected a(J[Lf/o;)V
    .locals 0

    iput-wide p1, p0, Lf/m;->c:J

    iput-object p3, p0, Lf/m;->b:[Lf/o;

    return-void
.end method

.method public a([B)V
    .locals 7

    const/4 v3, 0x6

    const/4 v5, 0x0

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1, v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const v1, 0x54524133

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad traffic header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v1, v3

    invoke-static {p1, v3, v1, v0}, Ln/c;->a([BIII)[B

    move-result-object v0

    invoke-static {v0}, Ln/c;->a([B)Ljava/io/DataInput;

    move-result-object v0

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    new-array v4, v3, [Lf/o;

    :goto_0
    if-ge v5, v3, :cond_1

    invoke-static {v0, v1, v2}, Lf/o;->a(Ljava/io/DataInput;II)Lf/o;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v4}, Lf/m;->a(J[Lf/o;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lf/m;->b:[Lf/o;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()[Lf/o;
    .locals 1

    iget-object v0, p0, Lf/m;->b:[Lf/o;

    return-object v0
.end method

.method public d()J
    .locals 2

    invoke-virtual {p0}, Lf/m;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lf/m;->c:J

    goto :goto_0
.end method

.method e()J
    .locals 2

    iget-wide v0, p0, Lf/m;->d:J

    return-wide v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lf/m;->b:[Lf/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/m;->b:[Lf/o;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
