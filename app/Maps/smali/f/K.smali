.class public Lf/K;
.super Ljava/lang/Object;


# static fields
.field private static f:I

.field private static g:[Lf/K;

.field private static final h:[I


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lf/l;

.field private final d:B

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lf/K;->h:[I

    const/4 v0, 0x1

    invoke-static {v0}, Lf/K;->a(I)V

    return-void

    :array_0
    .array-data 0x4
        0x83t 0x0t 0x0t 0x0t
        0x1t 0x1t 0x0t 0x0t
        0x9t 0x2t 0x0t 0x0t
        0x7t 0x4t 0x0t 0x0t
        0x5t 0x8t 0x0t 0x0t
        0x3t 0x10t 0x0t 0x0t
        0x11t 0x20t 0x0t 0x0t
        0x1bt 0x40t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(BIILf/l;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zoom cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-byte p1, p0, Lf/K;->d:B

    iput p2, p0, Lf/K;->a:I

    iput p3, p0, Lf/K;->b:I

    iput-object p4, p0, Lf/K;->c:Lf/l;

    iput p5, p0, Lf/K;->e:I

    return-void
.end method

.method public static a()B
    .locals 1

    invoke-static {}, Lac/m;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private static a(IILf/l;I)I
    .locals 2

    mul-int/lit8 v0, p0, 0x1d

    xor-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x1d

    invoke-virtual {p2}, Lf/l;->a()I

    move-result v1

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p3

    return v0
.end method

.method public static a(Lf/h;Lf/l;)I
    .locals 1

    invoke-virtual {p0, p1}, Lf/h;->a(Lf/l;)I

    move-result v0

    div-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public static a(BIILf/l;)Lf/K;
    .locals 7

    invoke-virtual {p3}, Lf/l;->b()I

    move-result v0

    div-int/lit16 v0, v0, 0x100

    rem-int v0, p1, v0

    if-gez v0, :cond_2

    invoke-virtual {p3}, Lf/l;->b()I

    move-result v1

    div-int/lit16 v1, v1, 0x100

    add-int/2addr v0, v1

    move v2, v0

    :goto_0
    invoke-static {v2, p2, p3, p0}, Lf/K;->a(IILf/l;I)I

    move-result v5

    sget v0, Lf/K;->f:I

    rem-int v0, v5, v0

    if-gez v0, :cond_1

    sget v1, Lf/K;->f:I

    add-int/2addr v0, v1

    move v6, v0

    :goto_1
    sget-object v0, Lf/K;->g:[Lf/K;

    aget-object v0, v0, v6

    if-eqz v0, :cond_0

    iget-byte v1, v0, Lf/K;->d:B

    if-ne v1, p0, :cond_0

    iget v1, v0, Lf/K;->a:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lf/K;->b:I

    if-ne v1, p2, :cond_0

    iget-object v1, v0, Lf/K;->c:Lf/l;

    if-ne v1, p3, :cond_0

    :goto_2
    return-object v0

    :cond_0
    new-instance v0, Lf/K;

    move v1, p0

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lf/K;-><init>(BIILf/l;I)V

    sget-object v1, Lf/K;->g:[Lf/K;

    aput-object v0, v1, v6

    goto :goto_2

    :cond_1
    move v6, v0

    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public static a(BLf/K;)Lf/K;
    .locals 3

    iget v0, p1, Lf/K;->a:I

    iget v1, p1, Lf/K;->b:I

    iget-object v2, p1, Lf/K;->c:Lf/l;

    invoke-static {p0, v0, v1, v2}, Lf/K;->a(BIILf/l;)Lf/K;

    move-result-object v0

    return-object v0
.end method

.method public static a(BLf/h;Lf/l;)Lf/K;
    .locals 2

    invoke-static {p1, p2}, Lf/K;->a(Lf/h;Lf/l;)I

    move-result v0

    invoke-static {p1, p2}, Lf/K;->b(Lf/h;Lf/l;)I

    move-result v1

    invoke-static {p0, v0, v1, p2}, Lf/K;->a(BIILf/l;)Lf/K;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;)Lf/K;
    .locals 4

    :try_start_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    invoke-static {v3}, Lf/l;->b(I)Lf/l;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lf/K;->a(BIILf/l;)Lf/K;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(I)V
    .locals 1

    mul-int/lit8 v0, p0, 0x6

    invoke-static {v0}, Lf/K;->b(I)I

    move-result v0

    sput v0, Lf/K;->f:I

    sget v0, Lf/K;->f:I

    new-array v0, v0, [Lf/K;

    sput-object v0, Lf/K;->g:[Lf/K;

    return-void
.end method

.method private static b(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lf/K;->h:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lf/K;->h:[I

    aget v1, v1, v0

    if-lt v1, p0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lf/K;->h:[I

    sget-object v1, Lf/K;->h:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    goto :goto_1
.end method

.method public static b(Lf/h;Lf/l;)I
    .locals 1

    invoke-virtual {p0, p1}, Lf/h;->b(Lf/l;)I

    move-result v0

    div-int/lit16 v0, v0, 0x100

    return v0
.end method


# virtual methods
.method public a(Ljava/io/DataOutput;)V
    .locals 1

    iget-byte v0, p0, Lf/K;->d:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, Lf/K;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Lf/K;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, Lf/K;->c:Lf/l;

    invoke-virtual {v0}, Lf/l;->a()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method

.method public b()B
    .locals 1

    iget-byte v0, p0, Lf/K;->d:B

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lf/K;->a:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lf/K;->b:I

    return v0
.end method

.method public e()Lf/l;
    .locals 1

    iget-object v0, p0, Lf/K;->c:Lf/l;

    return-object v0
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
    instance-of v0, p1, Lf/K;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lf/K;

    iget v0, p0, Lf/K;->a:I

    iget v1, p1, Lf/K;->a:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lf/K;->b:I

    iget v1, p1, Lf/K;->b:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lf/K;->c:Lf/l;

    iget-object v1, p1, Lf/K;->c:Lf/l;

    if-ne v0, v1, :cond_2

    iget-byte v0, p0, Lf/K;->d:B

    iget-byte v1, p1, Lf/K;->d:B

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lf/K;->a:I

    mul-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lf/K;->b:I

    mul-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public h()Lf/K;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lf/K;->c:Lf/l;

    invoke-virtual {v1}, Lf/l;->a()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1}, Lf/l;->b(I)Lf/l;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v0, p0, Lf/K;->a:I

    iget v2, p0, Lf/K;->b:I

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    if-gez v2, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    iget-byte v3, p0, Lf/K;->d:B

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v3, v0, v2, v1}, Lf/K;->a(BIILf/l;)Lf/K;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lf/K;->e:I

    return v0
.end method

.method public i()Lf/K;
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0, p0}, Lf/K;->a(BLf/K;)Lf/K;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 2

    iget v0, p0, Lf/K;->b:I

    if-ltz v0, :cond_0

    iget v0, p0, Lf/K;->b:I

    iget-object v1, p0, Lf/K;->c:Lf/l;

    invoke-virtual {v1}, Lf/l;->b()I

    move-result v1

    div-int/lit16 v1, v1, 0x100

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lf/K;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lf/K;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/K;->c:Lf/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
