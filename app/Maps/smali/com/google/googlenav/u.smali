.class public Lcom/google/googlenav/u;
.super Ljava/lang/Object;


# static fields
.field public static a:J


# instance fields
.field private final b:Lcom/google/googlenav/bL;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lu/n;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lf/l;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:J

.field private final m:LH/f;

.field private n:Lf/Y;

.field private final o:Lcom/google/googlenav/ui/bu;

.field private p:Z

.field private q:Z

.field private r:Lcom/google/googlenav/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2ee0

    sput-wide v0, Lcom/google/googlenav/u;->a:J

    return-void
.end method

.method public constructor <init>(LH/f;Lf/Y;Lcom/google/googlenav/ui/bu;Lcom/google/googlenav/bL;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/googlenav/u;->k:Z

    iput-boolean v0, p0, Lcom/google/googlenav/u;->p:Z

    iput-boolean v0, p0, Lcom/google/googlenav/u;->q:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/u;->r:Lcom/google/googlenav/h;

    iput-object p1, p0, Lcom/google/googlenav/u;->m:LH/f;

    iput-object p2, p0, Lcom/google/googlenav/u;->n:Lf/Y;

    iput-object p3, p0, Lcom/google/googlenav/u;->o:Lcom/google/googlenav/ui/bu;

    iput-object p4, p0, Lcom/google/googlenav/u;->b:Lcom/google/googlenav/bL;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf/h;II)V
    .locals 7

    new-instance v0, Lcom/google/googlenav/c;

    const/16 v6, 0xa

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/c;-><init>(Lf/N;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    new-instance v1, Lcom/google/googlenav/z;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/googlenav/c;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget-object v3, p0, Lcom/google/googlenav/u;->n:Lf/Y;

    invoke-virtual {v3}, Lf/Y;->h()Lf/C;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v0

    invoke-virtual {v3, v0}, Lf/C;->a(Lf/h;)Lf/C;

    move-result-object v0

    const/4 v3, -0x1

    if-ne p6, v3, :cond_0

    iget-object v3, p0, Lcom/google/googlenav/u;->n:Lf/Y;

    invoke-virtual {v3}, Lf/Y;->a()I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-ne p7, v4, :cond_1

    iget-object v4, p0, Lcom/google/googlenav/u;->n:Lf/Y;

    invoke-virtual {v4}, Lf/Y;->b()I

    move-result v4

    :goto_1
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/googlenav/z;-><init>([Lcom/google/googlenav/c;Lf/C;II)V

    iget-object v0, p0, Lcom/google/googlenav/u;->b:Lcom/google/googlenav/bL;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/bL;->a(Lcom/google/googlenav/z;Z)Li/aw;

    move-result-object v0

    invoke-virtual {v0}, Li/aw;->bo()V

    return-void

    :cond_0
    move v3, p6

    goto :goto_0

    :cond_1
    move v4, p7

    goto :goto_1
.end method

.method private a(Lu/h;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lu/h;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "locationMemory"

    invoke-static {v0}, Lu/r;->b(Ljava/lang/String;)Lu/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/r;->a(Lu/h;)Z

    goto :goto_0
.end method

.method private static b(Lu/n;)Z
    .locals 1

    invoke-interface {p0}, Lu/n;->j_()Lu/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lu/n;->j_()Lu/h;

    move-result-object v0

    invoke-virtual {v0}, Lu/h;->m()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {p0}, Lu/n;->k_()Lu/h;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lu/n;->k_()Lu/h;

    move-result-object v0

    invoke-virtual {v0}, Lu/h;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/u;->b:Lcom/google/googlenav/bL;

    iget-object v1, p0, Lcom/google/googlenav/u;->r:Lcom/google/googlenav/h;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/bL;->a(Lcom/google/googlenav/h;Lh/ae;)V

    iput-object v2, p0, Lcom/google/googlenav/u;->r:Lcom/google/googlenav/h;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/u;->q:Z

    return-void
.end method

.method private h()Lf/C;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/u;->m:LH/f;

    invoke-virtual {v0}, LH/f;->p()Lf/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/u;->n:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->h()Lf/C;

    move-result-object v1

    invoke-virtual {v1, v0}, Lf/C;->a(Lf/h;)Lf/C;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/u;->p:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/u;->o:Lcom/google/googlenav/ui/bu;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bu;->p()Lf/l;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lf/C;->a(Lf/l;)Lf/C;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v1, 0x16

    invoke-static {v1}, Lf/l;->b(I)Lf/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/C;->a(Lf/l;)Lf/C;

    move-result-object v0

    goto :goto_0
.end method

.method private i()V
    .locals 5

    const/16 v4, 0x443

    iget-object v1, p0, Lcom/google/googlenav/u;->e:Lu/n;

    invoke-virtual {p0}, Lcom/google/googlenav/u;->c()V

    iget-object v2, p0, Lcom/google/googlenav/u;->b:Lcom/google/googlenav/bL;

    invoke-interface {v2}, Lcom/google/googlenav/bL;->C()V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/u;->m:LH/f;

    invoke-virtual {v3}, LH/f;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/googlenav/u;->m:LH/f;

    invoke-virtual {v3}, LH/f;->l()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/u;->m:LH/f;

    invoke-virtual {v2}, LH/f;->p()Lf/h;

    move-result-object v2

    invoke-static {v2}, Lu/h;->b(Lf/h;)Lu/h;

    move-result-object v2

    :cond_0
    invoke-interface {v1}, Lu/n;->j_()Lu/h;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Lu/n;->j_()Lu/h;

    move-result-object v3

    invoke-virtual {v3}, Lu/h;->m()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/google/googlenav/u;->b:Lcom/google/googlenav/bL;

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v1, v2}, Lu/n;->a(Lu/h;)V

    :cond_2
    :goto_0
    instance-of v2, v1, Lu/v;

    if-nez v2, :cond_3

    new-instance v2, Lu/p;

    invoke-direct {v2, v1}, Lu/p;-><init>(Lu/n;)V

    move-object v1, v2

    :cond_3
    invoke-interface {v1}, Lu/n;->j_()Lu/h;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Lu/n;->k_()Lu/h;

    move-result-object v2

    if-nez v2, :cond_7

    :cond_4
    iget-object v2, p0, Lcom/google/googlenav/u;->b:Lcom/google/googlenav/bL;

    move-object v0, v1

    check-cast v0, Lu/v;

    move-object p0, v0

    invoke-interface {v2, p0}, Lcom/google/googlenav/bL;->i(Lu/v;)V

    :goto_1
    return-void

    :cond_5
    invoke-interface {v1}, Lu/n;->k_()Lu/h;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Lu/n;->k_()Lu/h;

    move-result-object v3

    invoke-virtual {v3}, Lu/h;->m()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_6

    iget-object v3, p0, Lcom/google/googlenav/u;->b:Lcom/google/googlenav/bL;

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    :cond_6
    invoke-interface {v1, v2}, Lu/n;->b(Lu/h;)V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/googlenav/u;->b:Lcom/google/googlenav/bL;

    check-cast v1, Lu/v;

    invoke-interface {v2, v1}, Lcom/google/googlenav/bL;->b(Lu/v;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/google/googlenav/c;)V
    .locals 8

    const/4 v6, -0x1

    iget-object v0, p0, Lcom/google/googlenav/u;->g:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/googlenav/c;->j()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_1
    iget-object v1, p0, Lcom/google/googlenav/u;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/googlenav/u;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v5

    move-object v0, p0

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf/h;II)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/u;->g:Ljava/lang/String;

    move-object v2, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_1
.end method

.method public a(Lcom/google/googlenav/h;)V
    .locals 6

    iput-object p1, p0, Lcom/google/googlenav/u;->r:Lcom/google/googlenav/h;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/u;->q:Z

    iget-object v0, p0, Lcom/google/googlenav/u;->m:LH/f;

    invoke-virtual {v0}, LH/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/u;->m:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/u;->g()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/google/googlenav/u;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/u;->l:J

    iget-object v0, p0, Lcom/google/googlenav/u;->b:Lcom/google/googlenav/bL;

    const/16 v1, 0x22e

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lh/l;->a:Lh/fc;

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/googlenav/bL;->a(Ljava/lang/String;Lak/i;Lh/fc;J)V

    goto :goto_0
.end method

.method public a(Lf/Y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/u;->n:Lf/Y;

    return-void
.end method

.method public a(Lf/l;Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/google/googlenav/u;->i:Lf/l;

    iput-object p2, p0, Lcom/google/googlenav/u;->j:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/u;->k:Z

    iget-object v0, p0, Lcom/google/googlenav/u;->m:LH/f;

    invoke-virtual {v0}, LH/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/u;->m:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/u;->f()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/google/googlenav/u;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/u;->l:J

    iget-object v0, p0, Lcom/google/googlenav/u;->b:Lcom/google/googlenav/bL;

    const/16 v1, 0x22e

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lh/l;->a:Lh/fc;

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/googlenav/bL;->a(Ljava/lang/String;Lak/i;Lh/fc;J)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/k;IIZZZ)V
    .locals 5

    const/4 v0, -0x1

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/googlenav/u;->c:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/googlenav/u;->d:Ljava/lang/String;

    if-ne p4, v0, :cond_0

    if-eq p5, v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/u;->n:Lf/Y;

    invoke-virtual {v0, p4, p5}, Lf/Y;->d(II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/u;->p:Z

    :goto_0
    invoke-virtual {p3}, Lcom/google/googlenav/k;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    move-object v0, v4

    move-object v1, p1

    :goto_1
    iget-object v2, p0, Lcom/google/googlenav/u;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    new-instance v2, Lcom/google/googlenav/V;

    invoke-direct {v2}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/V;->a(Lf/C;)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/google/googlenav/V;->a(Z)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/google/googlenav/V;->c(Z)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0, p8}, Lcom/google/googlenav/V;->g(Z)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-static {p2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x3a8

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->c(Ljava/lang/String;)Lcom/google/googlenav/V;

    :cond_2
    iget-object v1, p0, Lcom/google/googlenav/u;->b:Lcom/google/googlenav/bL;

    invoke-virtual {v0}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/bL;->a(Lcom/google/googlenav/bs;)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/u;->p:Z

    goto :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " loc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/googlenav/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/google/googlenav/u;->n:Lf/Y;

    invoke-virtual {p3}, Lcom/google/googlenav/k;->b()Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/Y;->c(Lf/h;)V

    move-object v0, v4

    move-object v1, p1

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/google/googlenav/u;->m:LH/f;

    invoke-virtual {v0}, LH/f;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/u;->m:LH/f;

    invoke-virtual {v0}, LH/f;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/u;->m:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/google/googlenav/u;->h()Lf/C;

    move-result-object v0

    move-object v1, p1

    goto/16 :goto_1

    :cond_5
    iput-object p1, p0, Lcom/google/googlenav/u;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/u;->d:Ljava/lang/String;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/google/googlenav/u;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/u;->l:J

    iget-object v0, p0, Lcom/google/googlenav/u;->b:Lcom/google/googlenav/bL;

    const/16 v1, 0x22e

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    move-object v0, v4

    move-object v1, p1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lu/n;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/googlenav/u;->c()V

    iput-object p1, p0, Lcom/google/googlenav/u;->e:Lu/n;

    invoke-interface {p1}, Lu/n;->j_()Lu/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/u;->a(Lu/h;)V

    invoke-interface {p1}, Lu/n;->k_()Lu/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/u;->a(Lu/h;)V

    iget-object v0, p0, Lcom/google/googlenav/u;->m:LH/f;

    invoke-virtual {v0}, LH/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/u;->m:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/googlenav/u;->b(Lu/n;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/u;->i()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/google/googlenav/u;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/u;->l:J

    iget-object v0, p0, Lcom/google/googlenav/u;->b:Lcom/google/googlenav/bL;

    const/16 v1, 0x22e

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lh/l;->a:Lh/fc;

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/googlenav/bL;->a(Ljava/lang/String;Lak/i;Lh/fc;J)V

    goto :goto_0
.end method

.method public a()Z
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/u;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/googlenav/u;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-ne p5, v0, :cond_0

    if-eq p6, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/u;->n:Lf/Y;

    invoke-virtual {v0, p5, p6}, Lf/Y;->d(II)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/googlenav/k;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    iput-object p2, p0, Lcom/google/googlenav/u;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/u;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/googlenav/u;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/u;->b:Lcom/google/googlenav/bL;

    new-instance v1, Lcom/google/googlenav/V;

    invoke-direct {v1}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/googlenav/V;->a(I)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->a(Lcom/google/googlenav/bs;)V

    move v0, v8

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/google/googlenav/k;->b()Lf/h;

    move-result-object v0

    move-object v5, v0

    :goto_1
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf/h;II)V

    invoke-virtual {p0}, Lcom/google/googlenav/u;->d()V

    move v0, v8

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/googlenav/u;->n:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->e()Lf/h;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/google/googlenav/u;->m:LH/f;

    invoke-virtual {v0}, LH/f;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/u;->m:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/u;->m:LH/f;

    invoke-virtual {v0}, LH/f;->p()Lf/h;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_2
    iput-object p2, p0, Lcom/google/googlenav/u;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/u;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/googlenav/u;->h:Ljava/lang/String;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/google/googlenav/u;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/u;->l:J

    move v0, v8

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public b()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/googlenav/u;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/googlenav/u;->m:LH/f;

    invoke-virtual {v2}, LH/f;->l()Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/googlenav/u;->l:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/u;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/googlenav/V;

    invoke-direct {v0}, Lcom/google/googlenav/V;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/u;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    iget-object v1, p0, Lcom/google/googlenav/u;->d:Ljava/lang/String;

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x3a8

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/u;->d:Ljava/lang/String;

    invoke-static {v1, v2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->c(Ljava/lang/String;)Lcom/google/googlenav/V;

    :cond_1
    iget-object v1, p0, Lcom/google/googlenav/u;->m:LH/f;

    invoke-virtual {v1}, LH/f;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/google/googlenav/u;->h()Lf/C;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->a(Lf/C;)Lcom/google/googlenav/V;

    :cond_2
    iget-object v1, p0, Lcom/google/googlenav/u;->b:Lcom/google/googlenav/bL;

    invoke-virtual {v0}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/bL;->a(Lcom/google/googlenav/bs;)V

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_4
    iget-object v0, p0, Lcom/google/googlenav/u;->e:Lu/n;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/google/googlenav/u;->i()V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/google/googlenav/u;->q:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/google/googlenav/u;->g()V

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/google/googlenav/u;->k:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/googlenav/u;->f()V

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/u;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/u;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/u;->e:Lu/n;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/u;->l:J

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/u;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/u;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/u;->h:Ljava/lang/String;

    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/u;->i:Lf/l;

    iput-object v0, p0, Lcom/google/googlenav/u;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/u;->k:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/u;->l:J

    return-void
.end method

.method public f()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/googlenav/u;->e()V

    iget-object v0, p0, Lcom/google/googlenav/u;->b:Lcom/google/googlenav/bL;

    invoke-interface {v0}, Lcom/google/googlenav/bL;->C()V

    iget-object v0, p0, Lcom/google/googlenav/u;->m:LH/f;

    invoke-virtual {v0}, LH/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/u;->m:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/u;->b:Lcom/google/googlenav/bL;

    iget-object v1, p0, Lcom/google/googlenav/u;->m:LH/f;

    invoke-virtual {v1}, LH/f;->p()Lf/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/u;->i:Lf/l;

    iget-object v3, p0, Lcom/google/googlenav/u;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/bL;->a(Lf/h;Lf/l;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/u;->b:Lcom/google/googlenav/bL;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/u;->i:Lf/l;

    iget-object v3, p0, Lcom/google/googlenav/u;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/bL;->a(Lf/h;Lf/l;Ljava/lang/String;)V

    goto :goto_0
.end method
