.class public Ly/o;
.super Ly/j;


# instance fields
.field private final b:Ly/e;

.field private final c:[Ly/e;

.field private final d:I


# direct methods
.method public constructor <init>(IILy/e;[Ly/e;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ly/j;-><init>(II)V

    iput-object p3, p0, Ly/o;->b:Ly/e;

    iput-object p4, p0, Ly/o;->c:[Ly/e;

    array-length v0, p4

    iput v0, p0, Ly/o;->d:I

    return-void
.end method

.method public constructor <init>(Lp/j;)V
    .locals 4

    invoke-direct {p0, p1}, Ly/j;-><init>(Lp/j;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {v0}, Ly/e;->a(Ljava/io/InputStream;)Ly/e;

    move-result-object v1

    iput-object v1, p0, Ly/o;->b:Ly/e;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    iput v1, p0, Ly/o;->d:I

    iget v1, p0, Ly/o;->d:I

    new-array v1, v1, [Ly/e;

    iput-object v1, p0, Ly/o;->c:[Ly/e;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ly/o;->d:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Ly/o;->c:[Ly/e;

    invoke-static {v0}, Ly/e;->a(Ljava/io/InputStream;)Ly/e;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public c()Ly/e;
    .locals 1

    iget-object v0, p0, Ly/o;->b:Ly/e;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Ly/o;->b:Ly/e;

    invoke-virtual {v0}, Ly/e;->c()Lp/n;

    move-result-object v0

    invoke-interface {v0}, Lp/n;->e()I

    move-result v0

    return v0
.end method

.method public f()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Ly/o;->b:Ly/e;

    invoke-virtual {v0}, Ly/e;->c()Lp/n;

    move-result-object v0

    invoke-interface {v0}, Lp/n;->f()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public g()[Ly/e;
    .locals 1

    iget-object v0, p0, Ly/o;->c:[Ly/e;

    return-object v0
.end method
