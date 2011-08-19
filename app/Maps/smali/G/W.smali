.class public LG/W;
.super Ljava/lang/Object;


# instance fields
.field private final a:LG/Q;

.field private final b:I

.field private final c:F

.field private final d:LG/Q;

.field private final e:F

.field private final f:F

.field private final g:F


# direct methods
.method public constructor <init>(LG/Q;IFLG/Q;FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG/W;->a:LG/Q;

    iput p2, p0, LG/W;->b:I

    iput p3, p0, LG/W;->c:F

    iput-object p4, p0, LG/W;->d:LG/Q;

    iput p5, p0, LG/W;->e:F

    iput p6, p0, LG/W;->f:F

    iput p7, p0, LG/W;->g:F

    return-void
.end method

.method public static a(Ljava/io/DataInput;LG/w;I)LG/W;
    .locals 8

    const/high16 v5, 0x7fc0

    invoke-static {p0, p1}, LG/Q;->a(Ljava/io/DataInput;LG/w;)LG/Q;

    move-result-object v1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    invoke-static {v2}, LG/W;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v0}, LG/X;->d(I)F

    move-result v0

    move v3, v0

    :goto_0
    const/4 v0, 0x0

    invoke-static {v2}, LG/W;->b(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0, p1}, LG/Q;->a(Ljava/io/DataInput;LG/w;)LG/Q;

    move-result-object v0

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v4

    invoke-static {v4}, LG/X;->d(I)F

    move-result v4

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v5

    invoke-static {v5}, LG/X;->a(I)F

    move-result v5

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v6

    invoke-static {v6}, LG/X;->a(I)F

    move-result v6

    move v7, v6

    move v6, v5

    move v5, v4

    move-object v4, v0

    :goto_1
    new-instance v0, LG/W;

    invoke-direct/range {v0 .. v7}, LG/W;-><init>(LG/Q;IFLG/Q;FFF)V

    return-object v0

    :cond_0
    move v7, v5

    move v6, v5

    move-object v4, v0

    goto :goto_1

    :cond_1
    move v3, v5

    goto :goto_0
.end method

.method private static a(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, LG/X;->a(II)Z

    move-result v0

    return v0
.end method

.method private static b(I)Z
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, LG/X;->a(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/io/DataOutput;LG/w;)V
    .locals 1

    iget-object v0, p0, LG/W;->a:LG/Q;

    invoke-virtual {v0, p2, p1}, LG/Q;->a(LG/w;Ljava/io/DataOutput;)V

    iget v0, p0, LG/W;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    invoke-virtual {p0}, LG/W;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LG/W;->c:F

    invoke-static {v0}, LG/X;->d(F)I

    move-result v0

    invoke-static {p1, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    :cond_0
    invoke-virtual {p0}, LG/W;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LG/W;->d:LG/Q;

    invoke-virtual {v0, p2, p1}, LG/Q;->a(LG/w;Ljava/io/DataOutput;)V

    iget v0, p0, LG/W;->e:F

    invoke-static {v0}, LG/X;->d(F)I

    move-result v0

    invoke-static {p1, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget v0, p0, LG/W;->f:F

    invoke-static {v0}, LG/X;->a(F)I

    move-result v0

    invoke-static {p1, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget v0, p0, LG/W;->g:F

    invoke-static {v0}, LG/X;->a(F)I

    move-result v0

    invoke-static {p1, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    iget v0, p0, LG/W;->b:I

    invoke-static {v0}, LG/W;->a(I)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    iget v0, p0, LG/W;->b:I

    invoke-static {v0}, LG/W;->b(I)Z

    move-result v0

    return v0
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
    check-cast p1, LG/W;

    iget-object v0, p0, LG/W;->d:LG/Q;

    if-nez v0, :cond_3

    iget-object v0, p1, LG/W;->d:LG/Q;

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, LG/W;->d:LG/Q;

    iget-object v1, p1, LG/W;->d:LG/Q;

    invoke-virtual {v0, v1}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget v0, p0, LG/W;->f:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p1, LG/W;->f:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    iget v0, p0, LG/W;->e:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p1, LG/W;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    iget v0, p0, LG/W;->g:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p1, LG/W;->g:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    iget v0, p0, LG/W;->b:I

    iget v1, p1, LG/W;->b:I

    if-eq v0, v1, :cond_8

    move v0, v2

    goto :goto_0

    :cond_8
    iget-object v0, p0, LG/W;->a:LG/Q;

    if-nez v0, :cond_9

    iget-object v0, p1, LG/W;->a:LG/Q;

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_0

    :cond_9
    iget-object v0, p0, LG/W;->a:LG/Q;

    iget-object v1, p1, LG/W;->a:LG/Q;

    invoke-virtual {v0, v1}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_0

    :cond_a
    iget v0, p0, LG/W;->c:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p1, LG/W;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_b

    move v0, v3

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v0, p0, LG/W;->d:LG/Q;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LG/W;->f:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LG/W;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LG/W;->g:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LG/W;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LG/W;->a:LG/Q;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LG/W;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, LG/W;->d:LG/Q;

    invoke-virtual {v0}, LG/Q;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, LG/W;->a:LG/Q;

    invoke-virtual {v1}, LG/Q;->hashCode()I

    move-result v1

    goto :goto_1
.end method
