.class public LQ/f;
.super Ljava/lang/Object;


# instance fields
.field protected a:F

.field private b:F

.field private c:J

.field private final d:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LQ/f;->b:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LQ/f;->c:J

    iput-boolean p1, p0, LQ/f;->d:Z

    return-void
.end method

.method private a(FF)V
    .locals 6

    const/high16 v3, 0x4120

    const/4 v5, 0x0

    iget v0, p0, LQ/f;->a:F

    sub-float v0, p2, v0

    div-float/2addr v0, v3

    iget v1, p0, LQ/f;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, LQ/f;->b:F

    iget v1, p0, LQ/f;->b:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_0

    mul-float/2addr v0, v3

    iget v1, p0, LQ/f;->b:F

    div-float/2addr v0, v1

    const-wide/high16 v1, 0x3ff0

    neg-float v3, v0

    mul-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    mul-double v0, v1, v3

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    double-to-float v0, v0

    mul-float v1, v0, p1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    iput v5, p0, LQ/f;->b:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, LQ/f;->b:F

    iget v2, p0, LQ/f;->b:F

    mul-float/2addr v0, v2

    mul-float/2addr v0, p1

    sub-float v0, v1, v0

    iput v0, p0, LQ/f;->b:F

    iget v0, p0, LQ/f;->a:F

    iget v1, p0, LQ/f;->b:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, LQ/f;->a:F

    goto :goto_0
.end method


# virtual methods
.method public a(JF)F
    .locals 7

    const/high16 v6, 0x3f00

    const/4 v5, 0x0

    const/high16 v4, 0x43b4

    iget-wide v0, p0, LQ/f;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, LQ/f;->c:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    :cond_0
    iput p3, p0, LQ/f;->a:F

    :cond_1
    :goto_0
    iput-wide p1, p0, LQ/f;->c:J

    iget-boolean v0, p0, LQ/f;->d:Z

    if-eqz v0, :cond_7

    :goto_1
    iget v0, p0, LQ/f;->a:F

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_6

    iget v0, p0, LQ/f;->a:F

    sub-float/2addr v0, v4

    iput v0, p0, LQ/f;->a:F

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, LQ/f;->d:Z

    if-eqz v0, :cond_8

    iget v0, p0, LQ/f;->a:F

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_8

    iget v0, p0, LQ/f;->a:F

    cmpg-float v0, p3, v0

    if-gez v0, :cond_4

    add-float v0, p3, v4

    :goto_2
    iget-wide v1, p0, LQ/f;->c:J

    sub-long v1, p1, v1

    long-to-float v1, v1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    const/high16 v2, 0x4120

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_3

    cmpg-float v2, v1, v5

    if-gez v2, :cond_5

    :cond_3
    iput v0, p0, LQ/f;->a:F

    iput v5, p0, LQ/f;->b:F

    goto :goto_0

    :cond_4
    sub-float v0, p3, v4

    goto :goto_2

    :cond_5
    :goto_3
    cmpl-float v2, v1, v5

    if-lez v2, :cond_1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-direct {p0, v2, v0}, LQ/f;->a(FF)V

    sub-float/2addr v1, v6

    goto :goto_3

    :cond_6
    :goto_4
    iget v0, p0, LQ/f;->a:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_7

    iget v0, p0, LQ/f;->a:F

    add-float/2addr v0, v4

    iput v0, p0, LQ/f;->a:F

    goto :goto_4

    :cond_7
    iget v0, p0, LQ/f;->a:F

    return v0

    :cond_8
    move v0, p3

    goto :goto_2
.end method
