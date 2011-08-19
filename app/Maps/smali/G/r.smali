.class public final LG/r;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I

.field private static final b:[F

.field private static c:LG/r;


# instance fields
.field private final d:I

.field private final e:[I

.field private final f:[I

.field private final g:[F

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:[LG/C;

.field private final l:LG/K;

.field private final m:LG/U;

.field private final n:LG/C;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, LG/r;->a:[I

    new-array v0, v1, [F

    sput-object v0, LG/r;->b:[F

    new-instance v0, LG/r;

    sget-object v2, LG/r;->a:[I

    sget-object v3, LG/r;->a:[I

    sget-object v4, LG/r;->b:[F

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, LG/r;-><init>(I[I[I[FII)V

    sput-object v0, LG/r;->c:LG/r;

    return-void
.end method

.method public constructor <init>(II[I[LG/C;LG/K;LG/U;LG/C;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LG/r;->d:I

    iput p2, p0, LG/r;->j:I

    iput-object p3, p0, LG/r;->e:[I

    iput-object p4, p0, LG/r;->k:[LG/C;

    iput-object p5, p0, LG/r;->l:LG/K;

    iput-object p6, p0, LG/r;->m:LG/U;

    iput-object p7, p0, LG/r;->n:LG/C;

    iput-object v1, p0, LG/r;->f:[I

    iput-object v1, p0, LG/r;->g:[F

    iput v0, p0, LG/r;->h:I

    iput v0, p0, LG/r;->i:I

    return-void
.end method

.method public constructor <init>(I[I[I[FII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LG/r;->d:I

    iput-object p2, p0, LG/r;->e:[I

    iput-object p3, p0, LG/r;->f:[I

    iput-object p4, p0, LG/r;->g:[F

    iput p5, p0, LG/r;->h:I

    iput p6, p0, LG/r;->i:I

    const/4 v0, 0x0

    iput v0, p0, LG/r;->j:I

    iput-object v1, p0, LG/r;->k:[LG/C;

    iput-object v1, p0, LG/r;->l:LG/K;

    iput-object v1, p0, LG/r;->m:LG/U;

    iput-object v1, p0, LG/r;->n:LG/C;

    return-void
.end method

.method public static a()LG/r;
    .locals 1

    sget-object v0, LG/r;->c:LG/r;

    return-object v0
.end method

.method public static a(ILjava/io/DataInput;I)LG/r;
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v0, 0x9

    if-ge p2, v0, :cond_5

    invoke-static {p1}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v0

    if-lez v0, :cond_0

    new-array v1, v0, [I

    move-object v2, v1

    :goto_0
    move v1, v5

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    sget-object v1, LG/r;->a:[I

    move-object v2, v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v0

    if-lez v0, :cond_2

    new-array v1, v0, [I

    move-object v3, v1

    :goto_2
    if-lez v0, :cond_3

    new-array v1, v0, [F

    move-object v4, v1

    :goto_3
    move v1, v5

    :goto_4
    if-ge v1, v0, :cond_4

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v5

    aput v5, v3, v1

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    invoke-static {v5}, LG/X;->a(I)F

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_2
    sget-object v1, LG/r;->a:[I

    move-object v3, v1

    goto :goto_2

    :cond_3
    sget-object v1, LG/r;->b:[F

    move-object v4, v1

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v5

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    new-instance v0, LG/r;

    move v1, p0

    invoke-direct/range {v0 .. v6}, LG/r;-><init>(I[I[I[FII)V

    :goto_5
    return-object v0

    :cond_5
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    invoke-static {v2}, LG/r;->d(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p1}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v0

    new-array v1, v0, [I

    move v3, v5

    :goto_6
    if-ge v3, v0, :cond_6

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    move-object v3, v1

    :goto_7
    invoke-static {v2}, LG/r;->e(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v0

    new-array v1, v0, [LG/C;

    move v4, v5

    :goto_8
    if-ge v4, v0, :cond_7

    invoke-static {p1, p2}, LG/C;->a(Ljava/io/DataInput;I)LG/C;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_7
    move-object v4, v1

    :goto_9
    invoke-static {v2}, LG/r;->f(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1, p2}, LG/K;->a(Ljava/io/DataInput;I)LG/K;

    move-result-object v0

    move-object v5, v0

    :goto_a
    invoke-static {v2}, LG/r;->g(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1, p2}, LG/U;->a(Ljava/io/DataInput;I)LG/U;

    move-result-object v0

    move-object v6, v0

    :goto_b
    invoke-static {v2}, LG/r;->h(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1, p2}, LG/C;->a(Ljava/io/DataInput;I)LG/C;

    move-result-object v0

    move-object v7, v0

    :cond_8
    new-instance v0, LG/r;

    move v1, p0

    invoke-direct/range {v0 .. v7}, LG/r;-><init>(II[I[LG/C;LG/K;LG/U;LG/C;)V

    goto :goto_5

    :cond_9
    move-object v6, v7

    goto :goto_b

    :cond_a
    move-object v5, v7

    goto :goto_a

    :cond_b
    move-object v4, v7

    goto :goto_9

    :cond_c
    move-object v3, v7

    goto :goto_7
.end method

.method private static d(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, LG/X;->a(II)Z

    move-result v0

    return v0
.end method

.method private static e(I)Z
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, LG/X;->a(II)Z

    move-result v0

    return v0
.end method

.method private static f(I)Z
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, LG/X;->a(II)Z

    move-result v0

    return v0
.end method

.method private static g(I)Z
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, v0}, LG/X;->a(II)Z

    move-result v0

    return v0
.end method

.method private static h(I)Z
    .locals 1

    const/16 v0, 0x10

    invoke-static {p0, v0}, LG/X;->a(II)Z

    move-result v0

    return v0
.end method

.method private l()Z
    .locals 1

    iget v0, p0, LG/r;->j:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget-object v0, p0, LG/r;->f:[I

    aget v0, v0, p1

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, LG/r;->l()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, LG/r;->e:[I

    array-length v0, v0

    invoke-static {p1, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    move v0, v4

    :goto_0
    iget-object v1, p0, LG/r;->e:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LG/r;->e:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LG/r;->f:[I

    array-length v0, v0

    invoke-static {p1, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    move v0, v4

    :goto_1
    iget-object v1, p0, LG/r;->f:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LG/r;->f:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v1, p0, LG/r;->g:[F

    aget v1, v1, v0

    invoke-static {v1}, LG/X;->a(F)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v0, p0, LG/r;->h:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, LG/r;->i:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget v0, p0, LG/r;->j:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    invoke-virtual {p0}, LG/r;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LG/r;->e:[I

    array-length v0, v0

    invoke-static {p1, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/r;->e:[I

    array-length v1, v0

    move v2, v4

    :goto_3
    if-ge v2, v1, :cond_4

    aget v3, v0, v2

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, LG/r;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, LG/r;->k:[LG/C;

    array-length v0, v0

    invoke-static {p1, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/r;->k:[LG/C;

    array-length v1, v0

    move v2, v4

    :goto_4
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, LG/C;->a(Ljava/io/DataOutput;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, LG/r;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, LG/r;->l:LG/K;

    invoke-virtual {v0, p1}, LG/K;->a(Ljava/io/DataOutput;)V

    :cond_6
    invoke-virtual {p0}, LG/r;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, LG/r;->m:LG/U;

    invoke-virtual {v0, p1}, LG/U;->a(Ljava/io/DataOutput;)V

    :cond_7
    invoke-virtual {p0}, LG/r;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LG/r;->n:LG/C;

    invoke-virtual {v0, p1}, LG/C;->a(Ljava/io/DataOutput;)V

    goto :goto_2
.end method

.method public b(I)F
    .locals 1

    iget-object v0, p0, LG/r;->g:[F

    aget v0, v0, p1

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LG/r;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, LG/r;->f:[I

    array-length v0, v0

    return v0
.end method

.method public c(I)I
    .locals 1

    iget-object v0, p0, LG/r;->e:[I

    aget v0, v0, p1

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, LG/r;->e:[I

    array-length v0, v0

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, LG/r;->h:I

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
    check-cast p1, LG/r;

    iget-object v0, p0, LG/r;->n:LG/C;

    if-nez v0, :cond_3

    iget-object v0, p1, LG/r;->n:LG/C;

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, LG/r;->n:LG/C;

    iget-object v1, p1, LG/r;->n:LG/C;

    invoke-virtual {v0, v1}, LG/C;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget v0, p0, LG/r;->j:I

    iget v1, p1, LG/r;->j:I

    if-eq v0, v1, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, LG/r;->e:[I

    iget-object v1, p1, LG/r;->e:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    iget v0, p0, LG/r;->d:I

    iget v1, p1, LG/r;->d:I

    if-eq v0, v1, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    iget-object v0, p0, LG/r;->f:[I

    iget-object v1, p1, LG/r;->f:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_0

    :cond_8
    iget-object v0, p0, LG/r;->g:[F

    iget-object v1, p1, LG/r;->g:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_0

    :cond_9
    iget-object v0, p0, LG/r;->k:[LG/C;

    iget-object v1, p1, LG/r;->k:[LG/C;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_0

    :cond_a
    iget-object v0, p0, LG/r;->m:LG/U;

    if-nez v0, :cond_b

    iget-object v0, p1, LG/r;->m:LG/U;

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_0

    :cond_b
    iget-object v0, p0, LG/r;->m:LG/U;

    iget-object v1, p1, LG/r;->m:LG/U;

    invoke-virtual {v0, v1}, LG/U;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_0

    :cond_c
    iget v0, p0, LG/r;->h:I

    iget v1, p1, LG/r;->h:I

    if-eq v0, v1, :cond_d

    move v0, v2

    goto/16 :goto_0

    :cond_d
    iget v0, p0, LG/r;->i:I

    iget v1, p1, LG/r;->i:I

    if-eq v0, v1, :cond_e

    move v0, v2

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, LG/r;->l:LG/K;

    if-nez v0, :cond_f

    iget-object v0, p1, LG/r;->l:LG/K;

    if-eqz v0, :cond_10

    move v0, v2

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, LG/r;->l:LG/K;

    iget-object v1, p1, LG/r;->l:LG/K;

    invoke-virtual {v0, v1}, LG/K;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v2

    goto/16 :goto_0

    :cond_10
    move v0, v3

    goto/16 :goto_0
.end method

.method public f()I
    .locals 1

    iget v0, p0, LG/r;->i:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget v0, p0, LG/r;->j:I

    invoke-static {v0}, LG/r;->d(I)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    iget v0, p0, LG/r;->j:I

    invoke-static {v0}, LG/r;->e(I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v0, p0, LG/r;->n:LG/C;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LG/r;->j:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LG/r;->e:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LG/r;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LG/r;->f:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LG/r;->g:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LG/r;->k:[LG/C;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LG/r;->m:LG/U;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LG/r;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LG/r;->i:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LG/r;->l:LG/K;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, LG/r;->n:LG/C;

    invoke-virtual {v0}, LG/C;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, LG/r;->m:LG/U;

    invoke-virtual {v1}, LG/U;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, LG/r;->l:LG/K;

    invoke-virtual {v1}, LG/K;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public i()Z
    .locals 1

    iget v0, p0, LG/r;->j:I

    invoke-static {v0}, LG/r;->f(I)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget v0, p0, LG/r;->j:I

    invoke-static {v0}, LG/r;->g(I)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    iget v0, p0, LG/r;->j:I

    invoke-static {v0}, LG/r;->h(I)Z

    move-result v0

    return v0
.end method
