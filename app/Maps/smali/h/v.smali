.class public Lh/v;
.super Lh/eR;

# interfaces
.implements Lcom/google/googlenav/ui/bT;


# instance fields
.field private a:Lcom/google/googlenav/c;

.field private b:Lcom/google/googlenav/bL;

.field private c:Li/aE;

.field private d:Lv/t;

.field private e:Z

.field private f:Lcom/google/googlenav/ui/aG;

.field private l:LaD/p;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Lcom/google/googlenav/ui/F;

.field private q:Li/aw;

.field private r:Lcom/google/googlenav/login/k;


# direct methods
.method public constructor <init>(Lh/eY;LaU/a;Lcom/google/googlenav/bL;Lv/t;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/v;->m:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/v;->o:Z

    new-instance v0, Lh/fp;

    invoke-direct {v0, p0}, Lh/fp;-><init>(Lh/v;)V

    iput-object v0, p0, Lh/v;->r:Lcom/google/googlenav/login/k;

    iput-object p3, p0, Lh/v;->b:Lcom/google/googlenav/bL;

    invoke-interface {p3}, Lcom/google/googlenav/bL;->av()LaD/t;

    move-result-object v0

    invoke-virtual {v0}, LaD/t;->c()LaD/p;

    move-result-object v0

    iput-object v0, p0, Lh/v;->l:LaD/p;

    iput-object p4, p0, Lh/v;->d:Lv/t;

    new-instance v0, Lcom/google/googlenav/ui/aG;

    iget-object v1, p0, Lh/v;->l:LaD/p;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->A()Lk/l;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/aG;-><init>(LaD/p;Lk/l;)V

    iput-object v0, p0, Lh/v;->f:Lcom/google/googlenav/ui/aG;

    new-instance v0, Lcom/google/googlenav/ui/F;

    invoke-direct {v0, p2, p1}, Lcom/google/googlenav/ui/F;-><init>(LaU/a;Lh/eY;)V

    iput-object v0, p0, Lh/v;->p:Lcom/google/googlenav/ui/F;

    invoke-static {}, Lcom/google/googlenav/az;->l()Lcom/google/googlenav/az;

    move-result-object v0

    iget-object v1, p0, Lh/v;->r:Lcom/google/googlenav/login/k;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/az;->a(Lcom/google/googlenav/login/k;)V

    return-void
.end method

.method static synthetic a(Lh/v;Lcom/google/googlenav/c;)Lcom/google/googlenav/c;
    .locals 0

    iput-object p1, p0, Lh/v;->a:Lcom/google/googlenav/c;

    return-object p1
.end method

.method public static a(Lcom/google/googlenav/c;Lcom/google/googlenav/ui/av;ILx/U;)Lcom/google/googlenav/ui/aQ;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x6a4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bu()I

    move-result v1

    if-gtz v1, :cond_0

    const/16 v1, 0x30f

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1, p1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->b(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bu()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->l(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x2f7

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static synthetic a(Lh/v;Li/aw;)Li/aw;
    .locals 0

    iput-object p1, p0, Lh/v;->q:Li/aw;

    return-object p1
.end method

.method private a(Lcom/google/googlenav/c;)V
    .locals 4

    invoke-direct {p0}, Lh/v;->o()V

    iget-object v0, p0, Lh/v;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/v;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lh/v;->b:Lcom/google/googlenav/bL;

    const/16 v1, 0x306

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lh/v;->o:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/googlenav/az;->l()Lcom/google/googlenav/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/az;->y()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lh/v;->p:Lcom/google/googlenav/ui/F;

    invoke-direct {p0, p1}, Lh/v;->d(Lcom/google/googlenav/c;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31a

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/googlenav/az;->z()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/googlenav/ui/F;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/bT;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lh/v;->b(Lcom/google/googlenav/c;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lh/v;->a(Lcom/google/googlenav/c;Z)V

    goto :goto_0
.end method

.method private a(Lcom/google/googlenav/c;Z)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lh/cW;

    iget-object v0, p0, Lh/v;->b:Lcom/google/googlenav/bL;

    invoke-direct {v1, p1, v0}, Lh/cW;-><init>(Lcom/google/googlenav/c;Lcom/google/googlenav/bL;)V

    new-instance v3, Lh/fz;

    iget-object v0, p0, Lh/v;->b:Lcom/google/googlenav/bL;

    iget-object v2, p0, Lh/v;->c:Li/aE;

    new-instance v4, Lh/fG;

    invoke-direct {v4, p0}, Lh/fG;-><init>(Lh/v;)V

    invoke-direct {v3, p1, v0, v2, v4}, Lh/fz;-><init>(Lcom/google/googlenav/c;Lcom/google/googlenav/bL;Li/aE;Lh/bi;)V

    iget-boolean v0, p0, Lh/v;->o:Z

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    const/4 v0, 0x1

    move v4, v0

    :goto_1
    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->y()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/google/googlenav/aJ;

    const-string v2, "hotpot-mobile-Android-GMM"

    if-eqz p2, :cond_3

    move-object v6, v1

    :goto_2
    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/aJ;-><init>(Lcom/google/googlenav/c;Ljava/lang/String;ZZLjava/lang/String;Lcom/google/googlenav/i;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->O()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    iget-object v0, p0, Lh/v;->g:Lh/eY;

    const/16 v1, 0x332

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lh/fc;

    invoke-direct {v3, v7}, Lh/fc;-><init>(I)V

    const-wide/16 v4, 0x0

    move-object v2, v8

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    new-instance v1, Lx/E;

    invoke-direct {v1, p1, v8}, Lx/E;-><init>(Lcom/google/googlenav/c;[Lax/e;)V

    invoke-virtual {v0, v1, p0}, Lx/k;->b(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/v;->j:Lx/J;

    goto :goto_0

    :cond_2
    move v4, v7

    goto :goto_1

    :cond_3
    move-object v6, v3

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lh/v;->v()V

    goto :goto_0
.end method

.method static synthetic a(Lh/v;)V
    .locals 0

    invoke-direct {p0}, Lh/v;->n()V

    return-void
.end method

.method static synthetic a(Lh/v;Lcom/google/googlenav/c;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh/v;->a(Lcom/google/googlenav/c;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/c;)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/google/googlenav/az;->l()Lcom/google/googlenav/az;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/az;->b(Z)V

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/login/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lh/v;->b(Z)V

    :goto_0
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lh/v;->a(Lcom/google/googlenav/c;Z)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p3}, Lh/v;->c(Lcom/google/googlenav/c;)V

    goto :goto_0
.end method

.method static synthetic a(Lh/v;Z)Z
    .locals 0

    iput-boolean p1, p0, Lh/v;->m:Z

    return p1
.end method

.method private b(Lcom/google/googlenav/c;)V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->y()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lh/v;->a(Lcom/google/googlenav/c;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/v;->p:Lcom/google/googlenav/ui/F;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/F;->a(Lcom/google/googlenav/ui/bT;)V

    goto :goto_0
.end method

.method static synthetic b(Lh/v;)V
    .locals 0

    invoke-direct {p0}, Lh/v;->o()V

    return-void
.end method

.method static synthetic b(Lh/v;Lcom/google/googlenav/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/v;->a(Lcom/google/googlenav/c;)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    const/16 v0, 0x55

    if-eqz p1, :cond_0

    const-string v1, "oas"

    :goto_0
    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    return-void

    :cond_0
    const-string v1, "oaf"

    goto :goto_0
.end method

.method static synthetic c(Lh/v;)Lcom/google/googlenav/c;
    .locals 1

    iget-object v0, p0, Lh/v;->a:Lcom/google/googlenav/c;

    return-object v0
.end method

.method private c(Lcom/google/googlenav/c;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lh/v;->b(Z)V

    iget-object v0, p0, Lh/v;->b:Lcom/google/googlenav/bL;

    const/16 v1, 0x316

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/googlenav/az;->l()Lcom/google/googlenav/az;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/az;->b(Z)V

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/google/googlenav/login/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, v2}, Lh/v;->a(Lcom/google/googlenav/c;Z)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lh/v;)Lcom/google/googlenav/bL;
    .locals 1

    iget-object v0, p0, Lh/v;->b:Lcom/google/googlenav/bL;

    return-object v0
.end method

.method private d(Lcom/google/googlenav/c;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x32

    const/16 v5, 0x2f

    const/16 v4, 0x27

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->bm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {p1}, Lcom/google/googlenav/c;->bk()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/16 v2, 0x318

    :goto_0
    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/c;->bk()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3, v1}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/16 v2, 0x317

    goto :goto_0
.end method

.method static synthetic e(Lh/v;)Li/aw;
    .locals 1

    iget-object v0, p0, Lh/v;->q:Li/aw;

    return-object v0
.end method

.method static synthetic f(Lh/v;)V
    .locals 0

    invoke-direct {p0}, Lh/v;->r()V

    return-void
.end method

.method private m()V
    .locals 6

    iget-object v0, p0, Lh/v;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->bn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lh/v;->n()V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lh/ev;

    new-instance v0, Lh/fB;

    invoke-direct {v0, p0}, Lh/fB;-><init>(Lh/v;)V

    invoke-direct {v2, v0}, Lh/ev;-><init>(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lh/v;->b:Lcom/google/googlenav/bL;

    const/16 v1, 0x193

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lh/l;->a:Lh/fc;

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/googlenav/bL;->a(Ljava/lang/String;Lak/i;Lh/fc;J)V

    new-instance v0, Lh/fW;

    iget-object v1, p0, Lh/v;->b:Lcom/google/googlenav/bL;

    new-instance v3, Lh/fC;

    invoke-direct {v3, p0}, Lh/fC;-><init>(Lh/v;)V

    invoke-direct {v0, v1, v2, v3}, Lh/fW;-><init>(Lcom/google/googlenav/bL;Lh/ev;Lh/bi;)V

    new-instance v1, Lcom/google/googlenav/ad;

    iget-object v2, p0, Lh/v;->a:Lcom/google/googlenav/c;

    invoke-virtual {v2}, Lcom/google/googlenav/c;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/ad;-><init>(Lcom/google/googlenav/bh;Ljava/lang/String;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    goto :goto_0
.end method

.method private n()V
    .locals 9

    const/16 v3, 0xc

    const/4 v4, 0x1

    iget-object v0, p0, Lh/v;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/v;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->g()Lx/z;

    move-result-object v0

    iget v0, v0, Lx/z;->l:I

    if-eq v0, v3, :cond_4

    :cond_0
    new-instance v0, Lx/t;

    iget-object v1, p0, Lh/v;->a:Lcom/google/googlenav/c;

    invoke-virtual {p0}, Lh/v;->x_()[Lax/e;

    move-result-object v2

    invoke-direct {v0, v3, v4, v1, v2}, Lx/t;-><init>(IILcom/google/googlenav/c;[Lax/e;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/v;->j:Lx/J;

    iget-object v0, p0, Lh/v;->j:Lx/J;

    check-cast v0, Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/bs;

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->N()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lh/v;->b:Lcom/google/googlenav/bL;

    invoke-interface {v1}, Lcom/google/googlenav/bL;->av()LaD/t;

    move-result-object v1

    invoke-virtual {v1}, LaD/t;->c()LaD/p;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/aG;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aV;->A()Lk/l;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/googlenav/ui/aG;-><init>(LaD/p;Lk/l;)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/bs;->a(Lcom/google/googlenav/ui/aG;)V

    :cond_1
    :goto_0
    const-string v1, "rr"

    iget-object v2, p0, Lh/v;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->n()V

    :cond_2
    iget-object v1, p0, Lh/v;->j:Lx/J;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lx/J;->c(I)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->N()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lh/v;->a:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->bs()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lh/v;->a:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->af()Lcom/google/googlenav/bH;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bH;->d()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lh/v;->a:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->bo()Law/e;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lh/v;->a:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->af()Lcom/google/googlenav/bH;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/bH;->a(Z)V

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/view/android/bs;->b(Z)V

    new-instance v0, Lcom/google/googlenav/aI;

    const/4 v1, 0x0

    iget-object v2, p0, Lh/v;->a:Lcom/google/googlenav/c;

    invoke-virtual {v2}, Lcom/google/googlenav/c;->I()J

    move-result-wide v2

    new-instance v4, Lh/eh;

    iget-object v5, p0, Lh/v;->a:Lcom/google/googlenav/c;

    iget-object v6, p0, Lh/v;->f:Lcom/google/googlenav/ui/aG;

    iget-object v7, p0, Lh/v;->j:Lx/J;

    iget-object v8, p0, Lh/v;->b:Lcom/google/googlenav/bL;

    invoke-direct {v4, v5, v6, v7, v8}, Lh/eh;-><init>(Lcom/google/googlenav/c;Lcom/google/googlenav/ui/aG;Lx/J;Lcom/google/googlenav/bL;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/aI;-><init>(IJLcom/google/googlenav/w;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lh/v;->j:Lx/J;

    check-cast v0, Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/bs;

    goto :goto_0
.end method

.method private o()V
    .locals 1

    iget-object v0, p0, Lh/v;->c:Li/aE;

    invoke-virtual {v0}, Li/aE;->I()Li/x;

    move-result-object p0

    instance-of v0, p0, Li/bl;

    if-eqz v0, :cond_0

    check-cast p0, Li/bl;

    invoke-virtual {p0}, Li/bl;->bI()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Li/x;->M()V

    goto :goto_0
.end method

.method private p()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lh/v;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->br()[I

    move-result-object v0

    aget v1, v0, v8

    aget v2, v0, v9

    add-int/2addr v1, v2

    const/16 v2, 0x55

    const-string v3, "d"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "s="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lh/v;->a:Lcom/google/googlenav/c;

    invoke-virtual {v6}, Lcom/google/googlenav/c;->bk()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "a="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lh/v;->a:Lcom/google/googlenav/c;

    invoke-virtual {v6}, Lcom/google/googlenav/c;->bp()[Lcom/google/googlenav/o;

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "f="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "l="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "d="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v0, v0, v9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lh/v;->a:Lcom/google/googlenav/c;

    invoke-virtual {v5}, Lcom/google/googlenav/c;->bm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v4}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private q()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/v;->m:Z

    invoke-static {}, Lcom/google/googlenav/az;->l()Lcom/google/googlenav/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/az;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lh/b;

    invoke-static {}, Lcom/google/googlenav/az;->l()Lcom/google/googlenav/az;

    move-result-object v1

    new-instance v2, Lh/fH;

    invoke-direct {v2, p0}, Lh/fH;-><init>(Lh/v;)V

    invoke-direct {v0, v1, v2}, Lh/b;-><init>(Lo/aN;Lh/bi;)V

    new-instance v1, Lab/c;

    invoke-direct {v1, v0}, Lab/c;-><init>(Lab/b;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 2

    iget-object v0, p0, Lh/v;->h:LaU/a;

    new-instance v1, Lh/fI;

    invoke-direct {v1, p0}, Lh/fI;-><init>(Lh/v;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public T_()V
    .locals 4

    iget-object v0, p0, Lh/v;->a:Lcom/google/googlenav/c;

    invoke-virtual {p0}, Lh/v;->v()V

    iget-object v1, p0, Lh/v;->c:Li/aE;

    iget-boolean v2, p0, Lh/v;->e:Z

    iget-object v3, p0, Lh/v;->n:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lh/v;->a(Lcom/google/googlenav/c;Li/aE;ZLjava/lang/String;)V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/v;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    iget v0, p0, Lh/v;->k:I

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/v;->d()V

    iget v0, p0, Lh/v;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/v;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    iget v0, p0, Lh/v;->k:I

    goto :goto_0
.end method

.method protected a()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lh/v;->k:I

    iget-boolean v0, p0, Lh/v;->m:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lh/v;->q()V

    :cond_0
    invoke-direct {p0}, Lh/v;->m()V

    return-void
.end method

.method public a(Lcom/google/googlenav/c;Li/aE;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lh/v;->a:Lcom/google/googlenav/c;

    iput-object p2, p0, Lh/v;->c:Li/aE;

    iput-boolean p3, p0, Lh/v;->e:Z

    iput-object p4, p0, Lh/v;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lh/v;->u()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lh/v;->a:Lcom/google/googlenav/c;

    invoke-direct {p0, p1, p2, v0}, Lh/v;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/c;)V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 10

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    move v0, v4

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lh/v;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->bk()I

    iget-object v0, p0, Lh/v;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/c;->e(I)V

    move v0, v9

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lh/v;->a:Lcom/google/googlenav/c;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p3, p2}, Lcom/google/googlenav/c;->a(Ljava/lang/String;I)V

    move v0, v9

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lh/v;->a:Lcom/google/googlenav/c;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p3, p2}, Lcom/google/googlenav/c;->a(Ljava/lang/String;I)V

    move v0, v9

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lh/v;->a:Lcom/google/googlenav/c;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p3}, Lcom/google/googlenav/c;->j(Ljava/lang/String;)V

    move v0, v9

    goto :goto_0

    :sswitch_4
    if-eqz p3, :cond_0

    iget-object v0, p0, Lh/v;->a:Lcom/google/googlenav/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/v;->a:Lcom/google/googlenav/c;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p3}, Lcom/google/googlenav/c;->m(Ljava/lang/String;)V

    :cond_0
    if-ne p2, v9, :cond_1

    move v0, v9

    :goto_1
    iput-boolean v0, p0, Lh/v;->o:Z

    invoke-static {}, Lcom/google/googlenav/az;->l()Lcom/google/googlenav/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/az;->t()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/googlenav/az;->l()Lcom/google/googlenav/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/az;->b()V

    :goto_2
    move v0, v9

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lh/v;->a:Lcom/google/googlenav/c;

    invoke-direct {p0, v0}, Lh/v;->a(Lcom/google/googlenav/c;)V

    goto :goto_2

    :sswitch_5
    invoke-direct {p0}, Lh/v;->p()V

    new-instance v2, Lh/ev;

    new-instance v0, Lh/fD;

    invoke-direct {v0, p0}, Lh/fD;-><init>(Lh/v;)V

    invoke-direct {v2, v0}, Lh/ev;-><init>(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lh/v;->b:Lcom/google/googlenav/bL;

    const/16 v1, 0x198

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lh/l;->a:Lh/fc;

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/googlenav/bL;->a(Ljava/lang/String;Lak/i;Lh/fc;J)V

    new-instance v3, Lh/cC;

    iget-object v4, p0, Lh/v;->b:Lcom/google/googlenav/bL;

    iget-object v5, p0, Lh/v;->c:Li/aE;

    iget-object v6, p0, Lh/v;->a:Lcom/google/googlenav/c;

    new-instance v8, Lh/fE;

    invoke-direct {v8, p0}, Lh/fE;-><init>(Lh/v;)V

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lh/cC;-><init>(Lcom/google/googlenav/bL;Li/aE;Lcom/google/googlenav/c;Lh/ev;Lh/bi;)V

    new-instance v0, Laq/a;

    iget-object v1, p0, Lh/v;->a:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->I()J

    move-result-wide v1

    iget-object v4, p0, Lh/v;->a:Lcom/google/googlenav/c;

    invoke-virtual {v4}, Lcom/google/googlenav/c;->bo()Law/e;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4, v3}, Laq/a;-><init>(JLaw/e;Laq/b;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    move v0, v9

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lh/v;->g:Lh/eY;

    new-instance v1, Lh/fF;

    invoke-direct {v1, p0}, Lh/fF;-><init>(Lh/v;)V

    invoke-virtual {v0, v4, v1}, Lh/eY;->a(ILh/bv;)V

    move v0, v9

    goto/16 :goto_0

    :sswitch_7
    invoke-static {}, Lcom/google/googlenav/az;->l()Lcom/google/googlenav/az;

    move-result-object v0

    if-ne p2, v9, :cond_3

    move v1, v9

    :goto_3
    invoke-virtual {v0, v1}, Lcom/google/googlenav/az;->b(Z)V

    move v0, v9

    goto/16 :goto_0

    :cond_3
    move v1, v4

    goto :goto_3

    :sswitch_8
    invoke-static {}, Lcom/google/googlenav/az;->l()Lcom/google/googlenav/az;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/az;->b(Z)V

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/google/googlenav/login/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lh/v;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->f()V

    move v0, v9

    goto/16 :goto_0

    :sswitch_9
    if-ne p2, v9, :cond_4

    const/16 v0, 0x55

    const-string v1, "t"

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "b"

    aput-object v3, v2, v4

    invoke-static {v2}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lh/v;->c:Li/aE;

    iget-object v1, p0, Lh/v;->q:Li/aw;

    invoke-virtual {v0, v1}, Li/aE;->h(Li/x;)V

    :cond_4
    invoke-virtual {p0}, Lh/v;->v()V

    move v0, v9

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_9
        0x6a5 -> :sswitch_0
        0x6a6 -> :sswitch_1
        0x6a7 -> :sswitch_4
        0x6a8 -> :sswitch_5
        0x6ac -> :sswitch_6
        0x6ad -> :sswitch_7
        0x6ae -> :sswitch_8
        0x6b1 -> :sswitch_2
        0x6b2 -> :sswitch_3
    .end sparse-switch
.end method

.method protected b()V
    .locals 1

    invoke-super {p0}, Lh/eR;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/v;->a:Lcom/google/googlenav/c;

    return-void
.end method

.method public d()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    iget-object v0, p0, Lh/v;->a:Lcom/google/googlenav/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/v;->a:Lcom/google/googlenav/c;

    iget-object v1, p0, Lh/v;->a:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->bu()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->e(I)V

    :cond_0
    iget-boolean v0, p0, Lh/v;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/v;->g:Lh/eY;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Lh/eY;->a(ILax/c;)V

    iput v2, p0, Lh/v;->k:I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lh/v;->j:Lx/J;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lh/v;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->g()Lx/z;

    move-result-object v0

    instance-of v0, v0, Lx/E;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lh/v;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    iput-object v3, p0, Lh/v;->j:Lx/J;

    iget-object v0, p0, Lh/v;->c:Li/aE;

    iget-object v1, p0, Lh/v;->q:Li/aw;

    invoke-virtual {v0, v1}, Li/aE;->h(Li/x;)V

    iget-object v0, p0, Lh/v;->a:Lcom/google/googlenav/c;

    iget-object v1, p0, Lh/v;->c:Li/aE;

    iget-boolean v2, p0, Lh/v;->e:Z

    iget-object v3, p0, Lh/v;->n:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lh/v;->a(Lcom/google/googlenav/c;Li/aE;ZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lh/v;->c:Li/aE;

    invoke-virtual {v0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Li/x;->f(Z)V

    invoke-direct {p0}, Lh/v;->o()V

    :cond_3
    iput v2, p0, Lh/v;->k:I

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lh/v;->a:Lcom/google/googlenav/c;

    invoke-direct {p0, v0}, Lh/v;->c(Lcom/google/googlenav/c;)V

    return-void
.end method

.method public h()V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/az;->l()Lcom/google/googlenav/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/az;->b()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lh/v;->a:Lcom/google/googlenav/c;

    invoke-direct {p0, v0}, Lh/v;->c(Lcom/google/googlenav/c;)V

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lh/v;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    return-void
.end method

.method public x_()[Lax/e;
    .locals 3

    iget-object v0, p0, Lh/v;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->bs()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lax/e;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/googlenav/ui/w;->av:Lax/e;

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y_()V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/az;->l()Lcom/google/googlenav/az;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/az;->c(Z)V

    return-void
.end method

.method public z_()V
    .locals 2

    iget-object v0, p0, Lh/v;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method
