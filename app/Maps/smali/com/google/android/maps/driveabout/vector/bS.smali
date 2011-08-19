.class public Lcom/google/android/maps/driveabout/vector/bS;
.super Lcom/google/android/maps/driveabout/vector/au;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cA;


# static fields
.field private static B:Lcom/google/android/maps/driveabout/vector/cJ;


# instance fields
.field private A:F

.field public d:Ljava/util/Map;

.field public e:Ljava/util/List;

.field private f:F

.field private g:F

.field private h:F

.field private final i:Landroid/content/res/Resources;

.field private final j:Z

.field private k:Lcom/google/android/maps/driveabout/vector/G;

.field private l:Lcom/google/android/maps/driveabout/vector/ck;

.field private m:I

.field private final n:Lcom/google/android/maps/driveabout/vector/av;

.field private volatile o:Z

.field private p:F

.field private q:F

.field private r:I

.field private s:Z

.field private volatile t:Z

.field private u:LG/Z;

.field private volatile v:Z

.field private w:F

.field private x:F

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x4

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/vector/cJ;-><init>(I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bS;->B:Lcom/google/android/maps/driveabout/vector/cJ;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bS;->B:Lcom/google/android/maps/driveabout/vector/cJ;

    const v1, 0x73217bce

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cJ;->b(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/vector/r;Z)V
    .locals 6

    const/4 v5, 0x1

    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/au;-><init>(Lcom/google/android/maps/driveabout/vector/r;)V

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->d:Ljava/util/Map;

    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/bS;->v:Z

    new-instance v0, Lcom/google/android/maps/driveabout/vector/av;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/av;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->n:Lcom/google/android/maps/driveabout/vector/av;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->i:Landroid/content/res/Resources;

    iput-boolean p3, p0, Lcom/google/android/maps/driveabout/vector/bS;->j:Z

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/aM;

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/aM;->a()Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/maps/driveabout/vector/ao;->a(Z)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ao;->a()Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v1

    const v2, 0x7f020142

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/ao;->a(I)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ao;->c()Lcom/google/android/maps/driveabout/vector/aM;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/aM;->a()Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/maps/driveabout/vector/ao;->a(Z)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ao;->b()Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v1

    const v2, 0x7f020141

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/ao;->a(I)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ao;->c()Lcom/google/android/maps/driveabout/vector/aM;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/bS;->a([Lcom/google/android/maps/driveabout/vector/aM;)V

    const/high16 v0, 0x4280

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->q:F

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/bS;->w:F

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/bS;->x:F

    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/bS;->b(F)V

    const/high16 v0, 0x4680

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/bS;->c(F)V

    const v0, 0x64190

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->y:I

    const/high16 v0, 0x4180

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->f:F

    const/high16 v0, 0x4140

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->g:F

    const/high16 v0, 0x3f40

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->h:F

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->i:Landroid/content/res/Resources;

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->z:I

    return-void
.end method

.method private declared-synchronized a(ZZZ)Lcom/google/android/maps/driveabout/vector/aM;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aM;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aM;->a(ZZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/google/android/maps/driveabout/vector/u;I)Lcom/google/android/maps/driveabout/vector/p;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/p;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/p;-><init>(Lcom/google/android/maps/driveabout/vector/u;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/p;->c(Z)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->i:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/maps/driveabout/vector/p;->a(Landroid/content/res/Resources;I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->k:Lcom/google/android/maps/driveabout/vector/G;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/G;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/G;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->k:Lcom/google/android/maps/driveabout/vector/G;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->r()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bS;->v()Lcom/google/android/maps/driveabout/vector/aM;

    move-result-object v1

    iget v2, v1, Lcom/google/android/maps/driveabout/vector/aM;->c:I

    iget v3, v1, Lcom/google/android/maps/driveabout/vector/aM;->b:I

    if-eq v2, v3, :cond_2

    move v2, v5

    :goto_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bS;->k:Lcom/google/android/maps/driveabout/vector/G;

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/vector/G;->a(Z)V

    iget-boolean v2, v1, Lcom/google/android/maps/driveabout/vector/aM;->a:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bS;->r:I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bS;->r:I

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/bS;->r:I

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bS;->k:Lcom/google/android/maps/driveabout/vector/G;

    invoke-virtual {v2, p1}, Lcom/google/android/maps/driveabout/vector/G;->a(Lcom/google/android/maps/driveabout/vector/u;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v1, v1, Lcom/google/android/maps/driveabout/vector/aM;->c:I

    invoke-direct {p0, p1, v1}, Lcom/google/android/maps/driveabout/vector/bS;->a(Lcom/google/android/maps/driveabout/vector/u;I)Lcom/google/android/maps/driveabout/vector/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/p;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    :goto_1
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    :try_start_1
    iget v1, v1, Lcom/google/android/maps/driveabout/vector/aM;->b:I

    invoke-direct {p0, p1, v1}, Lcom/google/android/maps/driveabout/vector/bS;->a(Lcom/google/android/maps/driveabout/vector/u;I)Lcom/google/android/maps/driveabout/vector/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/p;->a(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;IILG/Q;I)V
    .locals 3

    const/4 v2, 0x0

    mul-int/lit8 v0, p6, 0x2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->l:Lcom/google/android/maps/driveabout/vector/ck;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/maps/driveabout/vector/ck;

    invoke-direct {v1, p5, v0, v2, v2}, Lcom/google/android/maps/driveabout/vector/ck;-><init>(LG/Q;III)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->l:Lcom/google/android/maps/driveabout/vector/ck;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->l:Lcom/google/android/maps/driveabout/vector/ck;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/ck;->a(F)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bS;->v()Lcom/google/android/maps/driveabout/vector/aM;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->l:Lcom/google/android/maps/driveabout/vector/ck;

    iget v2, v0, Lcom/google/android/maps/driveabout/vector/aM;->d:I

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/ck;->b(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->l:Lcom/google/android/maps/driveabout/vector/ck;

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/aM;->e:I

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/ck;->c(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->l:Lcom/google/android/maps/driveabout/vector/ck;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/ck;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->l:Lcom/google/android/maps/driveabout/vector/ck;

    invoke-virtual {v1, p5, v0}, Lcom/google/android/maps/driveabout/vector/ck;->a(LG/Q;I)V

    goto :goto_0
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/bF;)F
    .locals 4

    const/high16 v2, 0x3f80

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->f:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->g:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->h:F

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->h:F

    sub-float v1, v2, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bS;->f:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bS;->g:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bS;->h:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bS;->g:F

    sub-float/2addr v0, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private declared-synchronized s()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private t()F
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bS;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->p:F

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->q:F

    div-float/2addr v0, v1

    :goto_0
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->A:F

    mul-float/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bS;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->p:F

    :goto_1
    mul-float/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bS;->u()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->x:F

    :goto_2
    mul-float/2addr v0, v1

    return v0

    :cond_0
    const/high16 v0, 0x3e80

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->q:F

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->w:F

    goto :goto_2
.end method

.method private u()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bS;->v()Lcom/google/android/maps/driveabout/vector/aM;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/aM;->a:Z

    return v0
.end method

.method private v()Lcom/google/android/maps/driveabout/vector/aM;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->o:Z

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->t:Z

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bS;->v:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bS;->a(ZZZ)Lcom/google/android/maps/driveabout/vector/aM;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->y:I

    return v0
.end method

.method public a(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->n:Lcom/google/android/maps/driveabout/vector/av;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/av;->a:LG/Q;

    if-nez v0, :cond_0

    const v0, 0x7fffffff

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->n:Lcom/google/android/maps/driveabout/vector/av;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/av;->a:LG/Q;

    invoke-virtual {p4, v0}, Lcom/google/android/maps/driveabout/vector/bF;->b(LG/Q;)[I

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    aget v1, v0, v2

    int-to-float v1, v1

    sub-float v1, p1, v1

    aget v2, v0, v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    aget v2, v0, v3

    int-to-float v2, v2

    sub-float v2, p2, v2

    aget v0, v0, v3

    int-to-float v0, v0

    sub-float v0, p2, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->n:Lcom/google/android/maps/driveabout/vector/av;

    iput p1, v0, Lcom/google/android/maps/driveabout/vector/av;->b:F

    return-void
.end method

.method public a(FFF)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bS;->f:F

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/bS;->g:F

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/bS;->h:F

    return-void
.end method

.method public a(FII)V
    .locals 3

    const/high16 v2, 0x42c8

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->p:F

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->q:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->q:F

    int-to-float v1, p2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->w:F

    int-to-float v1, p3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->x:F

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/bS;->b(F)V

    return-void
.end method

.method public declared-synchronized a(LG/Q;F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->n:Lcom/google/android/maps/driveabout/vector/av;

    iput-object p1, v0, Lcom/google/android/maps/driveabout/vector/av;->a:LG/Q;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->n:Lcom/google/android/maps/driveabout/vector/av;

    iput p2, v0, Lcom/google/android/maps/driveabout/vector/av;->b:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(LG/Z;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bS;->u:LG/Z;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bS;->s()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 9

    const/4 v8, 0x0

    if-lez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->n:Lcom/google/android/maps/driveabout/vector/av;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/av;->a:LG/Q;

    if-nez v0, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->n:Lcom/google/android/maps/driveabout/vector/av;

    iget-object v5, v0, Lcom/google/android/maps/driveabout/vector/av;->a:LG/Q;

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/bS;->m:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->n:Lcom/google/android/maps/driveabout/vector/av;

    iget v7, v0, Lcom/google/android/maps/driveabout/vector/av;->b:F

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v6, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/bS;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;IILG/Q;I)V

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p2, v5, v0}, Lcom/google/android/maps/driveabout/vector/bF;->a(LG/Q;Z)F

    move-result v0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bS;->u()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->p:F

    :goto_1
    invoke-virtual {p2, v1, v0}, Lcom/google/android/maps/driveabout/vector/bF;->a(FF)F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->A:F

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->l()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->r()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/driveabout/vector/br;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v2, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    sget-object v2, Lcom/google/android/maps/driveabout/vector/az;->b:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v2, p1}, Lcom/google/android/maps/driveabout/vector/az;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-static {v1, p2, v5, v0}, Lcom/google/android/maps/driveabout/vector/Y;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/bF;LG/Q;F)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bS;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    neg-float v0, v7

    const/high16 v2, 0x3f80

    invoke-interface {v1, v0, v8, v8, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bS;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;)V

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->q:F

    goto :goto_1
.end method

.method public a(Ljava/util/List;FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bS;->aw_()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/google/android/maps/driveabout/vector/bS;->a(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)I

    move-result v0

    if-ge v0, p6, :cond_0

    new-instance v1, Lcom/google/android/maps/driveabout/vector/d;

    invoke-direct {v1, p0, p0, v0}, Lcom/google/android/maps/driveabout/vector/d;-><init>(Lcom/google/android/maps/driveabout/vector/cA;Lcom/google/android/maps/driveabout/vector/au;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public varargs declared-synchronized a([Lcom/google/android/maps/driveabout/vector/aM;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lj/v;->a([Ljava/lang/Object;)Lj/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->e:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bS;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bS;->c(Lcom/google/android/maps/driveabout/vector/bF;)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->A:F

    const/4 v0, 0x1

    return v0
.end method

.method public as_()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->s:Z

    return-void
.end method

.method public at_()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->s:Z

    return-void
.end method

.method public declared-synchronized au_()LG/Q;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->n:Lcom/google/android/maps/driveabout/vector/av;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/av;->a:LG/Q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public av_()I
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->z:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->A:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public aw_()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->j:Z

    return v0
.end method

.method public b(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->q:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->p:F

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bS;->y:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/bS;->v:Z

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->n:Lcom/google/android/maps/driveabout/vector/av;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/av;->a:LG/Q;

    if-nez v0, :cond_0

    monitor-exit p0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->n:Lcom/google/android/maps/driveabout/vector/av;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/av;->a:LG/Q;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/bF;->b(LG/Q;)[I

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bS;->t()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    aget v2, v0, v5

    sub-int/2addr v2, v1

    aget v3, v0, v5

    add-int/2addr v3, v1

    aget v4, v0, v6

    sub-int/2addr v4, v1

    aget v0, v0, v6

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v1

    if-ge v2, v1, :cond_1

    if-ltz v3, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->e()I

    move-result v1

    if-ge v4, v1, :cond_1

    if-ltz v0, :cond_1

    move v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move v0, v5

    goto :goto_0
.end method

.method public c(F)V
    .locals 1

    float-to-int v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->r:I

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bS;->m:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/bS;->t:Z

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/bS;->o:Z

    return-void
.end method

.method public j()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->n:Lcom/google/android/maps/driveabout/vector/av;

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/av;->b:F

    return v0
.end method

.method public m()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public p()LG/Z;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->u:LG/Z;

    return-object v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->o:Z

    return v0
.end method

.method public declared-synchronized r()Lcom/google/android/maps/driveabout/vector/av;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/maps/driveabout/vector/av;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->n:Lcom/google/android/maps/driveabout/vector/av;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/av;-><init>(Lcom/google/android/maps/driveabout/vector/av;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
