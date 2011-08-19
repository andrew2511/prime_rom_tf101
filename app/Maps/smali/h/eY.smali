.class public Lh/eY;
.super Ljava/lang/Object;


# static fields
.field private static final f:LA/p;

.field private static final g:LA/p;

.field private static n:Z


# instance fields
.field protected final a:Lcom/google/googlenav/bL;

.field protected b:Lf/v;

.field protected c:Lf/Y;

.field public final d:Lh/eo;

.field private final e:Lh/l;

.field private final h:LH/f;

.field private final i:LaU/a;

.field private j:Z

.field private final k:Lcom/google/googlenav/g;

.field private final l:Lcom/google/googlenav/ui/bu;

.field private final m:Lo/bj;

.field private final o:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x16

    new-instance v0, LA/p;

    const-string v1, "layers open"

    const-string v2, "lo"

    invoke-direct {v0, v1, v2, v3}, LA/p;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lh/eY;->f:LA/p;

    new-instance v0, LA/p;

    const-string v1, "directions open"

    const-string v2, "do"

    invoke-direct {v0, v1, v2, v3}, LA/p;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lh/eY;->g:LA/p;

    const/4 v0, 0x1

    sput-boolean v0, Lh/eY;->n:Z

    return-void
.end method

.method public constructor <init>(LaU/a;Lf/v;Lf/Y;LH/f;Lcom/google/googlenav/g;ZLh/l;Lcom/google/googlenav/bL;Lcom/google/googlenav/ui/bu;Lo/bj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lh/eY;->o:Ljava/util/LinkedList;

    new-instance v0, Lh/eo;

    invoke-direct {v0, p0}, Lh/eo;-><init>(Lh/eY;)V

    iput-object v0, p0, Lh/eY;->d:Lh/eo;

    iput-object p8, p0, Lh/eY;->a:Lcom/google/googlenav/bL;

    iput-object p4, p0, Lh/eY;->h:LH/f;

    iput-object p1, p0, Lh/eY;->i:LaU/a;

    iput-object p2, p0, Lh/eY;->b:Lf/v;

    iput-object p3, p0, Lh/eY;->c:Lf/Y;

    iput-object p5, p0, Lh/eY;->k:Lcom/google/googlenav/g;

    iput-boolean p6, p0, Lh/eY;->j:Z

    iput-object p7, p0, Lh/eY;->e:Lh/l;

    iput-object p9, p0, Lh/eY;->l:Lcom/google/googlenav/ui/bu;

    iput-object p10, p0, Lh/eY;->m:Lo/bj;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/google/googlenav/login/h;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lh/eY;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/login/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    return-void
.end method

.method private b(Lcom/google/googlenav/c;Ljava/lang/String;)V
    .locals 6

    const/16 v5, 0x65

    if-eqz p2, :cond_0

    const-string v0, "e"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :goto_0
    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->H()Lh/dW;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/dW;->a(Lcom/google/googlenav/c;)V

    return-void

    :cond_0
    const-string v0, "e"

    invoke-static {v5, v0}, Lac/g;->a(ILjava/lang/String;)Z

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lh/eY;->k:Lcom/google/googlenav/g;

    invoke-interface {v0, p1}, Lcom/google/googlenav/g;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lh/eY;->E()Lo/bj;

    move-result-object v0

    invoke-virtual {v0}, Lo/bj;->l()Lo/I;

    move-result-object v0

    invoke-virtual {v0}, Lo/I;->g()Law/e;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public A()Lcom/google/googlenav/g;
    .locals 1

    iget-object v0, p0, Lh/eY;->k:Lcom/google/googlenav/g;

    return-object v0
.end method

.method public B()Lcom/google/googlenav/bL;
    .locals 1

    iget-object v0, p0, Lh/eY;->a:Lcom/google/googlenav/bL;

    return-object v0
.end method

.method public C()LaD/r;
    .locals 1

    iget-object v0, p0, Lh/eY;->a:Lcom/google/googlenav/bL;

    invoke-interface {v0}, Lcom/google/googlenav/bL;->av()LaD/t;

    move-result-object v0

    invoke-virtual {v0}, LaD/t;->a()LaD/r;

    move-result-object v0

    return-object v0
.end method

.method public D()LaD/r;
    .locals 1

    iget-object v0, p0, Lh/eY;->a:Lcom/google/googlenav/bL;

    invoke-interface {v0}, Lcom/google/googlenav/bL;->av()LaD/t;

    move-result-object v0

    invoke-virtual {v0}, LaD/t;->b()LaD/r;

    move-result-object v0

    return-object v0
.end method

.method public E()Lo/bj;
    .locals 1

    iget-object v0, p0, Lh/eY;->m:Lo/bj;

    return-object v0
.end method

.method public F()V
    .locals 2

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->k()Lh/dH;

    move-result-object v0

    invoke-virtual {v0}, Lh/dH;->h()Lu/v;

    move-result-object v0

    iget-object v1, p0, Lh/eY;->a:Lcom/google/googlenav/bL;

    invoke-interface {v1, v0}, Lcom/google/googlenav/bL;->b(Lu/n;)V

    return-void
.end method

.method public G()V
    .locals 2

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->g()Lh/ex;

    move-result-object v0

    invoke-virtual {v0}, Lh/ex;->h()Lu/v;

    move-result-object v0

    iget-object v1, p0, Lh/eY;->a:Lcom/google/googlenav/bL;

    invoke-interface {v1, v0}, Lcom/google/googlenav/bL;->b(Lu/n;)V

    return-void
.end method

.method public H()V
    .locals 2

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->g()Lh/ex;

    move-result-object v0

    iget-object v1, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v1}, Lh/eo;->j()Lh/ct;

    move-result-object v1

    invoke-virtual {v1}, Lh/ct;->i()Lu/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/ex;->a(Lu/s;)V

    invoke-virtual {p0}, Lh/eY;->G()V

    return-void
