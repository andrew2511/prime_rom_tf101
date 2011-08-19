.class public final Lf/l;
.super Ljava/lang/Object;


# static fields
.field private static c:I

.field private static d:I

.field private static final e:[Lf/l;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x16

    const/4 v5, 0x1

    sput v5, Lf/l;->c:I

    sput v6, Lf/l;->d:I

    new-array v0, v6, [Lf/l;

    sput-object v0, Lf/l;->e:[Lf/l;

    const/16 v0, 0x100

    move v1, v0

    move v0, v5

    :goto_0
    if-gt v0, v6, :cond_0

    sget-object v2, Lf/l;->e:[Lf/l;

    sub-int v3, v0, v5

    new-instance v4, Lf/l;

    invoke-direct {v4, v0, v1}, Lf/l;-><init>(II)V

    aput-object v4, v2, v3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lf/l;->b:I

    iput p2, p0, Lf/l;->a:I

    return-void
.end method

.method public static b(I)Lf/l;
    .locals 3

    const/4 v0, 0x0

    sget v1, Lf/l;->c:I

    if-lt p0, v1, :cond_0

    const/16 v1, 0x16

    if-gt p0, v1, :cond_0

    sget v0, Lf/l;->d:I

    if-le p0, v0, :cond_1

    sget v0, Lf/l;->d:I

    :goto_0
    sget-object v1, Lf/l;->e:[Lf/l;

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    :cond_0
    return-object v0

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static b(II)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x16

    sput v1, Lf/l;->c:I

    :goto_0
    sget v1, Lf/l;->c:I

    if-le v1, v3, :cond_0

    sget v1, Lf/l;->c:I

    invoke-static {v1}, Lf/l;->b(I)Lf/l;

    move-result-object v1

    iget v1, v1, Lf/l;->a:I

    mul-int/lit8 v2, v0, 0xa

    div-int/lit8 v2, v2, 0x9

    if-gt v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    sget v1, Lf/l;->c:I

    sub-int/2addr v1, v3

    sput v1, Lf/l;->c:I

    goto :goto_0
.end method

.method public static c(Lf/l;)Lf/l;
    .locals 1

    invoke-virtual {p0}, Lf/l;->a()I

    move-result v0

    invoke-static {v0}, Lf/l;->d(I)I

    move-result v0

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    return-object v0
.end method

.method public static c(I)V
    .locals 2

    const/16 v1, 0x16

    invoke-static {}, Lac/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sput v1, Lf/l;->d:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/16 v0, 0x10

    :goto_1
    sput v0, Lf/l;->d:I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static d(I)I
    .locals 1

    sget v0, Lf/l;->c:I

    if-ge p0, v0, :cond_0

    sget v0, Lf/l;->c:I

    :goto_0
    return v0

    :cond_0
    move v0, p0

    goto :goto_0
.end method

.method public static e()I
    .locals 1

    sget v0, Lf/l;->c:I

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lf/l;->b:I

    return v0
.end method

.method public a(I)I
    .locals 4

    int-to-long v0, p1

    iget v2, p0, Lf/l;->a:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x26382e0

    div-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public a(II)I
    .locals 1

    iget v0, p0, Lf/l;->b:I

    if-ge v0, p2, :cond_0

    iget v0, p0, Lf/l;->b:I

    sub-int v0, p2, v0

    shl-int v0, p1, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lf/l;->b:I

    sub-int/2addr v0, p2

    shr-int v0, p1, v0

    goto :goto_0
.end method

.method public a(Lf/l;)I
    .locals 2

    iget v0, p1, Lf/l;->a:I

    iget v1, p0, Lf/l;->a:I

    div-int/2addr v0, v1

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lf/l;->a:I

    return v0
.end method

.method public b(Lf/l;)Z
    .locals 2

    iget v0, p0, Lf/l;->b:I

    iget v1, p1, Lf/l;->b:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lf/l;
    .locals 1

    iget v0, p0, Lf/l;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    return-object v0
.end method

.method public d()Lf/l;
    .locals 2

    iget v0, p0, Lf/l;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
