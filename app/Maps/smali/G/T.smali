.class public LG/T;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:[Ljava/lang/String;

.field private final d:J

.field private final e:[Landroid/graphics/Bitmap;

.field private final f:I

.field private final g:F

.field private final h:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, LG/T;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Law/e;)V
    .locals 3

    const/4 v1, 0x6

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LG/T;->b:Ljava/lang/String;

    invoke-static {p1}, LG/T;->a(Law/e;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LG/T;->c:[Ljava/lang/String;

    invoke-static {p1}, LG/T;->b(Law/e;)[Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LG/T;->e:[Landroid/graphics/Bitmap;

    const/16 v0, 0x15

    invoke-static {p1, v0}, Law/b;->e(Law/e;I)I

    move-result v0

    iput v0, p0, LG/T;->f:I

    invoke-virtual {p1, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-static {v0, v1, v2}, Law/b;->c(Law/e;II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, LG/T;->g:F

    const/16 v1, 0x3e

    invoke-static {v0, v1, v2}, Law/b;->c(Law/e;II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, LG/T;->h:F

    :goto_0
    const/16 v0, 0x8

    invoke-static {p1, v0, v2}, Law/b;->c(Law/e;II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, LG/T;->d:J

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, LG/T;->g:F

    const/high16 v0, 0x41f0

    iput v0, p0, LG/T;->h:F

    goto :goto_0
.end method

.method private static a(Law/e;)[Ljava/lang/String;
    .locals 7

    const/16 v6, 0x12

    invoke-virtual {p0, v6}, Law/e;->i(I)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, LG/T;->a:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v6, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    mul-int/lit8 v4, v2, 0x2

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static b(Law/e;)[Landroid/graphics/Bitmap;
    .locals 7

    const/16 v6, 0x11

    const/4 v5, 0x0

    invoke-virtual {p0, v6}, Law/e;->i(I)I

    move-result v0

    if-lez v0, :cond_1

    new-array v1, v0, [Landroid/graphics/Bitmap;

    move v2, v5

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v6, v2}, Law/e;->b(II)[B

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LG/T;->f:I

    return v0
.end method

.method public a(F)Z
    .locals 1

    iget v0, p0, LG/T;->g:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, LG/T;->h:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()[Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, LG/T;->e:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LG/T;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LG/T;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 4

    iget-wide v0, p0, LG/T;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, LG/T;->d:J

    return-wide v0
.end method
