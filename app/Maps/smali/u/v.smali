.class public abstract Lu/v;
.super Lak/m;

# interfaces
.implements Lcom/google/googlenav/j;
.implements Lu/n;


# static fields
.field private static final l:Ljava/lang/Object;

.field private static m:I

.field private static final p:LA/p;

.field private static final q:LA/p;


# instance fields
.field private A:Lu/h;

.field private B:Law/e;

.field private C:I

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Z

.field private G:Z

.field private H:I

.field private I:Z

.field private J:I

.field private K:I

.field private L:B

.field private M:I

.field private N:I

.field private O:[Law/e;

.field private P:Z

.field private Q:Z

.field private R:I

.field private S:Z

.field private T:Ljava/lang/String;

.field private U:Lu/t;

.field protected a:Ljava/lang/String;

.field protected b:I

.field protected c:I

.field d:Lcom/google/googlenav/ui/bB;

.field protected e:Law/e;

.field protected f:I

.field protected g:[Lu/k;

.field h:[Lu/b;

.field i:[Law/e;

.field protected j:I

.field protected k:[I

.field private final n:I

.field private o:I

.field private r:Z

.field private s:Lu/s;

.field private t:Lu/h;

.field private u:Z

.field private v:[Lu/h;

.field private w:Lu/h;

.field private x:Z

.field private y:[Lu/h;

.field private z:Lu/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x16

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lu/v;->l:Ljava/lang/Object;

    const/4 v0, 0x1

    sput v0, Lu/v;->m:I

    new-instance v0, LA/p;

    const-string v1, "directions"

    const-string v2, "r"

    invoke-direct {v0, v1, v2, v3}, LA/p;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lu/v;->p:LA/p;

    new-instance v0, LA/p;

    const-string v1, "directions time update"

    const-string v2, "T"

    invoke-direct {v0, v1, v2, v3}, LA/p;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lu/v;->q:LA/p;

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/bB;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lak/m;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lu/v;->a:Ljava/lang/String;

    iput v3, p0, Lu/v;->b:I

    iput v1, p0, Lu/v;->c:I

    iput v3, p0, Lu/v;->o:I

    iput-boolean v1, p0, Lu/v;->r:Z

    invoke-static {}, Lu/s;->a()Lu/s;

    move-result-object v0

    iput-object v0, p0, Lu/v;->s:Lu/s;

    iput-object v2, p0, Lu/v;->B:Law/e;

    iput-object v2, p0, Lu/v;->e:Law/e;

    iput v1, p0, Lu/v;->C:I

    iput-object v2, p0, Lu/v;->E:Ljava/lang/String;

    iput-boolean v1, p0, Lu/v;->F:Z

    new-array v0, v1, [Lu/b;

    iput-object v0, p0, Lu/v;->h:[Lu/b;

    new-array v0, v1, [Law/e;

    iput-object v0, p0, Lu/v;->i:[Law/e;

    iput-boolean v4, p0, Lu/v;->G:Z

    iput v1, p0, Lu/v;->H:I

    iput-boolean v1, p0, Lu/v;->I:Z

    iput v1, p0, Lu/v;->J:I

    iput v1, p0, Lu/v;->N:I

    new-array v0, v1, [I

    iput-object v0, p0, Lu/v;->k:[I

    new-array v0, v1, [Law/e;

    iput-object v0, p0, Lu/v;->O:[Law/e;

    const/16 v0, 0xf

    iput v0, p0, Lu/v;->R:I

    iput-boolean v4, p0, Lu/v;->S:Z

    iput-object v2, p0, Lu/v;->T:Ljava/lang/String;

    iput-object p1, p0, Lu/v;->d:Lcom/google/googlenav/ui/bB;

    invoke-static {}, Lu/v;->aO()I

    move-result v0

    iput v0, p0, Lu/v;->n:I

    sget-object v0, Lu/v;->p:LA/p;

    invoke-virtual {v0}, LA/p;->a()V

    sget-object v0, Lu/v;->q:LA/p;

    invoke-virtual {v0}, LA/p;->a()V

    return-void
.end method

.method protected constructor <init>(Lu/h;Lu/h;Law/e;Lcom/google/googlenav/ui/bB;)V
    .locals 1

    invoke-direct {p0, p4}, Lu/v;-><init>(Lcom/google/googlenav/ui/bB;)V

    iput-object p1, p0, Lu/v;->t:Lu/h;

    iput-object p2, p0, Lu/v;->w:Lu/h;

    iput-object p3, p0, Lu/v;->B:Law/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lu/v;->g:[Lu/k;

    const/4 v0, -0x1

    iput v0, p0, Lu/v;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu/v;->Q:Z

    sget-object v0, Lu/v;->p:LA/p;

    invoke-virtual {v0}, LA/p;->a()V

    sget-object v0, Lu/v;->q:LA/p;

    invoke-virtual {v0}, LA/p;->a()V

    return-void
.end method

.method protected constructor <init>(Lu/n;Lcom/google/googlenav/ui/bB;)V
    .locals 3

    invoke-interface {p1}, Lu/n;->j_()Lu/h;

    move-result-object v0

    invoke-interface {p1}, Lu/n;->k_()Lu/h;

    move-result-object v1

    invoke-interface {p1}, Lu/n;->l_()Law/e;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p2}, Lu/v;-><init>(Lu/h;Lu/h;Law/e;Lcom/google/googlenav/ui/bB;)V

    return-void
.end method

.method static synthetic a(Lu/v;)I
    .locals 1

    iget v0, p0, Lu/v;->M:I

    return v0
.end method

.method static synthetic a(Lu/v;I)I
    .locals 0

    iput p1, p0, Lu/v;->M:I

    return p1
.end method

.method public static a(Law/e;[B)Law/e;
    .locals 2

    new-instance v0, Law/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p0}, Law/e;->b(ILaw/e;)V

    if-eqz p1, :cond_0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Law/e;->b(I[B)V

    :cond_0
    return-object v0
.end method

.method public static a(Lf/h;I)Law/e;
    .locals 4

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    invoke-static {p0}, Lf/I;->d(Lf/h;)Law/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Law/e;

    sget-object v1, Ls/P;->d:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/16 v1, 0xd

    invoke-static {p0}, Lf/I;->a(Lf/h;)Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v3, v1}, Law/e;->h(II)V

    goto :goto_0
.end method

.method private a(Lu/h;[Lu/h;)Law/e;
    .locals 5

    const/4 v4, 0x7

    const/4 v3, 0x0

    new-instance v0, Law/e;

    sget-object v1, Ls/v;->b:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Law/e;->a(I)Law/e;

    move-result-object v0

    if-nez p2, :cond_1

    move v1, v3

    :goto_0
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Law/e;->h(II)V

    invoke-static {p1}, Lu/h;->a(Lu/h;)Law/e;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Law/e;->a(ILaw/e;)V

    if-eqz p2, :cond_2

    move v1, v3

    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_2

    aget-object v2, p2, v1

    invoke-virtual {v2, p1}, Lu/h;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lu/h;->a(Lu/h;)Law/e;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Law/e;->a(ILaw/e;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected static a(Lu/h;Lu/h;)Lu/h;
    .locals 2

    if-nez p0, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lu/h;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lu/h;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lu/h;->d()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lu/h;->d()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lu/h;->d()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lu/h;->d()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lu/h;->h()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Lu/h;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lu/h;->a(Lu/h;Ljava/lang/String;Ljava/lang/String;)Lu/h;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lu/h;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lu/h;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lu/h;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/googlenav/ui/bB;)Lu/v;
    .locals 3

    const/4 v2, 0x2

    new-instance v0, Law/e;

    sget-object v1, Ls/T;->b:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {v0, p0, v1}, Law/e;->a(Ljava/io/InputStream;I)I

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-virtual {v1, v2}, Law/e;->d(I)I

    move-result v1

    invoke-static {v1, p1}, Lu/v;->b(ILcom/google/googlenav/ui/bB;)Lu/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lu/v;->c(Law/e;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed directions stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lu/v;->b(Z)V

    return-object v1
.end method

.method protected static a(Law/e;Lu/h;)V
    .locals 2

    invoke-static {p1}, Lu/h;->a(Lu/h;)Law/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Law/e;->a(ILaw/e;)V

    return-void
.end method

.method private aM()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu/v;->r:Z

    return-void
.end method

.method private aN()Law/e;
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/T;->b:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lu/v;->I()Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    iget-object v1, p0, Lu/v;->t:Lu/h;

    invoke-virtual {v1}, Lu/h;->b()Law/e;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Law/e;->a(ILaw/e;)V

    iget-object v1, p0, Lu/v;->w:Lu/h;

    invoke-virtual {v1}, Lu/h;->b()Law/e;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Law/e;->a(ILaw/e;)V

    invoke-virtual {p0}, Lu/v;->aF()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lu/v;->aF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0}, Lu/v;->as()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    invoke-virtual {p0}, Lu/v;->U()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lu/v;->T()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Law/e;->b(IZ)V

    :cond_1
    return-object v0
.end method

.method private static aO()I
    .locals 2

    sget-object v0, Lu/v;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lu/v;->m:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lu/v;->m:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic b(Lu/v;I)I
    .locals 0

    iput p1, p0, Lu/v;->K:I

    return p1
.end method

.method static synthetic b(Lu/v;)Lu/h;
    .locals 1

    iget-object v0, p0, Lu/v;->w:Lu/h;

    return-object v0
.end method

.method private static b(ILcom/google/googlenav/ui/bB;)Lu/v;
    .locals 1

    packed-switch p0, :pswitch_data_0

    new-instance v0, Lu/p;

    invoke-direct {v0, p1}, Lu/p;-><init>(Lcom/google/googlenav/ui/bB;)V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lu/d;

    invoke-direct {v0, p1}, Lu/d;-><init>(Lcom/google/googlenav/ui/bB;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lu/a;

    invoke-direct {v0, p1}, Lu/a;-><init>(Lcom/google/googlenav/ui/bB;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lu/u;

    invoke-direct {v0, p1}, Lu/u;-><init>(Lcom/google/googlenav/ui/bB;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b(II)Z
    .locals 2

    const/4 v1, 0x1

    shl-int v0, v1, p0

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Law/e;)Lu/v;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Law/e;->d(I)I

    move-result v0

    invoke-static {v0, v2}, Lu/v;->b(ILcom/google/googlenav/ui/bB;)Lu/v;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1}, Lu/h;->a(Ljava/lang/String;)Lu/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/v;->a(Lu/h;)V

    const-string v1, ""

    invoke-static {v1}, Lu/h;->a(Ljava/lang/String;)Lu/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/v;->b(Lu/h;)V

    invoke-virtual {v0, p0, v2}, Lu/v;->a(Law/e;[Law/e;)Z

    return-object v0
.end method

.method public static e(Law/e;)I
    .locals 1

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static f(Law/e;)I
    .locals 1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Law/e;->c(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g(Law/e;)Lu/k;
    .locals 2

    new-instance v0, Lu/k;

    invoke-direct {v0, p0, p1}, Lu/k;-><init>(Lu/v;Law/e;)V

    invoke-virtual {v0}, Lu/k;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(Law/e;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Law/e;->d(I)I

    move-result v0

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i(Law/e;)V
    .locals 10

    const/4 v9, 0x1

    iget-object v0, p0, Lu/v;->d:Lcom/google/googlenav/ui/bB;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v1

    iget-object v2, p0, Lu/v;->d:Lcom/google/googlenav/ui/bB;

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/bB;->a(I)V

    :cond_2
    iget-object v1, p0, Lu/v;->d:Lcom/google/googlenav/ui/bB;

    invoke-static {p1}, Lu/v;->k(Law/e;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bB;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v9}, Law/e;->i(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v0, v9, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    if-eqz v4, :cond_4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Law/e;->e(I)J

    move-result-wide v5

    if-eqz v1, :cond_3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    iget-object v7, p0, Lu/v;->d:Lcom/google/googlenav/ui/bB;

    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Law/e;->c(I)[B

    move-result-object v4

    invoke-virtual {v7, v4, v5, v6}, Lcom/google/googlenav/ui/bB;->a([BJ)Lcom/google/googlenav/ui/f;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private j(Law/e;)V
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Lu/v;->d:Lcom/google/googlenav/ui/bB;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lu/v;->k(Law/e;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Law/e;

    sget-object v2, Ls/v;->b:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    const/16 v2, 0x11

    iget-object v3, p0, Lu/v;->d:Lcom/google/googlenav/ui/bB;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bB;->e()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Law/e;->h(II)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lu/v;->d:Lcom/google/googlenav/ui/bB;

    invoke-virtual {v0, v3, v4}, Lcom/google/googlenav/ui/bB;->c(J)[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v5, v0

    if-eqz v5, :cond_1

    invoke-virtual {v1, v7}, Law/e;->a(I)Law/e;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v3, v4}, Law/e;->b(IJ)V

    const/4 v3, 0x3

    invoke-virtual {v5, v3, v0}, Law/e;->b(I[B)V

    invoke-virtual {v1, v7, v5}, Law/e;->a(ILaw/e;)V

    goto :goto_1

    :cond_2
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v1}, Law/e;->b(ILaw/e;)V

    goto :goto_0
.end method

.method private static k(Law/e;)Ljava/util/Set;
    .locals 11

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Law/e;->i(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Law/e;->i(I)I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    const/16 v6, 0x9

    invoke-virtual {v3, v6, v5}, Law/e;->e(II)Law/e;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Law/e;->i(I)I

    move-result v7

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_1

    const/16 v9, 0xa

    invoke-virtual {v6, v9, v8}, Law/e;->e(II)Law/e;

    move-result-object v9

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Law/e;->h(I)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Law/e;->e(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private l()Law/e;
    .locals 3

    new-instance v0, Law/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Law/e;->a(II)V

    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lu/v;->S:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lu/v;->o:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1}, Lu/v;->p(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lu/v;->p(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public B()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x27c

    invoke-virtual {p0}, Lu/v;->y()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lu/v;->aw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu/v;->j_()Lu/h;

    move-result-object v0

    invoke-virtual {v0}, Lu/h;->e()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x60

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lu/v;->ax()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lu/v;->k_()Lu/h;

    move-result-object v0

    invoke-virtual {v0}, Lu/h;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lu/v;->S:Z

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x280

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public C()[Lu/h;
    .locals 1

    iget-object v0, p0, Lu/v;->v:[Lu/h;

    return-object v0
.end method

.method public D()[Lu/h;
    .locals 1

    iget-object v0, p0, Lu/v;->y:[Lu/h;

    return-object v0
.end method

.method public E()Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lu/v;->c:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public F()Z
    .locals 1

    iget-boolean v0, p0, Lu/v;->P:Z

    return v0
.end method

.method public G()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lu/v;->c:I

    iput-boolean v0, p0, Lu/v;->P:Z

    return-void
.end method

.method public H()Lcom/google/googlenav/ui/bB;
    .locals 1

    iget-object v0, p0, Lu/v;->d:Lcom/google/googlenav/ui/bB;

    return-object v0
.end method

.method public I()Law/e;
    .locals 6

    const/16 v5, 0x8

    const/4 v3, 0x5

    const/4 v4, 0x0

    new-instance v0, Law/e;

    sget-object v1, Ls/v;->g:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget v2, p0, Lu/v;->o:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x2

    iget v2, p0, Lu/v;->b:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    iget-object v1, p0, Lu/v;->s:Lu/s;

    invoke-virtual {v1}, Lu/s;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    iget-object v2, p0, Lu/v;->s:Lu/s;

    invoke-virtual {v2}, Lu/s;->c()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/aM;->a(Ljava/util/Date;)Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    :cond_0
    const/4 v1, 0x4

    iget-object v2, p0, Lu/v;->s:Lu/s;

    invoke-virtual {v2}, Lu/s;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/16 v1, 0xd

    iget v2, p0, Lu/v;->N:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    iget-object v1, p0, Lu/v;->t:Lu/h;

    iget-object v2, p0, Lu/v;->v:[Lu/h;

    invoke-direct {p0, v1, v2}, Lu/v;->a(Lu/h;[Lu/h;)Law/e;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Law/e;->a(ILaw/e;)V

    iget-object v1, p0, Lu/v;->w:Lu/h;

    iget-object v2, p0, Lu/v;->y:[Lu/h;

    invoke-direct {p0, v1, v2}, Lu/v;->a(Lu/h;[Lu/h;)Law/e;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Law/e;->a(ILaw/e;)V

    move v1, v4

    :goto_0
    iget v2, p0, Lu/v;->H:I

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v5}, Law/e;->a(I)Law/e;

    move-result-object v2

    iget-object v3, p0, Lu/v;->g:[Lu/k;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lu/k;->a(Law/e;)V

    invoke-virtual {v0, v5, v2}, Law/e;->a(ILaw/e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_1
    iget-object v2, p0, Lu/v;->h:[Lu/b;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    const/16 v2, 0xc

    iget-object v3, p0, Lu/v;->h:[Lu/b;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lu/b;->d()Law/e;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Law/e;->a(ILaw/e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_2
    iget-object v2, p0, Lu/v;->i:[Law/e;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    const/16 v2, 0x10

    iget-object v3, p0, Lu/v;->i:[Law/e;

    aget-object v3, v3, v1

    invoke-virtual {v0, v2, v3}, Law/e;->a(ILaw/e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0, v0}, Lu/v;->j(Law/e;)V

    move v1, v4

    :goto_3
    iget-object v2, p0, Lu/v;->O:[Law/e;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    const/16 v2, 0xe

    iget-object v3, p0, Lu/v;->O:[Law/e;

    aget-object v3, v3, v1

    invoke-virtual {v0, v2, v3}, Law/e;->a(ILaw/e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-object v0
.end method

.method public J()I
    .locals 2

    iget v0, p0, Lu/v;->n:I

    iget v1, p0, Lu/v;->J:I

    add-int/2addr v0, v1

    return v0
.end method

.method public K()I
    .locals 1

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    invoke-virtual {v0}, Lu/k;->i()I

    move-result v0

    return v0
.end method

.method public L()Z
    .locals 1

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    invoke-virtual {v0}, Lu/k;->j()Z

    move-result v0

    return v0
.end method

.method public M()I
    .locals 1

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    invoke-virtual {v0}, Lu/k;->k()I

    move-result v0

    return v0
.end method

.method public N()Z
    .locals 1

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    invoke-virtual {v0}, Lu/k;->l()Z

    move-result v0

    return v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    invoke-virtual {v0}, Lu/k;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public P()Law/e;
    .locals 1

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    invoke-virtual {v0}, Lu/k;->p()Law/e;

    move-result-object v0

    return-object v0
.end method

.method public Q()Law/e;
    .locals 1

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    invoke-virtual {v0}, Lu/k;->q()Law/e;

    move-result-object v0

    return-object v0
.end method

.method public R()Lu/s;
    .locals 1

    iget-object v0, p0, Lu/v;->s:Lu/s;

    return-object v0
.end method

.method public S()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lu/k;->f()[Lf/h;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public T()Z
    .locals 1

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    invoke-virtual {v0}, Lu/k;->v()Z

    move-result v0

    goto :goto_0
.end method

.method public U()Z
    .locals 1

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lu/k;->r()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public V()I
    .locals 1

    iget-object v0, p0, Lu/v;->h:[Lu/b;

    array-length v0, v0

    return v0
.end method

.method public W()Z
    .locals 3

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lu/v;->aa()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lu/v;->l(I)Lu/e;

    move-result-object v1

    invoke-virtual {v1}, Lu/e;->z()I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public X()Z
    .locals 1

    iget-object v0, p0, Lu/v;->i:[Law/e;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Y()Lu/k;
    .locals 2

    iget-object v0, p0, Lu/v;->g:[Lu/k;

    if-eqz v0, :cond_0

    iget v0, p0, Lu/v;->J:I

    if-ltz v0, :cond_0

    iget v0, p0, Lu/v;->J:I

    iget-object v1, p0, Lu/v;->g:[Lu/k;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lu/v;->g:[Lu/k;

    iget v1, p0, Lu/v;->J:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public Z()Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lu/k;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public a()I
    .locals 1

    const/16 v0, 0x1c

    return v0
.end method

.method public a(I)I
    .locals 1

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/k;->f(I)I

    move-result v0

    return v0
.end method

.method public a(Lf/v;)Lf/l;
    .locals 4

    iget v0, p0, Lu/v;->J:I

    if-ltz v0, :cond_0

    iget v0, p0, Lu/v;->J:I

    iget-object v1, p0, Lu/v;->g:[Lu/k;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lu/v;->g:[Lu/k;

    iget v1, p0, Lu/v;->J:I

    aget-object v0, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [Lf/h;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lu/k;->g()Lf/h;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Lu/k;->h()Lf/h;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0}, Lu/k;->d(Lu/k;)Lf/h;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lf/v;->a([Lf/h;Lf/h;)Lf/l;

    move-result-object v0

    goto :goto_0
.end method

.method public a(ILcom/google/googlenav/ui/bB;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lu/v;->c_()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    const/16 v0, 0x65

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x74

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(B)V
    .locals 0

    iput-byte p1, p0, Lu/v;->L:B

    return-void
.end method

.method public a(Law/e;)V
    .locals 0

    iput-object p1, p0, Lu/v;->e:Law/e;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lu/v;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Lu/h;)V
    .locals 0

    iput-object p1, p0, Lu/v;->t:Lu/h;

    return-void
.end method

.method public a(Lu/s;)V
    .locals 0

    iput-object p1, p0, Lu/v;->s:Lu/s;

    return-void
.end method

.method public a(Lu/t;)V
    .locals 0

    iput-object p1, p0, Lu/v;->U:Lu/t;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lu/v;->S:Z

    return-void
.end method

.method public a([Law/e;)V
    .locals 0

    iput-object p1, p0, Lu/v;->O:[Law/e;

    return-void
.end method

.method protected a(Law/e;[Law/e;)Z
    .locals 11

    const/4 v3, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iput-boolean v7, p0, Lu/v;->F:Z

    invoke-virtual {p0}, Lu/v;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v7, p0, Lu/v;->P:Z

    iget-object v0, p0, Lu/v;->g:[Lu/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/v;->g:[Lu/k;

    array-length v0, v0

    if-nez v0, :cond_14

    :cond_0
    new-array v0, v8, [Lu/k;

    new-instance v1, Lu/k;

    invoke-direct {v1, p0}, Lu/k;-><init>(Lu/v;)V

    aput-object v1, v0, v7

    iput-object v0, p0, Lu/v;->g:[Lu/k;

    move v0, v8

    :goto_0
    invoke-virtual {p1, v8}, Law/e;->d(I)I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Law/e;->i(I)I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v7}, Law/e;->e(II)Law/e;

    move-result-object v1

    iget-object v2, p0, Lu/v;->g:[Lu/k;

    aget-object v2, v2, v7

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lu/k;->a(Lu/k;Law/e;Z)V

    :goto_1
    invoke-direct {p0}, Lu/v;->aM()V

    move v0, v8

    :goto_2
    return v0

    :cond_1
    iget-object v0, p0, Lu/v;->g:[Lu/k;

    aget-object v0, v0, v7

    invoke-static {v0, v7}, Lu/k;->a(Lu/k;I)I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lu/v;->g:[Lu/k;

    iput v7, p0, Lu/v;->H:I

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Law/e;->d(I)I

    move-result v0

    iput v0, p0, Lu/v;->N:I

    invoke-virtual {p1, v9}, Law/e;->i(I)I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1, v9, v7}, Law/e;->c(II)I

    move-result v0

    iput v0, p0, Lu/v;->b:I

    invoke-virtual {p0}, Lu/v;->d()I

    move-result v0

    iput v0, p0, Lu/v;->J:I

    invoke-virtual {p1, v8}, Law/e;->d(I)I

    move-result v0

    iput v0, p0, Lu/v;->o:I

    iget v0, p0, Lu/v;->o:I

    if-eq v0, v10, :cond_5

    move v0, v8

    :goto_3
    iput-boolean v0, p0, Lu/v;->u:Z

    iget v0, p0, Lu/v;->o:I

    if-eq v0, v10, :cond_6

    move v0, v8

    :goto_4
    iput-boolean v0, p0, Lu/v;->x:Z

    invoke-virtual {p1, v10}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v10}, Law/e;->f(I)Law/e;

    move-result-object v0

    iput-object v0, p0, Lu/v;->e:Law/e;

    invoke-static {p1, v3}, Law/b;->e(Law/e;I)I

    move-result v0

    iput v0, p0, Lu/v;->f:I

    :cond_3
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/v;->D:Ljava/lang/String;

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/v;->E:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Law/e;->i(I)I

    move-result v0

    if-eq v0, v9, :cond_7

    move v0, v8

    goto :goto_2

    :cond_4
    iput v3, p0, Lu/v;->o:I

    move v0, v8

    goto :goto_2

    :cond_5
    move v0, v7

    goto :goto_3

    :cond_6
    move v0, v7

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lu/v;->t:Lu/h;

    iput-object v0, p0, Lu/v;->z:Lu/h;

    iget-object v0, p0, Lu/v;->w:Lu/h;

    iput-object v0, p0, Lu/v;->A:Lu/h;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v7}, Law/e;->e(II)Law/e;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v7}, Law/e;->e(II)Law/e;

    move-result-object v1

    invoke-direct {p0, v0}, Lu/v;->h(Law/e;)Z

    move-result v2

    iput-boolean v2, p0, Lu/v;->u:Z

    iget-boolean v2, p0, Lu/v;->u:Z

    if-eqz v2, :cond_8

    if-eqz p2, :cond_c

    array-length v2, p2

    if-lt v2, v8, :cond_c

    aget-object v2, p2, v7

    invoke-static {v2, v1}, Lu/h;->b(Law/e;Law/e;)Lu/h;

    move-result-object v1

    iput-object v1, p0, Lu/v;->t:Lu/h;

    :cond_8
    :goto_5
    invoke-virtual {p0, v0}, Lu/v;->b(Law/e;)[Lu/h;

    move-result-object v1

    iput-object v1, p0, Lu/v;->v:[Lu/h;

    iget-boolean v1, p0, Lu/v;->u:Z

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Law/e;->d(I)I

    move-result v0

    if-ne v0, v9, :cond_d

    move v0, v8

    :goto_6
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lu/v;->u:Z

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v8}, Law/e;->e(II)Law/e;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v7}, Law/e;->e(II)Law/e;

    move-result-object v1

    invoke-direct {p0, v0}, Lu/v;->h(Law/e;)Z

    move-result v2

    iput-boolean v2, p0, Lu/v;->x:Z

    iget-boolean v2, p0, Lu/v;->x:Z

    if-eqz v2, :cond_9

    if-eqz p2, :cond_e

    array-length v2, p2

    if-lt v2, v9, :cond_e

    aget-object v2, p2, v8

    invoke-static {v2, v1}, Lu/h;->b(Law/e;Law/e;)Lu/h;

    move-result-object v1

    iput-object v1, p0, Lu/v;->w:Lu/h;

    :cond_9
    :goto_7
    invoke-virtual {p0, v0}, Lu/v;->b(Law/e;)[Lu/h;

    move-result-object v1

    iput-object v1, p0, Lu/v;->y:[Lu/h;

    iget-boolean v1, p0, Lu/v;->x:Z

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Law/e;->d(I)I

    move-result v0

    if-ne v0, v9, :cond_f

    move v0, v8

    :goto_8
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lu/v;->x:Z

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Law/e;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lu/v;->G:Z

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Law/e;->i(I)I

    move-result v0

    iput v0, p0, Lu/v;->H:I

    iget v0, p0, Lu/v;->H:I

    invoke-virtual {p0}, Lu/v;->a_()I

    move-result v1

    if-le v0, v1, :cond_a

    invoke-virtual {p0}, Lu/v;->a_()I

    move-result v0

    iput v0, p0, Lu/v;->H:I

    iput v3, p0, Lu/v;->o:I

    :cond_a
    iget v0, p0, Lu/v;->H:I

    new-array v0, v0, [Lu/k;

    iput-object v0, p0, Lu/v;->g:[Lu/k;

    iput-boolean v8, p0, Lu/v;->I:Z

    move v0, v7

    :goto_9
    :try_start_0
    iget v1, p0, Lu/v;->H:I

    if-ge v0, v1, :cond_10

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Law/e;->e(II)Law/e;

    move-result-object v1

    iget-object v2, p0, Lu/v;->g:[Lu/k;

    invoke-direct {p0, v1}, Lu/v;->g(Law/e;)Lu/k;

    move-result-object v1

    aput-object v1, v2, v0

    iget-object v1, p0, Lu/v;->g:[Lu/k;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lu/k;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    iput-boolean v1, p0, Lu/v;->I:Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_c
    iget-object v2, p0, Lu/v;->t:Lu/h;

    invoke-static {v1, v0}, Lu/h;->a(Law/e;Law/e;)Lu/h;

    move-result-object v1

    invoke-static {v2, v1}, Lu/v;->a(Lu/h;Lu/h;)Lu/h;

    move-result-object v1

    iput-object v1, p0, Lu/v;->t:Lu/h;

    goto/16 :goto_5

    :cond_d
    move v0, v7

    goto/16 :goto_6

    :cond_e
    iget-object v2, p0, Lu/v;->w:Lu/h;

    invoke-static {v1, v0}, Lu/h;->a(Law/e;Law/e;)Lu/h;

    move-result-object v1

    invoke-static {v2, v1}, Lu/v;->a(Lu/h;Lu/h;)Lu/h;

    move-result-object v1

    iput-object v1, p0, Lu/v;->w:Lu/h;

    goto :goto_7

    :cond_f
    move v0, v7

    goto :goto_8

    :catch_0
    move-exception v1

    iput v0, p0, Lu/v;->H:I

    iget-object v0, p0, Lu/v;->g:[Lu/k;

    iget v1, p0, Lu/v;->H:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget v0, p0, Lu/v;->H:I

    if-nez v0, :cond_10

    iput v3, p0, Lu/v;->o:I

    :cond_10
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Law/e;->i(I)I

    move-result v0

    new-array v1, v0, [Lu/b;

    iput-object v1, p0, Lu/v;->h:[Lu/b;

    move v1, v7

    :goto_a
    if-ge v1, v0, :cond_11

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    iget-object v3, p0, Lu/v;->h:[Lu/b;

    new-instance v4, Lu/b;

    invoke-virtual {v2, v8}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v9}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v10}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, p0, v5, v6, v2}, Lu/b;-><init>(Lu/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_11
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Law/e;->i(I)I

    move-result v0

    new-array v1, v0, [Law/e;

    iput-object v1, p0, Lu/v;->i:[Law/e;

    move v1, v7

    :goto_b
    if-ge v1, v0, :cond_12

    iget-object v2, p0, Lu/v;->i:[Law/e;

    const/16 v3, 0x10

    invoke-virtual {p1, v3, v1}, Law/e;->e(II)Law/e;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_12
    invoke-direct {p0, p1}, Lu/v;->i(Law/e;)V

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Law/e;->i(I)I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lu/v;->k:[I

    new-array v1, v0, [Law/e;

    iput-object v1, p0, Lu/v;->O:[Law/e;

    move v1, v7

    :goto_c
    if-ge v1, v0, :cond_13

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    iget-object v3, p0, Lu/v;->k:[I

    invoke-virtual {v2, v8}, Law/e;->d(I)I

    move-result v4

    aput v4, v3, v1

    iget-object v3, p0, Lu/v;->O:[Law/e;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_13
    invoke-direct {p0}, Lu/v;->aM()V

    move v0, v8

    goto/16 :goto_2

    :cond_14
    move v0, v7

    goto/16 :goto_0
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 5

    const/16 v4, 0x1b

    sget-object v0, Ls/v;->g:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lu/v;->a(Law/e;[Law/e;)Z

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Law/e;->h(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lu/v;->s:Lu/s;

    invoke-virtual {v2}, Lu/s;->d()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lu/v;->e:Law/e;

    invoke-static {v2}, Lcom/google/googlenav/ui/aM;->e(Law/e;)Ljava/util/Date;

    move-result-object v2

    iget v3, p0, Lu/v;->f:I

    invoke-static {v2, v3}, Lu/s;->a(Ljava/util/Date;I)Lu/s;

    move-result-object v2

    iput-object v2, p0, Lu/v;->s:Lu/s;

    :cond_0
    invoke-virtual {p0}, Lu/v;->E()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lu/v;->p:LA/p;

    invoke-virtual {v2}, LA/p;->c()V

    sget-object v2, Lu/v;->q:LA/p;

    invoke-virtual {v2}, LA/p;->b()V

    :goto_0
    invoke-virtual {v0, v4}, Law/e;->h(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/google/googlenav/ag;->a()Lcom/google/googlenav/ag;

    move-result-object v2

    invoke-virtual {v0, v4}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ag;->a(Law/e;)V

    :cond_1
    return v1

    :cond_2
    sget-object v2, Lu/v;->q:LA/p;

    invoke-virtual {v2}, LA/p;->c()V

    sget-object v2, Lu/v;->p:LA/p;

    invoke-virtual {v2}, LA/p;->b()V

    goto :goto_0
.end method

.method public a(II)[Lf/h;
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    if-nez v0, :cond_0

    new-array v0, v2, [Lf/h;

    :goto_0
    return-object v0

    :cond_0
    if-ltz p1, :cond_1

    if-gez p2, :cond_2

    :cond_1
    invoke-virtual {v0}, Lu/k;->f()[Lf/h;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lu/k;->d(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p2}, Lu/k;->d(I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    new-array v0, v2, [Lf/h;

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p1}, Lu/k;->e(I)I

    move-result v1

    invoke-virtual {v0, p2}, Lu/k;->e(I)I

    move-result v2

    sub-int v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Lf/h;

    move v4, v1

    :goto_1
    if-gt v4, v2, :cond_5

    sub-int v5, v4, v1

    invoke-virtual {v0}, Lu/k;->f()[Lf/h;

    move-result-object v6

    aget-object v6, v6, v4

    aput-object v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move-object v0, v3

    goto :goto_0
.end method

.method public aA()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lu/v;->m()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lu/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    const/16 v1, 0x452

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lu/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public aB()Lu/v;
    .locals 2

    invoke-virtual {p0}, Lu/v;->e()Lu/v;

    move-result-object v0

    invoke-virtual {p0}, Lu/v;->R()Lu/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/v;->a(Lu/s;)V

    invoke-virtual {p0}, Lu/v;->q()[Law/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/v;->a([Law/e;)V

    invoke-virtual {p0}, Lu/v;->aI()I

    move-result v1

    invoke-virtual {v0, v1}, Lu/v;->r(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lu/v;->b(Z)V

    return-object v0
.end method

.method public aC()Lu/v;
    .locals 2

    invoke-virtual {p0}, Lu/v;->aB()Lu/v;

    move-result-object v0

    invoke-direct {p0}, Lu/v;->aN()Law/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/v;->c(Law/e;)Z

    return-object v0
.end method

.method public aF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/v;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/v;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public aG()Z
    .locals 1

    iget-boolean v0, p0, Lu/v;->F:Z

    return v0
.end method

.method public aH()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu/v;->F:Z

    return-void
.end method

.method public aI()I
    .locals 1

    iget v0, p0, Lu/v;->R:I

    return v0
.end method

.method public aJ()Lu/v;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lu/v;->p(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lu/p;

    invoke-virtual {p0}, Lu/v;->al()Lu/g;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/p;-><init>(Lu/n;)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget v1, p0, Lu/v;->R:I

    invoke-virtual {v0, v1}, Lu/v;->r(I)V

    :cond_1
    return-object v0

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lu/v;->p(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lu/d;

    invoke-virtual {p0}, Lu/v;->al()Lu/g;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->ak()Lcom/google/googlenav/ui/bB;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lu/d;-><init>(Lu/n;Lcom/google/googlenav/ui/bB;)V

    goto :goto_0
.end method

.method public aK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/v;->T:Ljava/lang/String;

    return-object v0
.end method

.method public aL()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lu/v;->b:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xe4

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const/16 v0, 0x42e

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x454

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x3a

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract a_()I
.end method

.method public aa()I
    .locals 1

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lu/k;->e()I

    move-result v0

    goto :goto_0
.end method

.method public ab()I
    .locals 1

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    invoke-static {v0}, Lu/k;->a(Lu/k;)I

    move-result v0

    return v0
.end method

.method public ac()I
    .locals 1

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    invoke-static {v0}, Lu/k;->b(Lu/k;)I

    move-result v0

    return v0
.end method

.method public ad()Lf/h;
    .locals 1

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    invoke-static {v0}, Lu/k;->c(Lu/k;)Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public ae()I
    .locals 1

    iget v0, p0, Lu/v;->C:I

    return v0
.end method

.method public af()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/v;->D:Ljava/lang/String;

    return-object v0
.end method

.method public ag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/v;->E:Ljava/lang/String;

    return-object v0
.end method

.method public ah()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lu/v;->M()I

    move-result v0

    invoke-virtual {p0}, Lu/v;->ao()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/y;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public ai()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lu/v;->P()Law/e;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/aM;->b(Law/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lu/v;->Q()Law/e;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/aM;->b(Law/e;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x420

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v2}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0}, Lu/v;->L()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lu/v;->K()I

    move-result v2

    invoke-static {v2}, Lcom/google/googlenav/ui/aM;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x2b4

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v2}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lu/v;->M()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lu/v;->ah()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, ""

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public aj()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lu/v;->I:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu/v;->O()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public ak()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lu/v;->ai()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/v;->aj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public al()Lu/g;
    .locals 4

    new-instance v0, Lu/g;

    invoke-virtual {p0}, Lu/v;->j_()Lu/h;

    move-result-object v1

    invoke-virtual {p0}, Lu/v;->k_()Lu/h;

    move-result-object v2

    invoke-virtual {p0}, Lu/v;->l_()Law/e;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lu/g;-><init>(Lu/h;Lu/h;Law/e;)V

    return-object v0
.end method

.method public am()Lu/h;
    .locals 1

    iget-object v0, p0, Lu/v;->z:Lu/h;

    return-object v0
.end method

.method public an()Lu/h;
    .locals 1

    iget-object v0, p0, Lu/v;->A:Lu/h;

    return-object v0
.end method

.method public ao()I
    .locals 1

    iget v0, p0, Lu/v;->N:I

    return v0
.end method

.method public ap()Lf/h;
    .locals 2

    iget v0, p0, Lu/v;->J:I

    if-ltz v0, :cond_0

    iget v0, p0, Lu/v;->J:I

    iget-object v1, p0, Lu/v;->g:[Lu/k;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lu/v;->g:[Lu/k;

    iget v1, p0, Lu/v;->J:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lu/k;->d(Lu/k;)Lf/h;

    move-result-object v0

    goto :goto_0
.end method

.method public aq()Z
    .locals 1

    iget-boolean v0, p0, Lu/v;->G:Z

    return v0
.end method

.method public ar()I
    .locals 1

    iget v0, p0, Lu/v;->j:I

    return v0
.end method

.method public as()I
    .locals 1

    iget v0, p0, Lu/v;->J:I

    return v0
.end method

.method public at()I
    .locals 1

    iget v0, p0, Lu/v;->H:I

    return v0
.end method

.method public au()Lf/h;
    .locals 1

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    invoke-virtual {v0}, Lu/k;->g()Lf/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lu/v;->t:Lu/h;

    invoke-virtual {v0}, Lu/h;->f()Lf/h;

    move-result-object v0

    goto :goto_0
.end method

.method public av()Lf/h;
    .locals 1

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    invoke-virtual {v0}, Lu/k;->h()Lf/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lu/v;->w:Lu/h;

    invoke-virtual {v0}, Lu/h;->f()Lf/h;

    move-result-object v0

    goto :goto_0
.end method

.method public aw()Z
    .locals 2

    iget v0, p0, Lu/v;->o:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lu/v;->u:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ax()Z
    .locals 2

    iget v0, p0, Lu/v;->o:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lu/v;->x:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ay()[I
    .locals 1

    iget-object v0, p0, Lu/v;->k:[I

    return-object v0
.end method

.method public az()I
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->ak()Lcom/google/googlenav/ui/bB;

    move-result-object v1

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lu/v;->c_()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p0, v2, v1}, Lu/v;->a(ILcom/google/googlenav/ui/bB;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LR/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/bB;->a(C)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/bB;->c(C)I

    move-result v4

    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->n()Lk/j;

    move-result-object v5

    invoke-interface {v5, v4}, Lk/j;->c(C)I

    move-result v4

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->n()Lk/j;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Lk/j;->c(C)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public b()Lcom/google/googlenav/bf;
    .locals 2

    invoke-virtual {p0}, Lu/v;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lu/v;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lu/v;->c_()I

    move-result v0

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Lu/v;->c_()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-gez v0, :cond_0

    const/4 v1, 0x0

    iput-byte v1, p0, Lu/v;->L:B

    iput v0, p0, Lu/v;->K:I

    :goto_1
    return-void

    :cond_0
    iget-byte v1, p0, Lu/v;->L:B

    if-nez v1, :cond_1

    iput v0, p0, Lu/v;->K:I

    iput-byte v2, p0, Lu/v;->L:B

    goto :goto_1

    :cond_1
    iput v0, p0, Lu/v;->K:I

    goto :goto_1

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method public b(Ljava/io/DataOutput;)V
    .locals 1

    invoke-direct {p0}, Lu/v;->aN()Law/e;

    move-result-object v0

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lu/v;->T:Ljava/lang/String;

    return-void
.end method

.method public b(Lu/h;)V
    .locals 0

    iput-object p1, p0, Lu/v;->w:Lu/h;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lu/v;->Q:Z

    return-void
.end method

.method protected b(Law/e;)[Lu/h;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Law/e;->d(I)I

    move-result v0

    invoke-virtual {p1, v5}, Law/e;->i(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v4, :cond_1

    move-object v0, v6

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-array v0, v1, [Lu/h;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {p1, v5, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-static {v3, p1}, Lu/h;->a(Law/e;Law/e;)Lu/h;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    array-length v1, v0

    if-gt v1, v4, :cond_0

    move-object v0, v6

    goto :goto_0
.end method

.method public b_()[Lf/h;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0}, Lu/v;->a(II)[Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lu/v;->K:I

    return v0
.end method

.method public c(I)Lcom/google/googlenav/bf;
    .locals 1

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lu/k;->a(I)Lu/f;

    move-result-object v0

    goto :goto_0
.end method

.method protected c(Law/e;)Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    invoke-virtual {p1, v4}, Law/e;->i(I)I

    move-result v0

    new-array v0, v0, [Law/e;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v4, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v3}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lu/v;->a(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x5

    invoke-static {p1, v1}, Law/b;->g(Law/e;I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Lu/v;->o(I)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lu/v;->a(Law/e;[Law/e;)Z

    move-result v0

    iget-object v1, p0, Lu/v;->e:Law/e;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lu/v;->e:Law/e;

    invoke-static {v2}, Lcom/google/googlenav/ui/aM;->d(Law/e;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iget v2, p0, Lu/v;->f:I

    invoke-static {v1, v2}, Lu/s;->a(Ljava/util/Date;I)Lu/s;

    move-result-object v1

    iput-object v1, p0, Lu/v;->s:Lu/s;

    :goto_1
    if-eqz v0, :cond_2

    const/4 v1, 0x4

    invoke-static {p1, v1}, Law/b;->g(Law/e;I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Lu/v;->e(I)V

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Law/e;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lu/v;->i()V

    :cond_2
    return v0

    :cond_3
    invoke-static {}, Lu/s;->a()Lu/s;

    move-result-object v1

    iput-object v1, p0, Lu/v;->s:Lu/s;

    goto :goto_1
.end method

.method public c_()I
    .locals 1

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lu/k;->d()I

    move-result v0

    goto :goto_0
.end method

.method abstract d()I
.end method

.method public d(I)I
    .locals 0

    return p1
.end method

.method public d_()B
    .locals 1

    iget-byte v0, p0, Lu/v;->L:B

    return v0
.end method

.method abstract e()Lu/v;
.end method

.method public e(I)V
    .locals 1

    iput p1, p0, Lu/v;->J:I

    const/4 v0, 0x0

    iput v0, p0, Lu/v;->K:I

    return-void
.end method

.method public e_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f(I)Law/e;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/v;->f:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v0, v4, p1}, Law/e;->a(II)V

    invoke-virtual {p0}, Lu/v;->j_()Lu/h;

    move-result-object v1

    invoke-static {v0, v1}, Lu/v;->a(Law/e;Lu/h;)V

    invoke-virtual {p0}, Lu/v;->k_()Lu/h;

    move-result-object v1

    invoke-static {v0, v1}, Lu/v;->a(Law/e;Lu/h;)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lu/v;->a_()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x7

    iget v2, p0, Lu/v;->c:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Law/e;->b(IZ)V

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, v4}, Law/e;->b(IZ)V

    const/16 v1, 0x1f

    invoke-virtual {v0, v1, v4}, Law/e;->b(IZ)V

    iget-object v1, p0, Lu/v;->B:Law/e;

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    iget-object v2, p0, Lu/v;->B:Law/e;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    :cond_0
    invoke-static {}, Lcom/google/googlenav/d;->T()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Law/e;->b(IZ)V

    :cond_1
    const/16 v1, 0x1c

    invoke-virtual {v0, v1, v5}, Law/e;->b(IZ)V

    move v1, v5

    :goto_0
    iget-object v2, p0, Lu/v;->O:[Law/e;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    const/16 v2, 0xa

    iget-object v3, p0, Lu/v;->O:[Law/e;

    aget-object v3, v3, v1

    invoke-virtual {v0, v2, v3}, Law/e;->a(ILaw/e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Law/e;->b(IZ)V

    const/16 v1, 0x15

    invoke-virtual {v0, v1, v4}, Law/e;->b(IZ)V

    const/16 v1, 0x1b

    invoke-virtual {p0}, Lu/v;->o()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v4

    :goto_1
    invoke-virtual {v0, v1, v2}, Law/e;->b(IZ)V

    return-object v0

    :cond_3
    move v2, v5

    goto :goto_1
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f_()Z
    .locals 1

    invoke-virtual {p0}, Lu/v;->E()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lu/v;->f:I

    return-void
.end method

.method public g_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h(I)J
    .locals 2

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/k;->g(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public h()V
    .locals 1

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    invoke-virtual {v0}, Lu/k;->t()V

    return-void
.end method

.method public h_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i(I)Lf/h;
    .locals 1

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/k;->c(I)Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 1

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    invoke-virtual {v0}, Lu/k;->u()V

    return-void
.end method

.method public final i_()V
    .locals 0

    return-void
.end method

.method public j(I)Lu/b;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lu/v;->h:[Lu/b;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lu/v;->h:[Lu/b;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public j_()Lu/h;
    .locals 1

    iget-object v0, p0, Lu/v;->t:Lu/h;

    return-object v0
.end method

.method public k(I)Law/e;
    .locals 1

    iget-object v0, p0, Lu/v;->i:[Law/e;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public k_()Lu/h;
    .locals 1

    iget-object v0, p0, Lu/v;->w:Lu/h;

    return-object v0
.end method

.method public l(I)Lu/e;
    .locals 1

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/k;->b(I)Lu/e;

    move-result-object v0

    return-object v0
.end method

.method public l_()Law/e;
    .locals 1

    iget-object v0, p0, Lu/v;->B:Law/e;

    return-object v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lu/v;->b:I

    return v0
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Lu/v;->C:I

    return-void
.end method

.method public n()Z
    .locals 1

    iget v0, p0, Lu/v;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n(I)Z
    .locals 1

    invoke-virtual {p0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/k;->h(I)Z

    move-result v0

    return v0
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Lu/v;->j:I

    return-void
.end method

.method public o()Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lu/v;->b:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 2

    iget v0, p0, Lu/v;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p(I)Z
    .locals 1

    iget v0, p0, Lu/v;->R:I

    invoke-static {p1, v0}, Lu/v;->b(II)Z

    move-result v0

    return v0
.end method

.method public q(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lu/v;->p(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lu/v;->R:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lu/v;->R:I

    :cond_0
    return-void
.end method

.method public q()[Law/e;
    .locals 1

    iget-object v0, p0, Lu/v;->O:[Law/e;

    return-object v0
.end method

.method public r()Law/e;
    .locals 1

    iget-object v0, p0, Lu/v;->e:Law/e;

    return-object v0
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lu/v;->R:I

    return-void
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lu/v;->f:I

    return v0
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lu/v;->U:Lu/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/v;->U:Lu/t;

    invoke-interface {v0}, Lu/t;->a()V

    :cond_0
    return-void
.end method

.method protected u()Law/e;
    .locals 6

    new-instance v0, Law/e;

    sget-object v1, Ls/v;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-object v1, p0, Lu/v;->d:Lcom/google/googlenav/ui/bB;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lu/v;->d:Lcom/google/googlenav/ui/bB;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bB;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    iget-object v1, p0, Lu/v;->d:Lcom/google/googlenav/ui/bB;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bB;->d()[J

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    const/4 v3, 0x3

    aget-wide v4, v1, v2

    invoke-virtual {v0, v3, v4, v5}, Law/e;->a(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0}, Lu/v;->l()Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    return-object v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lu/v;->r:Z

    return v0
.end method

.method public w()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/v;->r:Z

    return-void
.end method

.method public x()Z
    .locals 1

    invoke-virtual {p0}, Lu/v;->C()[Lu/h;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lu/v;->D()[Lu/h;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lu/v;->o:I

    return v0
.end method

.method public z()Z
    .locals 1

    iget v0, p0, Lu/v;->o:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
