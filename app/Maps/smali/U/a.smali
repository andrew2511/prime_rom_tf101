.class public LU/a;
.super Ljava/lang/Object;


# instance fields
.field private a:F

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LU/a;->a:F

    return-void
.end method

.method private a(FFFF)F
    .locals 4

    const/high16 v3, 0x4000

    div-float v0, p4, v3

    div-float v0, p1, v0

    const/high16 v1, 0x3f80

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    div-float v1, p3, v3

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    :goto_0
    return v0

    :cond_0
    div-float v1, p3, v3

    sub-float/2addr v0, v3

    mul-float v2, v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget v0, p0, LU/a;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LU/a;->c:I

    iget v1, p0, LU/a;->b:I

    if-ge v0, v1, :cond_1

    iget v0, p0, LU/a;->c:I

    int-to-float v0, v0

    iget v1, p0, LU/a;->d:F

    iget v2, p0, LU/a;->e:F

    iget v3, p0, LU/a;->b:I

    int-to-float v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, LU/a;->a(FFFF)F

    move-result v0

    iput v0, p0, LU/a;->a:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, LU/a;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4069

    mul-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p0, v0}, LU/a;->b(F)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4034

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, LU/a;->a(I)V

    goto :goto_0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, LU/a;->d:F

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, LU/a;->b:I

    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, LU/a;->a:F

    return v0
.end method

.method public b(F)V
    .locals 1

    iget v0, p0, LU/a;->a:F

    iput v0, p0, LU/a;->d:F

    iget v0, p0, LU/a;->d:F

    sub-float v0, p1, v0

    iput v0, p0, LU/a;->e:F

    const/4 v0, 0x0

    iput v0, p0, LU/a;->c:I

    return-void
.end method

.method public c()F
    .locals 1

    iget v0, p0, LU/a;->e:F

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, LU/a;->b:I

    return v0
.end method
