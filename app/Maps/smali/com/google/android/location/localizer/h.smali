.class public Lcom/google/android/location/localizer/h;
.super Ljava/lang/Object;


# instance fields
.field private a:D

.field private b:D

.field private c:I

.field private d:I

.field private e:D

.field private f:D

.field private g:[D

.field private h:[D

.field private i:[I


# direct methods
.method constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0xa

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/google/android/location/localizer/h;->a:D

    iput-wide v0, p0, Lcom/google/android/location/localizer/h;->b:D

    iput v3, p0, Lcom/google/android/location/localizer/h;->c:I

    iput v3, p0, Lcom/google/android/location/localizer/h;->d:I

    iput-wide v0, p0, Lcom/google/android/location/localizer/h;->e:D

    iput-wide v0, p0, Lcom/google/android/location/localizer/h;->f:D

    new-array v0, v2, [D

    iput-object v0, p0, Lcom/google/android/location/localizer/h;->g:[D

    new-array v0, v2, [D

    iput-object v0, p0, Lcom/google/android/location/localizer/h;->h:[D

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/google/android/location/localizer/h;->i:[I

    invoke-virtual {p0}, Lcom/google/android/location/localizer/h;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/location/localizer/h;->a:D

    iput-wide v2, p0, Lcom/google/android/location/localizer/h;->b:D

    iput v4, p0, Lcom/google/android/location/localizer/h;->c:I

    iput v4, p0, Lcom/google/android/location/localizer/h;->d:I

    iput-wide v2, p0, Lcom/google/android/location/localizer/h;->e:D

    iput-wide v2, p0, Lcom/google/android/location/localizer/h;->f:D

    move v0, v4

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/localizer/h;->g:[D

    aput-wide v2, v1, v0

    iget-object v1, p0, Lcom/google/android/location/localizer/h;->h:[D

    aput-wide v2, v1, v0

    iget-object v1, p0, Lcom/google/android/location/localizer/h;->i:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(DDII)V
    .locals 2

    iget v0, p0, Lcom/google/android/location/localizer/h;->c:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    const/16 v0, 0x1388

    if-gt p5, v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/location/localizer/h;->a:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/location/localizer/h;->a:D

    iget-wide v0, p0, Lcom/google/android/location/localizer/h;->b:D

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/google/android/location/localizer/h;->b:D

    iget v0, p0, Lcom/google/android/location/localizer/h;->d:I

    if-le p6, v0, :cond_0

    iput p6, p0, Lcom/google/android/location/localizer/h;->d:I

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/localizer/h;->g:[D

    iget v1, p0, Lcom/google/android/location/localizer/h;->c:I

    aput-wide p1, v0, v1

    iget-object v0, p0, Lcom/google/android/location/localizer/h;->h:[D

    iget v1, p0, Lcom/google/android/location/localizer/h;->c:I

    aput-wide p3, v0, v1

    iget-object v0, p0, Lcom/google/android/location/localizer/h;->i:[I

    iget v1, p0, Lcom/google/android/location/localizer/h;->c:I

    aput p5, v0, v1

    iget v0, p0, Lcom/google/android/location/localizer/h;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/localizer/h;->c:I

    :cond_1
    return-void
.end method

.method public a(LW/o;)V
    .locals 7

    iget v0, p1, LW/o;->a:I

    invoke-static {v0}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v1

    iget v0, p1, LW/o;->b:I

    invoke-static {v0}, Lcom/google/android/location/localizer/k;->a(I)D

    move-result-wide v3

    iget v0, p1, LW/o;->c:I

    invoke-static {v0}, Lcom/google/android/location/localizer/k;->b(I)I

    move-result v5

    iget v6, p1, LW/o;->d:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/location/localizer/h;->a(DDII)V

    return-void
.end method

.method public b()D
    .locals 4

    iget-wide v0, p0, Lcom/google/android/location/localizer/h;->e:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/location/localizer/h;->c:I

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/location/localizer/h;->a:D

    iget v2, p0, Lcom/google/android/location/localizer/h;->c:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/location/localizer/h;->e:D

    :cond_0
    iget-wide v0, p0, Lcom/google/android/location/localizer/h;->e:D

    return-wide v0
.end method

.method public c()D
    .locals 4

    iget-wide v0, p0, Lcom/google/android/location/localizer/h;->f:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/location/localizer/h;->c:I

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/location/localizer/h;->b:D

    iget v2, p0, Lcom/google/android/location/localizer/h;->c:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/location/localizer/h;->f:D

    :cond_0
    iget-wide v0, p0, Lcom/google/android/location/localizer/h;->f:D

    return-wide v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/location/localizer/h;->d:I

    return v0
.end method

.method public e()I
    .locals 15

    iget v0, p0, Lcom/google/android/location/localizer/h;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/location/localizer/h;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/location/localizer/h;->i:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/location/localizer/h;->b()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/location/localizer/h;->c()D

    move-result-wide v2

    const/4 v4, 0x0

    const/16 v5, 0x1388

    const/16 v6, 0x1388

    const/4 v7, 0x1

    new-array v8, v7, [F

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v10, v7

    move v11, v6

    move v12, v5

    move v13, v4

    :goto_1
    iget v4, p0, Lcom/google/android/location/localizer/h;->c:I

    if-ge v9, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/location/localizer/h;->g:[D

    aget-wide v4, v4, v9

    iget-object v6, p0, Lcom/google/android/location/localizer/h;->h:[D

    aget-wide v6, v6, v9

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/k;->a(DDDD)D

    const/4 v4, 0x0

    aget v4, v8, v4

    float-to-int v4, v4

    add-int/2addr v4, v13

    const/4 v5, 0x0

    aget v5, v8, v5

    iget-object v6, p0, Lcom/google/android/location/localizer/h;->i:[I

    aget v6, v6, v9

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    iget-object v6, p0, Lcom/google/android/location/localizer/h;->i:[I

    aget v6, v6, v9

    if-ge v6, v12, :cond_4

    iget-object v6, p0, Lcom/google/android/location/localizer/h;->i:[I

    aget v6, v6, v9

    const/4 v7, 0x0

    aget v7, v8, v7

    float-to-int v7, v7

    move v14, v7

    move v7, v6

    move v6, v14

    :goto_3
    add-int/lit8 v9, v9, 0x1

    move v10, v5

    move v11, v6

    move v12, v7

    move v13, v4

    goto :goto_1

    :cond_2
    if-eqz v10, :cond_3

    iget v0, p0, Lcom/google/android/location/localizer/h;->c:I

    div-int v0, v13, v0

    goto :goto_0

    :cond_3
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_4
    move v6, v11

    move v7, v12

    goto :goto_3

    :cond_5
    move v5, v10

    goto :goto_2
.end method
