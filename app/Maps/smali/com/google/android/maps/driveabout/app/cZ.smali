.class public Lcom/google/android/maps/driveabout/app/cZ;
.super Lcom/google/android/maps/driveabout/vector/cr;

# interfaces
.implements Lcom/google/android/maps/driveabout/app/y;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/app/aI;

.field private final b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

.field private final c:Lcom/google/android/maps/driveabout/vector/bq;

.field private d:Lcom/google/android/maps/driveabout/vector/aE;

.field private final e:Lcom/google/android/maps/driveabout/vector/cB;

.field private final f:I

.field private final g:I

.field private final h:Landroid/graphics/Bitmap;

.field private i:Ljava/util/HashSet;

.field private final j:Ljava/util/List;

.field private volatile k:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/aI;Lcom/google/android/maps/driveabout/vector/VectorMapView;Lcom/google/android/maps/driveabout/vector/bq;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cr;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cZ;->a:Lcom/google/android/maps/driveabout/app/aI;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cZ;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/cZ;->c:Lcom/google/android/maps/driveabout/vector/bq;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->i:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->j:Ljava/util/List;

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/maps/driveabout/vector/cB;

    invoke-direct {v1, p4, v0}, Lcom/google/android/maps/driveabout/vector/cB;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/cZ;->e:Lcom/google/android/maps/driveabout/vector/cB;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->e:Lcom/google/android/maps/driveabout/vector/cB;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dA;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dA;-><init>(Lcom/google/android/maps/driveabout/app/cZ;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cB;->a(Lcom/google/android/maps/driveabout/vector/j;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->f:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->g:I

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200eb

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/p;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->h:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/app/aI;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->k:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->postInvalidate()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->e:Lcom/google/android/maps/driveabout/vector/cB;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cB;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->e:Lcom/google/android/maps/driveabout/vector/cB;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cB;->c()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/app/cZ;->b(Lcom/google/android/maps/driveabout/vector/bF;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bw;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->e:Lcom/google/android/maps/driveabout/vector/cB;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cB;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->d:Lcom/google/android/maps/driveabout/vector/aE;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aE;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/aE;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->d:Lcom/google/android/maps/driveabout/vector/aE;

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->e:Lcom/google/android/maps/driveabout/vector/cB;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cB;->a(Z)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->a:Lcom/google/android/maps/driveabout/app/aI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aI;->e()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->d:Lcom/google/android/maps/driveabout/vector/aE;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/aE;->a(Lcom/google/android/maps/driveabout/vector/bF;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cZ;->j:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/vector/aE;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cZ;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cZ;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/cZ;->k:Z

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method a(Lt/D;[Lcom/google/android/maps/driveabout/app/bi;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->e:Lcom/google/android/maps/driveabout/vector/cB;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cB;->a(LG/w;)Lcom/google/android/maps/driveabout/vector/cu;

    move-result-object v0

    if-eqz v0, :cond_4

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_6

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bi;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lt/D;->a()LG/T;

    move-result-object v3

    invoke-virtual {v3}, LG/T;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v1, p2, v1

    move-object v6, v1

    :goto_1
    if-nez v6, :cond_1

    move v0, v11

    :goto_2
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/google/android/maps/driveabout/vector/D;

    new-instance v9, Lcom/google/android/maps/driveabout/vector/bL;

    invoke-direct {v9}, Lcom/google/android/maps/driveabout/vector/bL;-><init>()V

    invoke-virtual {v0, v9}, Lcom/google/android/maps/driveabout/vector/D;->a(Lcom/google/android/maps/driveabout/vector/bL;)Z

    :cond_2
    :goto_3
    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/vector/bL;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/vector/bL;->a()Lcom/google/android/maps/driveabout/vector/aG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aG;->a()LG/d;

    move-result-object v5

    instance-of v0, v5, LG/Y;

    if-eqz v0, :cond_2

    check-cast v5, LG/Y;

    invoke-virtual {v5}, LG/Y;->f()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/google/android/maps/driveabout/app/bi;->d(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/app/bi;->h()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->h:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/cZ;->f:I

    iget v3, p0, Lcom/google/android/maps/driveabout/app/cZ;->g:I

    move v4, v3

    move v3, v2

    move-object v2, v0

    :goto_4
    iget-object v10, p0, Lcom/google/android/maps/driveabout/app/cZ;->c:Lcom/google/android/maps/driveabout/vector/bq;

    new-instance v0, Lcom/google/android/maps/driveabout/app/bK;

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/bK;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILG/Y;Lcom/google/android/maps/driveabout/app/bi;Lt/D;Lcom/google/android/maps/driveabout/app/dA;)V

    invoke-virtual {v10, v0}, Lcom/google/android/maps/driveabout/vector/bq;->a(Lcom/google/android/maps/driveabout/vector/ae;)V

    goto :goto_3

    :cond_3
    move v0, v11

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v4, v2

    move v3, v0

    move-object v2, v8

    goto :goto_4

    :cond_6
    move-object v6, v8

    goto :goto_1
.end method

.method b(Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 9

    const/4 v8, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->a:Lcom/google/android/maps/driveabout/app/aI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aI;->d()[Lcom/google/android/maps/driveabout/app/bi;

    move-result-object v2

    move v3, v8

    :goto_0
    array-length v0, v2

    if-ge v3, v0, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/bi;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v0

    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/app/bi;->a(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    new-instance v6, Lt/D;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/bi;->k()LG/T;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lt/D;-><init>(LG/w;LG/T;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/cZ;->i:Ljava/util/HashSet;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move v5, v8

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/D;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0, v2}, Lcom/google/android/maps/driveabout/app/cZ;->a(Lt/D;[Lcom/google/android/maps/driveabout/app/bi;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->o()Lcom/google/android/maps/driveabout/vector/ae;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v1, v0, Lcom/google/android/maps/driveabout/app/bK;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/google/android/maps/driveabout/app/bK;

    move v1, v8

    :goto_4
    array-length v5, v2

    if-ge v1, v5, :cond_8

    aget-object v5, v2, v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bK;->r()Lcom/google/android/maps/driveabout/app/bi;

    move-result-object v6

    if-ne v5, v6, :cond_7

    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->b:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->n()V

    :cond_5
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->c:Lcom/google/android/maps/driveabout/vector/bq;

    new-instance v1, Lcom/google/android/maps/driveabout/app/bq;

    invoke-direct {v1, v3}, Lcom/google/android/maps/driveabout/app/bq;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {v0, v1, v8}, Lcom/google/android/maps/driveabout/vector/bq;->a(Lcom/google/android/maps/driveabout/vector/be;Z)V

    :cond_6
    iput-object v4, p0, Lcom/google/android/maps/driveabout/app/cZ;->i:Ljava/util/HashSet;

    iput-boolean v8, p0, Lcom/google/android/maps/driveabout/app/cZ;->k:Z

    return-void

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    move v0, v8

    goto :goto_5
.end method
