.class public Lcom/google/googlenav/aY;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/j;


# static fields
.field private static final w:LA/i;


# instance fields
.field private a:Lf/r;

.field private final b:Lf/v;

.field private final c:Lf/Y;

.field private final d:Lcom/google/googlenav/layer/s;

.field private e:Ljava/lang/String;

.field private f:B

.field private g:B

.field private h:Ljava/util/Vector;

.field private i:I

.field private j:Z

.field private final k:Ljava/util/Hashtable;

.field private final l:Ljava/util/Hashtable;

.field private final m:Ljava/util/Hashtable;

.field private n:Lcom/google/googlenav/bF;

.field private o:Lf/K;

.field private p:Lf/U;

.field private q:Lf/C;

.field private r:[Lf/K;

.field private s:Lcom/google/googlenav/l;

.field private t:I

.field private u:[Lcom/google/googlenav/bF;

.field private v:Li/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/googlenav/I;

    invoke-direct {v0}, Lcom/google/googlenav/I;-><init>()V

    sput-object v0, Lcom/google/googlenav/aY;->w:LA/i;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/layer/s;Lf/r;Lf/v;Lf/Y;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/google/googlenav/aY;->i:I

    iput-boolean v1, p0, Lcom/google/googlenav/aY;->j:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/aY;->k:Ljava/util/Hashtable;

    iput-object p2, p0, Lcom/google/googlenav/aY;->a:Lf/r;

    iput-object p3, p0, Lcom/google/googlenav/aY;->b:Lf/v;

    iput-object p4, p0, Lcom/google/googlenav/aY;->c:Lf/Y;

    iput-object p1, p0, Lcom/google/googlenav/aY;->d:Lcom/google/googlenav/layer/s;

    invoke-virtual {p1}, Lcom/google/googlenav/layer/s;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aY;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/layer/s;->f()B

    move-result v0

    iput-byte v0, p0, Lcom/google/googlenav/aY;->f:B

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/aY;->h:Ljava/util/Vector;

    iput v1, p0, Lcom/google/googlenav/aY;->i:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/aY;->l:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/aY;->m:Ljava/util/Hashtable;

    invoke-virtual {p4}, Lf/Y;->h()Lf/C;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aY;->q:Lf/C;

    invoke-virtual {p3}, Lf/v;->g()[Lf/K;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aY;->r:[Lf/K;

    return-void
.end method

.method private a(Ljava/util/Vector;)V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/aY;->m:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/aY;->k:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/aY;->m:Ljava/util/Hashtable;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b(Lcom/google/googlenav/bF;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/bF;->bM()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/util/Vector;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/bF;

    invoke-static {p0}, Lcom/google/googlenav/aY;->b(Lcom/google/googlenav/bF;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/google/googlenav/bF;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/aY;->n:Lcom/google/googlenav/bF;

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aY;->n:Lcom/google/googlenav/bF;

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->g()Lf/N;

    move-result-object v0

    invoke-interface {v0}, Lf/N;->g()Lf/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/bF;->g()Lf/N;

    move-result-object v1

    invoke-interface {v1}, Lf/N;->g()Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lcom/google/googlenav/bF;)V
    .locals 3

    if-eqz p1, :cond_0

    const/16 v0, 0x43

    const-string v1, "smi"

    iget-object v2, p0, Lcom/google/googlenav/aY;->c:Lf/Y;

    invoke-virtual {v2}, Lf/Y;->f()Lf/l;

    move-result-object v2

    invoke-virtual {v2}, Lf/l;->a()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/googlenav/bF;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private l()B
    .locals 2

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/googlenav/aY;->d:Lcom/google/googlenav/layer/s;

    invoke-virtual {v1}, Lcom/google/googlenav/layer/s;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aY;->b:Lf/v;

    invoke-virtual {v0}, Lf/v;->k()B

    move-result v0

    :cond_0
    return v0
.end method

.method private m()Ljava/util/Vector;
    .locals 6

    iget-object v0, p0, Lcom/google/googlenav/aY;->b:Lf/v;

    invoke-virtual {v0}, Lf/v;->g()[Lf/K;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/googlenav/aY;->l()B

    move-result v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_1

    iget-object v4, p0, Lcom/google/googlenav/aY;->a:Lf/r;

    aget-object v5, v0, v3

    invoke-static {v1, v5}, Lf/K;->a(BLf/K;)Lf/K;

    move-result-object v5

    invoke-interface {v4, v5}, Lf/r;->a(Lf/K;)Lf/U;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lf/U;->e()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private n()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/aY;->s:Lcom/google/googlenav/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aY;->q:Lf/C;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aY;->r:[Lf/K;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aY;->q:Lf/C;

    invoke-virtual {v0}, Lf/C;->a()Lf/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/aY;->c:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->e()Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aY;->q:Lf/C;

    invoke-virtual {v0}, Lf/C;->b()Lf/l;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/aY;->c:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->f()Lf/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/aY;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aY;->s:Lcom/google/googlenav/l;

    invoke-direct {p0}, Lcom/google/googlenav/aY;->p()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/l;->a(Z)V

    iput-object v2, p0, Lcom/google/googlenav/aY;->s:Lcom/google/googlenav/l;

    iput-object v2, p0, Lcom/google/googlenav/aY;->q:Lf/C;

    iput-object v2, p0, Lcom/google/googlenav/aY;->r:[Lf/K;

    :cond_0
    return-void
.end method

.method private o()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/aY;->r:[Lf/K;

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/aY;->l()B

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/aY;->r:[Lf/K;

    array-length v1, v1

    sub-int/2addr v1, v5

    :goto_1
    if-ltz v1, :cond_4

    iget-object v2, p0, Lcom/google/googlenav/aY;->r:[Lf/K;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lf/K;->j()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/googlenav/aY;->b:Lf/v;

    invoke-virtual {v3, v2}, Lf/v;->a(Lf/K;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/googlenav/aY;->a:Lf/r;

    invoke-static {v0, v2}, Lf/K;->a(BLf/K;)Lf/K;

    move-result-object v2

    invoke-interface {v3, v2}, Lf/r;->a(Lf/K;)Lf/U;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lf/U;->e()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v5

    goto :goto_0
.end method

.method private p()Z
    .locals 11

    const/4 v10, 0x1

    invoke-direct {p0}, Lcom/google/googlenav/aY;->m()Ljava/util/Vector;

    move-result-object v1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr v0, v10

    move v4, v0

    :goto_0
    if-ltz v4, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/U;

    iget-object v5, p0, Lcom/google/googlenav/aY;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v2

    int-to-long v8, v4

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-virtual {v0, v5, v6, v7}, Lf/U;->a(Ljava/lang/String;J)Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bF;

    iget-object v6, p0, Lcom/google/googlenav/aY;->c:Lf/Y;

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->h()Lf/h;

    move-result-object v0

    invoke-virtual {v6, v0}, Lf/Y;->d(Lf/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private q()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/aY;->t:I

    iget-object v0, p0, Lcom/google/googlenav/aY;->u:[Lcom/google/googlenav/bF;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/aY;->n:Lcom/google/googlenav/bF;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/aY;->u:[Lcom/google/googlenav/bF;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/aY;->u:[Lcom/google/googlenav/bF;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/aY;->n:Lcom/google/googlenav/bF;

    invoke-virtual {v2}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/google/googlenav/aY;->t:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aY;->k:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aY;->k:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a()Li/ai;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aY;->v:Li/ai;

    return-object v0
.end method

.method public a(Lf/h;)Ljava/util/Enumeration;
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/aY;->l()B

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/aY;->c:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->f()Lf/l;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lf/K;->a(BLf/h;Lf/l;)Lf/K;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/aY;->o:Lf/K;

    invoke-virtual {v0, v1}, Lf/K;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/google/googlenav/aY;->o:Lf/K;

    iput-object v4, p0, Lcom/google/googlenav/aY;->p:Lf/U;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/aY;->p:Lf/U;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/aY;->p:Lf/U;

    invoke-virtual {v0}, Lf/U;->e()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/aY;->a:Lf/r;

    iget-object v1, p0, Lcom/google/googlenav/aY;->o:Lf/K;

    invoke-interface {v0, v1}, Lf/r;->a(Lf/K;)Lf/U;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aY;->p:Lf/U;

    iget-object v0, p0, Lcom/google/googlenav/aY;->p:Lf/U;

    if-nez v0, :cond_2

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/googlenav/aY;->p:Lf/U;

    iget-object v3, p0, Lcom/google/googlenav/aY;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lf/U;->a(Ljava/lang/String;J)Ljava/util/Hashtable;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method public a(B)V
    .locals 0

    iput-byte p1, p0, Lcom/google/googlenav/aY;->g:B

    return-void
.end method

.method public a(Lcom/google/googlenav/bF;)V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/aY;->l:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/googlenav/aY;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/googlenav/aY;->k:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/google/googlenav/aY;->i:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/googlenav/aY;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/aY;->i:I

    return-void
.end method

.method public a(Lcom/google/googlenav/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/aY;->s:Lcom/google/googlenav/l;

    return-void
.end method

.method public a(Li/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/aY;->v:Li/ai;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/bF;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/aY;->n:Lcom/google/googlenav/bF;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/aY;->n:Lcom/google/googlenav/bF;

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/aY;->n:Lcom/google/googlenav/bF;

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bN()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/bF;->h(I)V

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bO()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/bF;->i(I)V

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bP()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/bF;->j(I)V

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bQ()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/bF;->k(I)V

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bR()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/bF;->l(I)V

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/bF;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/bF;->o(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/bF;->p(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/googlenav/bF;->g()Lf/N;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/bF;->b(Lf/N;)V

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->g()Lf/N;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/bF;->c(Lf/N;)V

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bW()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/googlenav/bF;->c(J)V

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bV()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/bF;->s(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bX()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/googlenav/bF;->d(J)V

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bY()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/bF;->m(I)V

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/bF;->t(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->ca()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/bF;->r(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->cb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/bF;->u(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->cc()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/googlenav/bF;->a(Ljava/util/Vector;)V

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/aY;->n:Lcom/google/googlenav/bF;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/aY;->n:Lcom/google/googlenav/bF;

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p2, p0, Lcom/google/googlenav/aY;->n:Lcom/google/googlenav/bF;

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/aY;->l:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/aY;->k:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/googlenav/aY;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, p2, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/googlenav/aY;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v3, v0

    :goto_2
    if-ge v3, v2, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/aY;->h:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bF;

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public b()Lcom/google/googlenav/bf;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/aY;->n:Lcom/google/googlenav/bF;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/aY;->l:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/google/googlenav/aY;->n:Lcom/google/googlenav/bF;

    invoke-virtual {v1}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bF;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aY;->n:Lcom/google/googlenav/bF;

    goto :goto_0
.end method

.method public b(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/aY;->c_()I

    move-result v0

    if-lt p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/googlenav/aY;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/googlenav/c;->V()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/googlenav/bF;

    iput-object v0, p0, Lcom/google/googlenav/aY;->n:Lcom/google/googlenav/bF;

    :goto_1
    invoke-direct {p0}, Lcom/google/googlenav/aY;->q()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/aY;->n:Lcom/google/googlenav/bF;

    goto :goto_1
.end method

.method public b(Lf/h;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/aY;->u:[Lcom/google/googlenav/bF;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/aY;->t:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/aY;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/bF;

    iput-object v0, p0, Lcom/google/googlenav/aY;->u:[Lcom/google/googlenav/bF;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/googlenav/aY;->u:[Lcom/google/googlenav/bF;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/aY;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bF;

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->h()Lf/h;

    move-result-object v2

    invoke-virtual {v2, p1}, Lf/h;->a(Lf/h;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/bF;->b(J)V

    iget-object v2, p0, Lcom/google/googlenav/aY;->u:[Lcom/google/googlenav/bF;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/aY;->u:[Lcom/google/googlenav/bF;

    sget-object v1, Lcom/google/googlenav/aY;->w:LA/i;

    invoke-static {v0, v1}, LA/r;->a([Ljava/lang/Object;LA/i;)V

    invoke-direct {p0}, Lcom/google/googlenav/aY;->q()V

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aY;->n:Lcom/google/googlenav/bF;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/aY;->n:Lcom/google/googlenav/bF;

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/aY;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public c(I)Lcom/google/googlenav/bf;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/aY;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/bf;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c_()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/aY;->i:I

    return v0
.end method

.method public d(I)I
    .locals 0

    return p1
.end method

.method public d_()B
    .locals 1

    iget-byte v0, p0, Lcom/google/googlenav/aY;->g:B

    return v0
.end method

.method public f()V
    .locals 11

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/aY;->n()V

    iget-object v0, p0, Lcom/google/googlenav/aY;->d:Lcom/google/googlenav/layer/s;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aY;->d:Lcom/google/googlenav/layer/s;

    iget-object v1, p0, Lcom/google/googlenav/aY;->c:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->f()Lf/l;

    move-result-object v1

    invoke-virtual {v1}, Lf/l;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/s;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/aY;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iput v2, p0, Lcom/google/googlenav/aY;->i:I

    iput-boolean v2, p0, Lcom/google/googlenav/aY;->j:Z

    iget-object v0, p0, Lcom/google/googlenav/aY;->m:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/google/googlenav/aY;->m()Ljava/util/Vector;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlenav/aY;->k:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v6, v0

    :goto_1
    if-ltz v6, :cond_8

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/U;

    iget-object v1, p0, Lcom/google/googlenav/aY;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v7, v4

    int-to-long v9, v6

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    invoke-virtual {v0, v1, v7, v8}, Lf/U;->a(Ljava/lang/String;J)Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bF;

    iget-object v1, p0, Lcom/google/googlenav/aY;->l:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/bF;

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bN()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/google/googlenav/bF;->h(I)V

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bO()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/google/googlenav/bF;->i(I)V

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bP()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/google/googlenav/bF;->j(I)V

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->g()Lf/N;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bF;->c(Lf/N;)V

    :goto_3
    invoke-static {v1}, Lcom/google/googlenav/aY;->b(Lcom/google/googlenav/bF;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/aY;->c:Lf/Y;

    invoke-virtual {v1}, Lcom/google/googlenav/bF;->h()Lf/h;

    move-result-object v8

    invoke-virtual {v0, v8}, Lf/Y;->d(Lf/h;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/googlenav/aY;->m:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v8, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/aY;->m:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/google/googlenav/aY;->d(Lcom/google/googlenav/bF;)V

    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/google/googlenav/aY;->k:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-byte v0, p0, Lcom/google/googlenav/aY;->f:B

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bF;->a(B)V

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v8, p0, Lcom/google/googlenav/aY;->k:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/aY;->n:Lcom/google/googlenav/bF;

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lcom/google/googlenav/aY;->c(Lcom/google/googlenav/bF;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/aY;->n:Lcom/google/googlenav/bF;

    invoke-virtual {v1}, Lcom/google/googlenav/bF;->g()Lf/N;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bF;->c(Lf/N;)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/aY;->m:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0, v3}, Lcom/google/googlenav/aY;->a(Ljava/util/Vector;)V

    invoke-direct {p0, v3}, Lcom/google/googlenav/aY;->b(Ljava/util/Vector;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/aY;->j:Z

    iput-object v3, p0, Lcom/google/googlenav/aY;->h:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/aY;->i:I

    iget-object v0, p0, Lcom/google/googlenav/aY;->v:Li/ai;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/aY;->v:Li/ai;

    invoke-interface {v1, v0}, Li/ai;->a(Li/x;)V

    goto/16 :goto_0

    :cond_9
    move-object v1, v0

    goto/16 :goto_3
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/aY;->n:Lcom/google/googlenav/bF;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/aY;->n:Lcom/google/googlenav/bF;

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->g()Lf/N;

    move-result-object v0

    invoke-interface {v0}, Lf/N;->g()Lf/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/aY;->a(Lf/h;)Ljava/util/Enumeration;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bF;

    invoke-direct {p0, v0}, Lcom/google/googlenav/aY;->c(Lcom/google/googlenav/bF;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/google/googlenav/aY;->n:Lcom/google/googlenav/bF;

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->g()Lf/N;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bF;->c(Lf/N;)V

    goto :goto_0
.end method

.method public h()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/aY;->l:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/google/googlenav/aY;->m:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/google/googlenav/aY;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iput v1, p0, Lcom/google/googlenav/aY;->i:I

    iput-boolean v1, p0, Lcom/google/googlenav/aY;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/aY;->u:[Lcom/google/googlenav/bF;

    return-void
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/aY;->t:I

    return v0
.end method

.method public j()[Lcom/google/googlenav/bF;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aY;->u:[Lcom/google/googlenav/bF;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/aY;->j:Z

    return v0
.end method
