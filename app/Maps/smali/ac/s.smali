.class public Lac/s;
.super Ljava/lang/Object;


# instance fields
.field private a:[J

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lac/s;->a:[J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [J

    iput-object v0, p0, Lac/s;->a:[J

    return-void
.end method

.method public static a([B)Lac/s;
    .locals 6

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Buffer length not divisible by 8."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x8

    new-instance v1, Lac/s;

    invoke-direct {v1, v0}, Lac/s;-><init>(I)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lac/s;->a(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(I)J
    .locals 2

    iget v0, p0, Lac/s;->b:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lac/s;->a:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public a(J)V
    .locals 3

    iget v0, p0, Lac/s;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lac/s;->b(I)V

    iget-object v0, p0, Lac/s;->a:[J

    iget v1, p0, Lac/s;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lac/s;->b:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public a(JI)V
    .locals 1

    iget v0, p0, Lac/s;->b:I

    if-lt p3, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lac/s;->a:[J

    aput-wide p1, v0, p3

    return-void
.end method

.method public a()Z
    .locals 1

    iget v0, p0, Lac/s;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lac/s;->b:I

    return v0
.end method

.method public b(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lac/s;->a:[J

    array-length v0, v0

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lac/s;->a:[J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x10

    if-ge v0, p1, :cond_0

    move v0, p1

    :cond_0
    new-array v0, v0, [J

    iget-object v1, p0, Lac/s;->a:[J

    iget v2, p0, Lac/s;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lac/s;->a:[J

    :cond_1
    return-void
.end method

.method public b(J)Z
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lac/s;->b:I

    sub-int/2addr v0, v3

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lac/s;->a:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    move v0, v3

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c(J)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lac/s;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lac/s;->a:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public c()[B
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget v1, p0, Lac/s;->b:I

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lac/s;->b:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lac/s;->a:[J

    aget-wide v3, v3, v2

    invoke-virtual {v1, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public d(J)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    iget v1, p0, Lac/s;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lac/s;->a:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    iget v1, p0, Lac/s;->b:I

    sub-int/2addr v1, v5

    iput v1, p0, Lac/s;->b:I

    iget-object v1, p0, Lac/s;->a:[J

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lac/s;->a:[J

    iget v4, p0, Lac/s;->b:I

    sub-int/2addr v4, v0

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v5

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lac/s;->b:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lac/s;->a:[J

    aget-wide v2, v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    iget v2, p0, Lac/s;->b:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
