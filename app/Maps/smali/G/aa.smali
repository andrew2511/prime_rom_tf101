.class public LG/aa;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:F

.field private final d:F

.field private final e:Ljava/lang/String;

.field private final f:LG/r;

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:F


# direct methods
.method public constructor <init>(ILjava/lang/String;FLjava/lang/String;LG/r;ILjava/lang/String;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LG/aa;->a:I

    iput-object p2, p0, LG/aa;->b:Ljava/lang/String;

    iput p3, p0, LG/aa;->c:F

    const/high16 v0, 0x3f80

    div-float/2addr v0, p3

    iput v0, p0, LG/aa;->d:F

    iput-object p4, p0, LG/aa;->e:Ljava/lang/String;

    iput-object p5, p0, LG/aa;->f:LG/r;

    iput p6, p0, LG/aa;->g:I

    iput-object p7, p0, LG/aa;->h:Ljava/lang/String;

    iput p8, p0, LG/aa;->i:F

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILG/q;[Ljava/lang/String;LG/r;Ljava/lang/String;Ljava/util/List;)V
    .locals 9

    const/16 v0, 0x9

    if-ge p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    const/4 p1, 0x0

    const/high16 v0, 0x3f80

    invoke-static {v1}, LG/aa;->b(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    invoke-static {v0}, LG/X;->a(I)F

    move-result v0

    move v3, v0

    move-object v2, p1

    :goto_1
    const/4 p1, 0x0

    invoke-static {v1}, LG/aa;->c(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/cp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    :goto_2
    const/4 p1, 0x0

    const/4 v0, -0x1

    const/4 v5, 0x0

    invoke-static {v1}, LG/aa;->d(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p1

    invoke-virtual {p2, p1}, LG/q;->a(I)LG/r;

    move-result-object p1

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p2

    invoke-static {p2, p3}, LG/X;->a(I[Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    aget-object p3, p3, p2

    :goto_3
    move-object v7, p3

    move v6, p2

    move-object v5, p1

    :goto_4
    const/4 p1, 0x0

    invoke-static {v1}, LG/aa;->e(I)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p0

    invoke-static {p0}, LG/X;->a(I)F

    move-result p0

    move v8, p0

    :goto_5
    const/16 p0, 0x8

    invoke-static {v1, p0}, LG/X;->a(II)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x8

    if-eq v1, p0, :cond_2

    new-instance v0, LG/aa;

    xor-int/lit8 v1, v1, 0x8

    invoke-direct/range {v0 .. v8}, LG/aa;-><init>(ILjava/lang/String;FLjava/lang/String;LG/r;ILjava/lang/String;F)V

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LG/aa;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/high16 v8, -0x4080

    invoke-direct/range {v0 .. v8}, LG/aa;-><init>(ILjava/lang/String;FLjava/lang/String;LG/r;ILjava/lang/String;F)V

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    invoke-static {v1}, LG/aa;->a(I)Z

    move-result p2

    if-eqz p2, :cond_4

    move-object v7, p5

    move v6, v0

    move-object v5, p4

    goto :goto_4

    :cond_2
    new-instance v0, LG/aa;

    invoke-direct/range {v0 .. v8}, LG/aa;-><init>(ILjava/lang/String;FLjava/lang/String;LG/r;ILjava/lang/String;F)V

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    move v8, p1

    goto :goto_5

    :cond_4
    move-object v7, v5

    move v6, v0

    move-object v5, p1

    goto :goto_4

    :cond_5
    move-object p3, v5

    goto :goto_3

    :cond_6
    move-object v4, p1

    goto :goto_2

    :cond_7
    move v3, v0

    move-object v2, p1

    goto/16 :goto_1
.end method

.method private static a(I)Z
    .locals 1

    invoke-static {p0}, LG/aa;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, LG/aa;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, LG/X;->a(II)Z

    move-result v0

    return v0
.end method

.method private static c(I)Z
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, LG/X;->a(II)Z

    move-result v0

    return v0
.end method

.method private static d(I)Z
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, LG/X;->a(II)Z

    move-result v0

    return v0
.end method

.method private static e(I)Z
    .locals 1

    const/16 v0, 0x10

    invoke-static {p0, v0}, LG/X;->a(II)Z

    move-result v0

    return v0
.end method

.method private static f(I)Z
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, v0}, LG/X;->a(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/io/DataOutput;)V
    .locals 1

    iget v0, p0, LG/aa;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    invoke-virtual {p0}, LG/aa;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LG/aa;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget v0, p0, LG/aa;->c:F

    invoke-static {v0}, LG/X;->a(F)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    :cond_0
    invoke-virtual {p0}, LG/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LG/aa;->e:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, LG/aa;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LG/aa;->f:LG/r;

    invoke-virtual {v0}, LG/r;->b()I

    move-result v0

    invoke-static {p1, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget v0, p0, LG/aa;->g:I

    invoke-static {p1, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    :cond_2
    invoke-virtual {p0}, LG/aa;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, LG/aa;->i:F

    invoke-static {v0}, LG/X;->a(F)I

    move-result v0

    invoke-static {p1, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    :cond_3
    return-void
.end method

.method public a()Z
    .locals 1

    iget v0, p0, LG/aa;->a:I

    invoke-static {v0}, LG/aa;->b(I)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    iget v0, p0, LG/aa;->a:I

    invoke-static {v0}, LG/aa;->c(I)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    iget v0, p0, LG/aa;->a:I

    invoke-static {v0}, LG/aa;->d(I)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    iget v0, p0, LG/aa;->a:I

    invoke-static {v0}, LG/aa;->e(I)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    iget v0, p0, LG/aa;->a:I

    invoke-static {v0}, LG/aa;->f(I)Z

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
    check-cast p1, LG/aa;

    iget v0, p0, LG/aa;->a:I

    iget v1, p1, LG/aa;->a:I

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget v0, p0, LG/aa;->i:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p1, LG/aa;->i:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, LG/aa;->b:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p1, LG/aa;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, LG/aa;->b:Ljava/lang/String;

    iget-object v1, p1, LG/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, LG/aa;->f:LG/r;

    if-nez v0, :cond_7

    iget-object v0, p1, LG/aa;->f:LG/r;

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_0

    :cond_7
    iget-object v0, p0, LG/aa;->f:LG/r;

    iget-object v1, p1, LG/aa;->f:LG/r;

    invoke-virtual {v0, v1}, LG/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_0

    :cond_8
    iget-object v0, p0, LG/aa;->h:Ljava/lang/String;

    if-nez v0, :cond_9

    iget-object v0, p1, LG/aa;->h:Ljava/lang/String;

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_0

    :cond_9
    iget-object v0, p0, LG/aa;->h:Ljava/lang/String;

    iget-object v1, p1, LG/aa;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_0

    :cond_a
    iget v0, p0, LG/aa;->c:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p1, LG/aa;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_b

    move v0, v2

    goto :goto_0

    :cond_b
    iget-object v0, p0, LG/aa;->e:Ljava/lang/String;

    if-nez v0, :cond_d

    iget-object v0, p1, LG/aa;->e:Ljava/lang/String;

    if-nez v0, :cond_c

    move v0, v3

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, LG/aa;->e:Ljava/lang/String;

    iget-object v1, p1, LG/aa;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LG/aa;->e:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    mul-int/lit8 v0, v0, 0x1f

    iget v0, p0, LG/aa;->a:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LG/aa;->i:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LG/aa;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LG/aa;->f:LG/r;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LG/aa;->h:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LG/aa;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LG/aa;->e:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v1, p0, LG/aa;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, LG/aa;->f:LG/r;

    invoke-virtual {v1}, LG/r;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, LG/aa;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, LG/aa;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3
.end method
