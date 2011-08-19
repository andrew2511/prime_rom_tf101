.class public Ln/p;
.super Ljava/io/OutputStream;


# instance fields
.field private a:[B

.field private b:[I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput v0, p0, Ln/p;->d:I

    iput v0, p0, Ln/p;->e:I

    invoke-virtual {p0}, Ln/p;->b()V

    return-void
.end method

.method private static a(IIII)I
    .locals 5

    sub-int v0, p1, p2

    move v1, p1

    :goto_0
    if-ge v0, p0, :cond_1

    shr-int v0, v1, p3

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] and rightShiftAmount ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/2addr v0, v1

    sub-int v1, v0, p2

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_1
    return v1
.end method

.method private c(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Ln/p;->b:[I

    array-length v0, v0

    iget v1, p0, Ln/p;->e:I

    invoke-static {p1, v0, v1, v3}, Ln/p;->a(IIII)I

    move-result v0

    iget-object v1, p0, Ln/p;->b:[I

    array-length v1, v1

    if-le v0, v1, :cond_0

    new-array v0, v0, [I

    iget-object v1, p0, Ln/p;->b:[I

    iget v2, p0, Ln/p;->e:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ln/p;->b:[I

    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Ln/p;->a:[B

    array-length v0, v0

    sub-int/2addr v0, p1

    iget v1, p0, Ln/p;->d:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Ln/p;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ln/p;->c:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Ln/p;->c:I

    const/16 v1, 0x40

    if-lt v0, v1, :cond_3

    add-int/lit8 v0, v3, 0x1

    iget v1, p0, Ln/p;->c:I

    const/16 v2, 0x80

    if-lt v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    :goto_1
    iget-object v1, p0, Ln/p;->a:[B

    array-length v1, v1

    iget v2, p0, Ln/p;->d:I

    invoke-static {p1, v1, v2, v0}, Ln/p;->a(IIII)I

    move-result v0

    iget-object v1, p0, Ln/p;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    new-array v0, v0, [B

    iget-object v1, p0, Ln/p;->a:[B

    iget v2, p0, Ln/p;->d:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ln/p;->a:[B

    iput v3, p0, Ln/p;->c:I

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget-object v0, p0, Ln/p;->b:[I

    aget v0, v0, p1

    return v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ln/p;->d:I

    iput v0, p0, Ln/p;->e:I

    iput v0, p0, Ln/p;->c:I

    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Ln/p;->b:[I

    aput p2, v0, p1

    return-void
.end method

.method public a(Ljava/io/OutputStream;II)V
    .locals 1

    iget-object v0, p0, Ln/p;->a:[B

    invoke-virtual {p1, v0, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Ln/p;->a()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Ln/p;->a:[B

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Ln/p;->b:[I

    return-void
.end method

.method public b(I)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ln/p;->c(I)V

    iget-object v0, p0, Ln/p;->b:[I

    iget v1, p0, Ln/p;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ln/p;->e:I

    aput p1, v0, v1

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Ln/p;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Ln/p;->d:I

    return v0
.end method

.method public write(I)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ln/p;->d(I)V

    iget-object v0, p0, Ln/p;->a:[B

    iget v1, p0, Ln/p;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ln/p;->d:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public write([B)V
    .locals 4

    array-length v0, p1

    invoke-direct {p0, v0}, Ln/p;->d(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Ln/p;->a:[B

    iget v2, p0, Ln/p;->d:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ln/p;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Ln/p;->d:I

    return-void
.end method

.method public write([BII)V
    .locals 2

    invoke-direct {p0, p3}, Ln/p;->d(I)V

    iget-object v0, p0, Ln/p;->a:[B

    iget v1, p0, Ln/p;->d:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ln/p;->d:I

    add-int/2addr v0, p3

    iput v0, p0, Ln/p;->d:I

    return-void
.end method
