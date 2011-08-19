.class Lt/Y;
.super Ljava/lang/Object;


# instance fields
.field final a:J

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:I

.field final g:I


# direct methods
.method constructor <init>(JIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lt/Y;->a:J

    iput p3, p0, Lt/Y;->b:I

    iput p4, p0, Lt/Y;->c:I

    iput p5, p0, Lt/Y;->d:I

    iput p6, p0, Lt/Y;->e:I

    iput p7, p0, Lt/Y;->f:I

    iput p8, p0, Lt/Y;->g:I

    return-void
.end method

.method static a([BIII)Lt/Y;
    .locals 9

    invoke-static {p0, p1}, Lt/d;->c([BI)J

    move-result-wide v1

    add-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0}, Lt/d;->a([BI)I

    move-result v3

    add-int/lit8 v0, v0, 0x4

    invoke-static {p0, v0}, Lt/d;->a([BI)I

    move-result v5

    add-int/lit8 v0, v0, 0x4

    invoke-static {p0, v0}, Lt/d;->a([BI)I

    move-result v6

    shr-int/lit8 v0, v5, 0x18

    and-int/lit16 v4, v0, 0xff

    const v0, 0xffffff

    and-int/2addr v5, v0

    new-instance v0, Lt/Y;

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lt/Y;-><init>(JIIIIII)V

    return-object v0
.end method

.method static b([BI)I
    .locals 1

    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-static {p0, v0}, Lt/d;->a([BI)I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method a([BI)V
    .locals 3

    iget-wide v0, p0, Lt/Y;->a:J

    invoke-static {p1, p2, v0, v1}, Lt/d;->a([BIJ)V

    add-int/lit8 v0, p2, 0x8

    iget v1, p0, Lt/Y;->b:I

    invoke-static {p1, v0, v1}, Lt/d;->a([BII)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lt/Y;->c:I

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Lt/Y;->d:I

    or-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Lt/d;->a([BII)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lt/Y;->e:I

    invoke-static {p1, v0, v1}, Lt/d;->a([BII)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

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
    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, Lt/Y;

    iget v0, p0, Lt/Y;->f:I

    iget v1, p1, Lt/Y;->f:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lt/Y;->g:I

    iget v1, p1, Lt/Y;->g:I

    if-ne v0, v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lt/Y;->f:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lt/Y;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lt/Y;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Off:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/Y;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KeyLen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/Y;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DataLen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/Y;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/Y;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Shard:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/Y;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ShardIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/Y;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
