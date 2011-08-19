.class public Lcom/google/googlenav/ui/F;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/aY;


# instance fields
.field private a:Lcom/google/googlenav/ui/A;

.field private b:Ljava/util/List;

.field private c:Ljava/lang/String;

.field private final d:LaU/a;

.field private final e:Lh/eY;

.field private f:Lcom/google/googlenav/ui/bT;

.field private g:Z

.field private h:Lx/J;

.field private i:Lx/J;


# direct methods
.method public constructor <init>(LaU/a;Lh/eY;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/F;->d:LaU/a;

    iput-object p2, p0, Lcom/google/googlenav/ui/F;->e:Lh/eY;

    new-instance v0, Lcom/google/googlenav/ui/A;

    invoke-direct {v0}, Lcom/google/googlenav/ui/A;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/F;->a:Lcom/google/googlenav/ui/A;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/F;)Lh/eY;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->e:Lh/eY;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/F;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/F;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    if-eqz p3, :cond_1

    const/4 v2, 0x2

    :goto_0
    add-int/2addr v1, v2

    const-string v2, ","

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eqz p3, :cond_2

    :goto_1
    sub-int/2addr v2, v3

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v0, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v2, v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lx/B;
    .locals 15

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    sget-object v3, Lcom/google/googlenav/ui/av;->ar:Lcom/google/googlenav/ui/av;

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v3, ""

    sget-object v4, Lcom/google/googlenav/ui/av;->as:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/google/googlenav/ui/av;->as:Lcom/google/googlenav/ui/av;

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v3, ""

    sget-object v4, Lcom/google/googlenav/ui/av;->as:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/google/googlenav/ui/av;->as:Lcom/google/googlenav/ui/av;

    move-object/from16 v0, p4

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v3}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v8

    new-instance v11, Lx/n;

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v3, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    move-object/from16 v0, p5

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    const/16 v3, 0x1f5

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v3}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v4, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    move-object/from16 v0, p6

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v3

    const/16 v4, 0x1f6

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v11, v2, v3, v4, v5}, Lx/n;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    new-instance v2, Lx/B;

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v14}, Lx/B;-><init>(ILjava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/util/Vector;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lx/C;Lx/n;Lx/n;[Lax/e;Lx/D;)V

    return-object v2
.end method

.method static synthetic a(Lcom/google/googlenav/ui/F;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/F;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/F;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/F;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/F;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/F;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/login/j;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/F;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/googlenav/ui/F;->a:Lcom/google/googlenav/ui/A;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/A;->a()V

    :try_start_0
    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/googlenav/login/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/google/googlenav/ui/F;->d:LaU/a;

    new-instance v2, Lcom/google/googlenav/ui/p;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/ui/p;-><init>(Lcom/google/googlenav/ui/F;Ljava/lang/String;)V

    invoke-interface {v1, v2}, LaU/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/F;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/16 v0, 0x31b

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x319

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0xc0

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0x5d

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/F;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lx/B;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lx/B;->y:Z

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/F;->i:Lx/J;

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->i:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 9

    const/4 v8, -0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/util/Vector;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/Vector;-><init>(I)V

    iput-object p1, p0, Lcom/google/googlenav/ui/F;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/google/googlenav/ui/F;->c:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/av;

    new-instance v5, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v5}, Lcom/google/googlenav/ui/aQ;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v0, Lcom/google/googlenav/av;->a:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v6}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v5, 0xa8c

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v2, v5

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x314

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0xa8d

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Lx/B;

    const/4 v1, 0x2

    const/16 v2, 0x31c

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/F;->h:Lx/J;

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->h:Lx/J;

    invoke-interface {v0, v8}, Lx/J;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/F;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/ui/F;->g:Z

    return p1
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->f:Lcom/google/googlenav/ui/bT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->f:Lcom/google/googlenav/ui/bT;

    invoke-interface {v0}, Lcom/google/googlenav/ui/bT;->g()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/F;->f:Lcom/google/googlenav/ui/bT;

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/F;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/F;->b()V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/F;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/F;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->d:LaU/a;

    new-instance v1, Lcom/google/googlenav/ui/k;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/k;-><init>(Lcom/google/googlenav/ui/F;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->f:Lcom/google/googlenav/ui/bT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->f:Lcom/google/googlenav/ui/bT;

    invoke-interface {v0, p1, p2}, Lcom/google/googlenav/ui/bT;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/F;->f:Lcom/google/googlenav/ui/bT;

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/F;)LaU/a;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->d:LaU/a;

    return-object v0
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->f:Lcom/google/googlenav/ui/bT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->f:Lcom/google/googlenav/ui/bT;

    invoke-interface {v0}, Lcom/google/googlenav/ui/bT;->y_()V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 11

    const/4 v4, 0x0

    const/4 v1, 0x0

    new-instance v9, Lcom/google/googlenav/ui/l;

    invoke-direct {v9, p0}, Lcom/google/googlenav/ui/l;-><init>(Lcom/google/googlenav/ui/F;)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v7

    const/16 v0, 0x453

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x270

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object v0, p1

    move v5, v4

    move-object v8, v1

    move-object v10, v1

    invoke-static/range {v0 .. v10}, Lx/C;->a(Ljava/lang/String;Lx/G;Ljava/lang/String;Ljava/lang/String;IZZZLx/U;Lx/U;Ljava/util/Vector;)Lx/C;

    move-result-object v0

    new-instance v2, Lx/i;

    invoke-direct {v2, v1, v4, v0, v1}, Lx/i;-><init>(Ljava/lang/String;ILx/C;[Lax/e;)V

    new-instance v0, Lcom/google/googlenav/ui/m;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/m;-><init>(Lcom/google/googlenav/ui/F;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/F;->a:Lcom/google/googlenav/ui/A;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/A;->a(Lx/i;Lcom/google/googlenav/ui/aY;)V

    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/ui/F;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/F;->g:Z

    return v0
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->f:Lcom/google/googlenav/ui/bT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->f:Lcom/google/googlenav/ui/bT;

    invoke-interface {v0}, Lcom/google/googlenav/ui/bT;->j()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/F;->f:Lcom/google/googlenav/ui/bT;

    return-void
.end method

.method static synthetic e(Lcom/google/googlenav/ui/F;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/F;->f()V

    return-void
.end method

.method static synthetic f(Lcom/google/googlenav/ui/F;)Lcom/google/googlenav/ui/A;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->a:Lcom/google/googlenav/ui/A;

    return-object v0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->f:Lcom/google/googlenav/ui/bT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->f:Lcom/google/googlenav/ui/bT;

    invoke-interface {v0}, Lcom/google/googlenav/ui/bT;->h()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/F;->f:Lcom/google/googlenav/ui/bT;

    return-void
.end method

.method private g()V
    .locals 7

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->e:Lh/eY;

    const/16 v1, 0x198

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lh/l;->a:Lh/fc;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V

    new-instance v0, Lcom/google/googlenav/aM;

    const-string v1, "twitter"

    new-instance v2, Lcom/google/googlenav/ui/o;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/o;-><init>(Lcom/google/googlenav/ui/F;)V

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/aM;-><init>(Ljava/lang/String;Lcom/google/googlenav/bE;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method static synthetic g(Lcom/google/googlenav/ui/F;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/F;->e()V

    return-void
.end method

.method static synthetic h(Lcom/google/googlenav/ui/F;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->c:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->i:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->i:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/F;->i:Lx/J;

    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->h:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->h:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/F;->h:Lx/J;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/F;->h()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/F;->i()V

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->a:Lcom/google/googlenav/ui/A;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->a:Lcom/google/googlenav/ui/A;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/A;->b()V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/F;->e:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/bT;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/F;->f:Lcom/google/googlenav/ui/bT;

    invoke-direct {p0}, Lcom/google/googlenav/ui/F;->g()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/bT;)V
    .locals 0

    iput-object p3, p0, Lcom/google/googlenav/ui/F;->f:Lcom/google/googlenav/ui/bT;

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/F;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/google/googlenav/ui/F;->c()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/F;->h()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/F;->g()V

    move v0, v3

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/google/googlenav/ui/F;->h()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/F;->e()V

    move v0, v3

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/google/googlenav/ui/F;->i()V

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/av;

    iget-object v1, v0, Lcom/google/googlenav/av;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/googlenav/av;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/ui/F;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/ui/F;->b()V

    goto :goto_1

    :sswitch_3
    invoke-direct {p0}, Lcom/google/googlenav/ui/F;->i()V

    iget-object v0, p0, Lcom/google/googlenav/ui/F;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, LT/d;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/n;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/n;-><init>(Lcom/google/googlenav/ui/F;)V

    invoke-direct {v0, v1, v2}, LT/d;-><init>(LT/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LT/d;->b()V

    :goto_2
    move v0, v3

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/googlenav/ui/F;->b()V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f5 -> :sswitch_0
        0x1f6 -> :sswitch_1
        0xa8c -> :sswitch_2
        0xa8d -> :sswitch_3
    .end sparse-switch
.end method

.method public d()V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/F;->e()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/F;->a()V

    return-void
.end method
