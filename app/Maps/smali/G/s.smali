.class public final LG/s;
.super Ljava/lang/Object;


# instance fields
.field private final a:[I

.field private final b:[I


# direct methods
.method private constructor <init>([I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG/s;->a:[I

    iput-object p2, p0, LG/s;->b:[I

    return-void
.end method

.method public static a(Ljava/io/DataInput;LG/w;)LG/s;
    .locals 4

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v0

    rem-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed TriangleList, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " vertices"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    mul-int/lit8 v1, v0, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-static {p0, p1, v1, v2}, LG/Q;->a(Ljava/io/DataInput;LG/w;[II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, LG/s;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LG/s;-><init>([I[I)V

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;LG/w;I)LG/s;
    .locals 5

    const/4 v3, 0x0

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v0

    rem-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed TriangleList, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " vertices"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    mul-int/lit8 v1, v0, 0x3

    new-array v1, v1, [I

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-static {p0, p1, v1, v2}, LG/Q;->b(Ljava/io/DataInput;LG/w;[II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/16 v2, 0x9

    if-ne p2, v2, :cond_3

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v0

    new-array v2, v0, [I

    :goto_1
    if-ge v3, v0, :cond_2

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    :cond_3
    new-instance v2, LG/s;

    invoke-direct {v2, v1, v0}, LG/s;-><init>([I[I)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, LG/s;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x9

    return v0
.end method

.method public a(ILG/Q;LG/Q;LG/Q;)V
    .locals 3

    mul-int/lit8 v0, p1, 0x9

    iget-object v1, p0, LG/s;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v0, v1, v0

    iput v0, p2, LG/Q;->a:I

    iget-object v0, p0, LG/s;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iput v0, p2, LG/Q;->b:I

    iget-object v0, p0, LG/s;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iput v0, p2, LG/Q;->c:I

    iget-object v0, p0, LG/s;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iput v0, p3, LG/Q;->a:I

    iget-object v0, p0, LG/s;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iput v0, p3, LG/Q;->b:I

    iget-object v0, p0, LG/s;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iput v0, p3, LG/Q;->c:I

    iget-object v0, p0, LG/s;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iput v0, p4, LG/Q;->a:I

    iget-object v0, p0, LG/s;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iput v0, p4, LG/Q;->b:I

    iget-object v0, p0, LG/s;->a:[I

    aget v0, v0, v1

    iput v0, p4, LG/Q;->c:I

    return-void
.end method

.method public a(ILG/Q;LG/Q;LG/Q;LG/Q;)V
    .locals 3

    mul-int/lit8 v0, p1, 0x9

    iget-object v1, p0, LG/s;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v0, v1, v0

    iget v1, p2, LG/Q;->a:I

    sub-int/2addr v0, v1

    iput v0, p3, LG/Q;->a:I

    iget-object v0, p0, LG/s;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, LG/Q;->b:I

    sub-int/2addr v0, v2

    iput v0, p3, LG/Q;->b:I

    iget-object v0, p0, LG/s;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iget v1, p2, LG/Q;->c:I

    sub-int/2addr v0, v1

    iput v0, p3, LG/Q;->c:I

    iget-object v0, p0, LG/s;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, LG/Q;->a:I

    sub-int/2addr v0, v2

    iput v0, p4, LG/Q;->a:I

    iget-object v0, p0, LG/s;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iget v1, p2, LG/Q;->b:I

    sub-int/2addr v0, v1

    iput v0, p4, LG/Q;->b:I

    iget-object v0, p0, LG/s;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, LG/Q;->c:I

    sub-int/2addr v0, v2

    iput v0, p4, LG/Q;->c:I

    iget-object v0, p0, LG/s;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iget v1, p2, LG/Q;->a:I

    sub-int/2addr v0, v1

    iput v0, p5, LG/Q;->a:I

    iget-object v0, p0, LG/s;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, LG/Q;->b:I

    sub-int/2addr v0, v2

    iput v0, p5, LG/Q;->b:I

    iget-object v0, p0, LG/s;->a:[I

    aget v0, v0, v1

    iget v1, p2, LG/Q;->c:I

    sub-int/2addr v0, v1

    iput v0, p5, LG/Q;->c:I

    return-void
.end method

.method public a(LG/w;Ljava/io/DataOutput;)V
    .locals 3

    invoke-virtual {p0}, LG/s;->b()I

    move-result v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, LG/s;->a:[I

    invoke-static {v2, v1, p1, p2}, LG/Q;->a([IILG/w;Ljava/io/DataOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, LG/s;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public b(LG/w;Ljava/io/DataOutput;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, LG/s;->b()I

    move-result v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, LG/s;->a:[I

    invoke-static {v2, v1, p1, p2}, LG/Q;->b([IILG/w;Ljava/io/DataOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LG/s;->b:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, LG/s;->b:[I

    array-length v0, v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/s;->b:[I

    array-length v1, v0

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    invoke-static {p2, v3}, LG/L;->a(Ljava/io/DataOutput;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, LG/s;->a:[I

    array-length v0, v0

    iget-object v1, p0, LG/s;->b:[I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1c

    return v0

    :cond_0
    iget-object v1, p0, LG/s;->b:[I

    array-length v1, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, LG/s;

    if-eqz v0, :cond_1

    check-cast p1, LG/s;

    iget-object v0, p0, LG/s;->a:[I

    iget-object v1, p1, LG/s;->a:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LG/s;->b:[I

    iget-object v1, p1, LG/s;->b:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LG/s;->a:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    iget-object v1, p0, LG/s;->b:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
