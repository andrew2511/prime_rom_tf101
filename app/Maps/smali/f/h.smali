.class public Lf/h;
.super Ljava/lang/Object;

# interfaces
.implements Lf/N;


# static fields
.field static a:[I

.field static b:[I

.field private static final g:Lf/l;


# instance fields
.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lf/h;->a:[I

    sput-object v0, Lf/h;->b:[I

    const/16 v0, 0x16

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    sput-object v0, Lf/h;->g:Lf/l;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    const v1, 0x4c4b400

    const v2, -0x4c4b400

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lf/h;->a(I)I

    move-result v0

    if-le p1, v1, :cond_1

    :goto_0
    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    iput v1, p0, Lf/h;->e:I

    iput v0, p0, Lf/h;->f:I

    sget-object v2, Lf/h;->g:Lf/l;

    invoke-static {v0, v2}, Lf/h;->a(ILf/l;)I

    move-result v0

    iput v0, p0, Lf/h;->c:I

    sget-object v0, Lf/h;->g:Lf/l;

    invoke-static {v1, v0}, Lf/h;->b(ILf/l;)I

    move-result v0

    iput v0, p0, Lf/h;->d:I

    return-void

    :cond_1
    move v1, p1

    goto :goto_0
.end method

.method public constructor <init>(III)V
    .locals 4

    const/16 v3, 0x16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    invoke-virtual {v0}, Lf/l;->b()I

    move-result v1

    invoke-static {p1, v1}, Lf/h;->d(II)I

    move-result v1

    invoke-virtual {v0}, Lf/l;->b()I

    move-result v2

    invoke-static {p2, v2}, Lf/h;->e(II)I

    move-result v2

    invoke-virtual {v0, v1, v3}, Lf/l;->a(II)I

    move-result v1

    iput v1, p0, Lf/h;->c:I

    invoke-virtual {v0, v2, v3}, Lf/l;->a(II)I

    move-result v0

    iput v0, p0, Lf/h;->d:I

    iget v0, p0, Lf/h;->d:I

    sget-object v1, Lf/h;->g:Lf/l;

    invoke-static {v0, v1}, Lf/h;->c(ILf/l;)I

    move-result v0

    iput v0, p0, Lf/h;->e:I

    iget v0, p0, Lf/h;->c:I

    sget-object v1, Lf/h;->g:Lf/l;

    invoke-static {v0, v1}, Lf/h;->d(ILf/l;)I

    move-result v0

    iput v0, p0, Lf/h;->f:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 4

    const/16 v3, 0x16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p5}, Lf/h;->a(I)I

    move-result v0

    iput p4, p0, Lf/h;->e:I

    iput v0, p0, Lf/h;->f:I

    invoke-static {p3}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    invoke-virtual {v0}, Lf/l;->b()I

    move-result v1

    invoke-static {p1, v1}, Lf/h;->d(II)I

    move-result v1

    invoke-virtual {v0}, Lf/l;->b()I

    move-result v2

    invoke-static {p2, v2}, Lf/h;->e(II)I

    move-result v2

    invoke-virtual {v0, v1, v3}, Lf/l;->a(II)I

    move-result v1

    iput v1, p0, Lf/h;->c:I

    invoke-virtual {v0, v2, v3}, Lf/l;->a(II)I

    move-result v0

    iput v0, p0, Lf/h;->d:I

    return-void
.end method

.method private static a(I)I
    .locals 3

    const v2, 0x15752a00

    move v0, p0

    :goto_0
    const v1, -0xaba9500

    if-ge v0, v1, :cond_0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    :goto_1
    const v1, 0xaba9500

    if-le v0, v1, :cond_1

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static a(ILf/l;)I
    .locals 6

    invoke-virtual {p1}, Lf/l;->b()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    int-to-long v2, p0

    invoke-virtual {p1}, Lf/l;->b()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x15752a00

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static a(JI)J
    .locals 4

    invoke-static {p0, p1}, Lf/h;->b(J)J

    move-result-wide v0

    const-wide/16 v2, 0xfa

    mul-long/2addr v0, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const v3, 0xf4240

    div-int/2addr v2, v3

    invoke-static {v2}, LA/h;->b(I)I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(III)Lf/h;
    .locals 1

    new-instance v0, Lf/h;

    invoke-direct {v0, p0, p1, p2}, Lf/h;-><init>(III)V

    return-object v0
.end method

.method public static a(Law/e;)Lf/h;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Law/e;->d(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Law/e;->d(I)I

    move-result v1

    new-instance v2, Lf/h;

    invoke-direct {v2, v0, v1}, Lf/h;-><init>(II)V

    return-object v2
.end method

.method public static a(Ljava/io/DataInput;)Lf/h;
    .locals 3

    new-instance v0, Lf/h;

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lf/h;-><init>(II)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lf/h;
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x2c

    :try_start_0
    invoke-static {p0, v0}, LR/a;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lf/h;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Lf/h;->b(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Lf/h;

    invoke-direct {v2, v1, v0}, Lf/h;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_0

    :cond_0
    move-object v0, v3

    goto :goto_0
.end method

.method public static a(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, LR/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, LR/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lf/h;Ljava/io/DataOutput;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-direct {p0, p1}, Lf/h;->a(Ljava/io/DataOutput;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0
.end method

.method private static a(Ljava/io/DataInput;[I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    aput v1, p1, v0

    move v0, v4

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    sub-int v1, v0, v4

    aget v1, p1, v1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    or-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/io/DataOutput;)V
    .locals 1

    iget v0, p0, Lf/h;->e:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Lf/h;->f:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method

.method private static b(I)I
    .locals 2

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xf4240

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static b(ILf/l;)I
    .locals 12

    const/4 v6, 0x1

    const-wide/32 v10, 0xf4240

    invoke-static {p0}, Lf/h;->b(I)I

    move-result v0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0xf4240

    rem-int/2addr v1, v2

    invoke-static {}, Lf/h;->h()[I

    move-result-object v2

    sub-int v3, v0, v6

    aget v3, v2, v3

    mul-int/lit8 v3, v3, -0x1

    aget v4, v2, v0

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x1

    aget v4, v2, v4

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x2

    aget v4, v2, v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x6

    sub-int v4, v0, v6

    aget v4, v2, v4

    mul-int/lit8 v4, v4, 0x3

    aget v5, v2, v0

    mul-int/lit8 v5, v5, 0x6

    sub-int/2addr v4, v5

    add-int/lit8 v5, v0, 0x1

    aget v5, v2, v5

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x6

    sub-int v5, v0, v6

    aget v5, v2, v5

    mul-int/lit8 v5, v5, -0x2

    aget v6, v2, v0

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v5, v6

    add-int/lit8 v6, v0, 0x1

    aget v6, v2, v6

    mul-int/lit8 v6, v6, 0x6

    add-int/2addr v5, v6

    add-int/lit8 v6, v0, 0x2

    aget v6, v2, v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x6

    aget v0, v2, v0

    int-to-long v2, v3

    int-to-long v6, v1

    mul-long/2addr v2, v6

    int-to-long v6, v1

    mul-long/2addr v2, v6

    div-long/2addr v2, v10

    int-to-long v6, v1

    mul-long/2addr v2, v6

    div-long/2addr v2, v10

    div-long/2addr v2, v10

    int-to-long v6, v4

    int-to-long v8, v1

    mul-long/2addr v6, v8

    int-to-long v8, v1

    mul-long/2addr v6, v8

    div-long/2addr v6, v10

    div-long/2addr v6, v10

    add-long/2addr v2, v6

    int-to-long v4, v5

    int-to-long v6, v1

    mul-long/2addr v4, v6

    div-long/2addr v4, v10

    add-long v1, v2, v4

    int-to-long v3, v0

    add-long v0, v1, v3

    long-to-int v0, v0

    if-gez p0, :cond_0

    neg-int v0, v0

    :cond_0
    invoke-virtual {p1}, Lf/l;->b()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    invoke-static {v0, p1}, Lf/h;->e(ILf/l;)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    int-to-long v3, v0

    sub-long v0, v1, v3

    long-to-int v0, v0

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 10

    const/16 v2, 0x2e

    const/4 v9, 0x6

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v8, :cond_5

    invoke-static {v0, v2}, LR/a;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Coordinate has more than one decimal point: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    aget-object v2, v1, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v3, v1, v6

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v8, :cond_2

    move v3, v7

    :goto_0
    aget-object v4, v1, v7

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x39

    if-le v4, v5, :cond_3

    :cond_1
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid fractional part in \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move v3, v6

    goto :goto_0

    :cond_3
    const/16 v0, 0x30

    invoke-static {v1, v9, v0}, LR/a;->a(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0xf4240

    mul-int/2addr v1, v2

    if-eqz v3, :cond_4

    move v2, v8

    :goto_1
    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    :goto_2
    return v0

    :cond_4
    move v2, v7

    goto :goto_1

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0xf4240

    mul-int/2addr v0, v1

    goto :goto_2
.end method

.method public static b(J)J
    .locals 4

    const-wide/16 v0, 0x24

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static c(ILf/l;)I
    .locals 14

    const v5, 0x4c4b40

    const v13, 0x4c4b400

    const/4 v7, 0x1

    const-wide/32 v11, 0x4c4b40

    invoke-static {}, Lf/h;->i()[I

    move-result-object v0

    invoke-virtual {p1}, Lf/l;->b()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p0

    invoke-static {v1, p1}, Lf/h;->f(ILf/l;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1

    array-length v3, v0

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_2

    if-lez v1, :cond_1

    move v0, v13

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v0, -0x4c4b400

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    rem-int/2addr v3, v5

    sub-int v4, v2, v7

    aget v4, v0, v4

    mul-int/lit8 v4, v4, -0x1

    aget v5, v0, v2

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x1

    aget v5, v0, v5

    mul-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget v5, v0, v5

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x6

    sub-int v5, v2, v7

    aget v5, v0, v5

    mul-int/lit8 v5, v5, 0x3

    aget v6, v0, v2

    mul-int/lit8 v6, v6, 0x6

    sub-int/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x6

    sub-int v6, v2, v7

    aget v6, v0, v6

    mul-int/lit8 v6, v6, -0x2

    aget v7, v0, v2

    mul-int/lit8 v7, v7, 0x3

    sub-int/2addr v6, v7

    add-int/lit8 v7, v2, 0x1

    aget v7, v0, v7

    mul-int/lit8 v7, v7, 0x6

    add-int/2addr v6, v7

    add-int/lit8 v7, v2, 0x2

    aget v7, v0, v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x6

    aget v0, v0, v2

    int-to-long v7, v4

    int-to-long v9, v3

    mul-long/2addr v7, v9

    int-to-long v9, v3

    mul-long/2addr v7, v9

    div-long/2addr v7, v11

    int-to-long v9, v3

    mul-long/2addr v7, v9

    div-long/2addr v7, v11

    div-long/2addr v7, v11

    int-to-long v4, v5

    int-to-long v9, v3

    mul-long/2addr v4, v9

    int-to-long v9, v3

    mul-long/2addr v4, v9

    div-long/2addr v4, v11

    div-long/2addr v4, v11

    add-long/2addr v4, v7

    int-to-long v6, v6

    int-to-long v2, v3

    mul-long/2addr v2, v6

    div-long/2addr v2, v11

    add-long/2addr v2, v4

    int-to-long v4, v0

    add-long/2addr v2, v4

    long-to-int v0, v2

    if-le v0, v13, :cond_3

    move v0, v13

    :cond_3
    if-gez v1, :cond_0

    neg-int v0, v0

    goto :goto_0
.end method

.method private static c(J)J
    .locals 4

    const-wide/16 v0, 0x4

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x24

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static d(II)I
    .locals 1

    move v0, p0

    :goto_0
    if-lt v0, p1, :cond_0

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    :goto_1
    if-gez v0, :cond_1

    add-int/2addr v0, p1

    goto :goto_1

    :cond_1
    return v0
.end method

.method private static d(ILf/l;)I
    .locals 4

    invoke-virtual {p1}, Lf/l;->b()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    int-to-long v0, v0

    const-wide/32 v2, 0x15752a00

    mul-long/2addr v0, v2

    invoke-virtual {p1}, Lf/l;->b()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static e(II)I
    .locals 1

    if-gez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-lt p0, p1, :cond_1

    const/4 v0, 0x1

    sub-int v0, p1, v0

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method private static e(ILf/l;)I
    .locals 4

    int-to-long v0, p0

    invoke-virtual {p1}, Lf/l;->b()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x15752a00

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static f(ILf/l;)I
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    invoke-virtual {p1}, Lf/l;->b()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static h()[I
    .locals 2

    sget-object v0, Lf/h;->a:[I

    if-nez v0, :cond_0

    const/16 v0, 0x54

    new-array v0, v0, [I

    sput-object v0, Lf/h;->a:[I

    const/16 v0, 0xfd

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Ln/c;->a([B)Ljava/io/DataInput;

    move-result-object v0

    sget-object v1, Lf/h;->a:[I

    invoke-static {v0, v1}, Lf/h;->a(Ljava/io/DataInput;[I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v0, Lf/h;->a:[I

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t read mercator.dat"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 0x1
        0xfft
        0xf0t
        0xbdt
        0x8dt
        0xft
        0x42t
        0x73t
        0xft
        0x42t
        0x73t
        0xft
        0x43t
        0xa3t
        0xft
        0x46t
        0x6t
        0xft
        0x49t
        0x99t
        0xft
        0x4et
        0x61t
        0xft
        0x54t
        0x5et
        0xft
        0x5bt
        0x93t
        0xft
        0x64t
        0x2t
        0xft
        0x6dt
        0xb0t
        0xft
        0x78t
        0x9ft
        0xft
        0x84t
        0xd4t
        0xft
        0x92t
        0x54t
        0xft
        0xa1t
        0x26t
        0xft
        0xb1t
        0x4et
        0xft
        0xc2t
        0xd3t
        0xft
        0xd5t
        0xbdt
        0xft
        0xeat
        0x15t
        0xft
        0xfft
        0xe1t
        0x10t
        0x17t
        0x2dt
        0x10t
        0x30t
        0x1t
        0x10t
        0x4at
        0x6bt
        0x10t
        0x66t
        0x74t
        0x10t
        0x84t
        0x2bt
        0x10t
        0xa3t
        0x9ct
        0x10t
        0xc4t
        0xd7t
        0x10t
        0xe7t
        0xedt
        0x11t
        0xct
        0xeet
        0x11t
        0x33t
        0xect
        0x11t
        0x5ct
        0xfct
        0x11t
        0x88t
        0x34t
        0x11t
        0xb5t
        0xa9t
        0x11t
        0xe5t
        0x76t
        0x12t
        0x17t
        0xb4t
        0x12t
        0x4ct
        0x81t
        0x12t
        0x83t
        0xfdt
        0x12t
        0xbet
        0x46t
        0x12t
        0xfbt
        0x84t
        0x13t
        0x3bt
        0xdbt
        0x13t
        0x7ft
        0x77t
        0x13t
        0xc6t
        0x86t
        0x14t
        0x11t
        0x38t
        0x14t
        0x5ft
        0xc4t
        0x14t
        0xb2t
        0x64t
        0x15t
        0x9t
        0x57t
        0x15t
        0x64t
        0xe5t
        0x15t
        0xc5t
        0x56t
        0x16t
        0x2at
        0xfft
        0x16t
        0x96t
        0x3at
        0x17t
        0x7t
        0x6dt
        0x17t
        0x7ft
        0x2t
        0x17t
        0xfdt
        0x75t
        0x18t
        0x83t
        0x48t
        0x19t
        0x11t
        0x14t
        0x19t
        0xa7t
        0x78t
        0x1at
        0x47t
        0x2et
        0x1at
        0xf1t
        0x3t
        0x1bt
        0xa5t
        0xd9t
        0x1ct
        0x66t
        0xb3t
        0x1dt
        0x34t
        0xb3t
        0x1et
        0x11t
        0x1ft
        0x1et
        0xfdt
        0x6ft
        0x1ft
        0xfbt
        0x4at
        0x21t
        0xct
        0x97t
        0x22t
        0x33t
        0x88t
        0x23t
        0x72t
        0xa5t
        0x24t
        0xcct
        0xe2t
        0x26t
        0x45t
        0xb4t
        0x27t
        0xe1t
        0x2at
        0x29t
        0xa4t
        0x19t
        0x2bt
        0x94t
        0x46t
        0x2dt
        0xb8t
        0xa5t
        0x30t
        0x19t
        0xact
        0x32t
        0xc1t
        0xc1t
        0x35t
        0xbdt
        0xd1t
        0x39t
        0x1et
        0x1ct
        0x3ct
        0xf7t
        0x69t
        0x41t
        0x64t
        0xa0t
        0x46t
        0x89t
        0x52t
        0x4ct
        0x95t
        0x73t
        0x53t
        0xcbt
        0x4ft
        0x5ct
        0x89t
        0x34t
        0x67t
        0x5at
        0xct
    .end array-data
.end method

.method private static i()[I
    .locals 2

    sget-object v0, Lf/h;->b:[I

    if-nez v0, :cond_0

    const/16 v0, 0x8d

    new-array v0, v0, [I

    sput-object v0, Lf/h;->b:[I

    const/16 v0, 0x1a8

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Ln/c;->a([B)Ljava/io/DataInput;

    move-result-object v0

    sget-object v1, Lf/h;->b:[I

    invoke-static {v0, v1}, Lf/h;->a(Ljava/io/DataInput;[I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v0, Lf/h;->b:[I

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "rmercator.dat is incorrect"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 0x1
        0xfft
        0xe4t
        0x89t
        0xe8t
        0x1bt
        0x76t
        0x18t
        0x1bt
        0x76t
        0x18t
        0x1bt
        0x6ft
        0x2at
        0x1bt
        0x61t
        0x55t
        0x1bt
        0x4ct
        0xaet
        0x1bt
        0x31t
        0x4bt
        0x1bt
        0xft
        0x4ft
        0x1at
        0xe6t
        0xe6t
        0x1at
        0xb8t
        0x3dt
        0x1at
        0x83t
        0x8et
        0x1at
        0x49t
        0x16t
        0x1at
        0x9t
        0x19t
        0x19t
        0xc3t
        0xddt
        0x19t
        0x79t
        0xaft
        0x19t
        0x2at
        0xdet
        0x18t
        0xd7t
        0xbat
        0x18t
        0x80t
        0x99t
        0x18t
        0x25t
        0xcdt
        0x17t
        0xc7t
        0xaet
        0x17t
        0x66t
        0x8dt
        0x17t
        0x2t
        0xc0t
        0x16t
        0x9ct
        0x9bt
        0x16t
        0x34t
        0x6dt
        0x15t
        0xcat
        0x86t
        0x15t
        0x5ft
        0x30t
        0x14t
        0xf2t
        0xb8t
        0x14t
        0x85t
        0x61t
        0x14t
        0x17t
        0x6ft
        0x13t
        0xa9t
        0x21t
        0x13t
        0x3at
        0xb4t
        0x12t
        0xcct
        0x5et
        0x12t
        0x5et
        0x55t
        0x11t
        0xf0t
        0xc8t
        0x11t
        0x83t
        0xe6t
        0x11t
        0x17t
        0xd6t
        0x10t
        0xact
        0xc0t
        0x10t
        0x42t
        0xc3t
        0xft
        0xdat
        0x2t
        0xft
        0x72t
        0x96t
        0xft
        0xct
        0x99t
        0xet
        0xa8t
        0x20t
        0xet
        0x45t
        0x40t
        0xdt
        0xe4t
        0x7t
        0xdt
        0x84t
        0x86t
        0xdt
        0x26t
        0xc6t
        0xct
        0xcat
        0xd3t
        0xct
        0x70t
        0xb5t
        0xct
        0x18t
        0x71t
        0xbt
        0xc2t
        0xat
        0xbt
        0x6dt
        0x87t
        0xbt
        0x1at
        0xe5t
        0xat
        0xcat
        0x28t
        0xat
        0x7bt
        0x4dt
        0xat
        0x2et
        0x52t
        0x9t
        0xe3t
        0x34t
        0x9t
        0x99t
        0xf0t
        0x9t
        0x52t
        0x82t
        0x9t
        0xct
        0xe3t
        0x8t
        0xc9t
        0xet
        0x8t
        0x86t
        0xfet
        0x8t
        0x46t
        0xaat
        0x8t
        0x8t
        0xdt
        0x7t
        0xcbt
        0x1et
        0x7t
        0x8ft
        0xd7t
        0x7t
        0x56t
        0x2dt
        0x7t
        0x1et
        0x1bt
        0x6t
        0xe7t
        0x98t
        0x6t
        0xb2t
        0x9at
        0x6t
        0x7ft
        0x1at
        0x6t
        0x4dt
        0xft
        0x6t
        0x1ct
        0x72t
        0x5t
        0xedt
        0x38t
        0x5t
        0xbft
        0x59t
        0x5t
        0x92t
        0xcet
        0x5t
        0x67t
        0x8et
        0x5t
        0x3dt
        0x91t
        0x5t
        0x14t
        0xcdt
        0x4t
        0xedt
        0x3bt
        0x4t
        0xc6t
        0xd5t
        0x4t
        0xa1t
        0x8ft
        0x4t
        0x7dt
        0x66t
        0x4t
        0x5at
        0x4et
        0x4t
        0x38t
        0x41t
        0x4t
        0x17t
        0x3at
        0x3t
        0xf7t
        0x2ft
        0x3t
        0xd8t
        0x1at
        0x3t
        0xb9t
        0xf3t
        0x3t
        0x9ct
        0xb5t
        0x3t
        0x80t
        0x58t
        0x3t
        0x64t
        0xd7t
        0x3t
        0x4at
        0x2bt
        0x3t
        0x30t
        0x4ct
        0x3t
        0x17t
        0x37t
        0x2t
        0xfet
        0xe4t
        0x2t
        0xe7t
        0x4ft
        0x2t
        0xd0t
        0x72t
        0x2t
        0xbat
        0x46t
        0x2t
        0xa4t
        0xc8t
        0x2t
        0x8ft
        0xf1t
        0x2t
        0x7bt
        0xbdt
        0x2t
        0x68t
        0x28t
        0x2t
        0x55t
        0x2bt
        0x2t
        0x42t
        0xc3t
        0x2t
        0x30t
        0xect
        0x2t
        0x1ft
        0xa0t
        0x2t
        0xet
        0xddt
        0x1t
        0xfet
        0x9ct
        0x1t
        0xeet
        0xdct
        0x1t
        0xdft
        0x96t
        0x1t
        0xd0t
        0xcbt
        0x1t
        0xc2t
        0x72t
        0x1t
        0xb4t
        0x8at
        0x1t
        0xa7t
        0x11t
        0x1t
        0x9at
        0x1t
        0x1t
        0x8dt
        0x58t
        0x1t
        0x81t
        0x12t
        0x1t
        0x75t
        0x2ft
        0x1t
        0x69t
        0xa7t
        0x1t
        0x5et
        0x7ct
        0x1t
        0x53t
        0xa8t
        0x1t
        0x49t
        0x2at
        0x1t
        0x3et
        0xfft
        0x1t
        0x35t
        0x23t
        0x1t
        0x2bt
        0x97t
        0x1t
        0x22t
        0x54t
        0x1t
        0x19t
        0x5bt
        0x1t
        0x10t
        0xaat
        0x1t
        0x8t
        0x3ct
        0x1t
        0x0t
        0x11t
        0x0t
        0xf8t
        0x28t
        0x0t
        0xf0t
        0x7ct
        0x0t
        0xe9t
        0xdt
        0x0t
        0xe1t
        0xd8t
        0x0t
        0xdat
        0xdet
        0x0t
        0xd4t
        0x19t
        0x0t
        0xcdt
        0x8bt
        0x0t
        0xc7t
        0x30t
        0x0t
        0xc1t
        0x8t
        0x0t
        0xbbt
        0x10t
        0x0t
        0xb5t
        0x47t
    .end array-data
.end method


# virtual methods
.method public a(Lf/l;)I
    .locals 3

    sget-object v0, Lf/h;->g:Lf/l;

    iget v1, p0, Lf/h;->c:I

    invoke-virtual {p1}, Lf/l;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lf/l;->a(II)I

    move-result v0

    return v0
.end method

.method public a(J)J
    .locals 2

    iget v0, p0, Lf/h;->e:I

    invoke-static {p1, p2, v0}, Lf/h;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lf/h;)J
    .locals 8

    const-wide/16 v6, 0x64

    iget v0, p0, Lf/h;->e:I

    iget v1, p1, Lf/h;->e:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lf/h;->e:I

    iget v3, p1, Lf/h;->e:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v0, v2

    div-long/2addr v0, v6

    iget v2, p0, Lf/h;->f:I

    iget v3, p1, Lf/h;->f:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    iget v4, p0, Lf/h;->f:I

    iget v5, p1, Lf/h;->f:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public a(Lf/h;Lf/l;)J
    .locals 6

    invoke-virtual {p1, p2}, Lf/h;->a(Lf/l;)I

    move-result v0

    invoke-virtual {p0, p2}, Lf/h;->a(Lf/l;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, p2}, Lf/h;->b(Lf/l;)I

    move-result v1

    invoke-virtual {p0, p2}, Lf/h;->b(Lf/l;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-long v2, v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    int-to-long v4, v1

    int-to-long v0, v1

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public a(IILf/l;)Lf/h;
    .locals 9

    const/16 v3, 0x16

    invoke-virtual {p3, p1, v3}, Lf/l;->a(II)I

    move-result v0

    iget v1, p0, Lf/h;->c:I

    add-int/2addr v1, v0

    invoke-virtual {p3, p2, v3}, Lf/l;->a(II)I

    move-result v0

    iget v2, p0, Lf/h;->d:I

    add-int/2addr v2, v0

    iget v0, p0, Lf/h;->e:I

    if-eqz p2, :cond_1

    sget-object v0, Lf/h;->g:Lf/l;

    invoke-static {v2, v0}, Lf/h;->c(ILf/l;)I

    move-result v0

    move v4, v0

    :goto_0
    iget v0, p0, Lf/h;->f:I

    if-eqz p1, :cond_0

    int-to-long v5, p1

    const-wide/32 v7, 0x15752a00

    mul-long/2addr v5, v7

    invoke-virtual {p3}, Lf/l;->b()I

    move-result v7

    int-to-long v7, v7

    div-long/2addr v5, v7

    long-to-int v5, v5

    add-int/2addr v0, v5

    move v5, v0

    :goto_1
    new-instance v0, Lf/h;

    invoke-direct/range {v0 .. v5}, Lf/h;-><init>(IIIII)V

    return-object v0

    :cond_0
    move v5, v0

    goto :goto_1

    :cond_1
    move v4, v0

    goto :goto_0
.end method

.method public ap_()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lf/h;->e:I

    return v0
.end method

.method public b(Lf/l;)I
    .locals 3

    sget-object v0, Lf/h;->g:Lf/l;

    iget v1, p0, Lf/h;->d:I

    invoke-virtual {p1}, Lf/l;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lf/l;->a(II)I

    move-result v0

    return v0
.end method

.method public b(Lf/h;)J
    .locals 6

    iget v0, p0, Lf/h;->e:I

    iget v1, p1, Lf/h;->e:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget v2, p0, Lf/h;->f:I

    iget v3, p1, Lf/h;->f:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0xaba9500

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const-wide/32 v4, 0x15752a00

    sub-long v2, v4, v2

    :cond_0
    iget v4, p0, Lf/h;->e:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p1, Lf/h;->e:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    const v5, 0x1e8480

    div-int/2addr v4, v5

    invoke-static {v4}, LA/h;->b(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0xfa

    div-long/2addr v2, v4

    invoke-static {v0, v1}, Lf/h;->c(J)J

    move-result-wide v4

    invoke-static {v0, v1}, Lf/h;->c(J)J

    move-result-wide v0

    mul-long/2addr v0, v4

    invoke-static {v2, v3}, Lf/h;->c(J)J

    move-result-wide v4

    invoke-static {v2, v3}, Lf/h;->c(J)J

    move-result-wide v2

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public b(II)Lf/h;
    .locals 6

    iget v0, p0, Lf/h;->e:I

    add-int v4, v0, p1

    iget v0, p0, Lf/h;->f:I

    add-int v5, v0, p2

    iget v0, p0, Lf/h;->c:I

    iget v1, p0, Lf/h;->d:I

    if-eqz p1, :cond_1

    sget-object v1, Lf/h;->g:Lf/l;

    invoke-static {v4, v1}, Lf/h;->b(ILf/l;)I

    move-result v1

    move v2, v1

    :goto_0
    if-eqz p2, :cond_0

    sget-object v0, Lf/h;->g:Lf/l;

    invoke-static {v5, v0}, Lf/h;->a(ILf/l;)I

    move-result v0

    move v1, v0

    :goto_1
    new-instance v0, Lf/h;

    const/16 v3, 0x16

    invoke-direct/range {v0 .. v5}, Lf/h;-><init>(IIIII)V

    return-object v0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lf/h;->e:I

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public c(II)Lf/h;
    .locals 3

    int-to-long v0, p1

    invoke-static {v0, v1}, Lf/h;->b(J)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v1, p2

    invoke-virtual {p0, v1, v2}, Lf/h;->a(J)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lf/h;->b(II)Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lf/h;->f:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lf/h;->f:I

    mul-int/lit8 v0, v0, 0xa

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
    instance-of v0, p1, Lf/h;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lf/h;

    iget v0, p0, Lf/h;->e:I

    iget v1, p1, Lf/h;->e:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lf/h;->f:I

    iget v1, p1, Lf/h;->f:I

    if-eq v0, v1, :cond_3

    :cond_2
    iget v0, p0, Lf/h;->c:I

    iget v1, p1, Lf/h;->c:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lf/h;->d:I

    iget v1, p1, Lf/h;->d:I

    if-ne v0, v1, :cond_4

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public f()Law/e;
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/P;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget v2, p0, Lf/h;->e:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x2

    iget v2, p0, Lf/h;->f:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    return-object v0
.end method

.method public g()Lf/h;
    .locals 0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lf/h;->e:I

    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, Lf/h;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lf/h;->e:I

    iget v1, p0, Lf/h;->f:I

    invoke-static {v0, v1}, Lf/h;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
