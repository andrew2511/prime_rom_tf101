.class public LG/K;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:F

.field private final e:F

.field private final f:I


# direct methods
.method public constructor <init>(IIIFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LG/K;->a:I

    iput p2, p0, LG/K;->b:I

    iput p3, p0, LG/K;->c:I

    iput p4, p0, LG/K;->d:F

    iput p5, p0, LG/K;->e:F

    iput p6, p0, LG/K;->f:I

    return-void
.end method

.method public static a(Ljava/io/DataInput;I)LG/K;
    .locals 7

    const/16 v0, 0x9

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    invoke-static {v0}, LG/X;->b(I)F

    move-result v4

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    invoke-static {v0}, LG/X;->b(I)F

    move-result v5

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    new-instance v0, LG/K;

    invoke-direct/range {v0 .. v6}, LG/K;-><init>(IIIFFI)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/io/DataOutput;)V
    .locals 1

    iget v0, p0, LG/K;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, LG/K;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, LG/K;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, LG/K;->d:F

    invoke-static {v0}, LG/X;->b(F)I

    move-result v0

    int-to-short v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    iget v0, p0, LG/K;->e:F

    invoke-static {v0}, LG/X;->b(F)I

    move-result v0

    int-to-short v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    iget v0, p0, LG/K;->f:I

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
    check-cast p1, LG/K;

    iget v0, p0, LG/K;->f:I

    iget v1, p1, LG/K;->f:I

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget v0, p0, LG/K;->a:I

    iget v1, p1, LG/K;->a:I

    if-eq v0, v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget v0, p0, LG/K;->d:F

    iget v1, p1, LG/K;->d:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    iget v0, p0, LG/K;->b:I

    iget v1, p1, LG/K;->b:I

    if-eq v0, v1, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    iget v0, p0, LG/K;->c:I

    iget v1, p1, LG/K;->c:I

    if-eq v0, v1, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    iget v0, p0, LG/K;->e:F

    iget v1, p1, LG/K;->e:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_8

    move v0, v3

    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    mul-int/lit8 v0, v0, 0x1f

    iget v0, p0, LG/K;->f:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LG/K;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LG/K;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LG/K;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LG/K;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LG/K;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
