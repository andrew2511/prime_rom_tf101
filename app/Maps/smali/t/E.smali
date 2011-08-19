.class Lt/E;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:[B


# direct methods
.method constructor <init>(J[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lt/E;->a:J

    if-nez p3, :cond_0

    invoke-static {}, Lt/d;->h()[B

    move-result-object v0

    iput-object v0, p0, Lt/E;->b:[B

    :goto_0
    return-void

    :cond_0
    iput-object p3, p0, Lt/E;->b:[B

    goto :goto_0
.end method


# virtual methods
.method a()J
    .locals 2

    iget-wide v0, p0, Lt/E;->a:J

    return-wide v0
.end method

.method b()[B
    .locals 1

    iget-object v0, p0, Lt/E;->b:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    check-cast p1, Lt/E;

    iget-wide v0, p0, Lt/E;->a:J

    iget-wide v2, p1, Lt/E;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lt/E;->b:[B

    iget-object v1, p1, Lt/E;->b:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lt/E;->a:J

    iget-wide v2, p0, Lt/E;->a:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lt/E;->b:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
