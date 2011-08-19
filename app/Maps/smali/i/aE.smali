.class public Li/aE;
.super Ljava/lang/Object;

# interfaces
.implements LA/f;
.implements LQ/i;
.implements Lcom/google/googlenav/layer/g;
.implements Lcom/google/googlenav/ui/aY;


# static fields
.field private static final L:I

.field private static final M:I

.field private static final N:I

.field private static final T:I

.field public static b:I

.field public static c:I

.field protected static final l:I

.field private static final v:[I

.field private static final w:[Z

.field private static x:Z

.field private static volatile y:I


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:I

.field private E:Ljava/lang/Object;

.field private F:Lx/J;

.field private G:Ljava/lang/String;

.field private final H:LaF/a;

.field private final I:Lcom/google/googlenav/layer/a;

.field private final J:Li/br;

.field private final K:Lc/k;

.field private O:Ljava/util/Vector;

.field private P:Z

.field private Q:Lf/h;

.field private R:I

.field private S:Z

.field private final a:Lo/bg;

.field protected final d:Lcom/google/googlenav/ui/aT;

.field protected final e:LH/f;

.field protected final f:Lf/v;

.field protected final g:Lf/Y;

.field protected final h:Lcom/google/googlenav/ui/X;

.field protected final i:Lf/x;

.field protected final j:Lcom/google/googlenav/ui/bu;

.field protected final k:Ljava/util/Vector;

.field private final m:Lo/by;

.field private final n:Lo/g;

.field private final o:Lo/Y;

.field private final p:LaU/a;

.field private final q:Lh/eY;

.field private final r:Ljava/util/Vector;

.field private final s:Ljava/util/Vector;

.field private final t:Ljava/util/Vector;

.field private u:Z

.field private z:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x5

    sput v2, Li/aE;->b:I

    const/16 v0, 0x14

    sput v0, Li/aE;->c:I

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Li/aE;->v:[I

    new-array v0, v2, [Z

    fill-array-data v0, :array_1

    sput-object v0, Li/aE;->w:[Z

    sput-boolean v1, Li/aE;->x:Z

    sput v1, Li/aE;->y:I

    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v0

    sput v0, Li/aE;->L:I

    sget v0, Li/aE;->L:I

    sget v1, Li/aE;->L:I

    mul-int/2addr v0, v1

    sput v0, Li/aE;->M:I

    invoke-static {v2}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v0

    sput v0, Li/aE;->N:I

    sget v0, Li/aE;->N:I

    sget v1, Li/aE;->N:I

    mul-int/2addr v0, v1

    sput v0, Li/aE;->l:I

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0, v2}, Lac/m;->c(I)I

    move-result v0

    sput v0, Li/aE;->T:I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;LH/f;Lo/bg;Lo/by;Lo/g;Lo/Y;LaU/a;Lcom/google/googlenav/ui/bu;Lh/eY;Lf/x;Lcom/google/googlenav/layer/a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Li/aE;->k:Ljava/util/Vector;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Li/aE;->r:Ljava/util/Vector;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Li/aE;->s:Ljava/util/Vector;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Li/aE;->t:Ljava/util/Vector;

    const/4 v2, 0x0

    iput-boolean v2, p0, Li/aE;->u:Z

    const/4 v2, -0x1

    iput-byte v2, p0, Li/aE;->z:B

    const/16 v2, -0xa

    iput v2, p0, Li/aE;->A:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Li/aE;->B:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Li/aE;->C:Z

    const/4 v2, -0x1

    iput v2, p0, Li/aE;->D:I

    new-instance v2, LaF/a;

    invoke-direct {v2}, LaF/a;-><init>()V

    iput-object v2, p0, Li/aE;->H:LaF/a;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Li/aE;->O:Ljava/util/Vector;

    const/4 v2, 0x0

    iput-boolean v2, p0, Li/aE;->P:Z

    const/4 v2, -0x1

    iput v2, p0, Li/aE;->R:I

    iput-object p1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iput-object p2, p0, Li/aE;->f:Lf/v;

    iput-object p3, p0, Li/aE;->g:Lf/Y;

    iput-object p4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    iput-object p5, p0, Li/aE;->e:LH/f;

    iput-object p6, p0, Li/aE;->a:Lo/bg;

    iput-object p7, p0, Li/aE;->m:Lo/by;

    iput-object p8, p0, Li/aE;->n:Lo/g;

    iput-object p9, p0, Li/aE;->o:Lo/Y;

    iput-object p10, p0, Li/aE;->p:LaU/a;

    iput-object p11, p0, Li/aE;->j:Lcom/google/googlenav/ui/bu;

    move-object/from16 v0, p12

    move-object v1, p0

    iput-object v0, v1, Li/aE;->q:Lh/eY;

    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Li/aE;->i:Lf/x;

    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Li/aE;->I:Lcom/google/googlenav/layer/a;

    new-instance v2, Li/br;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aT;->at()LT/c;

    move-result-object v3

    invoke-direct {v2, v3}, Li/br;-><init>(LT/c;)V

    iput-object v2, p0, Li/aE;->J:Li/br;

    new-instance v2, Lc/k;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aT;->at()LT/c;

    move-result-object v3

    invoke-direct {v2, v3}, Lc/k;-><init>(LT/c;)V

    iput-object v2, p0, Li/aE;->K:Lc/k;

    return-void
.end method

.method public static V()I
    .locals 3

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    sget-object v1, Li/aE;->w:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Li/aE;->w:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    sget-object v1, Li/aE;->v:[I

    aget v0, v1, v0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public static W()I
    .locals 2

    sget v0, Li/aE;->y:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Li/aE;->y:I

    return v0
.end method

.method private a(Law/e;Li/x;Z)Law/e;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Law/e;->a(I)Law/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p2}, Li/x;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x3

    invoke-virtual {p2}, Li/x;->be()I

    move-result v2

    invoke-static {v2}, LA/a;->a(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(I[B)V

    const/4 v1, 0x4

    invoke-virtual {p2}, Li/x;->aZ()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(IZ)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Law/e;->b(IZ)V

    return-object v0
.end method

.method static synthetic a(Li/aE;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Li/aE;->t:Ljava/util/Vector;

    return-object v0
.end method

.method public static a(IZ)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Li/aE;->v:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Li/aE;->v:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_1

    sget-object v1, Li/aE;->w:[Z

    aput-boolean p1, v1, v0

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Law/e;)V
    .locals 0

    invoke-static {p1}, LaC/a;->a(Law/e;)V

    invoke-direct {p0}, Li/aE;->ah()V

    return-void
.end method

.method private a(Li/x;)V
    .locals 3

    invoke-virtual {p1}, Li/x;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Li/x;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Li/aE;->s:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Li/aE;->s:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v0, p0, Li/aE;->s:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sget v2, Li/aE;->c:I

    if-le v0, v2, :cond_3

    sget v0, Li/aE;->c:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v2, v0

    :goto_1
    iget-object v0, p0, Li/aE;->s:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Li/aE;->s:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    invoke-direct {p0, v0}, Li/aE;->j(Li/x;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Li/aE;->s:Ljava/util/Vector;

    sget v2, Li/aE;->c:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->setSize(I)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Li/aE;->C:Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Li/x;Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x43

    invoke-virtual {p1}, Li/x;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1}, Li/x;->b()I

    move-result v0

    invoke-static {v0}, Li/aE;->h(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p2, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :goto_0
    invoke-direct {p0}, Li/aE;->ah()V

    return-void

    :sswitch_0
    check-cast p1, Li/n;

    invoke-virtual {p1}, Li/n;->g()Lcom/google/googlenav/layer/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p2, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Ljava/io/DataInput;IZZ)V
    .locals 9

    const/4 v8, 0x0

    new-instance v0, Li/aw;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    sget-object v5, Lcom/google/googlenav/layer/s;->a:Lcom/google/googlenav/layer/s;

    iget-object v6, p0, Li/aE;->i:Lf/x;

    invoke-static {}, Li/aE;->V()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Li/aw;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/x;I)V

    invoke-virtual {v0, p1}, Li/aw;->a(Ljava/io/DataInput;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2}, Li/aw;->g(I)V

    invoke-virtual {v0, p3}, Li/aw;->h(Z)V

    if-eqz p4, :cond_0

    invoke-virtual {v0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/z;->U()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v8, v8}, Li/aE;->a(Li/x;ZZ)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Li/aE;->a(Li/x;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAYER_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private a(Law/e;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-virtual {p1}, Law/e;->d()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Law/e;->f()[B

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ln/a;->b([BLjava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-interface {v0, p2}, Ln/a;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LAYER_MANAGER-LayerManager Error saving layers"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Li/aE;->ae()V

    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "LAYER_MANAGER-LayerManager OOME saving layers"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Li/aE;->ae()V

    goto :goto_2
.end method

.method private ab()V
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Li/aE;->O:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Li/aE;->O:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/aR;

    invoke-virtual {v0, v2}, Li/aR;->a(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ac()V
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Law/e;

    sget-object v0, Ls/T;->o:Law/f;

    invoke-direct {v1, v0}, Law/e;-><init>(Law/f;)V

    const/4 v0, 0x0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-object v3, p0, Li/aE;->k:Ljava/util/Vector;

    monitor-enter v3

    move v4, v6

    :goto_0
    :try_start_0
    iget-object v5, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    move v4, v6

    move-object v5, v0

    :goto_1
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Li/x;->e()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-direct {p0, v1, v0, v7}, Li/aE;->a(Law/e;Li/x;Z)Law/e;

    move-result-object v5

    invoke-virtual {v1, v7, v5}, Law/e;->a(ILaw/e;)V

    iget-object v5, p0, Li/aE;->I:Lcom/google/googlenav/layer/a;

    if-eqz v5, :cond_1

    iget-object v5, p0, Li/aE;->I:Lcom/google/googlenav/layer/a;

    invoke-interface {v5, v0}, Lcom/google/googlenav/layer/a;->a(Li/x;)V

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    const/4 v0, -0x1

    const/16 v2, -0xa

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/j;->d_()B

    move-result v0

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Law/e;->h(II)V

    invoke-virtual {v5}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/j;->c()I

    move-result v2

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Law/e;->h(II)V

    const/16 v3, 0xe

    invoke-virtual {v5}, Li/x;->bb()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Law/e;->h(II)V

    move v8, v2

    move v2, v0

    move v0, v8

    :goto_3
    iget-boolean v3, p0, Li/aE;->B:Z

    if-eqz v3, :cond_3

    iget-byte v3, p0, Li/aE;->z:B

    if-ne v2, v3, :cond_3

    iget v3, p0, Li/aE;->A:I

    if-eq v0, v3, :cond_4

    :cond_3
    const-string v3, "PROTO_SAVED_LAYER_STATE"

    invoke-direct {p0, v1, v3}, Li/aE;->a(Law/e;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Li/aE;->B:Z

    iput-byte v2, p0, Li/aE;->z:B

    iput v0, p0, Li/aE;->A:I

    :cond_4
    return-void

    :cond_5
    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_3

    :cond_6
    move-object v0, v5

    goto :goto_2
.end method

.method private ad()V
    .locals 6

    const/4 v3, 0x1

    new-instance v1, Law/e;

    sget-object v0, Ls/T;->o:Law/f;

    invoke-direct {v1, v0}, Law/e;-><init>(Law/f;)V

    iget-object v2, p0, Li/aE;->s:Ljava/util/Vector;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Li/aE;->s:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr v0, v3

    move v3, v0

    :goto_0
    if-ltz v3, :cond_1

    iget-object v0, p0, Li/aE;->s:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    invoke-virtual {v0}, Li/x;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v1, v0, v5}, Li/aE;->a(Law/e;Li/x;Z)Law/e;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Law/e;->a(ILaw/e;)V

    iget-object v4, p0, Li/aE;->I:Lcom/google/googlenav/layer/a;

    if-eqz v4, :cond_0

    iget-object v4, p0, Li/aE;->I:Lcom/google/googlenav/layer/a;

    invoke-interface {v4, v0}, Lcom/google/googlenav/layer/a;->a(Li/x;)V

    :cond_0
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Li/aE;->C:Z

    if-nez v0, :cond_2

    const-string v0, "PROTO_SAVED_RECENT_LAYERS"

    invoke-direct {p0, v1, v0}, Li/aE;->a(Law/e;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Li/aE;->C:Z

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private ae()V
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "PROTO_SAVED_LAYER_STATE"

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    const-string v1, "PROTO_SAVED_RECENT_LAYERS"

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    const-string v1, "LAYER_"

    invoke-interface {v0, v1}, Ln/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private af()V
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "SAVED_SEARCH_1_DB"

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    const-string v1, "SAVED_SEARCH_1"

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    const-string v1, "PROTO_SAVED_SEARCH_DB"

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    const-string v1, "SAVED_SEARCH_INFO"

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private ag()V
    .locals 5

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    iget-object v1, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    iget-object v1, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/x;

    invoke-virtual {v1}, Li/x;->b()I

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    check-cast v0, Li/aw;

    move-object v2, v0

    invoke-virtual {v2}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/z;->W()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4}, Li/x;->h(Z)V

    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private ah()V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    invoke-virtual {v0}, Li/x;->b()I

    move-result v0

    invoke-static {v0}, Li/aE;->h(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x43

    const-string v2, "v"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private ai()V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Li/aE;->s:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Li/aE;->s:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    invoke-virtual {v0}, Li/x;->b()I

    move-result v0

    invoke-static {v0}, Li/aE;->h(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x43

    const-string v2, "r"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static b(I)I
    .locals 3

    const/4 v1, 0x2

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown layer of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move v0, v1

    :goto_0
    :pswitch_2
    return v0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private b(IZ)V
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    move v2, v4

    :goto_0
    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    invoke-virtual {v0}, Li/x;->b()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v0}, Li/x;->aZ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, p2, v3}, Li/aE;->b(Li/x;ZZ)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Li/aE;->i()V

    return-void
.end method

.method private b(Li/x;I)V
    .locals 1

    invoke-virtual {p1, p2}, Li/x;->d(I)V

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Li/x;->T()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Li/x;->aM()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Li/x;->b(B)V

    invoke-virtual {p0, p1}, Li/aE;->b(Li/x;)V

    goto :goto_0
.end method

.method private b(Ljava/io/DataInput;IZZ)V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Li/v;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    iget-object v5, p0, Li/aE;->e:LH/f;

    invoke-direct/range {v0 .. v5}, Li/v;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;LH/f;)V

    invoke-virtual {v0, p1}, Li/v;->a(Ljava/io/DataInput;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2}, Li/v;->g(I)V

    invoke-virtual {v0, p3}, Li/v;->h(Z)V

    if-eqz p4, :cond_0

    invoke-virtual {p0, v0, v6, v6}, Li/aE;->a(Li/x;ZZ)Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Li/v;->b(B)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Li/aE;->a(Li/x;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAYER_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private c(Li/x;I)V
    .locals 2

    invoke-virtual {p1, p2}, Li/x;->d(I)V

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Li/x;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Li/x;->Y_()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Li/x;->aG()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Li/x;->G()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Li/x;->T()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Li/x;->aM()V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Li/x;->aJ()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Li/aE;->b(Li/x;)V

    invoke-virtual {p1}, Li/x;->aE()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Li/x;->G()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Li/x;->Y_()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Li/aE;->b(Li/x;)V

    goto :goto_0
.end method

.method private c(Ljava/io/DataInput;IZZ)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Li/w;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    invoke-direct {v0, v1, v2, v3, v4}, Li/w;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;)V

    invoke-virtual {v0, p1}, Li/w;->a(Ljava/io/DataInput;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2}, Li/w;->g(I)V

    invoke-virtual {v0, p3}, Li/w;->h(Z)V

    if-eqz p4, :cond_0

    invoke-virtual {p0, v0, v5, v5}, Li/aE;->a(Li/x;ZZ)Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Li/w;->b(B)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Li/aE;->a(Li/x;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAYER_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private d(Li/x;)V
    .locals 2

    new-instance v0, Li/aV;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->at()LT/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Li/aV;-><init>(Li/aE;LT/c;Li/x;)V

    invoke-virtual {v0}, Li/aV;->b()V

    return-void
.end method

.method private d(Ljava/io/DataInput;IZZ)V
    .locals 9

    const/4 v8, 0x0

    new-instance v0, Li/n;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    iget-object v5, p0, Li/aE;->i:Lf/x;

    invoke-direct/range {v0 .. v5}, Li/n;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lf/x;)V

    invoke-virtual {v0, p1}, Li/n;->a(Ljava/io/DataInput;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Li/n;->g()Lcom/google/googlenav/layer/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/s;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msid:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v7, Li/F;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    invoke-virtual {v0}, Li/n;->g()Lcom/google/googlenav/layer/s;

    move-result-object v5

    iget-object v6, p0, Li/aE;->i:Lf/x;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Li/F;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/x;)V

    move-object v0, v7

    :cond_0
    :goto_0
    invoke-virtual {v0, p2}, Li/n;->g(I)V

    invoke-virtual {v0, p3}, Li/n;->h(Z)V

    if-eqz p4, :cond_2

    invoke-virtual {p0, v0, v8, v8}, Li/aE;->a(Li/x;ZZ)Z

    :goto_1
    return-void

    :cond_1
    const-string v2, "LayerTransit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Li/n;->g()Lcom/google/googlenav/layer/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/aE;->b(Lcom/google/googlenav/layer/s;)Li/n;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Li/aE;->a(Li/x;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAYER_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private d(Lf/h;)Z
    .locals 9

    const/4 v6, 0x0

    iget-object v0, p0, Li/aE;->j:Lcom/google/googlenav/ui/bu;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->n()Lf/h;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->al()[Lk/l;

    move-result-object v0

    aget-object v0, v0, v6

    if-nez v0, :cond_0

    move v4, v6

    :goto_0
    const/4 v3, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move v7, v6

    invoke-virtual/range {v0 .. v8}, Li/aE;->a(Lf/h;Lf/h;IIIIILk/m;)Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    invoke-interface {v0}, Lk/l;->f()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    move v4, v0

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1
.end method

.method private e(Ljava/io/DataInput;IZZ)V
    .locals 12

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->i()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Li/C;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->p:LaU/a;

    iget-object v5, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    iget-object v6, p0, Li/aE;->a:Lo/bg;

    iget-object v7, p0, Li/aE;->m:Lo/by;

    iget-object v8, p0, Li/aE;->n:Lo/g;

    iget-object v9, p0, Li/aE;->j:Lcom/google/googlenav/ui/bu;

    iget-object v10, p0, Li/aE;->J:Li/br;

    iget-object v11, p0, Li/aE;->K:Lc/k;

    invoke-direct/range {v0 .. v11}, Li/C;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;LaU/a;Lcom/google/googlenav/ui/X;Lo/bg;Lo/by;Lo/g;Lcom/google/googlenav/ui/bu;Li/br;Lc/k;)V

    invoke-virtual {v0, p1}, Li/C;->a(Ljava/io/DataInput;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p2}, Li/C;->g(I)V

    invoke-virtual {v0, p3}, Li/C;->h(Z)V

    if-eqz p4, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Li/aE;->a(Li/x;ZZ)Z

    const/4 v1, 0x1

    sput-boolean v1, Li/aE;->x:Z

    :goto_1
    iget-object v1, p0, Li/aE;->o:Lo/Y;

    if-eqz v1, :cond_0

    iget-object v1, p0, Li/aE;->o:Lo/Y;

    invoke-virtual {v1, v0}, Lo/Y;->a(Lo/bP;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Li/aE;->a(Li/x;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->g()Ln/a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LAYER_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ln/a;->a(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private f(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    invoke-virtual {v0}, Li/x;->b()I

    move-result v0

    if-ne v0, p1, :cond_1

    add-int/lit8 v0, v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private f()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xd

    invoke-direct {p0, v0, v1}, Li/aE;->b(IZ)V

    const/16 v0, 0x12

    invoke-direct {p0, v0, v1}, Li/aE;->b(IZ)V

    const/16 v0, 0xf

    invoke-direct {p0, v0, v1}, Li/aE;->b(IZ)V

    return-void
.end method

.method private f(Ljava/io/DataInput;IZZ)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->j()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Li/aQ;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    new-instance v5, Lf/x;

    invoke-direct {v5}, Lf/x;-><init>()V

    invoke-direct/range {v0 .. v5}, Li/aQ;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lf/x;)V

    invoke-virtual {v0, p1}, Li/aQ;->a(Ljava/io/DataInput;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p2}, Li/aQ;->g(I)V

    invoke-virtual {v0, p3}, Li/aQ;->h(Z)V

    if-eqz p4, :cond_1

    invoke-virtual {p0, v0, v6, v6}, Li/aE;->a(Li/x;ZZ)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Li/aE;->a(Li/x;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAYER_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)V
    .locals 12

    const/4 v5, 0x0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-interface {v0, p1}, Ln/a;->c(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Li/aE;->b(Ljava/lang/String;)Z

    move-result v2

    :try_start_0
    new-instance v3, Law/e;

    sget-object v4, Ls/T;->o:Law/f;

    invoke-direct {v3, v4}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v3, v1}, Law/e;->a([B)Law/e;

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Law/e;->i(I)I

    move-result v1

    move v4, v5

    :goto_1
    if-ge v4, v1, :cond_3

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Law/e;->e(II)Law/e;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Law/b;->c(Law/e;II)I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Law/e;->c(I)[B

    move-result-object v7

    invoke-static {v7}, LA/a;->a([B)I

    move-result v7

    sget v8, Li/aE;->y:I

    if-lt v7, v8, :cond_2

    add-int/lit8 v8, v7, 0x1

    sput v8, Li/aE;->y:I

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LAYER_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lac/i;->a(Ln/a;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v8

    if-nez v8, :cond_4

    invoke-direct {p0}, Li/aE;->ae()V

    :cond_3
    if-eqz v2, :cond_0

    const-string v0, "PROTO_SAVED_LAYER_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    invoke-virtual {v3, v0}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v3, v2}, Law/e;->d(I)I

    move-result v2

    if-ltz v2, :cond_7

    invoke-interface {v1}, Lcom/google/googlenav/j;->c_()I

    move-result v4

    if-ge v2, v4, :cond_7

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Law/e;->d(I)I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Li/x;->b(B)V

    invoke-interface {v1, v2}, Lcom/google/googlenav/j;->b(I)V

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-static {v3, v1, v2}, Law/b;->c(Law/e;II)I

    move-result v1

    invoke-virtual {v0, v1}, Li/x;->f(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LAYER_MANAGER-LayersManager load"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Li/aE;->ae()V

    goto/16 :goto_0

    :cond_4
    const/4 v9, 0x4

    :try_start_1
    invoke-static {v5, v9}, Law/b;->h(Law/e;I)Z

    move-result v9

    const/4 v10, 0x5

    invoke-static {v5, v10}, Law/b;->h(Law/e;I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0, v6}, Li/aE;->f(I)I

    move-result v10

    invoke-static {v6}, Li/aE;->b(I)I

    move-result v11

    if-lt v10, v11, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many layers of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    packed-switch v6, :pswitch_data_0

    :cond_6
    :goto_2
    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :pswitch_1
    if-eqz v2, :cond_6

    invoke-direct {p0, v8, v7, v9, v5}, Li/aE;->a(Ljava/io/DataInput;IZZ)V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, v8, v7, v9, v5}, Li/aE;->e(Ljava/io/DataInput;IZZ)V

    goto :goto_2

    :pswitch_3
    invoke-direct {p0, v8, v7, v9, v5}, Li/aE;->f(Ljava/io/DataInput;IZZ)V

    goto :goto_2

    :pswitch_4
    invoke-direct {p0, v8, v7, v9, v5}, Li/aE;->d(Ljava/io/DataInput;IZZ)V

    goto :goto_2

    :pswitch_5
    if-eqz v2, :cond_6

    invoke-direct {p0, v8, v7, v9, v5}, Li/aE;->b(Ljava/io/DataInput;IZZ)V

    goto :goto_2

    :pswitch_6
    invoke-direct {p0, v8, v7, v9, v5}, Li/aE;->c(Ljava/io/DataInput;IZZ)V

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Li/x;->b(B)V

    const/4 v0, -0x1

    invoke-interface {v1, v0}, Lcom/google/googlenav/j;->b(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private g(Ljava/lang/String;)Law/e;
    .locals 2

    const/16 v0, 0x43

    const/16 v1, 0xd

    invoke-static {v1}, Li/aE;->h(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, LaC/a;->a(ILjava/lang/String;Ljava/lang/String;)Law/e;

    move-result-object v0

    return-object v0
.end method

.method private g(I)Li/x;
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has MAX_ALLOWED_INSTANCES > 1."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    invoke-virtual {v0}, Li/x;->b()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li/x;

    move-object v0, p0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private g(Z)V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    move v0, v3

    :goto_0
    iget-object v2, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, p1}, Li/aE;->b(Li/x;ZZ)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static h(I)C
    .locals 1

    add-int/lit8 v0, p0, 0x61

    int-to-char v0, v0

    return v0
.end method

.method public static i(Li/x;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LAYER_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Li/x;->be()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j(Li/x;)V
    .locals 2

    new-instance v0, Li/aU;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->at()LT/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Li/aU;-><init>(Li/aE;LT/c;Li/x;)V

    invoke-virtual {v0}, Li/aU;->b()V

    return-void
.end method

.method private k(Li/x;)V
    .locals 5

    const/4 v3, 0x0

    iget-object v1, p0, Li/aE;->s:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Li/aE;->s:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v0, p0, Li/aE;->s:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    invoke-virtual {v0, p1}, Li/x;->b(Li/x;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v2, p0, Li/aE;->s:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Li/aE;->j(Li/x;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/aE;->C:Z

    monitor-exit v1

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public A()Li/av;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Li/aE;->g(I)Li/x;

    move-result-object p0

    check-cast p0, Li/av;

    return-object p0
.end method

.method public B()Li/ay;
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Li/aE;->g(I)Li/x;

    move-result-object p0

    check-cast p0, Li/ay;

    return-object p0
.end method

.method public C()Li/bm;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Li/aE;->g(I)Li/x;

    move-result-object p0

    check-cast p0, Li/bm;

    return-object p0
.end method

.method public D()Li/C;
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Li/aE;->g(I)Li/x;

    move-result-object p0

    check-cast p0, Li/C;

    return-object p0
.end method

.method public E()Li/aQ;
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Li/aE;->g(I)Li/x;

    move-result-object p0

    check-cast p0, Li/aQ;

    return-object p0
.end method

.method public F()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/aT;->b(I)Z

    iget-object v0, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/aT;->d(Z)V

    iget-object v0, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/aT;->f(Z)V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    move v2, v5

    :goto_0
    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    invoke-virtual {v0}, Li/x;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Li/x;->aK()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Li/x;->b()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Li/aE;->A()Li/av;

    move-result-object v0

    invoke-virtual {v0}, Li/av;->aM()V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v2, v5

    :goto_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    invoke-virtual {p0, v0, v6, v6}, Li/aE;->b(Li/x;ZZ)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    sget-object v0, Lr/a;->a:Lr/a;

    invoke-virtual {v0}, Lr/a;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Li/aE;->r()Li/aN;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Li/aE;->r()Li/aN;

    move-result-object v0

    invoke-virtual {v0, v5}, Li/aN;->j(Z)V

    :cond_5
    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    invoke-virtual {v0}, Li/x;->b()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Li/aE;->t()V

    :cond_6
    iget-object v0, p0, Li/aE;->f:Lf/v;

    invoke-virtual {v0}, Lf/v;->a()Lf/J;

    move-result-object v0

    invoke-virtual {v0}, Lf/J;->k()V

    move v0, v5

    :goto_3
    sget-object v1, Li/aE;->v:[I

    array-length v1, v1

    if-ge v0, v1, :cond_7

    sget-object v1, Li/aE;->w:[Z

    aput-boolean v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Li/aE;->i()V

    return-void
.end method

.method protected G()I
    .locals 11

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v7, -0x1

    iget-object v0, p0, Li/aE;->O:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Li/aE;->O:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v8, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    move v4, v7

    move-wide v9, v0

    move v1, v2

    move-wide v2, v9

    :goto_1
    iget-object v0, p0, Li/aE;->O:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Li/aE;->O:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/aR;

    invoke-virtual {v0}, Li/aR;->e()Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Li/aR;->d()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-gez v5, :cond_6

    invoke-virtual {v0}, Li/aR;->d()J

    move-result-wide v2

    move v0, v1

    goto :goto_2

    :cond_3
    if-ne v4, v7, :cond_5

    invoke-direct {p0}, Li/aE;->ab()V

    iget v0, p0, Li/aE;->R:I

    if-eq v0, v7, :cond_4

    iget-object v0, p0, Li/aE;->O:Ljava/util/Vector;

    iget v1, p0, Li/aE;->R:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/aR;

    invoke-virtual {v0, v8}, Li/aR;->a(Z)V

    :cond_4
    invoke-virtual {p0}, Li/aE;->G()I

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v4

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_2
.end method

.method public H()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Li/x;->b()I

    move-result v1

    if-nez v1, :cond_1

    check-cast v0, Li/aw;

    invoke-virtual {v0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v4

    :cond_0
    :goto_0
    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    const-string v2, "22"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1
    move-object v0, v4

    goto :goto_0
.end method

.method public I()Li/x;
    .locals 1

    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li/x;

    move-object v0, p0

    goto :goto_0
.end method

.method public J()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Li/aE;->r:Ljava/util/Vector;

    return-object v0
.end method

.method public K()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Li/aE;->s:Ljava/util/Vector;

    return-object v0
.end method

.method public L()V
    .locals 1

    iget-object v0, p0, Li/aE;->I:Lcom/google/googlenav/layer/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aE;->I:Lcom/google/googlenav/layer/a;

    invoke-interface {v0}, Lcom/google/googlenav/layer/a;->a()V

    :cond_0
    invoke-direct {p0}, Li/aE;->ac()V

    invoke-direct {p0}, Li/aE;->ad()V

    return-void
.end method

.method public M()V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Li/aE;->af()V

    :cond_0
    const-string v0, "PROTO_SAVED_LAYER_STATE"

    invoke-direct {p0, v0}, Li/aE;->f(Ljava/lang/String;)V

    sget-object v0, Lr/a;->a:Lr/a;

    invoke-virtual {v0}, Lr/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li/aE;->q()Li/aN;

    :cond_1
    iget-object v0, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->a()V

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/aE;->b(Li/x;)V

    return-void
.end method

.method public N()V
    .locals 1

    const-string v0, "PROTO_SAVED_RECENT_LAYERS"

    invoke-direct {p0, v0}, Li/aE;->f(Ljava/lang/String;)V

    invoke-direct {p0}, Li/aE;->ai()V

    return-void
.end method

.method public O()Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Li/aE;->r()Li/aN;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/aE;->r()Li/aN;

    move-result-object v0

    invoke-virtual {v0}, Li/aN;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Li/aE;->r:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->I()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->J()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    invoke-virtual {v0}, Li/x;->aK()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    invoke-virtual {v0}, Li/x;->b()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public P()Z
    .locals 1

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/x;->aW()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public Q()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Li/aE;->G:Ljava/lang/String;

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Li/aE;->C()Li/bm;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Li/bm;->j()V

    :cond_1
    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    invoke-virtual {v0}, Li/x;->j()V

    iget-object v0, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->U()V

    goto :goto_0
.end method

.method public R()Z
    .locals 1

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/x;->u_()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public S()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Li/aE;->f()V

    invoke-direct {p0, v5, v4}, Li/aE;->b(IZ)V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    move v2, v4

    :goto_0
    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    invoke-virtual {v0}, Li/x;->b()I

    move-result v3

    if-nez v3, :cond_0

    check-cast v0, Li/aw;

    invoke-virtual {v0}, Li/aw;->bA()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    invoke-virtual {p0, v0, v4, v5}, Li/aE;->b(Li/x;ZZ)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Li/aE;->i()V

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/aE;->b(Li/x;)V

    return-void
.end method

.method public T()V
    .locals 2

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Li/x;->aM()V

    :goto_0
    invoke-virtual {v0}, Li/x;->b()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Li/aE;->z()Li/w;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->D()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Li/x;->aC()V

    goto :goto_0
.end method

.method public U()Lcom/google/googlenav/bf;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v4

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v1}, Li/x;->b()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    move-object v1, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Li/x;->b()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    move-object v0, v1

    check-cast v0, Li/M;

    move-object p0, v0

    invoke-virtual {p0}, Li/M;->bo()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Li/x;->ac()Lcom/google/googlenav/bf;

    move-result-object v1

    goto :goto_0
.end method

.method public X()V
    .locals 1

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/aE;->b(Li/x;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/x;->A()V

    :cond_0
    return-void
.end method

.method public Y()Li/br;
    .locals 1

    iget-object v0, p0, Li/aE;->J:Li/br;

    return-object v0
.end method

.method public Z()Lc/k;
    .locals 1

    iget-object v0, p0, Li/aE;->K:Lc/k;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/bM;BZ[Ljava/lang/String;)Li/M;
    .locals 10

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Li/aE;->a(I)V

    invoke-virtual {p1}, Lcom/google/googlenav/bM;->b()Lcom/google/googlenav/bf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v0

    invoke-direct {p0, v0}, Li/aE;->d(Lf/h;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v0, p0, Li/aE;->j:Lcom/google/googlenav/ui/bu;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->n()Lf/h;

    iget-object v0, p0, Li/aE;->j:Lcom/google/googlenav/ui/bu;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->l()[Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    :goto_0
    if-nez v8, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/aE;->a(Z)V

    :cond_0
    const-string v0, "s"

    invoke-direct {p0, v0}, Li/aE;->g(Ljava/lang/String;)Law/e;

    move-result-object v9

    new-instance v0, Li/M;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v0 .. v9}, Li/M;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/j;Z[Ljava/lang/String;ZLaw/e;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v9}, Li/aE;->a(Li/x;ZLaw/e;)V

    invoke-virtual {v0, p2}, Li/M;->a(B)V

    return-object v0

    :cond_1
    move-object v7, p4

    goto :goto_0
.end method

.method public a(Lf/h;Ljava/lang/String;Z[Ljava/lang/String;)Li/M;
    .locals 3

    new-instance v0, Lcom/google/googlenav/bM;

    new-instance v1, Lcom/google/googlenav/c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/googlenav/c;-><init>(Lf/N;Ljava/lang/String;B)V

    invoke-direct {v0, v1}, Lcom/google/googlenav/bM;-><init>(Lcom/google/googlenav/c;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p3, p4}, Li/aE;->a(Lcom/google/googlenav/bM;BZ[Ljava/lang/String;)Li/M;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/c;ZBZZ)Li/Z;
    .locals 10

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Li/aE;->a(I)V

    new-instance v0, Li/Z;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    iget-object v5, p0, Li/aE;->i:Lf/x;

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, Li/Z;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lf/x;Lcom/google/googlenav/c;ZBZ)V

    invoke-virtual {p0, v0, p5}, Li/aE;->a(Li/x;Z)V

    return-object v0
.end method

.method public a(Lf/h;)Li/aF;
    .locals 6

    const/4 v1, 0x0

    const/16 v0, 0x16

    invoke-direct {p0, v0, v1}, Li/aE;->b(IZ)V

    iget-object v0, p0, Li/aE;->g:Lf/Y;

    invoke-virtual {v0, v1}, Lf/Y;->a(I)V

    iget-object v0, p0, Li/aE;->g:Lf/Y;

    const/16 v1, 0xb

    invoke-static {v1}, Lf/l;->b(I)Lf/l;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lf/Y;->e(Lf/h;Lf/l;)V

    iget-object v0, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    const/16 v1, 0x299

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->g(Ljava/lang/String;)V

    new-instance v5, Li/aO;

    invoke-direct {v5}, Li/aO;-><init>()V

    iget-object v0, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aC()LE/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LE/i;->c(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/g;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/g;->a()LG/w;

    move-result-object v2

    invoke-virtual {v2}, LG/w;->i()LG/S;

    move-result-object v2

    invoke-virtual {v2}, LG/S;->f()LG/Q;

    move-result-object v2

    new-instance v3, Lf/h;

    invoke-virtual {v2}, LG/Q;->a()I

    move-result v4

    invoke-virtual {v2}, LG/Q;->c()I

    move-result v2

    invoke-direct {v3, v4, v2}, Lf/h;-><init>(II)V

    new-instance v2, Li/aH;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Li/aH;-><init>(Lf/h;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Li/aO;->a(Li/aH;)V

    goto :goto_0

    :cond_0
    new-instance v0, Li/aF;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    invoke-direct/range {v0 .. v5}, Li/aF;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Li/aO;)V

    invoke-virtual {p0, v0}, Li/aE;->f(Li/x;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Li/aQ;
    .locals 2

    invoke-direct {p0}, Li/aE;->f()V

    invoke-static {}, Lcom/google/googlenav/layer/h;->a()Lcom/google/googlenav/layer/h;

    move-result-object v0

    const-string v1, "LatitudePublicUpdates"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/h;->c(Ljava/lang/String;)Lcom/google/googlenav/layer/s;

    move-result-object v0

    new-instance v1, Li/aT;

    invoke-direct {v1, p0, p1}, Li/aT;-><init>(Li/aE;Ljava/lang/String;)V

    if-nez v0, :cond_0

    iget-object v0, p0, Li/aE;->t:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1}, Lcom/google/googlenav/layer/g;->a()V

    invoke-virtual {p0}, Li/aE;->E()Li/aQ;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/j;)Li/aY;
    .locals 7

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Li/aE;->a(I)V

    new-instance v0, Li/aY;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    invoke-static {}, Li/aE;->V()I

    move-result v6

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Li/aY;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/j;I)V

    invoke-virtual {p0, v0}, Li/aE;->f(Li/x;)V

    return-object v0
.end method

.method public a(Lcom/google/googlenav/z;Z)Li/aw;
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-direct {p0, v0, v0}, Li/aE;->b(IZ)V

    :cond_0
    invoke-direct {p0}, Li/aE;->f()V

    invoke-virtual {p0, v0}, Li/aE;->a(I)V

    new-instance v5, Lcom/google/googlenav/bm;

    new-instance v0, Lcom/google/googlenav/aY;

    invoke-virtual {p1}, Lcom/google/googlenav/z;->V()Lcom/google/googlenav/layer/s;

    move-result-object v1

    iget-object v2, p0, Li/aE;->i:Lf/x;

    iget-object v3, p0, Li/aE;->f:Lf/v;

    iget-object v4, p0, Li/aE;->g:Lf/Y;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/aY;-><init>(Lcom/google/googlenav/layer/s;Lf/r;Lf/v;Lf/Y;)V

    invoke-direct {v5, p1, v0}, Lcom/google/googlenav/bm;-><init>(Lcom/google/googlenav/j;Lcom/google/googlenav/j;)V

    invoke-virtual {p1}, Lcom/google/googlenav/z;->al()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    move v8, v0

    :goto_0
    new-instance v0, Li/aw;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    invoke-virtual {p1}, Lcom/google/googlenav/z;->V()Lcom/google/googlenav/layer/s;

    move-result-object v6

    iget-object v7, p0, Li/aE;->i:Lf/x;

    invoke-direct/range {v0 .. v8}, Li/aw;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/bm;Lcom/google/googlenav/layer/s;Lf/x;I)V

    invoke-virtual {p0, v0}, Li/aE;->f(Li/x;)V

    return-object v0

    :cond_1
    invoke-static {}, Li/aE;->V()I

    move-result v0

    move v8, v0

    goto :goto_0
.end method

.method protected a(Lcom/google/googlenav/layer/s;)Li/ay;
    .locals 7

    new-instance v0, Li/ay;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    new-instance v6, Lf/x;

    invoke-direct {v6}, Lf/x;-><init>()V

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Li/ay;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/x;)V

    return-object v0
.end method

.method public a(Lcom/google/googlenav/z;)Li/c;
    .locals 9

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Li/x;->b()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    invoke-direct {p0}, Li/aE;->f()V

    :goto_1
    iget-object v0, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->c()Lh/fc;

    move-result-object v0

    invoke-virtual {v0}, Lh/fc;->a()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/x;->bf()V

    :cond_0
    invoke-static {}, Li/aE;->V()I

    move-result v8

    new-instance v5, Lcom/google/googlenav/bm;

    new-instance v0, Lcom/google/googlenav/aY;

    sget-object v1, Lcom/google/googlenav/layer/s;->a:Lcom/google/googlenav/layer/s;

    iget-object v2, p0, Li/aE;->i:Lf/x;

    iget-object v3, p0, Li/aE;->f:Lf/v;

    iget-object v4, p0, Li/aE;->g:Lf/Y;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/aY;-><init>(Lcom/google/googlenav/layer/s;Lf/r;Lf/v;Lf/Y;)V

    invoke-direct {v5, p1, v0}, Lcom/google/googlenav/bm;-><init>(Lcom/google/googlenav/j;Lcom/google/googlenav/j;)V

    new-instance v0, Li/c;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    sget-object v6, Lcom/google/googlenav/layer/s;->a:Lcom/google/googlenav/layer/s;

    iget-object v7, p0, Li/aE;->i:Lf/x;

    invoke-direct/range {v0 .. v8}, Li/c;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/bm;Lcom/google/googlenav/layer/s;Lf/x;I)V

    invoke-virtual {p0, v0}, Li/aE;->f(Li/x;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Li/aE;->m()V

    goto :goto_1
.end method

.method public a(Lcom/google/googlenav/layer/s;Z)Li/n;
    .locals 7

    invoke-virtual {p1}, Lcom/google/googlenav/layer/s;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayerTransit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Li/aE;->b(Lcom/google/googlenav/layer/s;)Li/n;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Li/aE;->a(Lcom/google/googlenav/layer/s;ZLi/n;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/layer/s;->i()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Lf/x;

    invoke-direct {v0}, Lf/x;-><init>()V

    move-object v6, v0

    :goto_1
    new-instance v0, Li/n;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Li/n;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/x;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Li/aE;->i:Lf/x;

    move-object v6, v0

    goto :goto_1
.end method

.method public a(Lu/v;)Li/v;
    .locals 7

    invoke-virtual {p0}, Li/aE;->o()V

    new-instance v0, Li/v;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    iget-object v5, p0, Li/aE;->e:LH/f;

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Li/v;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;LH/f;Lcom/google/googlenav/j;)V

    invoke-virtual {p0, v0}, Li/aE;->f(Li/x;)V

    return-object v0
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Li/aE;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Li/aE;->t:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/g;

    invoke-interface {v0}, Lcom/google/googlenav/layer/g;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(FF)V
    .locals 0

    return-void
.end method

.method protected a(I)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {p1}, Li/aE;->b(I)I

    move-result v0

    invoke-direct {p0, p1}, Li/aE;->f(I)I

    move-result v1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    invoke-virtual {v0}, Li/x;->b()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {p0, v0, v3, v3}, Li/aE;->b(Li/x;ZZ)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Li/aE;->D:I

    iput-object p2, p0, Li/aE;->E:Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/google/googlenav/bL;Li/aY;)V
    .locals 6

    const/4 v5, 0x4

    invoke-virtual {p2}, Li/aY;->J()Lcom/google/googlenav/z;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/V;

    invoke-direct {v1}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/z;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->a(I)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/z;->K()Lf/A;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->a(Lf/A;)Lcom/google/googlenav/V;

    move-result-object v1

    iget-object v2, p0, Li/aE;->g:Lf/Y;

    invoke-virtual {v2}, Lf/Y;->h()Lf/C;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->a(Lf/C;)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/z;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->b(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/z;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/googlenav/z;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Li/aY;->K()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/googlenav/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    invoke-virtual {v1}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/googlenav/bL;->a(Lcom/google/googlenav/bs;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/z;->A()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Li/aY;->K()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    invoke-virtual {v1}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/googlenav/bL;->a(Lcom/google/googlenav/bs;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Li/aY;->D()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Li/aY;->L()Lcom/google/googlenav/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/c;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0}, Lcom/google/googlenav/z;->z()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/googlenav/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    invoke-virtual {p2}, Li/aY;->L()Lcom/google/googlenav/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/c;->ab()[Law/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->a([Law/e;)Lcom/google/googlenav/V;

    invoke-virtual {v0}, Lcom/google/googlenav/z;->P()Lf/C;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/V;->a(Lf/C;)Lcom/google/googlenav/V;

    invoke-virtual {v1}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/googlenav/bL;->a(Lcom/google/googlenav/bs;)V

    goto :goto_0

    :cond_3
    move-object v2, v3

    goto :goto_1
.end method

.method public a(Lcom/google/googlenav/c;)V
    .locals 2

    const-string v0, "locationMemory"

    invoke-static {v0}, Lu/r;->b(Ljava/lang/String;)Lu/r;

    move-result-object v0

    invoke-static {p1}, Lu/h;->b(Lcom/google/googlenav/c;)Lu/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/r;->a(Lu/h;)Z

    return-void
.end method

.method protected a(Lcom/google/googlenav/layer/s;ZLi/n;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x6

    if-eqz p2, :cond_0

    invoke-direct {p0, v5, v1}, Li/aE;->b(IZ)V

    :cond_0
    invoke-direct {p0}, Li/aE;->f()V

    invoke-virtual {p0, v5}, Li/aE;->a(I)V

    move v3, v1

    :goto_0
    iget-object v1, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    iget-object v1, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/x;

    invoke-virtual {v1}, Li/x;->b()I

    move-result v2

    if-ne v2, v5, :cond_2

    move-object v0, v1

    check-cast v0, Li/n;

    move-object v2, v0

    invoke-virtual {v2}, Li/n;->g()Lcom/google/googlenav/layer/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/layer/s;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/layer/s;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Li/aE;->h(Li/x;)V

    :cond_1
    invoke-virtual {p0, p3}, Li/aE;->f(Li/x;)V

    return-void

    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/ui/x;)V
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    invoke-virtual {v0, p1}, Li/x;->d(Lcom/google/googlenav/ui/x;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/x;->a(Lcom/google/googlenav/ui/x;)V

    move v1, v2

    :goto_1
    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    invoke-virtual {v0, p1}, Li/x;->b(Lcom/google/googlenav/ui/x;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Lcom/google/googlenav/z;I)V
    .locals 2

    invoke-virtual {p0, p1}, Li/aE;->a(Lcom/google/googlenav/j;)Li/aY;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Li/aY;->a(Lcom/google/googlenav/z;ZI)V

    return-void
.end method

.method public a(Lcom/google/googlenav/z;ILcom/google/googlenav/an;)V
    .locals 1

    invoke-virtual {p0, p1}, Li/aE;->a(Lcom/google/googlenav/j;)Li/aY;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Li/aY;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/an;I)V

    return-void
.end method

.method public a(Lcom/google/googlenav/z;Lcom/google/googlenav/u;Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/z;->j()Lcom/google/googlenav/an;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1}, Lcom/google/googlenav/z;->j()Lcom/google/googlenav/an;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Li/aE;->a(Lcom/google/googlenav/z;ILcom/google/googlenav/an;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/z;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, v2}, Li/aE;->a(Lcom/google/googlenav/z;I)V

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/googlenav/z;->W()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    invoke-virtual {p0, v0}, Li/aE;->a(Lcom/google/googlenav/c;)V

    :cond_2
    invoke-virtual {p2}, Lcom/google/googlenav/u;->d()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/googlenav/z;->c_()I

    move-result v0

    if-ne v0, v3, :cond_4

    invoke-virtual {p2}, Lcom/google/googlenav/u;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, v2}, Li/aE;->a(Lcom/google/googlenav/z;Z)Li/aw;

    invoke-virtual {p1, v2}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    invoke-virtual {p2, v0}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/c;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/google/googlenav/z;->c_()I

    move-result v0

    if-gtz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/googlenav/z;->r()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/google/googlenav/z;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_5
    invoke-virtual {p1}, Lcom/google/googlenav/z;->u()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lo/aF;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li/aE;->D()Li/C;

    move-result-object v0

    if-nez v0, :cond_6

    sget-boolean v1, Li/aE;->x:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0, p1}, Li/aE;->c(Lcom/google/googlenav/z;)Li/C;

    move-result-object v0

    :goto_2
    sget-boolean v1, Li/aE;->x:Z

    if-eqz v1, :cond_1

    if-nez p3, :cond_1

    invoke-virtual {p0, p1}, Li/aE;->d(Lcom/google/googlenav/z;)V

    invoke-virtual {v0, v3, p1}, Li/C;->a(ZLcom/google/googlenav/z;)V

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Li/aE;->a(Li/C;)V

    :cond_7
    invoke-virtual {p0, p1}, Li/aE;->d(Lcom/google/googlenav/z;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Lcom/google/googlenav/z;->r()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/googlenav/z;->A()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/google/googlenav/z;->F()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/google/googlenav/z;->I()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p1, v2}, Li/aE;->a(Lcom/google/googlenav/z;I)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0, p1, v3}, Li/aE;->b(Lcom/google/googlenav/z;Z)V

    goto/16 :goto_1
.end method

.method public a(Lh/eY;Li/aY;)V
    .locals 2

    invoke-virtual {p2}, Li/aY;->p()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "100"

    invoke-virtual {p1, v0}, Lh/eY;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Li/aY;->N()Lu/v;

    move-result-object v0

    invoke-virtual {v0}, Lu/v;->y()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lh/eY;->a(Lu/v;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lh/eY;->c(Lu/v;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->B()Lh/fQ;

    move-result-object v0

    invoke-virtual {v0}, Lh/fQ;->u()V

    invoke-virtual {v0}, Lh/fQ;->d()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public a(Li/C;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget v0, p0, Li/aE;->D:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    iput v2, p0, Li/aE;->D:I

    iput-object v3, p0, Li/aE;->E:Ljava/lang/Object;

    const/16 v0, 0xa

    invoke-virtual {p0, v0, v2, v3}, Li/aE;->a(IILjava/lang/Object;)Z

    return-void

    :sswitch_0
    const/16 v0, 0x141

    invoke-virtual {p1, v0, v2, v3}, Li/C;->a(IILjava/lang/Object;)Z

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v2, v3}, Li/C;->a(IILjava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x13c

    invoke-virtual {p1, v0, v2, v3}, Li/C;->a(IILjava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x14b

    iget-object v1, p0, Li/aE;->E:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v1}, Li/C;->a(IILjava/lang/Object;)Z

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x14a

    iget-object v1, p0, Li/aE;->E:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v1}, Li/C;->a(IILjava/lang/Object;)Z

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x834

    iget-object v1, p0, Li/aE;->E:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v1}, Li/C;->a(IILjava/lang/Object;)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x13c -> :sswitch_2
        0x141 -> :sswitch_0
        0x14a -> :sswitch_4
        0x14b -> :sswitch_3
        0x834 -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Li/aY;)V
    .locals 2

    invoke-virtual {p1}, Li/aY;->p()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Li/aY;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Li/aY;->J()Lcom/google/googlenav/z;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Li/aE;->b(Lcom/google/googlenav/z;Z)V

    :cond_0
    return-void
.end method

.method protected a(Li/x;I)V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Li/aE;->c(Li/x;I)V

    :goto_0
    invoke-virtual {p1}, Li/x;->aH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aE;->g:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->e()Lf/h;

    move-result-object v0

    iget-object v1, p0, Li/aE;->g:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->f()Lf/l;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Li/x;->a(Lf/h;Lf/l;)Lf/h;

    move-result-object v0

    iget-object v1, p0, Li/aE;->g:Lf/Y;

    invoke-virtual {v1, v0}, Lf/Y;->b(Lf/h;)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Li/aE;->b(Li/x;I)V

    goto :goto_0
.end method

.method public a(Li/x;Z)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Law/e;

    invoke-virtual {p0, p1, p2, v0}, Li/aE;->a(Li/x;ZLaw/e;)V

    return-void
.end method

.method public a(Li/x;ZLaw/e;)V
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    invoke-virtual {v0}, Li/x;->N_()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Li/aE;->a(Li/x;ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Li/x;->h()V

    invoke-virtual {p1}, Li/x;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Li/aE;->W()I

    move-result v0

    invoke-virtual {p1, v0}, Li/x;->g(I)V

    invoke-direct {p0, p1}, Li/aE;->d(Li/x;)V

    :cond_1
    invoke-virtual {p0}, Li/aE;->i()V

    :cond_2
    if-eqz p3, :cond_3

    invoke-direct {p0, p3}, Li/aE;->a(Law/e;)V

    :goto_0
    return-void

    :cond_3
    const-string v0, "s"

    invoke-direct {p0, p1, v0}, Li/aE;->a(Li/x;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 0

    iput-boolean p1, p0, Li/aE;->P:Z

    return-void
.end method

.method public a(ZZZ)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Li/aE;->g(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Li/aE;->s:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Li/aE;->s:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Li/aE;->j()V

    :cond_1
    iget-object v0, p0, Li/aE;->f:Lf/v;

    invoke-virtual {v0}, Lf/v;->a()Lf/J;

    move-result-object v0

    invoke-virtual {v0}, Lf/J;->k()V

    move v0, v2

    :goto_0
    sget-object v1, Li/aE;->v:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    sget-object v1, Li/aE;->w:[Z

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    check-cast p3, Lx/J;

    iput-object p3, p0, Li/aE;->F:Lx/J;

    iget-object v0, p0, Li/aE;->F:Lx/J;

    invoke-interface {v0, p2}, Lx/J;->c(I)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Li/aE;->F:Lx/J;

    if-eqz v0, :cond_1

    iget-object v0, p0, Li/aE;->F:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, Li/aE;->F:Lx/J;

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lax/b;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->x()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Li/aE;->r()Li/aN;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/aE;->r()Li/aN;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/aN;->b(Lax/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lax/b;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lax/b;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    iget-object v0, p0, Li/aE;->f:Lf/v;

    invoke-virtual {p1}, Lax/b;->k()I

    move-result v1

    invoke-virtual {p1}, Lax/b;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lf/v;->b(II)Lf/h;

    move-result-object v0

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v1

    iget-boolean v2, p0, Li/aE;->P:Z

    if-nez v2, :cond_2

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Li/x;->aK()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    move v1, v5

    :goto_1
    if-nez v1, :cond_3

    iget-object v1, p0, Li/aE;->Q:Lf/h;

    if-eqz v1, :cond_3

    iget-object v1, p0, Li/aE;->Q:Lf/h;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    invoke-virtual {v2}, Lf/v;->c()Lf/l;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lf/h;->a(Lf/h;Lf/l;)J

    move-result-wide v1

    sget v3, Li/aE;->M:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    :cond_3
    invoke-virtual {p0, v6}, Li/aE;->a(Z)V

    invoke-virtual {p0, v0}, Li/aE;->b(Lf/h;)V

    move v0, v5

    :goto_2
    invoke-virtual {p0, v0}, Li/aE;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v5

    goto :goto_0

    :cond_4
    move v1, v6

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0}, Li/aE;->c(Lf/h;)V

    move v0, v6

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Li/x;->b(Lax/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v5

    goto :goto_0

    :cond_7
    move v0, v6

    goto :goto_0
.end method

.method public a(Lax/c;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/x;->u_()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {p1}, Lax/c;->e()C

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Li/aE;->q:Lh/eY;

    invoke-virtual {v0, p0, v3}, Lh/eY;->a(Li/aE;Z)V

    move v0, v3

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Lax/c;->e()C

    move-result v1

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->q()Li/av;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Li/av;->e(ILjava/lang/Object;)V

    move v0, v3

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Li/x;->c(Lax/c;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    :goto_1
    invoke-virtual {p1}, Lax/c;->c()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Li/aE;->z()Li/w;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->D()V

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_1
.end method

.method public a(Lax/e;)Z
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/googlenav/ui/w;->R:Lax/e;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/aE;->F()V

    iget-object v0, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->m(Z)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Li/x;->a(Lax/e;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public a(Lf/h;Lf/h;IIIIILk/m;)Z
    .locals 8

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Li/aE;->g:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->f()Lf/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/h;->a(Lf/l;)I

    move-result v1

    invoke-virtual {p2, v0}, Lf/h;->a(Lf/l;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0}, Lf/h;->b(Lf/l;)I

    move-result v2

    invoke-virtual {p2, v0}, Lf/h;->b(Lf/l;)I

    move-result v0

    sub-int v0, v2, v0

    packed-switch p3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Feature.ANCHOR_* type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    div-int/lit8 v2, p4, 0x2

    neg-int v2, v2

    neg-int v3, p5

    move v7, v3

    move v3, v2

    move v2, v7

    :goto_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v4

    invoke-virtual {v4}, Lac/m;->r()I

    move-result v4

    if-ge p4, v4, :cond_3

    sub-int v5, v4, p4

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    move v5, v4

    :goto_2
    if-ge p5, v4, :cond_2

    sub-int v6, v4, p5

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v2, v6

    :goto_3
    add-int/2addr v5, v3

    add-int/2addr v4, v2

    if-lt v1, v3, :cond_1

    if-gt v1, v5, :cond_1

    if-lt v0, v2, :cond_1

    if-gt v0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    div-int/lit8 v2, p4, 0x2

    neg-int v2, v2

    div-int/lit8 v3, p5, 0x2

    neg-int v3, v3

    move v7, v3

    move v3, v2

    move v2, v7

    goto :goto_1

    :pswitch_2
    neg-int v2, p4

    neg-int v3, p5

    move v7, v3

    move v3, v2

    move v2, v7

    goto :goto_1

    :pswitch_3
    neg-int v2, p6

    neg-int v3, p7

    move v7, v3

    move v3, v2

    move v2, v7

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v4, p5

    goto :goto_3

    :cond_3
    move v5, p4

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected a(Li/x;ZZ)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Li/x;->bh()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Li/x;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Li/aE;->r:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sget v1, Li/aE;->b:I

    if-lt v0, v1, :cond_1

    move v1, v3

    :goto_1
    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    invoke-virtual {v0}, Li/x;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0, v3, v4}, Li/aE;->b(Li/x;ZZ)V

    :cond_1
    if-eqz p2, :cond_6

    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :goto_2
    invoke-virtual {p1}, Li/x;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_7

    iget-object v0, p0, Li/aE;->r:Ljava/util/Vector;

    invoke-virtual {v0, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :cond_2
    :goto_3
    invoke-virtual {p1}, Li/x;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Li/aE;->k(Li/x;)V

    :cond_3
    iget-object v0, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/X;->a(Lcom/google/googlenav/ui/bA;)V

    if-eqz p3, :cond_4

    invoke-virtual {p1, v4}, Li/x;->h(I)V

    invoke-virtual {p1}, Li/x;->aU()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Li/x;->h(I)V

    :cond_4
    move v0, v4

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Li/aE;->r:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public aa()V
    .locals 2

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/x;->aK()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Li/x;->aM()V

    invoke-virtual {v0}, Li/x;->aN()Z

    :cond_0
    return-void
.end method

.method public ap()LA/c;
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v3, v5

    :goto_0
    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    invoke-virtual {v0}, Li/x;->ap()LA/c;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    new-instance v0, LA/c;

    const-string v3, "visible layers"

    invoke-direct {v0, v3, v5, v2}, LA/c;-><init>(Ljava/lang/String;ILjava/util/Vector;)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-object v3, p0, Li/aE;->s:Ljava/util/Vector;

    monitor-enter v3

    move v4, v5

    :goto_1
    :try_start_0
    iget-object v0, p0, Li/aE;->s:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    iget-object v0, p0, Li/aE;->s:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    invoke-virtual {v0}, Li/x;->ap()LA/c;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, LA/c;

    const-string v3, "recent layers"

    invoke-direct {v0, v3, v5, v2}, LA/c;-><init>(Ljava/lang/String;ILjava/util/Vector;)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, LA/c;

    const-string v2, "LayerManager"

    invoke-direct {v0, v2, v5, v1}, LA/c;-><init>(Ljava/lang/String;ILjava/util/Vector;)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Z)Li/av;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Li/aE;->a(I)V

    new-instance v0, Li/av;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    invoke-direct {v0, v1, v2, v3, v4}, Li/av;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;)V

    sget-object v1, Lcom/google/googlenav/G;->a:Lcom/google/googlenav/G;

    invoke-static {v1}, Lcom/google/googlenav/aw;->c(Lcom/google/googlenav/G;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v5, v5}, Li/aE;->a(Li/x;ZZ)Z

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v0, v1}, Li/aE;->a(Li/x;Z)V

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1
.end method

.method public b(Lcom/google/googlenav/z;)Li/aw;
    .locals 9

    new-instance v5, Lcom/google/googlenav/bm;

    new-instance v0, Lcom/google/googlenav/aY;

    invoke-virtual {p1}, Lcom/google/googlenav/z;->V()Lcom/google/googlenav/layer/s;

    move-result-object v1

    iget-object v2, p0, Li/aE;->i:Lf/x;

    iget-object v3, p0, Li/aE;->f:Lf/v;

    iget-object v4, p0, Li/aE;->g:Lf/Y;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/aY;-><init>(Lcom/google/googlenav/layer/s;Lf/r;Lf/v;Lf/Y;)V

    invoke-direct {v5, p1, v0}, Lcom/google/googlenav/bm;-><init>(Lcom/google/googlenav/j;Lcom/google/googlenav/j;)V

    invoke-static {}, Li/aE;->V()I

    move-result v8

    new-instance v0, Li/aw;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    invoke-virtual {p1}, Lcom/google/googlenav/z;->V()Lcom/google/googlenav/layer/s;

    move-result-object v6

    iget-object v7, p0, Li/aE;->i:Lf/x;

    invoke-direct/range {v0 .. v8}, Li/aw;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/bm;Lcom/google/googlenav/layer/s;Lf/x;I)V

    return-object v0
.end method

.method protected b(Lcom/google/googlenav/layer/s;)Li/n;
    .locals 7

    new-instance v0, Li/n;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    iget-object v6, p0, Li/aE;->i:Lf/x;

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Li/n;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/x;)V

    return-object v0
.end method

.method public b(Lcom/google/googlenav/layer/s;Z)Li/n;
    .locals 7

    new-instance v0, Li/F;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    iget-object v6, p0, Li/aE;->i:Lf/x;

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Li/F;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/x;)V

    invoke-virtual {p0, p1, p2, v0}, Li/aE;->a(Lcom/google/googlenav/layer/s;ZLi/n;)V

    return-object v0
.end method

.method public b(Lu/v;)Li/w;
    .locals 6

    invoke-virtual {p0}, Li/aE;->p()V

    new-instance v0, Li/w;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Li/w;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lu/v;)V

    invoke-virtual {p0, v0}, Li/aE;->f(Li/x;)V

    return-object v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Lcom/google/googlenav/bL;Li/aY;)V
    .locals 2

    invoke-virtual {p2}, Li/aY;->p()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Li/aE;->a(Lcom/google/googlenav/bL;Li/aY;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Li/aE;->q:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->k()Lh/dH;

    move-result-object v0

    invoke-virtual {p2}, Li/aY;->N()Lu/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/dH;->c(Lu/v;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Lcom/google/googlenav/ui/x;)V
    .locals 2

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Li/x;->c(Lcom/google/googlenav/ui/x;)V

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Li/x;->aJ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Li/aE;->A()Li/av;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Li/aE;->G:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Li/aE;->G:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Li/av;->a(Lcom/google/googlenav/ui/x;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/google/googlenav/z;Z)V
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/z;->Y()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/googlenav/z;->l()Lcom/google/googlenav/a;

    move-result-object p0

    check-cast p0, Li/aw;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Li/aw;->aY()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Li/aw;->ae()V

    invoke-virtual {p0}, Li/aw;->aF()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Li/aw;->b(Lcom/google/googlenav/z;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "20"

    invoke-virtual {p1}, Lcom/google/googlenav/z;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/google/googlenav/z;->C()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/google/googlenav/z;->l()Lcom/google/googlenav/a;

    move-result-object v1

    instance-of v1, v1, Li/aw;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/google/googlenav/z;->l()Lcom/google/googlenav/a;

    move-result-object v1

    check-cast v1, Li/aw;

    invoke-virtual {v1}, Li/aw;->aY()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Li/aw;->aF()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/google/googlenav/bm;

    new-instance v3, Lcom/google/googlenav/aY;

    invoke-virtual {p1}, Lcom/google/googlenav/z;->V()Lcom/google/googlenav/layer/s;

    move-result-object v4

    iget-object v5, p0, Li/aE;->i:Lf/x;

    iget-object v6, p0, Li/aE;->f:Lf/v;

    iget-object v7, p0, Li/aE;->g:Lf/Y;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/googlenav/aY;-><init>(Lcom/google/googlenav/layer/s;Lf/r;Lf/v;Lf/Y;)V

    invoke-direct {v2, p1, v3}, Lcom/google/googlenav/bm;-><init>(Lcom/google/googlenav/j;Lcom/google/googlenav/j;)V

    invoke-virtual {v1, v2}, Li/aw;->b(Lcom/google/googlenav/j;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Li/aw;->aG()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/google/googlenav/z;->Q()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    invoke-virtual {v1}, Li/aw;->d()V

    new-instance v2, Lcom/google/googlenav/bm;

    new-instance v3, Lcom/google/googlenav/aY;

    invoke-virtual {p1}, Lcom/google/googlenav/z;->V()Lcom/google/googlenav/layer/s;

    move-result-object v4

    iget-object v5, p0, Li/aE;->i:Lf/x;

    iget-object v6, p0, Li/aE;->f:Lf/v;

    iget-object v7, p0, Li/aE;->g:Lf/Y;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/googlenav/aY;-><init>(Lcom/google/googlenav/layer/s;Lf/r;Lf/v;Lf/Y;)V

    invoke-direct {v2, p1, v3}, Lcom/google/googlenav/bm;-><init>(Lcom/google/googlenav/j;Lcom/google/googlenav/j;)V

    invoke-virtual {v1, v2}, Li/aw;->b(Lcom/google/googlenav/j;)V

    goto :goto_0

    :cond_3
    move v3, v5

    :goto_1
    iget-object v1, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v3, v1, :cond_5

    iget-object v1, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/x;

    invoke-virtual {v1}, Li/x;->b()I

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p1}, Lcom/google/googlenav/z;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Li/x;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object v0, v1

    check-cast v0, Li/aw;

    move-object v2, v0

    invoke-virtual {v2}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/z;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_4
    invoke-virtual {p0, v1}, Li/aE;->h(Li/x;)V

    :cond_5
    move v3, v5

    :goto_2
    iget-object v1, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v3, v1, :cond_6

    iget-object v1, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/x;

    invoke-virtual {v1}, Li/x;->b()I

    move-result v2

    if-nez v2, :cond_c

    move-object v0, v1

    check-cast v0, Li/aw;

    move-object v2, v0

    invoke-virtual {v2}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/z;->X()Z

    move-result v2

    if-eqz v2, :cond_c

    check-cast v1, Li/aw;

    invoke-virtual {v1, v5}, Li/aw;->m(I)V

    :cond_6
    invoke-virtual {p1}, Lcom/google/googlenav/z;->W()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Li/aE;->ag()V

    :cond_7
    iget-boolean v1, p0, Li/aE;->u:Z

    if-nez v1, :cond_d

    move v1, v6

    :goto_3
    invoke-virtual {p0, p1, v1}, Li/aE;->a(Lcom/google/googlenav/z;Z)Li/aw;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Li/aw;->b(Lcom/google/googlenav/z;Z)V

    iget-boolean v2, p0, Li/aE;->u:Z

    if-nez v2, :cond_8

    invoke-virtual {p1}, Lcom/google/googlenav/z;->X()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    invoke-virtual {v1, v6}, Li/aw;->h(Z)V

    :cond_9
    invoke-virtual {p0, v5}, Li/aE;->e(Z)V

    invoke-virtual {p1}, Lcom/google/googlenav/z;->W()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Lcom/google/googlenav/z;->H()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_a
    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->n()V

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_d
    move v1, v5

    goto :goto_3
.end method

.method protected b(Lf/h;)V
    .locals 4

    iget-object v0, p0, Li/aE;->O:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iput-object p1, p0, Li/aE;->Q:Lf/h;

    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    iget-object v2, p0, Li/aE;->O:Ljava/util/Vector;

    sget v3, Li/aE;->M:I

    invoke-virtual {v0, v2, p1, v3}, Li/x;->a(Ljava/util/Vector;Lf/h;I)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Li/aE;->j:Lcom/google/googlenav/ui/bu;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->n()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Li/aE;->g:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->f()Lf/l;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lf/h;->a(Lf/h;Lf/l;)J

    move-result-wide v0

    sget v2, Li/aE;->M:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Li/aE;->O:Ljava/util/Vector;

    invoke-static {v0, v1}, Li/aR;->a(J)Li/aR;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public b(Li/x;)V
    .locals 2

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Li/x;->N_()V

    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    iget-object v0, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/X;->b(Lcom/google/googlenav/ui/bA;)V

    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/X;->a(Lcom/google/googlenav/ui/bA;)V

    invoke-virtual {p1}, Li/x;->h()V

    invoke-virtual {p0}, Li/aE;->i()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Li/x;->aY()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Li/x;->h()V

    goto :goto_0
.end method

.method protected b(Li/x;ZZ)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v2}, Li/x;->h(Z)V

    invoke-virtual {p1}, Li/x;->N_()V

    invoke-virtual {p1}, Li/x;->y()V

    iget-object v1, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    iget-object v1, p0, Li/aE;->r:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Li/aE;->e(Li/x;)V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    invoke-virtual {v0}, Li/x;->h()V

    :cond_0
    invoke-virtual {p1}, Li/x;->b()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Li/aE;->f(Z)V

    :cond_1
    invoke-direct {p0, p1}, Li/aE;->a(Li/x;)V

    invoke-virtual {p1}, Li/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Li/aE;->s:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Li/x;->bd()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Li/aE;->d(Li/x;)V

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Li/x;->h(I)V

    :cond_3
    return-void

    :cond_4
    invoke-direct {p0, p1}, Li/aE;->j(Li/x;)V

    goto :goto_0
.end method

.method public b(Lax/c;)Z
    .locals 1

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Li/x;->d(Lax/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "PROTO_SAVED_LAYER_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aE()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/google/googlenav/z;)Li/C;
    .locals 13

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Li/aE;->a(I)V

    new-instance v0, Li/C;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->p:LaU/a;

    iget-object v5, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    iget-object v6, p0, Li/aE;->a:Lo/bg;

    iget-object v7, p0, Li/aE;->m:Lo/by;

    iget-object v8, p0, Li/aE;->n:Lo/g;

    iget-object v9, p0, Li/aE;->j:Lcom/google/googlenav/ui/bu;

    iget-object v11, p0, Li/aE;->J:Li/br;

    iget-object v12, p0, Li/aE;->K:Lc/k;

    move-object v10, p1

    invoke-direct/range {v0 .. v12}, Li/C;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;LaU/a;Lcom/google/googlenav/ui/X;Lo/bg;Lo/by;Lo/g;Lcom/google/googlenav/ui/bu;Lcom/google/googlenav/j;Li/br;Lc/k;)V

    invoke-virtual {p0, v0}, Li/aE;->f(Li/x;)V

    invoke-virtual {p0, v0}, Li/aE;->a(Li/C;)V

    iget-object v1, p0, Li/aE;->o:Lo/Y;

    if-eqz v1, :cond_0

    iget-object v1, p0, Li/aE;->o:Lo/Y;

    invoke-virtual {v1, v0}, Lo/Y;->a(Lo/bP;)V

    :cond_0
    return-object v0
.end method

.method public c(Lu/v;)Li/v;
    .locals 3

    invoke-virtual {p0}, Li/aE;->y()Li/v;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/v;->aF()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0, p1}, Li/aE;->a(Lu/v;)Li/v;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    iget-object v1, p0, Li/aE;->r:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Li/aE;->e(Li/x;)V

    invoke-virtual {v0, p1}, Li/v;->c(Lcom/google/googlenav/j;)V

    invoke-virtual {v0}, Li/v;->M()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Li/aE;->a(Li/x;ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Li/v;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Li/aE;->W()I

    move-result v1

    invoke-virtual {v0, v1}, Li/v;->g(I)V

    invoke-direct {p0, v0}, Li/aE;->d(Li/x;)V

    :cond_3
    invoke-virtual {p0}, Li/aE;->i()V

    goto :goto_0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    move v2, v4

    :goto_0
    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    invoke-virtual {v0}, Li/x;->b()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v0}, Li/x;->bc()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v4, v3}, Li/aE;->b(Li/x;ZZ)V

    invoke-direct {p0, v0}, Li/aE;->k(Li/x;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Li/aE;->i()V

    return-void
.end method

.method protected c(Lf/h;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Li/aE;->O:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Li/aE;->O:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/aR;

    invoke-virtual {v0}, Li/aR;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Li/aE;->j:Lcom/google/googlenav/ui/bu;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bu;->n()Lf/h;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    invoke-virtual {v3}, Lf/Y;->f()Lf/l;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lf/h;->a(Lf/h;Lf/l;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Li/aR;->b(J)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3}, Li/aR;->b(J)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Li/aR;->a()Li/x;

    move-result-object v2

    invoke-virtual {v0}, Li/aR;->b()Lcom/google/googlenav/bf;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Li/x;->a(Lcom/google/googlenav/bf;Lf/h;)J

    move-result-wide v3

    invoke-virtual {v2}, Li/x;->aY()Z

    move-result v5

    if-nez v5, :cond_2

    sget v5, Li/aE;->l:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    :cond_2
    invoke-virtual {v2}, Li/x;->b()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    sget v5, Li/aE;->l:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    :cond_3
    invoke-virtual {v2}, Li/x;->b()I

    move-result v2

    const/16 v5, 0x10

    if-ne v2, v5, :cond_5

    sget v2, Li/aE;->l:I

    mul-int/lit8 v2, v2, 0x2

    int-to-long v5, v2

    add-long v2, v3, v5

    :goto_2
    invoke-virtual {v0, v2, v3}, Li/aR;->b(J)V

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    move-wide v2, v3

    goto :goto_2
.end method

.method public c(Li/x;)V
    .locals 1

    iget-object v0, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    invoke-interface {v0}, Lcom/google/googlenav/ui/X;->e()V

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Li/aE;->d(Ljava/lang/String;)Li/x;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Z)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Li/aE;->R:I

    invoke-virtual {p0}, Li/aE;->G()I

    move-result v1

    iput v1, p0, Li/aE;->R:I

    iget v1, p0, Li/aE;->R:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    if-nez p1, :cond_0

    iget v1, p0, Li/aE;->R:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Li/aE;->O:Ljava/util/Vector;

    iget v1, p0, Li/aE;->R:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/aR;

    invoke-virtual {v0, v4}, Li/aR;->a(Z)V

    invoke-virtual {v0}, Li/aR;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Li/aE;->n()Li/M;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v3

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Li/M;->v_()Lcom/google/googlenav/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/j;->c()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Li/aE;->a(Li/x;I)V

    :cond_2
    :goto_1
    move v0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Li/aR;->a()Li/x;

    move-result-object v1

    invoke-virtual {v0}, Li/aR;->c()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Li/aE;->a(Li/x;I)V

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Li/x;
    .locals 5

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget-object v1, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    iget-object v1, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/x;

    invoke-virtual {v1}, Li/x;->b()I

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_0

    move-object v0, v1

    check-cast v0, Li/n;

    move-object v2, v0

    invoke-virtual {v2}, Li/n;->g()Lcom/google/googlenav/layer/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/layer/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public d()V
    .locals 3

    const/16 v0, 0xa

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Li/aE;->a(IILjava/lang/Object;)Z

    return-void
.end method

.method public d(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Li/aE;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public d(Lcom/google/googlenav/z;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Li/aE;->J:Li/br;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, v2, v2}, Li/br;->a(ILcom/google/googlenav/j;LaU/a;Li/aD;)V

    return-void
.end method

.method public d(Lu/v;)V
    .locals 2

    invoke-virtual {p0, p1}, Li/aE;->a(Lcom/google/googlenav/j;)Li/aY;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Li/aY;->a(Lu/v;I)V

    return-void
.end method

.method public d(Z)V
    .locals 2

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Li/x;->aK()Z

    move-result v1

    iput-boolean v1, p0, Li/aE;->S:Z

    iget-boolean v1, p0, Li/aE;->S:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Li/x;->aM()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Li/aE;->S:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Li/x;->aN()Z

    goto :goto_0
.end method

.method public e()V
    .locals 5

    iget-object v0, p0, Li/aE;->j:Lcom/google/googlenav/ui/bu;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->n()Lf/h;

    move-result-object v1

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    invoke-virtual {v0}, Li/x;->b()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Li/aE;->I()Li/x;

    move-result-object v0

    check-cast v0, Li/M;

    invoke-virtual {v0}, Li/M;->bo()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Li/M;->u_()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Li/aE;->h(Li/x;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Li/M;->bp()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Li/aE;->g:Lf/Y;

    invoke-virtual {v0}, Li/M;->p()Lf/h;

    move-result-object v3

    sget v4, Li/aE;->T:I

    invoke-virtual {v2, v1, v3, v4}, Lf/Y;->a(Lf/h;Lf/h;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Li/aE;->h(Li/x;)V

    goto :goto_0
.end method

.method public e(I)V
    .locals 0

    return-void
.end method

.method protected e(Li/x;)V
    .locals 1

    iget-object v0, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/X;->b(Lcom/google/googlenav/ui/bA;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Li/aE;->G:Ljava/lang/String;

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Li/aE;->u:Z

    return-void
.end method

.method public f(Li/x;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    check-cast v0, Law/e;

    invoke-virtual {p0, p1, v1, v0}, Li/aE;->a(Li/x;ZLaw/e;)V

    return-void
.end method

.method public f(Z)V
    .locals 0

    sput-boolean p1, Li/aE;->x:Z

    return-void
.end method

.method public g(Li/x;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Li/x;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Li/aE;->a(I)V

    invoke-virtual {p1}, Li/x;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0, v4}, Li/aE;->e(Z)V

    check-cast p1, Li/aw;

    invoke-virtual {p1}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/z;

    new-instance v2, Lcom/google/googlenav/V;

    invoke-direct {v2}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/z;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/z;->u()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/V;->a(I)Lcom/google/googlenav/V;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/z;->Q()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    move-result-object v2

    const-string v3, "13"

    invoke-virtual {v2, v3}, Lcom/google/googlenav/V;->b(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/z;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/V;->c(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v2

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    invoke-virtual {v3}, Lf/Y;->h()Lf/C;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/V;->a(Lf/C;)Lcom/google/googlenav/V;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/googlenav/V;->g(Z)Lcom/google/googlenav/V;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v2

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/z;-><init>(Lcom/google/googlenav/bs;Lf/Y;)V

    invoke-virtual {v0}, Lcom/google/googlenav/z;->I()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/z;->a(Z)V

    invoke-virtual {v0}, Lcom/google/googlenav/z;->aC()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/z;->c(Z)V

    invoke-virtual {v0}, Lcom/google/googlenav/z;->al()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v2

    invoke-virtual {v2}, Lh/l;->a()V

    :cond_0
    iget-object v2, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/z;->al()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    :goto_1
    invoke-virtual {v2, v1, v0, v4}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/z;IZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0, p1}, Li/aE;->f(Li/x;)V

    invoke-virtual {p1, v4}, Li/x;->h(Z)V

    goto :goto_0

    :sswitch_2
    check-cast p1, Li/n;

    invoke-virtual {p1}, Li/n;->g()Lcom/google/googlenav/layer/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msid:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0, v5}, Li/aE;->b(Lcom/google/googlenav/layer/s;Z)Li/n;

    move-result-object v0

    :goto_2
    invoke-virtual {v0, v4}, Li/n;->h(Z)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0, v0, v5}, Li/aE;->a(Lcom/google/googlenav/layer/s;Z)Li/n;

    move-result-object v0

    goto :goto_2

    :sswitch_3
    iget-object v0, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/aT;->f(Z)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x15 -> :sswitch_1
    .end sparse-switch
.end method

.method public g()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    invoke-virtual {v0}, Li/x;->n()Z

    move-result v0

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/aE;->a(Z)V

    :cond_1
    return v2
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public h(Li/x;)V
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, v0, v0}, Li/aE;->b(Li/x;ZZ)V

    invoke-virtual {p0}, Li/aE;->i()V

    const-string v0, "h"

    invoke-direct {p0, p1, v0}, Li/aE;->a(Li/x;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected i()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/aE;->B:Z

    iget-object v0, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    invoke-interface {v0}, Lcom/google/googlenav/ui/X;->e()V

    iget-object v0, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {p0}, Li/aE;->O()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->e(Z)V

    iget-object v0, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->U()V

    return-void
.end method

.method protected j()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/aE;->b(Z)Li/av;

    invoke-virtual {p0}, Li/aE;->w()V

    invoke-virtual {p0}, Li/aE;->x()Li/bm;

    sget-object v0, Lr/a;->a:Lr/a;

    invoke-virtual {v0}, Lr/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/aE;->q()Li/aN;

    :cond_0
    return-void
.end method

.method public k()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Li/aE;->j()V

    iget-object v0, p0, Li/aE;->f:Lf/v;

    invoke-virtual {v0}, Lf/v;->a()Lf/J;

    move-result-object v0

    invoke-virtual {v0}, Lf/J;->k()V

    move v0, v2

    :goto_0
    sget-object v1, Li/aE;->v:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Li/aE;->w:[Z

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Li/aE;->k:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    invoke-virtual {v0}, Li/x;->ab()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x12

    invoke-direct {p0, v0, v1}, Li/aE;->b(IZ)V

    const/16 v0, 0xf

    invoke-direct {p0, v0, v1}, Li/aE;->b(IZ)V

    return-void
.end method

.method protected n()Li/M;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Li/aE;->j:Lcom/google/googlenav/ui/bu;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->n()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Li/aE;->j:Lcom/google/googlenav/ui/bu;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bu;->l()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v3, v1, v2}, Li/aE;->a(Lf/h;Ljava/lang/String;Z[Ljava/lang/String;)Li/M;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v3

    goto :goto_0
.end method

.method public o()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Li/aE;->b(IZ)V

    invoke-direct {p0, v1, v0}, Li/aE;->b(IZ)V

    invoke-direct {p0}, Li/aE;->f()V

    invoke-virtual {p0, v1}, Li/aE;->a(I)V

    return-void
.end method

.method public p()V
    .locals 3

    const/16 v2, 0x15

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Li/aE;->b(IZ)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Li/aE;->b(IZ)V

    invoke-direct {p0, v2, v1}, Li/aE;->b(IZ)V

    invoke-direct {p0}, Li/aE;->f()V

    invoke-virtual {p0, v2}, Li/aE;->a(I)V

    return-void
.end method

.method public q()Li/aN;
    .locals 5

    const/4 v1, 0x0

    const/16 v0, 0x13

    invoke-direct {p0, v0, v1}, Li/aE;->b(IZ)V

    const/16 v0, 0xd

    invoke-direct {p0, v0, v1}, Li/aE;->b(IZ)V

    new-instance v0, Li/aN;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    invoke-direct {v0, v1, v2, v3, v4}, Li/aN;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;)V

    invoke-virtual {p0, v0}, Li/aE;->f(Li/x;)V

    return-object v0
.end method

.method public r()Li/aN;
    .locals 1

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Li/aE;->g(I)Li/x;

    move-result-object p0

    check-cast p0, Li/aN;

    return-object p0
.end method

.method public s()V
    .locals 2

    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Li/aE;->b(IZ)V

    return-void
.end method

.method public t()V
    .locals 2

    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Li/aE;->b(IZ)V

    return-void
.end method

.method public u()Li/ay;
    .locals 2

    invoke-static {}, Lcom/google/googlenav/layer/h;->a()Lcom/google/googlenav/layer/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/h;->c()Lcom/google/googlenav/layer/s;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/googlenav/layer/s;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/googlenav/layer/s;-><init>(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Li/aE;->a(I)V

    invoke-virtual {p0, v0}, Li/aE;->a(Lcom/google/googlenav/layer/s;)Li/ay;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Li/aE;->a(Li/x;Z)V

    return-object v0
.end method

.method public v()V
    .locals 1

    invoke-virtual {p0}, Li/aE;->B()Li/ay;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/aE;->h(Li/x;)V

    return-void
.end method

.method public w()V
    .locals 9

    const/4 v1, 0x0

    const/16 v0, 0xb

    invoke-direct {p0, v0, v1}, Li/aE;->b(IZ)V

    invoke-static {}, Lcom/google/googlenav/layer/h;->a()Lcom/google/googlenav/layer/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/h;->d()Ljava/util/Vector;

    move-result-object v7

    move v8, v1

    :goto_0
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    new-instance v0, Li/ae;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/googlenav/layer/s;

    iget-object v6, p0, Li/aE;->i:Lf/x;

    invoke-direct/range {v0 .. v6}, Li/ae;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/x;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Li/aE;->a(Li/x;Z)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public x()Li/bm;
    .locals 5

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Li/aE;->a(I)V

    new-instance v0, Li/bm;

    iget-object v1, p0, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aE;->h:Lcom/google/googlenav/ui/X;

    invoke-direct {v0, v1, v2, v3, v4}, Li/bm;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;)V

    invoke-virtual {p0, v0}, Li/aE;->f(Li/x;)V

    return-object v0
.end method

.method public y()Li/v;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Li/aE;->g(I)Li/x;

    move-result-object p0

    check-cast p0, Li/v;

    return-object p0
.end method

.method public z()Li/w;
    .locals 1

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Li/aE;->g(I)Li/x;

    move-result-object p0

    check-cast p0, Li/w;

    return-object p0
.end method
