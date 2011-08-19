.class public abstract Li/bl;
.super Li/x;

# interfaces
.implements Lcom/google/googlenav/a;


# static fields
.field private static final e:[Lax/e;


# instance fields
.field protected F:I

.field protected G:Z

.field protected H:Z

.field protected I:Lcom/google/googlenav/ui/aG;

.field protected J:Lc/p;

.field protected K:LaD/p;

.field protected final L:LaD/n;

.field protected final M:LaD/n;

.field protected final N:LaD/n;

.field private a:I

.field private b:I

.field private c:Lcom/google/googlenav/ui/ax;

.field private final d:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lax/e;

    sput-object v0, Li/bl;->e:[Lax/e;

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, p4}, Li/x;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;)V

    iput v1, p0, Li/bl;->F:I

    iput-boolean v1, p0, Li/bl;->G:Z

    iput v0, p0, Li/bl;->a:I

    iput v0, p0, Li/bl;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Li/bl;->H:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Li/bl;->d:Ljava/util/Hashtable;

    new-instance v0, Li/bj;

    invoke-direct {v0, p0}, Li/bj;-><init>(Li/bl;)V

    iput-object v0, p0, Li/bl;->L:LaD/n;

    new-instance v0, Li/bh;

    invoke-direct {v0, p0}, Li/bh;-><init>(Li/bl;)V

    iput-object v0, p0, Li/bl;->M:LaD/n;

    new-instance v0, Li/bi;

    invoke-direct {v0, p0}, Li/bi;-><init>(Li/bl;)V

    iput-object v0, p0, Li/bl;->N:LaD/n;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aT;->av()LaD/t;

    move-result-object v0

    invoke-virtual {v0}, LaD/t;->c()LaD/p;

    move-result-object v0

    iput-object v0, p0, Li/bl;->K:LaD/p;

    iget-object v0, p0, Li/bl;->K:LaD/p;

    invoke-static {v0}, Li/bl;->a(LaD/p;)Lcom/google/googlenav/ui/aG;

    move-result-object v0

    iput-object v0, p0, Li/bl;->I:Lcom/google/googlenav/ui/aG;

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/j;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p5}, Li/x;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/j;)V

    iput v1, p0, Li/bl;->F:I

    iput-boolean v1, p0, Li/bl;->G:Z

    iput v0, p0, Li/bl;->a:I

    iput v0, p0, Li/bl;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Li/bl;->H:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Li/bl;->d:Ljava/util/Hashtable;

    new-instance v0, Li/bj;

    invoke-direct {v0, p0}, Li/bj;-><init>(Li/bl;)V

    iput-object v0, p0, Li/bl;->L:LaD/n;

    new-instance v0, Li/bh;

    invoke-direct {v0, p0}, Li/bh;-><init>(Li/bl;)V

    iput-object v0, p0, Li/bl;->M:LaD/n;

    new-instance v0, Li/bi;

    invoke-direct {v0, p0}, Li/bi;-><init>(Li/bl;)V

    iput-object v0, p0, Li/bl;->N:LaD/n;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aT;->av()LaD/t;

    move-result-object v0

    invoke-virtual {v0}, LaD/t;->c()LaD/p;

    move-result-object v0

    iput-object v0, p0, Li/bl;->K:LaD/p;

    iget-object v0, p0, Li/bl;->K:LaD/p;

    invoke-static {v0}, Li/bl;->a(LaD/p;)Lcom/google/googlenav/ui/aG;

    move-result-object v0

    iput-object v0, p0, Li/bl;->I:Lcom/google/googlenav/ui/aG;

    return-void
.end method

.method private B()Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Li/bl;->aF()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Li/bl;->aI()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Li/bl;->bL()Lcom/google/googlenav/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/c;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private D()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Li/bl;->b()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "f"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "s"

    goto :goto_0
.end method

.method private I()V
    .locals 1

    invoke-virtual {p0}, Li/bl;->ac()Lcom/google/googlenav/bf;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/c;

    invoke-virtual {p0}, Lcom/google/googlenav/c;->F()B

    move-result v0

    invoke-static {v0}, LaA/b;->a(I)V

    return-void
.end method

.method private J()Z
    .locals 2

    iget-object v0, p0, Li/bl;->n:Lx/J;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/bl;->aG()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Li/bl;->F:I

    if-eqz v0, :cond_0

    iget v0, p0, Li/bl;->F:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private L()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Li/bl;->a:I

    iput v0, p0, Li/bl;->b:I

    return-void
.end method

.method private N()V
    .locals 1

    iget-object v0, p0, Li/bl;->n:Lx/J;

    if-eqz v0, :cond_0

    iget v0, p0, Li/bl;->F:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Li/bl;->n:Lx/J;

    invoke-interface {v0}, Lx/J;->b()I

    move-result v0

    iput v0, p0, Li/bl;->a:I

    const/4 v0, -0x1

    iput v0, p0, Li/bl;->b:I

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Li/bl;->n:Lx/J;

    invoke-interface {v0}, Lx/J;->b()I

    move-result v0

    iput v0, p0, Li/bl;->b:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method private static a(LaD/p;)Lcom/google/googlenav/ui/aG;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/aG;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->A()Lk/l;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/aG;-><init>(LaD/p;Lk/l;)V

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/bj;)Lcom/google/googlenav/ui/aS;
    .locals 3

    new-instance v0, Lcom/google/googlenav/ui/aS;

    invoke-virtual {p0}, Lcom/google/googlenav/bj;->a()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/googlenav/ui/aV;->bM:I

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/aS;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static a(Lcom/google/googlenav/c;ZZ)Lu/h;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lu/h;->c(Lcom/google/googlenav/c;)Lu/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p0}, Lu/h;->a(Lcom/google/googlenav/c;)Lu/h;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lu/h;->b(Lcom/google/googlenav/c;)Lu/h;

    move-result-object v0

    goto :goto_0
.end method

.method private a(ZLjava/lang/String;I)V
    .locals 6

    if-eqz p1, :cond_0

    const-string v0, "e"

    :goto_0
    const/16 v1, 0x54

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string v0, "c"

    goto :goto_0
.end method

