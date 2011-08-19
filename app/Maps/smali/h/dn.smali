.class public Lh/dn;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lh/dV;

.field private final c:Lh/R;

.field private final d:Lh/by;

.field private e:Lh/aB;

.field private final f:Lh/eI;

.field private g:Lh/fJ;

.field private h:Lcom/google/googlenav/h;

.field private i:Ljava/util/List;

.field private j:Z

.field private final k:Lh/eY;

.field private l:Lcom/google/googlenav/ao;

.field private final m:Lcom/google/googlenav/ui/bu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lh/dn;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lh/dn;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lh/eY;Lcom/google/googlenav/ui/bu;Li/br;Lh/eI;Lh/dV;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lh/dn;->g:Lh/fJ;

    iput-object v1, p0, Lh/dn;->h:Lcom/google/googlenav/h;

    iput-object v1, p0, Lh/dn;->i:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/dn;->j:Z

    iput-object p1, p0, Lh/dn;->k:Lh/eY;

    iput-object p2, p0, Lh/dn;->m:Lcom/google/googlenav/ui/bu;

    iput-object p5, p0, Lh/dn;->b:Lh/dV;

    iput-object p4, p0, Lh/dn;->f:Lh/eI;

    new-instance v0, Lh/eZ;

    invoke-direct {v0, p0}, Lh/eZ;-><init>(Lh/dn;)V

    iput-object v0, p0, Lh/dn;->c:Lh/R;

    new-instance v0, Lh/by;

    invoke-direct {v0, p0, v1}, Lh/by;-><init>(Lh/dn;Lh/bb;)V

    iput-object v0, p0, Lh/dn;->d:Lh/by;

    new-instance v0, Lh/aB;

    invoke-virtual {p1}, Lh/eY;->E()Lo/bj;

    move-result-object v1

    invoke-virtual {p1}, Lh/eY;->v()LaU/a;

    move-result-object v2

    invoke-direct {v0, v1, p3, v2}, Lh/aB;-><init>(Lo/bj;Li/br;LaU/a;)V

    iput-object v0, p0, Lh/dn;->e:Lh/aB;

    iget-object v0, p0, Lh/dn;->e:Lh/aB;

    iget-object v1, p0, Lh/dn;->d:Lh/by;

    iget-object v2, p0, Lh/dn;->d:Lh/by;

    invoke-virtual {v0, v1, v2}, Lh/aB;->a(Lh/bd;Lh/at;)V

    return-void
.end method

.method static synthetic a(Lh/dn;Lcom/google/googlenav/ao;)Lcom/google/googlenav/ao;
    .locals 0

    iput-object p1, p0, Lh/dn;->l:Lcom/google/googlenav/ao;

    return-object p1
.end method

