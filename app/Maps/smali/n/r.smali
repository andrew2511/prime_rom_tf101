.class public Ln/r;
.super Ljava/io/InputStream;


# instance fields
.field private a:I

.field private b:[B

.field private c:I

.field private d:I

.field private e:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Ln/r;->e:Ljava/io/InputStream;

    iput p2, p0, Ln/r;->a:I

    const/16 v0, 0x1000

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Ln/r;->b:[B

    return-void
.end method

.method private a()Z
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Ln/r;->a:I

    if-gtz v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ln/r;->c:I

    iget v1, p0, Ln/r;->d:I

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Ln/r;->e:Ljava/io/InputStream;

    iget-object v1, p0, Ln/r;->b:[B

    iget v2, p0, Ln/r;->a:I

    iget-object v3, p0, Ln/r;->b:[B

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Ln/r;->d:I

    iget v0, p0, Ln/r;->d:I

    if-gtz v0, :cond_1

    iput v4, p0, Ln/r;->a:I

    move v0, v4

    goto :goto_0

    :cond_1
    iput v4, p0, Ln/r;->c:I

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2

    iget v0, p0, Ln/r;->d:I

    iget v1, p0, Ln/r;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .locals 3

    invoke-direct {p0}, Ln/r;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ln/r;->a:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ln/r;->a:I

    iget-object v0, p0, Ln/r;->b:[B

    iget v1, p0, Ln/r;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ln/r;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3

    invoke-direct {p0}, Ln/r;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ln/r;->d:I

    iget v1, p0, Ln/r;->c:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Ln/r;->b:[B

    iget v2, p0, Ln/r;->c:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Ln/r;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Ln/r;->c:I

    iget v1, p0, Ln/r;->a:I

    sub-int/2addr v1, v0

    iput v1, p0, Ln/r;->a:I

    goto :goto_0
.end method