.method private b(Lcom/google/googlenav/c;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    const-string v1, "0"

    invoke-static {p1}, Li/bl;->i(Lcom/google/googlenav/c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private static b(Lcom/google/googlenav/c;I)V
    .locals 9

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->I()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bz()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v4, v8

    invoke-static {v4}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v3, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private g(Lcom/google/googlenav/c;)V
    .locals 8

    const/4 v7, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/googlenav/c;->bz()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->ax()Lv/t;

    move-result-object v2

    invoke-interface {v2}, Lv/t;->i()Lv/j;

    move-result-object v2

    invoke-interface {v2, v1}, Lv/j;->a(Ljava/lang/String;)Lv/d;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_4

    new-instance v3, Lv/d;

    invoke-direct {v3}, Lv/d;-><init>()V

    invoke-virtual {v3, v1}, Lv/d;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lv/d;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/googlenav/c;->a()Law/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lf/I;->c(Law/e;)Lf/h;

    move-result-object v1

    invoke-virtual {v3, v1}, Lv/d;->a(Lf/h;)V

    move-object v1, v3

    :goto_2
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v3

    invoke-virtual {v3}, Lac/m;->p()Lac/p;

    move-result-object v3

    invoke-interface {v3}, Lac/p;->a()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lv/d;->a(J)V

    invoke-virtual {v1}, Lv/d;->f()I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    move v3, v7

    :cond_2
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lv/d;->a(I)V

    invoke-interface {v2, v1}, Lv/j;->a(Lv/d;)Z

    if-eqz v4, :cond_0

    invoke-static {v0}, Lv/v;->a(Law/e;)Lv/v;

    move-result-object v0

    invoke-interface {v2, v0}, Lv/j;->a(Lv/v;)V

    goto :goto_0

    :cond_3
    move v4, v7

    goto :goto_1

    :cond_4
    move-object v1, v3

    goto :goto_2
.end method

.method private static i(Lcom/google/googlenav/c;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bz()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&gmmsmh=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private i(I)V
    .locals 9

    invoke-virtual {p0}, Li/bl;->bL()Lcom/google/googlenav/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/c;->I()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/googlenav/c;->bz()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x54

    const-string v4, "p"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "f="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Li/bl;->F:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "t="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-wide/16 v7, -0x1

    cmp-long v7, v1, v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    aput-object v1, v5, v6

    const/4 v1, 0x3

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "u="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v5, v1

    invoke-static {v5}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string v1, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static j(Lcom/google/googlenav/c;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/googlenav/c;->I()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aR()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static k(Lcom/google/googlenav/c;)Z
    .locals 4

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->I()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l(Lcom/google/googlenav/c;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->a()Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected G()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Li/bl;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Li/bl;->G:Z

    if-nez v0, :cond_0

    iput v1, p0, Li/bl;->F:I

    invoke-direct {p0}, Li/bl;->L()V

    :cond_0
    iput-boolean v1, p0, Li/bl;->G:Z

    iget-object v0, p0, Li/bl;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->d_()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Li/bl;->h(I)V

    :cond_1
    invoke-super {p0}, Li/x;->G()V

    invoke-virtual {p0}, Li/bl;->bL()Lcom/google/googlenav/c;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Li/bl;->a(ILcom/google/googlenav/c;)V

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Li/bl;->h(I)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->D()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Li/bl;->b(Lcom/google/googlenav/c;)V

    :cond_2
    invoke-direct {p0, v0}, Li/bl;->g(Lcom/google/googlenav/c;)V

    :cond_3
    return-void
.end method

.method public H()[Lax/e;
    .locals 3

    iget-object v0, p0, Li/bl;->k:Lcom/google/googlenav/j;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Li/bl;->H:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/bl;->bL()Lcom/google/googlenav/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/c;->ai()Lcom/google/googlenav/aB;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/c;->ai()Lcom/google/googlenav/aB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aB;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lax/e;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/googlenav/ui/w;->ah:Lax/e;

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Li/bl;->e:[Lax/e;

    goto :goto_0
.end method

.method protected K()V
    .locals 0

    return-void
.end method

.method protected Q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected R()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected a(Lcom/google/googlenav/c;)Lak/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(ILcom/google/googlenav/c;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/googlenav/c;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/googlenav/c;->au()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, LaO/c;->a(Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/google/googlenav/aH;Lcom/google/googlenav/bf;I)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Li/x;->a(Lcom/google/googlenav/aH;Lcom/google/googlenav/bf;I)V

    check-cast p2, Lcom/google/googlenav/c;

    if-eqz p2, :cond_1

    invoke-static {p3}, Lcom/google/googlenav/bc;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/google/googlenav/c;->O()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/googlenav/aH;->a(Z)Lcom/google/googlenav/aH;

    invoke-virtual {p2}, Lcom/google/googlenav/c;->au()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/googlenav/aH;->b(Ljava/lang/String;)Lcom/google/googlenav/aH;

    :cond_0
    :goto_0
    const/16 v1, 0xa

    if-ne p3, v1, :cond_1

    invoke-virtual {p2}, Lcom/google/googlenav/c;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/googlenav/aH;->c(Ljava/lang/String;)Lcom/google/googlenav/aH;

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/google/googlenav/c;->V()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/google/googlenav/bF;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/googlenav/aH;->b(Ljava/lang/String;)Lcom/google/googlenav/aH;

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/google/googlenav/c;->Y()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/google/googlenav/c;->aJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/googlenav/aH;->b(Ljava/lang/String;)Lcom/google/googlenav/aH;

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/google/googlenav/c;->I()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/google/googlenav/c;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/googlenav/aH;->b(Ljava/lang/String;)Lcom/google/googlenav/aH;

    goto :goto_0
.end method

.method protected a(Lcom/google/googlenav/bG;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->m()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/googlenav/ui/aS;

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->l()Lcom/google/googlenav/bt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bt;->a()Ljava/lang/String;

    move-result-object v1

    sget v2, Lo/bd;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/aS;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Li/bl;->K:LaD/p;

    iget-object v2, p0, Li/bl;->N:LaD/n;

    invoke-virtual {v1, v0, v2}, LaD/p;->a(Lcom/google/googlenav/ui/aS;LaD/n;)V

    goto :goto_0
.end method

.method a(Lcom/google/googlenav/c;I)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p1}, Lcom/google/googlenav/c;->I()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->bz()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x45

    const-string v4, "n"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    cmp-long v7, v0, v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v5, v6

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v5, v9

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Li/bl;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v5}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, v9, p1}, Li/bl;->a(ILcom/google/googlenav/c;)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Li/bl;->h(I)V

    invoke-static {}, LJ/i;->f()LJ/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, LJ/i;->f()LJ/i;

    move-result-object v0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, LJ/i;->a(Lcom/google/googlenav/c;J)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/c;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v10}, Lu/h;->a(Ljava/lang/String;Lf/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lu/h;

    move-result-object v0

    iget-object v1, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-direct {p0}, Li/bl;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v10, v2}, Lcom/google/googlenav/ui/aT;->a(Lu/h;I[Law/e;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method public a(Lcom/google/googlenav/z;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/googlenav/z;Z)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Li/bl;->ad_()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Li/bl;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    :goto_0
    invoke-virtual {p0, v0, p1}, Li/bl;->b(ILjava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Li/bl;->i:Lf/Y;

    iget-object v1, p0, Li/bl;->i:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->e()Lf/h;

    move-result-object v1

    iget-object v2, p0, Li/bl;->i:Lf/Y;

    invoke-virtual {v2}, Lf/Y;->f()Lf/l;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Li/bl;->a(Lf/h;Lf/l;)Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/Y;->b(Lf/h;)V

    return-void

    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Li/bl;->aN()Z

    goto :goto_1
.end method

.method public a(Ljava/util/Vector;)V
    .locals 1

    iget-object v0, p0, Li/bl;->M:LaD/n;

    invoke-virtual {p0, p1, v0}, Li/bl;->a(Ljava/util/Vector;LaD/n;)V

    return-void
.end method

.method public a(Ljava/util/Vector;LaD/n;)V
    .locals 4

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bj;

    invoke-static {v0}, Li/bl;->a(Lcom/google/googlenav/bj;)Lcom/google/googlenav/ui/aS;

    move-result-object v0

    iget-object v3, p0, Li/bl;->K:LaD/p;

    invoke-virtual {v3, v0}, LaD/p;->c(Lcom/google/googlenav/ui/aS;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Li/bl;->K:LaD/p;

    invoke-virtual {v0, v1, p2}, LaD/p;->a(Ljava/util/List;LaD/n;)V

    :cond_2
    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 7

    invoke-virtual {p0}, Li/bl;->bL()Lcom/google/googlenav/c;

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v1, 0x11

    if-eq p1, v1, :cond_2

    invoke-super {p0, p1, p2, p3}, Li/x;->a(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actionIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", layerType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Li/bl;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Li/bl;->k:Lcom/google/googlenav/j;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Li/bl;->k:Lcom/google/googlenav/j;

    invoke-interface {v2}, Lcom/google/googlenav/j;->d_()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Li/bl;->k:Lcom/google/googlenav/j;

    invoke-interface {v2}, Lcom/google/googlenav/j;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/16 v2, 0x4e

    invoke-static {v2, v1}, Lac/g;->a(ILjava/lang/String;)Z

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v1, p0, Li/bl;->F:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Li/bl;->b(I)V

    :cond_3
    sparse-switch p1, :sswitch_data_0

    :cond_4
    invoke-super {p0, p1, p2, p3}, Li/x;->a(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :sswitch_0
    invoke-static {}, LJ/i;->f()LJ/i;

    move-result-object v1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, LJ/i;->a(Lcom/google/googlenav/c;J)V

    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v0, v1}, Li/bl;->b(Lcom/google/googlenav/c;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Li/bl;->aN()Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/bl;->b(Z)V

    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li/bl;->a(Ljava/lang/Object;)V

    goto :goto_2

    :sswitch_2
    invoke-virtual {v0}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v0

    invoke-virtual {v0}, Lf/h;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Li/bl;->n:Lx/J;

    new-instance v2, Li/bf;

    invoke-direct {v2, p0, v0}, Li/bf;-><init>(Li/bl;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lx/J;->a(Lx/j;)V

    :cond_7
    invoke-virtual {p0}, Li/bl;->T()V

    iget-object v1, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    const/4 v2, 0x0

    const-string v3, "21"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Li/bl;->h(I)V

    iget-object v1, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->ae()Lcom/google/googlenav/g;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/c;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/googlenav/c;->m()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/google/googlenav/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_4
    iget-object v1, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/c;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {v0}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/af;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/googlenav/c;->bb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/googlenav/ui/aT;->b(Lf/h;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "a=s"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {p0}, Li/bl;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_6
    invoke-direct {p0, p2}, Li/bl;->i(I)V

    iget-object v1, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, v0}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;Lcom/google/googlenav/c;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_7
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Li/bl;->i(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/d;->ai()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Li/P;->a(Lcom/google/googlenav/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Li/bl;->a(Ljava/lang/String;Lcom/google/googlenav/c;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {v0}, Lcom/google/googlenav/c;->aQ()Z

    move-result v1

    if-eqz v1, :cond_8

    :try_start_0
    iget-object v1, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->ae()Lcom/google/googlenav/g;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/c;->aM()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/g;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "YouTube"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    const/4 v1, 0x2

    const-string v2, "kml"

    invoke-static {v1, v2}, Lac/g;->a(ILjava/lang/String;)Z

    iget-object v1, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    new-instance v2, Lcom/google/googlenav/V;

    invoke-direct {v2}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/c;->aP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/bs;)V

    goto :goto_3

    :sswitch_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Li/bl;->b(I)V

    iget-object v1, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->ba()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;Lf/h;)V

    invoke-direct {p0}, Li/bl;->I()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Li/bl;->a(ILcom/google/googlenav/c;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Li/bl;->h(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li/bl;->b(I)V

    invoke-virtual {p0}, Li/bl;->T()V

    invoke-virtual {p0}, Li/bl;->bK()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_b
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Li/bl;->b(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Li/bl;->a(Lcom/google/googlenav/c;I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_c
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Li/bl;->b(I)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Li/bl;->a(Lcom/google/googlenav/c;I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_d
    iget-object v1, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_e
    iget-object v1, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v1

    invoke-virtual {v1, v0}, Lh/eY;->a(Lcom/google/googlenav/bf;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p0, p2}, Li/bl;->b(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {v0}, Lcom/google/googlenav/c;->bi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v0, "Make a reservation"

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "missing url"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Li/bl;->h(I)V

    iget-object v2, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2, v1, v0}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;Lcom/google/googlenav/c;)V

    goto :goto_4

    :sswitch_11
    if-eqz p3, :cond_a

    check-cast p3, Lcom/google/googlenav/c;

    move-object v6, p3

    :goto_5
    invoke-virtual {v6}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    iget-object v1, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aw()Lv/t;

    move-result-object v1

    invoke-interface {v1}, Lv/t;->i()Lv/j;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Li/bl;->l(Lcom/google/googlenav/c;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v1, -0x1

    if-eq p2, v1, :cond_2a

    invoke-virtual {p0, p2}, Li/bl;->d(I)V

    invoke-virtual {p0}, Li/bl;->bL()Lcom/google/googlenav/c;

    move-result-object v0

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v6}, Lcom/google/googlenav/c;->a()Law/e;

    move-result-object v4

    if-nez v4, :cond_c

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_c
    new-instance v0, Lv/d;

    invoke-virtual {v6}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lv/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Law/e;Z)V

    iget-object v1, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aw()Lv/t;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v2

    invoke-static {v2}, Lv/v;->a(Law/e;)Lv/v;

    move-result-object v2

    iget-object v3, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v3

    const-string v4, "p"

    invoke-interface {v1, v0, v2, v3, v4}, Lv/t;->a(Lv/d;Lv/v;Li/aE;Ljava/lang/String;)Lv/d;

    move-result-object v0

    invoke-virtual {v0}, Lv/d;->g()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Li/bl;->h(I)V

    :goto_6
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/bl;->f(Z)V

    invoke-virtual {p0}, Li/bl;->aF()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Li/bl;->au()V

    :cond_d
    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Li/bl;->h(I)V

    goto :goto_6

    :cond_f
    invoke-virtual {p0}, Li/bl;->aG()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Li/bl;->bI()V

    goto :goto_7

    :sswitch_12
    iget-object v1, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v1

    iget-object v2, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "pp"

    invoke-virtual {v1, v0, v2, v3, v4}, Lh/eY;->a(Lcom/google/googlenav/c;Li/aE;ZLjava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_13
    iget-object v1, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Li/bg;

    invoke-direct {v3, p0, v0}, Li/bg;-><init>(Li/bl;Lcom/google/googlenav/c;)V

    invoke-virtual {v1, v2, v3}, Lh/eY;->a(ILh/bv;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_14
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Li/bl;->i(I)V

    iget-object v1, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v1

    iget-object v2, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Lh/eY;->a(Lcom/google/googlenav/c;Lcom/google/googlenav/ui/aT;ZI)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_15
    const/16 v1, 0xb

    invoke-direct {p0, v1}, Li/bl;->i(I)V

    iget-object v1, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v1

    iget-object v2, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v1, v0, v2, v3, v4}, Lh/eY;->a(Lcom/google/googlenav/c;Lcom/google/googlenav/ui/aT;ZI)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_16
    new-instance v2, Lcom/google/googlenav/h;

    invoke-direct {v2, v0}, Lcom/google/googlenav/h;-><init>(Lcom/google/googlenav/c;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_11

    const-string v1, "cpt"

    :goto_8
    invoke-virtual {v0}, Lcom/google/googlenav/c;->bC()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {v0}, Lcom/google/googlenav/c;->bD()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const-string v0, "cpi"

    :goto_9
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-static {v5}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    iget-object v1, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Lcom/google/googlenav/ui/aT;Lcom/google/googlenav/h;ZZLjava/lang/String;Lh/ae;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_11
    const-string v1, "cpp"

    goto :goto_8

    :cond_12
    const-string v0, "cpn"

    goto :goto_9

    :sswitch_17
    new-instance v1, Lh/cF;

    invoke-direct {v1}, Lh/cF;-><init>()V

    iget-object v2, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->aN()Li/br;

    move-result-object v2

    iput-object v2, v1, Lh/cF;->d:Li/br;

    new-instance v2, Lcom/google/googlenav/h;

    invoke-direct {v2, v0}, Lcom/google/googlenav/h;-><init>(Lcom/google/googlenav/c;)V

    iput-object v2, v1, Lh/cF;->a:Lcom/google/googlenav/h;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lh/cF;->c:Z

    iget-object v0, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    invoke-virtual {v0, v1}, Lh/eY;->a(Lh/cF;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_18
    iget-object v0, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    const/16 v1, 0x13c

    invoke-virtual {v0, v1}, Li/aE;->d(I)V

    iget-object v0, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->g(Z)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_19
    invoke-virtual {p0}, Li/bl;->bL()Lcom/google/googlenav/c;

    move-result-object v0

    iget-object v1, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/c;->ai()Lcom/google/googlenav/aB;

    move-result-object v0

    invoke-virtual {v1, v0}, Lh/eY;->a(Lcom/google/googlenav/aB;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_1a
    iget-object v1, p0, Li/bl;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->ao()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/E;

    if-eqz p1, :cond_13

    invoke-virtual {p1, p2}, Li/E;->b(I)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p1, p2, v0}, Li/E;->b(IZ)V

    const-string v1, "a"

    invoke-direct {p0, v0, v1, p2}, Li/bl;->a(ZLjava/lang/String;I)V

    invoke-virtual {p0}, Li/bl;->bI()V

    :cond_13
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_14
    const/4 v0, 0x0

    goto :goto_a

    :sswitch_1b
    iget-object v1, p0, Li/bl;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->ao()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/E;

    if-eqz p1, :cond_15

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Li/E;->a(II)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    :goto_b
    invoke-virtual {p1, p2, v1, v0}, Li/E;->a(IZI)V

    const-string v0, "j"

    invoke-direct {p0, v1, v0, p2}, Li/bl;->a(ZLjava/lang/String;I)V

    invoke-virtual {p0}, Li/bl;->bI()V

    :cond_15
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_16
    const/4 v1, 0x0

    goto :goto_b

    :sswitch_1c
    iget-object v1, p0, Li/bl;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->ao()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/E;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Li/E;->b()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {p1, v0}, Li/E;->b(Z)V

    const-string v1, "je"

    invoke-direct {p0, v0, v1, p2}, Li/bl;->a(ZLjava/lang/String;I)V

    invoke-virtual {p0}, Li/bl;->bI()V

    :cond_17
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_18
    const/4 v0, 0x0

    goto :goto_c

    :sswitch_1d
    iget-object v1, p0, Li/bl;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->ao()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/E;

    if-eqz p1, :cond_19

    invoke-virtual {p1, p2}, Li/E;->a(I)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {p1, p2, v0}, Li/E;->a(IZ)V

    const-string v1, "f"

    invoke-direct {p0, v0, v1, p2}, Li/bl;->a(ZLjava/lang/String;I)V

    invoke-virtual {p0}, Li/bl;->bI()V

    :cond_19
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_d

    :sswitch_1e
    iget-object v1, p0, Li/bl;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->ao()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/E;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Li/E;->a()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p1, v0}, Li/E;->a(Z)V

    const-string v1, "g"

    invoke-direct {p0, v0, v1, p2}, Li/bl;->a(ZLjava/lang/String;I)V

    invoke-virtual {p0}, Li/bl;->bI()V

    :cond_1b
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_e

    :sswitch_1f
    iget-object v1, p0, Li/bl;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->ao()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/E;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Li/E;->c()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p1, v0}, Li/E;->c(Z)V

    const-string v1, "s"

    invoke-direct {p0, v0, v1, p2}, Li/bl;->a(ZLjava/lang/String;I)V

    invoke-virtual {p0}, Li/bl;->bI()V

    :cond_1d
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_f

    :sswitch_20
    iget-object v1, p0, Li/bl;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->ao()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/E;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Li/E;->d()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {p1, v0}, Li/E;->d(Z)V

    const-string v1, "d"

    invoke-direct {p0, v0, v1, p2}, Li/bl;->a(ZLjava/lang/String;I)V

    invoke-virtual {p0}, Li/bl;->bI()V

    :cond_1f
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_20
    const/4 v0, 0x0

    goto :goto_10

    :sswitch_21
    iget-object v1, p0, Li/bl;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->ao()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/E;

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Li/E;->e()Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {p1, v0}, Li/E;->e(Z)V

    const-string v1, "h"

    invoke-direct {p0, v0, v1, p2}, Li/bl;->a(ZLjava/lang/String;I)V

    invoke-virtual {p0}, Li/bl;->bI()V

    :cond_21
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_22
    const/4 v0, 0x0

    goto :goto_11

    :sswitch_22
    iget-object v1, p0, Li/bl;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->ao()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/E;

    if-eqz p1, :cond_23

    invoke-virtual {p1, p2}, Li/E;->c(I)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p1, p2, v0}, Li/E;->c(IZ)V

    const-string v1, "r"

    invoke-direct {p0, v0, v1, p2}, Li/bl;->a(ZLjava/lang/String;I)V

    invoke-virtual {p0}, Li/bl;->bI()V

    :cond_23
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_24
    const/4 v0, 0x0

    goto :goto_12

    :sswitch_23
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1, p2}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;ZI)V

    :cond_25
    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_24
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Li/bl;->b(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_25
    check-cast p3, [Lcom/google/googlenav/bu;

    check-cast p3, [Lcom/google/googlenav/bu;

    if-eqz p3, :cond_26

    iget-object v0, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lh/eY;->a([Lcom/google/googlenav/bu;I)V

    :cond_26
    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_26
    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_27

    iget-object v0, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lh/eY;->a(Ljava/lang/String;I)V

    :cond_27
    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_27
    const/4 v0, 0x1

    iget-object v1, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->c(Z)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_28
    iget-object v1, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/googlenav/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/ui/aT;->a(Lf/h;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_29
    iget-object v0, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    check-cast p3, Lcom/google/googlenav/c;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v1, v2}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/c;BZ)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_2a
    invoke-virtual {p0}, Li/bl;->N_()V

    if-eqz p3, :cond_28

    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-virtual {p0, v0, v1}, Li/bl;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_28
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Li/bl;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :sswitch_2b
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v0, "LaunchUrl"

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "missing url"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_14
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_29
    invoke-virtual {p0, p3}, Li/bl;->c(Ljava/lang/String;)V

    iget-object v1, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1, p3, v0}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;Lcom/google/googlenav/c;)V

    goto :goto_14

    :cond_2a
    move-object v6, v0

    goto/16 :goto_5

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_0
        0x4 -> :sswitch_e
        0x5 -> :sswitch_2b
        0x6 -> :sswitch_d
        0xf -> :sswitch_f
        0x10 -> :sswitch_0
        0x11 -> :sswitch_23
        0x12 -> :sswitch_27
        0x14 -> :sswitch_28
        0xc9 -> :sswitch_19
        0x14e -> :sswitch_18
        0x258 -> :sswitch_9
        0x25a -> :sswitch_2
        0x25b -> :sswitch_a
        0x25c -> :sswitch_b
        0x25f -> :sswitch_c
        0x2bf -> :sswitch_3
        0x2c0 -> :sswitch_4
        0x2c1 -> :sswitch_8
        0x2c2 -> :sswitch_7
        0x2c3 -> :sswitch_10
        0x2ce -> :sswitch_6
        0x2cf -> :sswitch_6
        0x3fa -> :sswitch_29
        0x578 -> :sswitch_11
        0x5dc -> :sswitch_5
        0x6a4 -> :sswitch_12
        0x713 -> :sswitch_2a
        0x76c -> :sswitch_14
        0x79e -> :sswitch_15
        0x834 -> :sswitch_16
        0x843 -> :sswitch_17
        0x8fc -> :sswitch_1a
        0x8fd -> :sswitch_1d
        0x8fe -> :sswitch_1e
        0x8ff -> :sswitch_1f
        0x900 -> :sswitch_20
        0x901 -> :sswitch_24
        0x902 -> :sswitch_21
        0x903 -> :sswitch_1b
        0x904 -> :sswitch_1c
        0x906 -> :sswitch_22
        0x907 -> :sswitch_26
        0x908 -> :sswitch_25
        0x909 -> :sswitch_13
    .end sparse-switch
.end method

.method public a(Lf/N;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Li/bl;->c(Lf/N;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lf/N;->g()Lf/h;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Li/bl;->a(Lf/h;I)Z

    move-result v0

    goto :goto_0
.end method

.method protected aP()V
    .locals 0

    invoke-virtual {p0}, Li/bl;->bM()V

    return-void
.end method

.method public ab_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ac_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected ad_()V
    .locals 0

    return-void
.end method

.method protected ag()V
    .locals 1

    iget-object v0, p0, Li/bl;->v:Lx/J;

    if-eqz v0, :cond_1

    iget v0, p0, Li/bl;->F:I

    if-nez v0, :cond_0

    iget-object v0, p0, Li/bl;->v:Lx/J;

    invoke-virtual {p0, v0}, Li/bl;->b(Lx/J;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Li/bl;->v:Lx/J;

    :cond_1
    return-void
.end method

.method protected am()V
    .locals 3

    iget-object v0, p0, Li/bl;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/c;->ak()Lcom/google/googlenav/bj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Li/bl;->a(Lcom/google/googlenav/bj;)Lcom/google/googlenav/ui/aS;

    move-result-object v0

    iget-object v1, p0, Li/bl;->K:LaD/p;

    invoke-virtual {v1, v0}, LaD/p;->c(Lcom/google/googlenav/ui/aS;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Li/bl;->K:LaD/p;

    iget-object v2, p0, Li/bl;->N:LaD/n;

    invoke-virtual {v1, v0, v2}, LaD/p;->a(Lcom/google/googlenav/ui/aS;LaD/n;)V

    goto :goto_0
.end method

.method protected an()V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Li/bl;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/c;->bF()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/c;->bH()Ljava/util/Vector;

    move-result-object v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    move v5, v8

    :goto_1
    if-ge v5, v4, :cond_4

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Lcom/google/googlenav/ui/aS;

    const/16 v7, 0x10

    invoke-direct {v6, v0, v7}, Lcom/google/googlenav/ui/aS;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Li/bl;->K:LaD/p;

    invoke-virtual {v0, v6}, LaD/p;->c(Lcom/google/googlenav/ui/aS;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    move v4, v8

    :goto_2
    if-ge v4, v1, :cond_6

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Lcom/google/googlenav/ui/aS;

    sget v6, Lcom/google/googlenav/ui/aV;->bS:I

    invoke-direct {v5, v0, v6}, Lcom/google/googlenav/ui/aS;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Li/bl;->K:LaD/p;

    invoke-virtual {v0, v5}, LaD/p;->c(Lcom/google/googlenav/ui/aS;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Li/bl;->K:LaD/p;

    iget-object v1, p0, Li/bl;->N:LaD/n;

    invoke-virtual {v0, v3, v1}, LaD/p;->a(Ljava/util/List;LaD/n;)V

    goto :goto_0
.end method

.method protected ar()I
    .locals 1

    iget v0, p0, Li/bl;->F:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Li/x;->ar()I

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    iget v0, p0, Li/bl;->a:I

    goto :goto_0

    :sswitch_1
    iget v0, p0, Li/bl;->b:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected b(I)V
    .locals 2

    iget v0, p0, Li/bl;->F:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Li/bl;->i(I)V

    invoke-direct {p0}, Li/bl;->N()V

    iget v0, p0, Li/bl;->F:I

    iput p1, p0, Li/bl;->F:I

    iget v1, p0, Li/bl;->F:I

    if-nez v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Li/bl;->n:Lx/J;

    if-eqz v0, :cond_2

    iget-object v0, p0, Li/bl;->n:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    :cond_2
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/bl;->e(Z)V

    invoke-virtual {p0}, Li/bl;->aj()V

    iget v0, p0, Li/bl;->F:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Li/bl;->L()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Li/bl;->aa()V

    goto :goto_1
.end method

.method public b(Lcom/google/googlenav/z;)V
    .locals 1

    iget-object v0, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->d()Lh/fc;

    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    instance-of v0, p0, Li/av;

    if-eqz v0, :cond_1

    iget-object v0, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    new-instance v1, Lh/fc;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lh/fc;-><init>(I)V

    invoke-virtual {v0, v1}, Lh/l;->a(Lh/fc;)V

    :cond_0
    :goto_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    new-instance v3, Lcom/google/googlenav/n;

    const-string v4, ""

    invoke-direct {v3, v5, v4, p2}, Lcom/google/googlenav/n;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/googlenav/aN;

    const/16 v4, 0xf9

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4, v2}, Lcom/google/googlenav/aN;-><init>(ILjava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    new-instance v2, Lcom/google/googlenav/V;

    invoke-direct {v2}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/V;->a(Ljava/util/Hashtable;)Lcom/google/googlenav/V;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v0

    const/16 v2, 0x449

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/V;->c(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    move-result-object v0

    const-string v2, "20"

    invoke-virtual {v0, v2}, Lcom/google/googlenav/V;->b(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/V;->e(I)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/V;->a(Lcom/google/googlenav/a;)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/bs;)V

    return-void

    :cond_1
    instance-of v0, p0, Li/aw;

    if-nez v0, :cond_0

    iget-object v0, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    new-instance v1, Lh/fc;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lh/fc;-><init>(I)V

    invoke-virtual {v0, v1}, Lh/l;->a(Lh/fc;)V

    goto :goto_0
.end method

.method b(Lcom/google/googlenav/c;Z)Z
    .locals 4

    const/4 v1, 0x5

    invoke-direct {p0}, Li/bl;->B()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v1, p1}, Li/bl;->a(ILcom/google/googlenav/c;)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Li/bl;->h(I)V

    iget-object v0, p0, Li/bl;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    invoke-static {p1, v0}, Li/bl;->b(Lcom/google/googlenav/c;I)V

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aF()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->g(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ae()Lcom/google/googlenav/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Li/I;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Li/I;-><init>(Li/bl;Lcom/google/googlenav/c;Li/bj;)V

    invoke-interface {v0, v1, v2, p2}, Lcom/google/googlenav/g;->a(Ljava/lang/String;Lcom/google/googlenav/p;Z)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lf/N;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Li/bl;->c(Lf/N;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lf/N;->g()Lf/h;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Li/bl;->a(Lf/h;I)Z

    move-result v0

    goto :goto_0
.end method

.method protected bA()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected bB()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bG()Lcom/google/googlenav/ui/aG;
    .locals 1

    iget-object v0, p0, Li/bl;->I:Lcom/google/googlenav/ui/aG;

    return-object v0
.end method

.method public bH()Lcom/google/googlenav/ui/ax;
    .locals 1

    iget-object v0, p0, Li/bl;->c:Lcom/google/googlenav/ui/ax;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/ax;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/ax;-><init>(Lcom/google/googlenav/ui/aY;)V

    iput-object v0, p0, Li/bl;->c:Lcom/google/googlenav/ui/ax;

    :cond_0
    iget-object v0, p0, Li/bl;->c:Lcom/google/googlenav/ui/ax;

    return-object v0
.end method

.method public bI()V
    .locals 1

    iget-object v0, p0, Li/bl;->n:Lx/J;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/bl;->aG()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Li/bl;->F:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/bl;->f(Z)V

    invoke-virtual {p0}, Li/bl;->bs()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Li/bl;->B:Li/aG;

    invoke-interface {v0}, Li/aG;->c()Lx/J;

    :cond_2
    iget-object v0, p0, Li/bl;->n:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/bl;->n:Lx/J;

    invoke-interface {v0}, Lx/J;->f()V

    goto :goto_0
.end method

.method public bJ()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Li/bl;->d:Ljava/util/Hashtable;

    return-object v0
.end method

.method bK()V
    .locals 13

    const/4 v12, 0x6

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, -0x1

    invoke-virtual {p0}, Li/bl;->bL()Lcom/google/googlenav/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/c;->I()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/googlenav/c;->bz()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    const-string v5, "sd"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-wide/16 v7, -0x1

    cmp-long v7, v2, v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    aput-object v2, v6, v11

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v6, v10

    invoke-static {v6}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, LJ/i;->f()LJ/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, LJ/i;->f()LJ/i;

    move-result-object v0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, LJ/i;->a(Lcom/google/googlenav/c;J)V

    :cond_0
    iget-object v0, p0, Li/bl;->k:Lcom/google/googlenav/j;

    instance-of v0, v0, Lcom/google/googlenav/bm;

    if-eqz v0, :cond_5

    iget-object v0, p0, Li/bl;->k:Lcom/google/googlenav/j;

    check-cast v0, Lcom/google/googlenav/bm;

    invoke-virtual {v0}, Lcom/google/googlenav/bm;->a()Lcom/google/googlenav/j;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/z;

    invoke-virtual {v0}, Lcom/google/googlenav/z;->c()I

    move-result v2

    if-ne v2, v9, :cond_1

    new-instance v0, Lcom/google/googlenav/z;

    new-array v2, v10, [Lcom/google/googlenav/c;

    aput-object v1, v2, v11

    iget-object v3, p0, Li/bl;->i:Lf/Y;

    invoke-virtual {v3}, Lf/Y;->h()Lf/C;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lf/C;->a(Lf/h;)Lf/C;

    move-result-object v3

    invoke-direct {v0, v2, v3, v9, v9}, Lcom/google/googlenav/z;-><init>([Lcom/google/googlenav/c;Lf/C;II)V

    :cond_1
    iget-object v2, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v2

    new-instance v3, Lh/fc;

    invoke-direct {v3, v12, v0}, Lh/fc;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Lh/l;->a(Lh/fc;)V

    :cond_2
    :goto_2
    invoke-virtual {p0, v10, v1}, Li/bl;->a(ILcom/google/googlenav/c;)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Li/bl;->h(I)V

    invoke-virtual {p0}, Li/bl;->R()Z

    move-result v0

    invoke-virtual {p0}, Li/bl;->Q()Z

    move-result v2

    invoke-static {v1, v0, v2}, Li/bl;->a(Lcom/google/googlenav/c;ZZ)Lu/h;

    move-result-object v0

    iget-object v1, p0, Li/bl;->i:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->e()Lf/h;

    move-result-object v1

    iget-object v2, p0, Li/bl;->i:Lf/Y;

    invoke-virtual {v2}, Lf/Y;->a()I

    move-result v2

    iget-object v3, p0, Li/bl;->i:Lf/Y;

    invoke-virtual {v3}, Lf/Y;->b()I

    move-result v3

    iget-object v4, p0, Li/bl;->i:Lf/Y;

    invoke-virtual {v4}, Lf/Y;->f()Lf/l;

    move-result-object v4

    invoke-virtual {v4}, Lf/l;->a()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lf/I;->a(Lf/h;III)Law/e;

    move-result-object v1

    iget-object v2, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/ui/aT;->a(Lu/h;Lu/h;Law/e;)V

    return-void

    :cond_3
    const-string v2, ""

    goto/16 :goto_0

    :cond_4
    const-string v0, ""

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Li/bl;->k:Lcom/google/googlenav/j;

    instance-of v0, v0, Lcom/google/googlenav/aR;

    if-eqz v0, :cond_6

    iget-object v0, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    new-instance v2, Lh/fc;

    const/16 v3, 0x1a

    invoke-virtual {v1}, Lcom/google/googlenav/c;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lh/fc;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lh/l;->a(Lh/fc;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Li/bl;->k:Lcom/google/googlenav/j;

    instance-of v0, v0, Lcom/google/googlenav/aY;

    if-eqz v0, :cond_2

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Lcom/google/googlenav/c;->a(B)V

    new-instance v0, Lcom/google/googlenav/z;

    new-array v2, v10, [Lcom/google/googlenav/c;

    aput-object v1, v2, v11

    iget-object v3, p0, Li/bl;->i:Lf/Y;

    invoke-virtual {v3}, Lf/Y;->h()Lf/C;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lf/C;->a(Lf/h;)Lf/C;

    move-result-object v3

    invoke-direct {v0, v2, v3, v9, v9}, Lcom/google/googlenav/z;-><init>([Lcom/google/googlenav/c;Lf/C;II)V

    iget-object v2, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v2

    new-instance v3, Lh/fc;

    invoke-direct {v3, v12, v0}, Lh/fc;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Lh/l;->a(Lh/fc;)V

    goto/16 :goto_2
.end method

.method public bL()Lcom/google/googlenav/c;
    .locals 0

    invoke-virtual {p0}, Li/bl;->ac()Lcom/google/googlenav/bf;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/c;

    return-object p0
.end method

.method protected bM()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Li/bl;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/c;->bB()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/c;->c(Z)V

    invoke-virtual {v0}, Lcom/google/googlenav/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/googlenav/ad;

    new-instance v3, Li/bb;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, Li/bb;-><init>(Li/bl;Lcom/google/googlenav/c;Li/bj;)V

    invoke-direct {v2, v3, v1}, Lcom/google/googlenav/ad;-><init>(Lcom/google/googlenav/bh;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/google/googlenav/ad;->a(Z)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lak/h;->c(Lak/d;)V

    goto :goto_0
.end method

.method protected bN()Z
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Li/bl;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/bl;->K()V

    iget v0, p0, Li/bl;->F:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, v1}, Li/bl;->b(I)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Li/bl;->b(I)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public bO()I
    .locals 1

    iget v0, p0, Li/bl;->F:I

    return v0
.end method

.method public bP()Li/br;
    .locals 1

    iget-object v0, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->Y()Li/br;

    move-result-object v0

    return-object v0
.end method

.method public bQ()LaD/t;
    .locals 1

    iget-object v0, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->av()LaD/t;

    move-result-object v0

    return-object v0
.end method

.method public bn()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Li/bl;->aG()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://maps.google.com/maps/place?cid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Li/bl;->bL()Lcom/google/googlenav/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Li/bl;->bL()Lcom/google/googlenav/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/c;->I()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bs()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bx()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public by()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bz()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/google/googlenav/c;Z)Lk/l;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/c;->aZ()Lcom/google/googlenav/aG;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {v0}, Lcom/google/googlenav/aG;->a()Lk/l;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Li/bl;->f:Lcom/google/googlenav/ui/aV;

    const v2, 0x7f020004

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aV;->a(I)Lk/l;

    move-result-object v1

    invoke-static {v1}, Lk/e;->d(Lk/l;)Lk/l;

    move-result-object v1

    invoke-interface {v1}, Lk/l;->d()Lk/m;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/aG;->a()Lk/l;

    move-result-object v3

    invoke-interface {v1}, Lk/l;->f()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/googlenav/aG;->e()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-interface {v1}, Lk/l;->e()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/googlenav/aG;->f()I

    move-result v0

    sub-int v0, v5, v0

    div-int/lit8 v0, v0, 0x2

    invoke-interface {v2, v3, v4, v0}, Lk/m;->a(Lk/l;II)V

    move-object v0, v1

    goto :goto_0
.end method

.method public c(Lf/N;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Li/bl;->bN()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Li/x;->d()V

    goto :goto_0
.end method

.method public d(Lcom/google/googlenav/c;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/google/googlenav/c;->ba()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e(Lcom/google/googlenav/c;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f(Lax/c;)Z
    .locals 3

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Li/bl;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f(Lcom/google/googlenav/c;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 1

    invoke-virtual {p0}, Li/bl;->aI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/bl;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/bl;->b(B)V

    :cond_0
    invoke-super {p0}, Li/x;->h()V

    return-void
.end method

.method protected h(Lcom/google/googlenav/c;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected k()V
    .locals 0

    invoke-virtual {p0}, Li/bl;->am()V

    return-void
.end method

.method protected l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected m()LN/j;
    .locals 1

    new-instance v0, LN/f;

    invoke-direct {v0, p0}, LN/f;-><init>(Li/x;)V

    return-object v0
.end method

.method protected m(Lcom/google/googlenav/c;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Li/bl;->l(Lcom/google/googlenav/c;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aw()Lv/t;

    move-result-object v1

    invoke-interface {v1}, Lv/t;->i()Lv/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lv/j;->a(Ljava/lang/String;)Lv/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lv/d;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method protected n(Lcom/google/googlenav/c;)Z
    .locals 6

    invoke-virtual {p0, p1}, Li/bl;->a(Lcom/google/googlenav/c;)Lak/d;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    const/16 v1, 0x227

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lh/l;->a:Lh/fc;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;Lak/i;Lh/fc;J)V

    :cond_0
    invoke-virtual {p0}, Li/bl;->aa()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->C()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized r_()Lc/p;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Li/bl;->J:Lc/p;

    if-nez v0, :cond_0

    iget-object v0, p0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->av()LaD/t;

    move-result-object v0

    invoke-virtual {v0}, LaD/t;->a()LaD/r;

    move-result-object v0

    new-instance v1, Lc/p;

    const/4 v2, 0x0

    sget v3, Lcom/google/googlenav/ui/aV;->bG:I

    invoke-direct {v1, v0, v2, v3}, Lc/p;-><init>(LaD/r;Lo/aH;I)V

    iput-object v1, p0, Li/bl;->J:Lc/p;

    :cond_0
    iget-object v0, p0, Li/bl;->J:Lc/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public s_()V
    .locals 0

    invoke-virtual {p0}, Li/bl;->bI()V

    invoke-virtual {p0}, Li/bl;->am()V

    invoke-virtual {p0}, Li/bl;->an()V

    return-void
.end method

.method public y()V
    .locals 1

    iget-object v0, p0, Li/bl;->K:LaD/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/bl;->K:LaD/p;

    invoke-virtual {v0}, LaD/p;->a()V

    :cond_0
    iget-object v0, p0, Li/bl;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    invoke-super {p0}, Li/x;->y()V

    return-void
.end method