.method static synthetic a(Lh/dn;)Lh/eY;
    .locals 1

    iget-object v0, p0, Lh/dn;->k:Lh/eY;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/bG;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lh/dn;->k:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/V;

    invoke-direct {v1}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {v1, p2}, Lcom/google/googlenav/V;->c(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->e(I)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/V;->i(Z)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/V;->a(Z)Lcom/google/googlenav/V;

    move-result-object v1

    new-instance v2, Lh/bb;

    invoke-direct {v2, p0, p1, p2}, Lh/bb;-><init>(Lh/dn;Lcom/google/googlenav/bG;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->a(Lcom/google/googlenav/a;)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->a(Lcom/google/googlenav/bs;)V

    return-void
.end method

.method static synthetic a(Lh/dn;Lcom/google/googlenav/bG;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh/dn;->a(Lcom/google/googlenav/bG;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lh/dn;Ljava/util/List;)Z
    .locals 1

    invoke-direct {p0, p1}, Lh/dn;->b(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lh/dn;)Lh/aB;
    .locals 1

    iget-object v0, p0, Lh/dn;->e:Lh/aB;

    return-object v0
.end method

.method private b(Lcom/google/googlenav/h;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/h;->g()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/h;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/util/List;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lo/d;->h()Lo/d;

    move-result-object v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private c()LH/d;
    .locals 2

    iget-object v0, p0, Lh/dn;->m:Lcom/google/googlenav/ui/bu;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->z()LH/f;

    move-result-object v0

    invoke-virtual {v0}, LH/f;->z()LH/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LH/d;->d()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method static synthetic c(Lh/dn;)Lh/eI;
    .locals 1

    iget-object v0, p0, Lh/dn;->f:Lh/eI;

    return-object v0
.end method

.method static synthetic d(Lh/dn;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lh/dn;->i:Ljava/util/List;

    return-object v0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lh/dn;->e:Lh/aB;

    iget-object v1, p0, Lh/dn;->h:Lcom/google/googlenav/h;

    iget-object v2, p0, Lh/dn;->g:Lh/fJ;

    invoke-virtual {v2}, Lh/fJ;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lh/dn;->i:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lh/aB;->a(Lcom/google/googlenav/h;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lh/dn;->g:Lh/fJ;

    const/16 v1, 0x9f

    invoke-virtual {v0, v1}, Lh/fJ;->a(I)V

    return-void
.end method

.method static synthetic e(Lh/dn;)V
    .locals 0

    invoke-direct {p0}, Lh/dn;->d()V

    return-void
.end method

.method static synthetic f(Lh/dn;)Lh/fJ;
    .locals 1

    iget-object v0, p0, Lh/dn;->g:Lh/fJ;

    return-object v0
.end method

.method static synthetic g(Lh/dn;)Lcom/google/googlenav/h;
    .locals 1

    iget-object v0, p0, Lh/dn;->h:Lcom/google/googlenav/h;

    return-object v0
.end method

.method static synthetic h(Lh/dn;)Lcom/google/googlenav/ao;
    .locals 1

    iget-object v0, p0, Lh/dn;->l:Lcom/google/googlenav/ao;

    return-object v0
.end method

.method static synthetic i(Lh/dn;)Lcom/google/googlenav/ui/bu;
    .locals 1

    iget-object v0, p0, Lh/dn;->m:Lcom/google/googlenav/ui/bu;

    return-object v0
.end method

.method static synthetic j(Lh/dn;)Lh/dV;
    .locals 1

    iget-object v0, p0, Lh/dn;->b:Lh/dV;

    return-object v0
.end method


# virtual methods
.method public a()Lh/R;
    .locals 1

    iget-object v0, p0, Lh/dn;->c:Lh/R;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/h;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lh/dn;->e:Lh/aB;

    invoke-virtual {v0}, Lh/aB;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/dn;->j:Z

    invoke-virtual {p0, v1}, Lh/dn;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lh/dn;->a(Lcom/google/googlenav/h;Z)V

    invoke-virtual {p0, v1}, Lh/dn;->a(Ljava/util/List;)V

    iget-object v0, p0, Lh/dn;->e:Lh/aB;

    invoke-virtual {v0}, Lh/aB;->a()V

    goto :goto_0
.end method

.method a(Lcom/google/googlenav/h;Z)V
    .locals 2

    sget-boolean v0, Lh/dn;->a:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lh/dn;->b(Lcom/google/googlenav/h;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lh/dn;->h:Lcom/google/googlenav/h;

    iget-object v0, p0, Lh/dn;->g:Lh/fJ;

    invoke-virtual {v0, p1, p2}, Lh/fJ;->a(Lcom/google/googlenav/h;Z)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lh/dn;->g:Lh/fJ;

    invoke-virtual {v0}, Lh/fJ;->f()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lh/dn;->g:Lh/fJ;

    const/16 v1, 0x453

    invoke-virtual {v0, v1}, Lh/fJ;->a(I)V

    goto :goto_0
.end method

.method public a(Lh/fJ;)V
    .locals 0

    iput-object p1, p0, Lh/dn;->g:Lh/fJ;

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lh/dn;->c()LH/d;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/dn;->g:Lh/fJ;

    const/16 v1, 0xa7

    invoke-virtual {v0, v1}, Lh/fJ;->b(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lh/dn;->g:Lh/fJ;

    invoke-virtual {v1}, Lh/fJ;->c()V

    iget-object v1, p0, Lh/dn;->e:Lh/aB;

    invoke-virtual {v0}, LH/d;->c()Lf/h;

    move-result-object v2

    invoke-virtual {v2}, Lf/h;->b()I

    move-result v2

    invoke-virtual {v0}, LH/d;->c()Lf/h;

    move-result-object v3

    invoke-virtual {v3}, Lf/h;->d()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lh/aB;->a(II)V

    iget-object v1, p0, Lh/dn;->e:Lh/aB;

    invoke-virtual {v1, v0, p1}, Lh/aB;->a(LH/d;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Lh/dn;->i:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lh/dn;->g:Lh/fJ;

    invoke-virtual {v0, p1}, Lh/fJ;->b(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lh/dn;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/dn;->g:Lh/fJ;

    invoke-virtual {v0}, Lh/fJ;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/dn;->g:Lh/fJ;

    invoke-virtual {v0}, Lh/fJ;->d()V

    iget-object v0, p0, Lh/dn;->g:Lh/fJ;

    invoke-virtual {v0}, Lh/fJ;->f()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
