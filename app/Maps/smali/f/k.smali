.class public Lf/k;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B


# instance fields
.field private b:Law/e;

.field private c:Law/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lf/k;->a:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x4ct
        0x54t
        0x49t
        0x50t
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Ljava/lang/String;[Ljava/lang/String;ILjava/io/DataOutputStream;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Law/e;

    sget-object v1, Ls/h;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    if-nez p0, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    new-instance v1, Law/e;

    sget-object v2, Ls/h;->b:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    array-length v2, p0

    move v3, v6

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v4}, Law/e;->a(ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    array-length v2, p1

    move v3, v6

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v4}, Law/e;->a(ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    invoke-virtual {v1, v2, p2}, Law/e;->h(II)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Law/e;->a(ILaw/e;)V

    :cond_3
    sget-object v1, Lf/k;->a:[B

    invoke-virtual {p3, v1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v0, p3}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static a([BI[B)Z
    .locals 4

    const/4 v3, 0x0

    array-length v0, p0

    array-length v1, p2

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v3

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_2

    add-int v1, p1, v0

    aget-byte v1, p0, v1

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b([B)Law/e;
    .locals 4

    sget-object v0, Lf/k;->a:[B

    array-length v0, v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {p0, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, LA/a;->a([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v0, v0, 0x4

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0, v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    if-gez v1, :cond_0

    invoke-static {v3}, Ln/g;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    :goto_0
    add-int/2addr v0, v2

    new-instance v0, Law/e;

    sget-object v2, Ls/h;->a:Law/f;

    invoke-direct {v0, v2}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v0, v1}, Law/e;->a(Ljava/io/InputStream;)Law/e;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0

    :cond_0
    move-object v1, v3

    goto :goto_0
.end method

.method private e()Law/e;
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lf/k;->c:Law/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/k;->b:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/k;->b:Law/e;

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/k;->b:Law/e;

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    iput-object v0, p0, Lf/k;->c:Law/e;

    :cond_0
    iget-object v0, p0, Lf/k;->c:Law/e;

    return-object v0
.end method


# virtual methods
.method public a()Law/e;
    .locals 1

    iget-object v0, p0, Lf/k;->b:Law/e;

    return-object v0
.end method

.method public a([B)[B
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lf/k;->a:[B

    invoke-static {p1, v1, v0}, Lf/k;->a([BI[B)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lf/k;->b([B)Law/e;

    move-result-object v0

    iput-object v0, p0, Lf/k;->b:Law/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lf/k;->c:Law/e;

    sget-object v0, Lf/k;->a:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lf/k;->b:Law/e;

    invoke-virtual {v1}, Law/e;->d()I

    move-result v1

    add-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, v0

    new-array v1, v1, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :try_start_1
    array-length v3, v1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, p1

    :goto_1
    const-string v2, "IOException reading map tile info"

    invoke-static {v2, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public b()[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lf/k;->e()Law/e;

    move-result-object v0

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v5}, Law/e;->i(I)I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v5, v3}, Law/e;->f(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public c()[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v3, 0x0

    invoke-direct {p0}, Lf/k;->e()Law/e;

    move-result-object v0

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v5}, Law/e;->i(I)I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v5, v3}, Law/e;->f(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public d()I
    .locals 4

    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-direct {p0}, Lf/k;->e()Law/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Law/e;->d(I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x4e

    const-string v1, "year=0"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v3

    goto :goto_0
.end method