.end method

.method public I()Lh/eo;
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    return-object v0
.end method

.method public J()Z
    .locals 1

    iget-object v0, p0, Lh/eY;->h:LH/f;

    invoke-virtual {v0}, LH/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eY;->h:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public K()V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->ah()V

    iget-object v0, p0, Lh/eY;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    invoke-virtual {p0}, Lh/eY;->h()Lh/eR;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/eR;->a(Lax/b;)I

    move-result v0

    return v0
.end method

.method public a(Lax/e;Law/e;)I
    .locals 2

    invoke-virtual {p0}, Lh/eY;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh/eY;->h()Lh/eR;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/eR;->a(Lax/e;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/googlenav/ui/w;->F:Lax/e;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/eY;->e:Lh/l;

    invoke-virtual {v0}, Lh/l;->a()V

    const-string v0, "0"

    invoke-virtual {p0, v0}, Lh/eY;->a(Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/googlenav/ui/w;->G:Lax/e;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lh/eY;->g:LA/p;

    invoke-virtual {v0}, LA/p;->a()V

    iget-object v0, p0, Lh/eY;->e:Lh/l;

    invoke-virtual {v0}, Lh/l;->a()V

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->k()Lh/dH;

    move-result-object v0

    invoke-virtual {v0, p2}, Lh/dH;->a(Law/e;)V

    sget-object v0, Lh/eY;->g:LA/p;

    invoke-virtual {v0}, LA/p;->b()V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/google/googlenav/ui/w;->aa:Lax/e;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lh/eY;->k:Lcom/google/googlenav/g;

    invoke-static {}, Lcom/google/googlenav/d;->au()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/g;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/googlenav/d;->au()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/google/googlenav/ui/w;->U:Lax/e;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->r()Lh/aS;

    move-result-object v0

    invoke-virtual {v0}, Lh/aS;->u()V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/google/googlenav/ui/w;->ap:Lax/e;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->A()Lh/eR;

    move-result-object v0

    invoke-virtual {v0}, Lh/eR;->u()V

    goto :goto_1

    :cond_5
    const/4 v0, 0x4

    goto :goto_0
.end method

.method a()V
    .locals 2

    const/16 v0, 0xa

    const-string v1, "i"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    invoke-virtual {p0}, Lh/eY;->c()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->U()Lh/al;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/al;->a(I)V

    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->V()Lh/as;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lh/as;->a(II)V

    return-void
.end method

.method public a(ILax/c;)V
    .locals 2

    iget-object v0, p0, Lh/eY;->i:LaU/a;

    new-instance v1, Lh/aI;

    invoke-direct {v1, p0, p1, p2}, Lh/aI;-><init>(Lh/eY;ILax/c;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ILh/bv;)V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->l()Lh/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lh/g;->a(ILh/bv;)V

    :cond_1
    return-void
.end method

.method public a(I[LaA/e;)V
    .locals 1

    iget-object v0, p0, Lh/eY;->c:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->f()Lf/l;

    move-result-object v0

    invoke-static {p1, p2, v0}, LaA/c;->a(I[LaA/e;Lf/l;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lh/eY;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Law/e;Lh/dP;ZLh/aZ;)V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->Q()Lh/ay;

    move-result-object v0

    invoke-virtual {v0, p4, p1, p2, p3}, Lh/ay;->a(Lh/aZ;Law/e;Lh/dP;Z)V

    return-void
.end method

.method public a(Lcom/google/googlenav/aB;)V
    .locals 3

    const/16 v0, 0x54

    const-string v1, "ts"

    const-string v2, "c"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->h()Lh/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/h;->a(Lcom/google/googlenav/aB;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/bf;)V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->R()Lh/eL;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/eL;->a(Lcom/google/googlenav/bf;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/c;)V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->P()Lh/cv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/cv;->a(Lcom/google/googlenav/c;)V

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->P()Lh/cv;

    move-result-object v0

    invoke-virtual {v0}, Lh/cv;->h()V

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->P()Lh/cv;

    move-result-object v0

    invoke-virtual {v0}, Lh/cv;->u()V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/googlenav/c;Lcom/google/googlenav/ui/aT;ZI)V
    .locals 2

    const/16 v0, 0x58

    const-string v1, "d"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->F()Lh/eB;

    move-result-object v0

    invoke-virtual {v0, p1, p4}, Lh/eB;->a(Lcom/google/googlenav/c;I)V

    return-void
.end method

.method public a(Lcom/google/googlenav/c;Li/aE;ZLjava/lang/String;)V
    .locals 6

    const/16 v5, 0x55

    if-eqz p4, :cond_0

    const-string v0, "e"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :goto_0
    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->E()Lh/v;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lh/v;->a(Lcom/google/googlenav/c;Li/aE;ZLjava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "e"

    invoke-static {v5, v0}, Lac/g;->a(ILjava/lang/String;)Z

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh/eY;->b(Lcom/google/googlenav/c;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/aT;)V
    .locals 1

    invoke-virtual {p0}, Lh/eY;->h()Lh/eR;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lh/eY;->j:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->aa()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lh/eY;->c(Lcom/google/googlenav/ui/aT;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lh/eY;->a()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lh/eY;->c(Lcom/google/googlenav/ui/aT;)V

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/ui/aT;Lcom/google/googlenav/h;ZZLjava/lang/String;Lh/ae;)V
    .locals 6

    if-eqz p5, :cond_0

    invoke-static {p5}, Lo/A;->d(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lo/av;->p()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/aF;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->s()Lh/dN;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lh/dN;->a(Lcom/google/googlenav/ui/aT;Lcom/google/googlenav/h;ZLh/ae;Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->t()Lh/aA;

    move-result-object v0

    invoke-direct {p0, p5}, Lh/eY;->e(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1, p6}, Lh/aA;->a(Lcom/google/googlenav/ui/aT;Lcom/google/googlenav/h;ZLh/ae;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    const/16 v1, 0x834

    invoke-virtual {v0, v1, p2}, Li/aE;->a(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/aT;->g(Z)V

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/ui/aT;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->C()Lh/fS;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lh/fS;->a(Lcom/google/googlenav/bL;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/android/d;)V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->N()Lcom/google/googlenav/ui/wizard/android/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/android/f;->a(Lcom/google/googlenav/ui/wizard/android/d;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/x;)V
    .locals 1

    invoke-virtual {p0}, Lh/eY;->h()Lh/eR;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/eR;->a(Lcom/google/googlenav/ui/x;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/z;Lcom/google/googlenav/a;I)V
    .locals 4

    invoke-virtual {p1, p3}, Lcom/google/googlenav/z;->g(I)Lcom/google/googlenav/aN;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/googlenav/aN;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/googlenav/aN;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, p3, v2, v3}, Lcom/google/googlenav/aN;-><init>(ILjava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {p1}, Lcom/google/googlenav/z;->az()Ljava/util/Hashtable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/googlenav/z;->az()Ljava/util/Hashtable;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/googlenav/z;->az()Ljava/util/Hashtable;

    move-result-object v0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aN;

    :cond_2
    iget-object v2, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v2}, Lh/eo;->m()Lh/dq;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1, v0}, Lh/dq;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/a;Lcom/google/googlenav/aN;Lcom/google/googlenav/aN;)V

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/z;Lcom/google/googlenav/a;Z)V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->G()Lh/dY;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lh/dY;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/a;Z)V

    return-void
.end method

.method public a(Lf/Y;)V
    .locals 0

    iput-object p1, p0, Lh/eY;->c:Lf/Y;

    return-void
.end method

.method public a(Lf/h;)V
    .locals 1

    iget-object v0, p0, Lh/eY;->c:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->f()Lf/l;

    move-result-object v0

    invoke-static {p1, v0}, LaA/c;->a(Lf/h;Lf/l;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lh/eY;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lf/h;Ljava/lang/String;Ljava/lang/String;Lf/C;IILh/eR;)V
    .locals 8

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->J()Lh/aC;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p3

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lh/aC;->a(Lf/h;Ljava/lang/String;Lf/C;IILjava/lang/String;Lh/eR;)V

    return-void
.end method

.method public a(Lf/v;)V
    .locals 0

    iput-object p1, p0, Lh/eY;->b:Lf/v;

    return-void
.end method

.method public a(Lh/aK;Lcom/google/googlenav/ui/aY;)V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->w()Lh/aY;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/aY;->a(Lh/aK;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->v()Lh/cA;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lh/cA;->a(Lh/aK;Lcom/google/googlenav/ui/aY;)V

    goto :goto_0
.end method

.method public a(Lh/bO;Lcom/google/googlenav/ui/aY;)V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->x()Lh/eG;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lh/eG;->a(Lh/bO;Lcom/google/googlenav/ui/aY;)V

    return-void
.end method

.method public a(Lh/cE;Lc/k;I)V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->O()Lh/df;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lh/df;->a(Lh/cE;Lc/k;I)V

    :cond_0
    return-void
.end method

.method public a(Lh/cF;)V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->y()Lh/bT;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/bT;->a(Lh/cF;)V

    return-void
.end method

.method public a(Lh/di;)V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->B()Lh/fQ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/fQ;->a(Lh/di;)V

    return-void
.end method

.method public a(Lh/eJ;)V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->K()Lh/eC;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/eC;->a(Lh/eJ;)V

    return-void
.end method

.method a(Lh/eR;)V
    .locals 1

    iget-object v0, p0, Lh/eY;->o:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/eY;->o:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lh/eT;)V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->n()Lh/bY;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/bY;->a(Lh/eT;)V

    return-void
.end method

.method public a(Lh/ew;)V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->c()Lh/dR;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/dR;->a(Lh/ew;)V

    return-void
.end method

.method public a(Li/aE;)V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->D()Lh/ek;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/ek;->a(Li/aE;)V

    return-void
.end method

.method public a(Li/aE;I)V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->I()Lh/fa;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lh/fa;->a(Li/aE;I)V

    return-void
.end method

.method public a(Li/aE;Z)V
    .locals 3

    sget-object v0, Lh/eY;->f:LA/p;

    invoke-virtual {v0}, LA/p;->a()V

    const/16 v0, 0x43

    const-string v1, "d"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lh/eY;->a:Lcom/google/googlenav/bL;

    invoke-interface {v0}, Lcom/google/googlenav/bL;->o()V

    :cond_0
    invoke-static {}, Lcom/google/googlenav/layer/h;->a()Lcom/google/googlenav/layer/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/h;->a(Z)V

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->z()Lh/dC;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v1

    invoke-virtual {v0, p1}, Lh/dC;->b(Li/aE;)Lcom/google/googlenav/ui/bv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bv;->a()Lcom/google/googlenav/login/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/login/j;->c(Lcom/google/googlenav/login/h;)V

    invoke-virtual {v0, p1}, Lh/dC;->a(Li/aE;)V

    sget-object v0, Lh/eY;->f:LA/p;

    invoke-virtual {v0}, LA/p;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 6

    const/16 v0, 0x65

    const-string v1, "vg"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "st="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "gt=m"

    aput-object v4, v2, v3

    invoke-static {v2}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->p()Lh/bx;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lh/bx;->a(Ljava/lang/String;[Lcom/google/googlenav/bu;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V
    .locals 7

    invoke-virtual {p0}, Lh/eY;->f()V

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->V()Lh/as;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lh/as;->a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V

    return-void
.end method

.method public a(Ljava/lang/String;Lf/h;)V
    .locals 1

    iget-object v0, p0, Lh/eY;->c:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->f()Lf/l;

    move-result-object v0

    invoke-static {p1, p2, v0}, LaA/c;->a(Ljava/lang/String;Lf/h;Lf/l;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lh/eY;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lh/de;)V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->o()Lh/eq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lh/eq;->a(Ljava/lang/String;Lh/de;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3}, Lh/eY;->a(Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lh/eY;->k:Lcom/google/googlenav/g;

    invoke-interface {v0, p1, p3, p2}, Lcom/google/googlenav/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lh/eJ;)V
    .locals 9

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->f()Lh/fo;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lh/fo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLh/eJ;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLh/eJ;)V
    .locals 9

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->f()Lh/fo;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lh/fo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLh/eJ;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lh/eJ;)V
    .locals 7

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->f()Lh/fo;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lh/fo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lh/eJ;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZZLh/eJ;)V
    .locals 6

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->L()Lh/ap;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lh/ap;->a(Ljava/lang/String;Ljava/lang/String;ZZLh/eJ;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lo/o;Ljava/lang/String;Ljava/lang/String;ZLh/ef;)V
    .locals 7

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->S()Lh/eV;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lh/eV;->a(Ljava/lang/String;Lo/o;ZLjava/lang/String;Ljava/lang/String;Lh/ef;)V

    return-void
.end method

.method public a(Ljava/util/List;Lh/M;)V
    .locals 2

    invoke-static {}, Lo/av;->p()Z

    move-result v0

    iget-object v1, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v1}, Lh/eo;->u()Lh/eD;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lh/eD;->a(Ljava/util/List;ZLh/M;)V

    return-void
.end method

.method public a(Ljava/util/Vector;Lh/bM;)V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->q()Lh/aD;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lh/aD;->a(Ljava/util/Vector;Lh/bM;)V

    :cond_0
    return-void
.end method

.method public a(Lu/g;)V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->k()Lh/dH;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/dH;->b(Lu/g;)V

    return-void
.end method

.method public a(Lu/v;)V
    .locals 2

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->g()Lh/ex;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/ex;->a(Lu/v;)V

    invoke-virtual {p1}, Lu/v;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lu/v;->F()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lu/v;->d_()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->aa()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->k()Lh/dH;

    move-result-object v0

    invoke-virtual {v0}, Lh/dH;->v()V

    :cond_1
    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->g()Lh/ex;

    move-result-object v0

    invoke-virtual {v0}, Lh/ex;->u()V

    :cond_2
    return-void
.end method

.method public a(Lu/v;Lf/C;IILjava/util/Vector;)V
    .locals 6

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->M()Lh/cy;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lh/cy;->a(Lu/v;Lf/C;IILjava/util/Vector;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lh/eY;->j:Z

    return-void
.end method

.method public a([Lcom/google/googlenav/bu;I)V
    .locals 6

    const/16 v0, 0x65

    const-string v1, "vg"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "st="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "gt=t"

    aput-object v4, v2, v3

    invoke-static {v2}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->p()Lh/bx;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lh/bx;->a(Ljava/lang/String;[Lcom/google/googlenav/bu;I)V

    return-void
.end method

.method public a(Lax/c;)Z
    .locals 2

    invoke-virtual {p0}, Lh/eY;->h()Lh/eR;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lh/eR;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lax/c;->a()I

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lax/c;)I
    .locals 1

    invoke-virtual {p0}, Lh/eY;->h()Lh/eR;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/eR;->a(Lax/c;)I

    move-result v0

    return v0
.end method

.method public b(Lf/h;)I
    .locals 1

    invoke-virtual {p0}, Lh/eY;->h()Lh/eR;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/eR;->a(Lf/h;)I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->a()Lh/I;

    move-result-object v0

    invoke-virtual {v0}, Lh/I;->u()V

    return-void
.end method

.method public b(Lcom/google/googlenav/ui/aT;)V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->W()Lh/ep;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/ep;->a(Lcom/google/googlenav/ui/aT;)V

    return-void
.end method

.method public b(Lcom/google/googlenav/ui/x;)V
    .locals 1

    invoke-virtual {p0}, Lh/eY;->h()Lh/eR;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lh/eR;->b(Lcom/google/googlenav/ui/x;)V

    :cond_0
    return-void
.end method

.method b(Lh/eR;)V
    .locals 1

    iget-object v0, p0, Lh/eY;->o:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lh/eT;)V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->d()Lh/ei;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/ei;->a(Lh/eT;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 7

    new-instance v2, Lh/aH;

    invoke-direct {v2, p0}, Lh/aH;-><init>(Lh/eY;)V

    sget-object v3, Lh/l;->a:Lh/fc;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V

    return-void
.end method

.method public b(Lu/v;)V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->h()Lh/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/h;->a(Lu/v;)V

    return-void
.end method

.method public c(Lax/c;)I
    .locals 1

    invoke-virtual {p0}, Lh/eY;->h()Lh/eR;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/eR;->b(Lax/c;)I

    move-result v0

    return v0
.end method

.method c()V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->T()Lh/dc;

    move-result-object v0

    invoke-virtual {v0}, Lh/dc;->u()V

    return-void
.end method

.method public c(Lcom/google/googlenav/ui/aT;)V
    .locals 1

    sget-boolean v0, Lh/eY;->n:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lh/ep;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lh/eY;->b(Lcom/google/googlenav/ui/aT;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/aT;->c(Z)V

    goto :goto_0
.end method

.method public c(Lh/eT;)V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->e()Lh/du;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/du;->a(Lh/eT;)V

    return-void
.end method

.method public c(Lu/v;)V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->k()Lh/dH;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/dH;->a(Lu/v;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "gmm:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data:,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lh/eY;->k:Lcom/google/googlenav/g;

    invoke-interface {v0, p1}, Lcom/google/googlenav/g;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string v1, "WizardManager"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->O()Lh/df;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh/df;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lh/df;->i()V

    :cond_0
    return-void
.end method

.method public d(Lu/v;)V
    .locals 1

    instance-of v0, p1, Lu/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->g()Lh/ex;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/ex;->a(Lu/v;)V

    invoke-virtual {v0}, Lh/ex;->u()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lh/eY;->i:LaU/a;

    new-instance v1, Lh/aG;

    invoke-direct {v1, p0}, Lh/aG;-><init>(Lh/eY;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Lu/v;)V
    .locals 2

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->Y()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->Z()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    instance-of v0, p1, Lu/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->g()Lh/ex;

    move-result-object v0

    invoke-virtual {v0}, Lh/ex;->j()V

    :goto_0
    invoke-virtual {p1}, Lu/v;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/eY;->a:Lcom/google/googlenav/bL;

    invoke-virtual {p1}, Lu/v;->B()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->aa()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->k()Lh/dH;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/dH;->d(Lu/v;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lh/eY;->c(Lu/v;)V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->V()Lh/as;

    move-result-object v0

    invoke-virtual {v0}, Lh/as;->h()V

    :cond_0
    return-void
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->I()Lh/fa;

    move-result-object v0

    invoke-virtual {v0}, Lh/fa;->v()V

    invoke-virtual {p0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->c()Lh/fc;

    move-result-object v0

    invoke-virtual {v0}, Lh/fc;->a()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lh/eY;->k:Lcom/google/googlenav/g;

    invoke-interface {v0}, Lcom/google/googlenav/g;->f()V

    const/16 v0, 0xa

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lh/eR;
    .locals 1

    iget-object v0, p0, Lh/eY;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lh/eY;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh/eR;

    move-object v0, p0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lh/eY;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh/eR;

    invoke-virtual {p0}, Lh/eR;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected j()V
    .locals 2

    iget-object v0, p0, Lh/eY;->a:Lcom/google/googlenav/bL;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->g(Ljava/lang/String;)V

    return-void
.end method

.method public k()Lh/fc;
    .locals 3

    invoke-virtual {p0}, Lh/eY;->h()Lh/eR;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lh/eR;->v()V

    instance-of v1, v0, Lh/fQ;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v1}, Lh/eo;->B()Lh/fQ;

    move-result-object v1

    invoke-virtual {v1}, Lh/fQ;->m()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->k()Lh/dH;

    move-result-object v0

    invoke-virtual {v0}, Lh/dH;->u()V

    :cond_0
    :goto_0
    sget-object v0, Lh/l;->a:Lh/fc;

    :goto_1
    return-object v0

    :cond_1
    instance-of v0, v0, Lh/ct;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eY;->d:Lh/eo;

    invoke-virtual {v0}, Lh/eo;->g()Lh/ex;

    move-result-object v0

    invoke-virtual {v0}, Lh/ex;->u()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lh/eY;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->d()Lh/fc;

    move-result-object v0

    invoke-virtual {v0}, Lh/fc;->a()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    goto :goto_1
.end method

.method public l()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lh/eY;->o:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iget-object v0, p0, Lh/eY;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/eR;

    invoke-virtual {v0}, Lh/eR;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lh/eY;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/eR;

    :cond_1
    invoke-virtual {v0}, Lh/eR;->v()V

    invoke-virtual {v0}, Lh/eR;->A_()I

    move-result v0

    :cond_2
    invoke-virtual {p0}, Lh/eY;->f()V

    return v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public m()V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->ak()Lcom/google/googlenav/ui/bB;

    move-result-object v0

    invoke-static {v0}, Lh/ex;->a(Lcom/google/googlenav/ui/bB;)Lu/v;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lu/v;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh/eY;->a:Lcom/google/googlenav/bL;

    invoke-interface {v1, v0}, Lcom/google/googlenav/bL;->c(Lu/v;)V

    :cond_0
    return-void
.end method

.method public n()Z
    .locals 1

    invoke-virtual {p0}, Lh/eY;->h()Lh/eR;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Z
    .locals 1

    invoke-virtual {p0}, Lh/eY;->h()Lh/eR;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh/eR;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 1

    invoke-virtual {p0}, Lh/eY;->h()Lh/eR;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh/eR;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()I
    .locals 2

    invoke-virtual {p0}, Lh/eY;->h()Lh/eR;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lh/eR;->D()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lh/eR;->E()I

    move-result v0

    goto :goto_0
.end method

.method public r()Z
    .locals 1

    invoke-virtual {p0}, Lh/eY;->h()Lh/eR;

    move-result-object v0

    instance-of v0, v0, Lh/dH;

    return v0
.end method

.method public s()V
    .locals 1

    invoke-virtual {p0}, Lh/eY;->h()Lh/eR;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh/eR;->B_()V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    invoke-virtual {p0}, Lh/eY;->h()Lh/eR;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh/eR;->F_()V

    :cond_0
    return-void
.end method

.method public u()Lh/l;
    .locals 1

    iget-object v0, p0, Lh/eY;->e:Lh/l;

    return-object v0
.end method

.method public v()LaU/a;
    .locals 1

    iget-object v0, p0, Lh/eY;->i:LaU/a;

    return-object v0
.end method

.method public w()LH/f;
    .locals 1

    iget-object v0, p0, Lh/eY;->h:LH/f;

    return-object v0
.end method

.method public x()Lcom/google/googlenav/ui/bu;
    .locals 1

    iget-object v0, p0, Lh/eY;->l:Lcom/google/googlenav/ui/bu;

    return-object v0
.end method

.method public y()Lf/v;
    .locals 1

    iget-object v0, p0, Lh/eY;->b:Lf/v;

    return-object v0
.end method

.method public z()Lf/Y;
    .locals 1

    iget-object v0, p0, Lh/eY;->c:Lf/Y;

    return-object v0
.end method
