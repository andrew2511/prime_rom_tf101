.class public Lcom/google/android/maps/driveabout/vector/bn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/A;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/vector/F;

.field private final b:Lcom/google/android/maps/driveabout/vector/bB;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/ArrayList;

.field private final e:Lcom/google/android/maps/driveabout/vector/br;

.field private final f:Lcom/google/android/maps/driveabout/vector/az;

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;FLcom/google/android/maps/driveabout/vector/bi;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/google/android/maps/driveabout/vector/bP;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/bP;-><init>(Landroid/graphics/Bitmap;FLcom/google/android/maps/driveabout/vector/bi;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/br;

    invoke-direct {v0, v3}, Lcom/google/android/maps/driveabout/vector/br;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->e:Lcom/google/android/maps/driveabout/vector/br;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/az;

    invoke-direct {v0, v3}, Lcom/google/android/maps/driveabout/vector/az;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->f:Lcom/google/android/maps/driveabout/vector/az;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bB;->a:Lcom/google/android/maps/driveabout/vector/bB;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->b:Lcom/google/android/maps/driveabout/vector/bB;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/F;->a:Lcom/google/android/maps/driveabout/vector/F;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->a:Lcom/google/android/maps/driveabout/vector/F;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bn;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->k:Z

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bn;->l:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/bk;Ljava/lang/String;ILG/r;Lcom/google/android/maps/driveabout/vector/aw;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/maps/driveabout/vector/bk;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljava/util/ArrayList;

    array-length v7, v6

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v7, :cond_0

    aget-object v2, v6, v8

    new-instance v9, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bR;

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bR;-><init>(Lcom/google/android/maps/driveabout/vector/bk;Ljava/lang/String;ILG/r;Lcom/google/android/maps/driveabout/vector/aw;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/br;

    array-length v1, v6

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/br;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->e:Lcom/google/android/maps/driveabout/vector/br;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/az;

    array-length v1, v6

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/az;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->f:Lcom/google/android/maps/driveabout/vector/az;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bB;->a:Lcom/google/android/maps/driveabout/vector/bB;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->b:Lcom/google/android/maps/driveabout/vector/bB;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/F;->a:Lcom/google/android/maps/driveabout/vector/F;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->a:Lcom/google/android/maps/driveabout/vector/F;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bn;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->l:Z

    return-void
.end method

.method private a(I)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mTextureArray should be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aA;

    instance-of v3, v0, Lcom/google/android/maps/driveabout/vector/N;

    if-nez v3, :cond_2

    sget-object v3, Lcom/google/android/maps/driveabout/vector/F;->a:Lcom/google/android/maps/driveabout/vector/F;

    invoke-interface {v0, p1, v3}, Lcom/google/android/maps/driveabout/vector/aA;->a(ILcom/google/android/maps/driveabout/vector/F;)Lcom/google/android/maps/driveabout/vector/p;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->e()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_4
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bn;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_2
.end method

.method static a(Lcom/google/android/maps/driveabout/vector/bk;Lcom/google/android/maps/driveabout/vector/ak;Ljava/lang/String;LG/d;Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    invoke-interface {p3}, LG/d;->h()LG/r;

    move-result-object v0

    invoke-virtual {v0}, LG/r;->f()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, LG/r;->e()I

    move-result v0

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 10

    const/4 v9, 0x0

    const/high16 v8, 0x4000

    const/4 v7, 0x0

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/bn;->g:F

    move v1, v9

    move v2, v7

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v7

    move v5, v7

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aA;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aA;->a()F

    move-result v6

    add-float/2addr v5, v6

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aA;->e()F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v4, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->g:F

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->g:F

    add-float v0, v2, v4

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/bn;->i:F

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/bn;->j:F

    sget-object v3, Lcom/google/android/maps/driveabout/vector/n;->a:[I

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bn;->b:Lcom/google/android/maps/driveabout/vector/bB;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bB;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_2
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->i:F

    add-float/2addr v0, v2

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bn;->j:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->h:F

    return-void

    :pswitch_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aA;

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/bn;->i:F

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aA;->c()F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->i:F

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v7

    move v4, v7

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aA;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aA;->e()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aA;->d()F

    move-result v0

    add-float/2addr v0, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v3, v0

    goto :goto_4

    :cond_4
    cmpl-float v0, v3, v4

    if-lez v0, :cond_2

    sub-float v0, v3, v4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->j:F

    goto :goto_2

    :pswitch_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v7

    move v5, v7

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aA;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aA;->e()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aA;->c()F

    move-result v0

    add-float/2addr v0, v6

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v4, v0

    goto :goto_5

    :cond_5
    cmpl-float v0, v4, v5

    if-lez v0, :cond_6

    sub-float v0, v4, v5

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->i:F

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aA;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bn;->j:F

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aA;->d()F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->j:F

    goto :goto_6

    :pswitch_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v7

    move v5, v7

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aA;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aA;->e()F

    move-result v6

    div-float/2addr v6, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aA;->c()F

    move-result v0

    add-float/2addr v0, v6

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v4, v0

    goto :goto_7

    :cond_7
    cmpl-float v0, v4, v5

    if-lez v0, :cond_8

    sub-float v0, v4, v5

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->i:F

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v7

    move v4, v7

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aA;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aA;->e()F

    move-result v5

    div-float/2addr v5, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aA;->d()F

    move-result v0

    add-float/2addr v0, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v3, v0

    goto :goto_8

    :cond_9
    cmpl-float v0, v3, v4

    if-lez v0, :cond_2

    sub-float v0, v3, v4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->j:F

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->e:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->f:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/az;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->e:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bn;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/br;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->f:Lcom/google/android/maps/driveabout/vector/az;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bn;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/az;->a(I)V

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bn;->h:F

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bn;->i:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    move v3, v0

    move v12, v1

    move v1, v2

    move v2, v12

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aA;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aA;->e()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aA;->a()F

    move-result v0

    add-float/2addr v0, v4

    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bn;->a:Lcom/google/android/maps/driveabout/vector/F;

    sget-object v7, Lcom/google/android/maps/driveabout/vector/F;->a:Lcom/google/android/maps/driveabout/vector/F;

    if-ne v5, v7, :cond_2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->g:F

    sub-float/2addr v0, v4

    const/high16 v4, 0x4000

    div-float/2addr v0, v4

    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v12, v0

    move v0, v3

    move v3, v12

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/maps/driveabout/vector/aA;

    instance-of v5, p1, Lcom/google/android/maps/driveabout/vector/N;

    if-eqz v5, :cond_3

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/aA;->a()F

    move-result v5

    add-float/2addr v3, v5

    goto :goto_3

    :cond_2
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bn;->a:Lcom/google/android/maps/driveabout/vector/F;

    sget-object v7, Lcom/google/android/maps/driveabout/vector/F;->c:Lcom/google/android/maps/driveabout/vector/F;

    if-ne v5, v7, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->g:F

    sub-float/2addr v0, v4

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/aA;->a()F

    move-result v5

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/aA;->b()F

    move-result v7

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/bn;->b:Lcom/google/android/maps/driveabout/vector/bB;

    sget-object v9, Lcom/google/android/maps/driveabout/vector/bB;->a:Lcom/google/android/maps/driveabout/vector/bB;

    if-ne v8, v9, :cond_4

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/aA;->e()F

    move-result v8

    sub-float v8, v6, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    sub-float v8, v2, v8

    :goto_4
    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/aA;->c()F

    move-result v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/bn;->e:Lcom/google/android/maps/driveabout/vector/br;

    const/4 v10, 0x0

    sub-float v11, v8, v7

    invoke-virtual {v9, v3, v10, v11}, Lcom/google/android/maps/driveabout/vector/br;->a(FFF)V

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/bn;->e:Lcom/google/android/maps/driveabout/vector/br;

    add-float v10, v3, v5

    const/4 v11, 0x0

    sub-float v7, v8, v7

    invoke-virtual {v9, v10, v11, v7}, Lcom/google/android/maps/driveabout/vector/br;->a(FFF)V

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/bn;->e:Lcom/google/android/maps/driveabout/vector/br;

    add-float/2addr v5, v3

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v9, v8}, Lcom/google/android/maps/driveabout/vector/br;->a(FFF)V

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bn;->e:Lcom/google/android/maps/driveabout/vector/br;

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7, v8}, Lcom/google/android/maps/driveabout/vector/br;->a(FFF)V

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bn;->d:Ljava/util/ArrayList;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->a()F

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->b()F

    move-result v0

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/bn;->f:Lcom/google/android/maps/driveabout/vector/az;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v0}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/bn;->f:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v8, v5, v0}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->f:Lcom/google/android/maps/driveabout/vector/az;

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->f:Lcom/google/android/maps/driveabout/vector/az;

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/aA;->a()F

    move-result v0

    add-float/2addr v0, v3

    move v3, v0

    move v0, v7

    goto/16 :goto_3

    :cond_4
    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/bn;->b:Lcom/google/android/maps/driveabout/vector/bB;

    sget-object v9, Lcom/google/android/maps/driveabout/vector/bB;->c:Lcom/google/android/maps/driveabout/vector/bB;

    if-ne v8, v9, :cond_7

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/aA;->e()F

    move-result v8

    sub-float v8, v6, v8

    sub-float v8, v2, v8

    goto :goto_4

    :cond_5
    sub-float/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->l:Z

    return-void

    :cond_7
    move v8, v2

    goto :goto_4
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->g:F

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/F;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->a:Lcom/google/android/maps/driveabout/vector/F;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->l:Z

    :cond_0
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bn;->a:Lcom/google/android/maps/driveabout/vector/F;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lcom/google/android/maps/driveabout/vector/bn;->a(Lcom/google/android/maps/driveabout/vector/u;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->l:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bn;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->e:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->e:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->f:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/az;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/p;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v0, 0x6

    mul-int/lit8 v3, v2, 0x4

    const/4 v4, 0x4

    invoke-interface {v1, v0, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method a(Lcom/google/android/maps/driveabout/vector/u;I)Z
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/bn;->a(I)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/u;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mTextureArray should be empty on initialize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aA;

    instance-of v3, v0, Lcom/google/android/maps/driveabout/vector/N;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bn;->d:Ljava/util/ArrayList;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/F;->a:Lcom/google/android/maps/driveabout/vector/F;

    invoke-interface {v0, p1, p2, v4}, Lcom/google/android/maps/driveabout/vector/aA;->a(Lcom/google/android/maps/driveabout/vector/u;ILcom/google/android/maps/driveabout/vector/F;)Lcom/google/android/maps/driveabout/vector/p;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bn;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    iput-boolean v5, p0, Lcom/google/android/maps/driveabout/vector/bn;->k:Z

    move v0, v5

    goto :goto_0
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->e()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/aA;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/aA;->f()V

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->e:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->f:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/az;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->h:F

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/bn;->a_(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->e:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->e(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bn;->f:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/az;->e(Lcom/google/android/maps/driveabout/vector/u;)V

    return-void
.end method
