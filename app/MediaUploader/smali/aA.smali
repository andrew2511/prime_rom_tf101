.class public final LaA;
.super LaH;


# instance fields
.field private final a:Lau;

.field private final b:[Lau;

.field private final c:I


# direct methods
.method public constructor <init>(IILau;[Lau;)V
    .locals 1

    invoke-direct {p0, p1, p2}, LaH;-><init>(II)V

    iput-object p3, p0, LaA;->a:Lau;

    iput-object p4, p0, LaA;->b:[Lau;

    array-length v0, p4

    iput v0, p0, LaA;->c:I

    return-void
.end method

.method public constructor <init>(Laj;)V
    .locals 4

    invoke-direct {p0, p1}, LaH;-><init>(Laj;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {v0}, Lau;->a(Ljava/io/InputStream;)Lau;

    move-result-object v1

    iput-object v1, p0, LaA;->a:Lau;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    iput v1, p0, LaA;->c:I

    iget v1, p0, LaA;->c:I

    new-array v1, v1, [Lau;

    iput-object v1, p0, LaA;->b:[Lau;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, LaA;->c:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, LaA;->b:[Lau;

    invoke-static {v0}, Lau;->a(Ljava/io/InputStream;)Lau;

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
.method public final a()I
    .locals 1

    iget-object v0, p0, LaA;->a:Lau;

    invoke-virtual {v0}, Lau;->d()Lak;

    move-result-object v0

    invoke-interface {v0}, Lak;->a()I

    move-result v0

    return v0
.end method

.method public final b()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, LaA;->a:Lau;

    invoke-virtual {v0}, Lau;->d()Lak;

    move-result-object v0

    invoke-interface {v0}, Lak;->b()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lau;
    .locals 1

    iget-object v0, p0, LaA;->a:Lau;

    return-object v0
.end method

.method public final f()[Lau;
    .locals 1

    iget-object v0, p0, LaA;->b:[Lau;

    return-object v0
.end method
