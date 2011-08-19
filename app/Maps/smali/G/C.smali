.class public LG/C;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:F

.field private final c:[I

.field private final d:I


# direct methods
.method public constructor <init>(IF[II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LG/C;->a:I

    iput p2, p0, LG/C;->b:F

    iput-object p3, p0, LG/C;->c:[I

    iput p4, p0, LG/C;->d:I

    return-void
.end method

.method public static a(Ljava/io/DataInput;I)LG/C;
    .locals 6

    const/16 v0, 0x9

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    invoke-static {v1}, LG/X;->a(I)F

    move-result v1

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v2

    new-array v3, v2, [I

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    new-instance v4, LG/C;

    invoke-direct {v4, v0, v1, v3, v2}, LG/C;-><init>(IF[II)V

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/io/DataOutput;)V
    .locals 4

    iget v0, p0, LG/C;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, LG/C;->b:F

    invoke-static {v0}, LG/X;->a(F)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-object v0, p0, LG/C;->c:[I

    array-length v0, v0

    invoke-static {p1, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/C;->c:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    int-to-short v3, v3

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeShort(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, LG/C;->d:I

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

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
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, LG/C;

    iget v0, p0, LG/C;->a:I

    iget v1, p1, LG/C;->a:I

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, LG/C;->c:[I

    iget-object v1, p1, LG/C;->c:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget v0, p0, LG/C;->d:I

    iget v1, p1, LG/C;->d:I

    if-eq v0, v1, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    iget v0, p0, LG/C;->b:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p1, LG/C;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_6

    move v0, v3

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    mul-int/lit8 v0, v0, 0x1f

    iget v0, p0, LG/C;->a:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LG/C;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LG/C;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LG/C;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
