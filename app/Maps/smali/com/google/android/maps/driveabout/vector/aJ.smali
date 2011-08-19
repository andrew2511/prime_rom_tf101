.class public Lcom/google/android/maps/driveabout/vector/aJ;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;

.field private b:I

.field private c:[F

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aJ;->a:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aJ;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aJ;->d:Z

    return-void
.end method

.method private static a(FFFF)I
    .locals 3

    sub-float v0, p0, p2

    sub-float v1, p0, p2

    mul-float/2addr v0, v1

    sub-float v1, p1, p3

    sub-float v2, p1, p3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aJ;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/driveabout/vector/d;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/vector/d;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aJ;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/driveabout/vector/d;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/d;->a(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b()I
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aJ;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aJ;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const v0, 0x7fffffff

    move v2, v0

    move v3, v5

    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aJ;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aJ;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/d;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/d;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    move v2, v3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/d;->a()I

    move-result v4

    if-ge v4, v2, :cond_6

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/d;->a()I

    move-result v0

    move v2, v1

    goto :goto_2

    :cond_3
    if-ne v3, v5, :cond_5

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aJ;->a()V

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aJ;->b:I

    if-eq v0, v5, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aJ;->a:Ljava/util/List;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aJ;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/d;

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/vector/d;->a(Z)V

    :cond_4
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aJ;->b()I

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_0

    :cond_6
    move v0, v2

    move v2, v3

    goto :goto_2
.end method

.method private b(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;Ljava/util/List;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aJ;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aJ;->c:[F

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aJ;->c:[F

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aJ;->c:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aJ;->c:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    const/high16 v0, 0x41f0

    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/vector/bF;->f()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    mul-int v6, v0, v0

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/au;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aJ;->a:Ljava/util/List;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/au;->a(Ljava/util/List;FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/aJ;->d:Z

    return-void
.end method

.method public a(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;Ljava/util/List;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v0, 0x41f0

    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/vector/bF;->f()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/2addr v0, v0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aJ;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aJ;->c:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aJ;->c:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aJ;->c:[F

    aget v2, v2, v5

    invoke-static {v1, v2, p1, p2}, Lcom/google/android/maps/driveabout/vector/aJ;->a(FFFF)I

    move-result v1

    if-le v1, v0, :cond_3

    :cond_0
    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/aJ;->d:Z

    invoke-direct/range {p0 .. p5}, Lcom/google/android/maps/driveabout/vector/aJ;->b(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;Ljava/util/List;)V

    move v0, v5

    :goto_0
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aJ;->b:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aJ;->b()I

    move-result v2

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aJ;->b:I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aJ;->b:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aJ;->b:I

    if-eq v1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aJ;->a:Ljava/util/List;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aJ;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/driveabout/vector/d;

    invoke-virtual {p0, v5}, Lcom/google/android/maps/driveabout/vector/d;->a(Z)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/d;->c()V

    :cond_2
    move v0, v5

    :goto_1
    return v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/aJ;->a(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)V

    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_1
.end method
