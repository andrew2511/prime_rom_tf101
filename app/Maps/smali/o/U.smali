.class public Lo/U;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Hashtable;


# instance fields
.field private final b:Lo/aH;

.field private final c:Z

.field private d:Ljava/lang/Long;

.field private final e:Lcom/google/googlenav/c;

.field private f:Z

.field private g:J

.field private h:I

.field private i:Ljava/lang/Boolean;

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lo/U;->a:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const-wide/16 v1, -0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lo/U;->h:I

    iput-object v3, p0, Lo/U;->i:Ljava/lang/Boolean;

    iput-wide v1, p0, Lo/U;->j:J

    iput-wide v1, p0, Lo/U;->k:J

    iput-wide v1, p0, Lo/U;->l:J

    iput-wide v1, p0, Lo/U;->m:J

    invoke-static {}, LA/n;->a()V

    iput-object v3, p0, Lo/U;->b:Lo/aH;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/U;->c:Z

    iput-object v3, p0, Lo/U;->e:Lcom/google/googlenav/c;

    return-void
.end method

.method public constructor <init>(Lo/aH;ZLcom/google/googlenav/c;)V
    .locals 3

    const-wide/16 v1, -0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lo/U;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lo/U;->i:Ljava/lang/Boolean;

    iput-wide v1, p0, Lo/U;->j:J

    iput-wide v1, p0, Lo/U;->k:J

    iput-wide v1, p0, Lo/U;->l:J

    iput-wide v1, p0, Lo/U;->m:J

    iput-object p1, p0, Lo/U;->b:Lo/aH;

    iput-boolean p2, p0, Lo/U;->c:Z

    iput-object p3, p0, Lo/U;->e:Lcom/google/googlenav/c;

    return-void
.end method

.method public static B()V
    .locals 1

    sget-object v0, Lo/U;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method private L()Z
    .locals 4

    invoke-virtual {p0}, Lo/U;->w()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

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

.method private M()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lo/U;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/U;->H()Lcom/google/googlenav/bG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bB;->c(Law/e;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/U;->c(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/google/googlenav/bG;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bB;->i(Law/e;)Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->k()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->k()J

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

.method public static e(J)Z
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public A()Z
    .locals 4

    invoke-virtual {p0}, Lo/U;->z()Z

    move-result v0

    sget-object v1, Lo/U;->a:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lo/U;->z()Z

    move-result v1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/U;->b:Lo/aH;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/U;->b:Lo/aH;

    invoke-virtual {v1}, Lo/aH;->h()V

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public C()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lo/U;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->a(B)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->a(B)V

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->a(Z)V

    goto :goto_0
.end method

.method public D()C
    .locals 1

    invoke-virtual {p0}, Lo/U;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-char v0, Lcom/google/googlenav/ui/aV;->H:C

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lo/U;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lo/U;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-char v0, Lcom/google/googlenav/ui/aV;->J:C

    goto :goto_0

    :cond_1
    sget-char v0, Lcom/google/googlenav/ui/aV;->E:C

    goto :goto_0
.end method

.method public E()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lac/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/U;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lo/U;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lo/U;->m()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lo/U;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public F()[Lcom/google/googlenav/bG;
    .locals 7

    const/16 v6, 0x9c

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v6}, Law/e;->i(I)I

    move-result v1

    new-array v2, v1, [Lcom/google/googlenav/bG;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v6, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    new-instance v5, Lcom/google/googlenav/bG;

    invoke-direct {v5, v4}, Lcom/google/googlenav/bG;-><init>(Law/e;)V

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public G()Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lo/U;->F()[Lcom/google/googlenav/bG;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lo/U;->a(Lcom/google/googlenav/bG;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public H()Lcom/google/googlenav/bG;
    .locals 2

    invoke-virtual {p0}, Lo/U;->F()[Lcom/google/googlenav/bG;

    move-result-object v0

    invoke-virtual {p0}, Lo/U;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public I()Lf/h;
    .locals 2

    invoke-virtual {p0}, Lo/U;->F()[Lcom/google/googlenav/bG;

    move-result-object v0

    invoke-virtual {p0}, Lo/U;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bB;->i(Law/e;)Lf/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lo/U;->d()Lf/h;

    move-result-object v0

    goto :goto_0
.end method

.method public J()Z
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lo/U;->f(J)Z

    move-result v0

    return v0
.end method

.method public K()I
    .locals 1

    invoke-virtual {p0}, Lo/U;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xd

    goto :goto_0
.end method

.method public a()Lcom/google/googlenav/c;
    .locals 1

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    return-object v0
.end method

.method public a(ZZ)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lo/U;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/U;->H()Lcom/google/googlenav/bG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bB;->b(Law/e;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lo/U;->M()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x81

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p2}, Lo/U;->g(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1, p1}, Law/e;->h(II)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 4

    iget-wide v0, p0, Lo/U;->l:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/U;->q()J

    move-result-wide v0

    iput-wide v0, p0, Lo/U;->l:J

    :cond_0
    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    const/16 v1, 0x79

    invoke-virtual {v0, v1, p1, p2}, Law/e;->b(IJ)V

    iput-wide p1, p0, Lo/U;->j:J

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    sub-long/2addr v1, p1

    iput-wide v1, p0, Lo/U;->m:J

    :goto_0
    const/16 v1, 0x82

    iget-wide v2, p0, Lo/U;->m:J

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    return-void

    :cond_1
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lo/U;->m:J

    goto :goto_0
.end method

.method public a(LG/Z;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lj/v;->a(Ljava/lang/Object;)Lj/v;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/c;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Law/e;)V
    .locals 7

    const/16 v6, 0x9

    const-wide/16 v4, 0x0

    const/high16 v3, -0x8000

    const/4 v0, 0x5

    invoke-static {p1, v0, v3}, Law/b;->c(Law/e;II)I

    move-result v0

    const/4 v1, 0x6

    invoke-static {p1, v1, v3}, Law/b;->c(Law/e;II)I

    move-result v1

    if-eq v0, v3, :cond_4

    if-eq v1, v3, :cond_4

    new-instance v2, Lf/h;

    invoke-direct {v2, v0, v1}, Lf/h;-><init>(II)V

    invoke-virtual {p0, v2}, Lo/U;->a(Lf/N;)V

    invoke-virtual {p0}, Lo/U;->v()V

    invoke-virtual {p1, v6}, Law/e;->i(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v6, v1}, Law/e;->f(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo/U;->b(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/U;->a(Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-static {p1, v0}, Law/b;->f(Law/e;I)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lo/U;->a(J)V

    :cond_1
    const/16 v0, 0x8

    invoke-static {p1, v0}, Law/b;->f(Law/e;I)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0, v1}, Lo/U;->c(J)V

    :cond_2
    const/16 v0, 0xf

    invoke-static {p1, v0}, Law/b;->f(Law/e;I)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0, v1}, Lo/U;->b(J)V

    :cond_3
    const/16 v0, 0x10

    invoke-static {p1, v0}, Law/b;->h(Law/e;I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lo/U;->d(Z)V

    :cond_4
    const/16 v0, 0x1b

    invoke-static {p1, v0}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-static {p1, v1, v3}, Law/b;->c(Law/e;II)I

    move-result v1

    if-eqz v0, :cond_5

    new-instance v2, LG/Z;

    invoke-direct {v2, v0, v1}, LG/Z;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Lo/U;->a(LG/Z;)V

    :goto_1
    return-void

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/U;->a(LG/Z;)V

    goto :goto_1
.end method

.method public a(Lcom/google/googlenav/bG;I)V
    .locals 3

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    const/16 v1, 0x9c

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->q()Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Law/e;->a(IILaw/e;)V

    return-void
.end method

.method public a(Lf/N;)V
    .locals 1

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/c;->c(Lf/N;)V

    iget-object v0, p0, Lo/U;->b:Lo/aH;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/U;->b:Lo/aH;

    invoke-virtual {v0}, Lo/aH;->h()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/U;->n:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {v0, v1, p1}, Law/e;->b(IZ)V

    return-void
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, p1}, Law/e;->h(II)V

    iput p1, p0, Lo/U;->h:I

    iget-object v0, p0, Lo/U;->b:Lo/aH;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/U;->b:Lo/aH;

    invoke-virtual {v0}, Lo/aH;->h()V

    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 2

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    const/16 v1, 0x83

    invoke-virtual {v0, v1, p1, p2}, Law/e;->b(IJ)V

    iput-wide p1, p0, Lo/U;->k:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    const/16 v1, 0x84

    invoke-virtual {v0, v1, p1}, Law/e;->b(IZ)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lo/U;->c:Z

    return v0
.end method

.method public c(Z)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->j()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    const/16 v1, 0x9c

    invoke-virtual {v0, v1, p1}, Law/e;->g(II)V

    return-void
.end method

.method public c(J)V
    .locals 4

    const/16 v3, 0x7a

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    invoke-virtual {v0, v3, p1, p2}, Law/e;->b(IJ)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v1, -0x1

    invoke-virtual {v0, v3, v1, v2}, Law/e;->b(IJ)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lo/U;->d()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lf/h;
    .locals 5

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v0

    invoke-virtual {p0}, Lo/U;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/U;->o()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lo/U;->t()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lo/U;->H()Lcom/google/googlenav/bG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bB;->i(Law/e;)Lf/h;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lo/U;->g:J

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lo/U;->f:Z

    return-void
.end method

.method public e(Z)I
    .locals 1

    invoke-virtual {p0}, Lo/U;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const v0, 0x600000ff

    :goto_0
    return v0

    :cond_0
    const v0, 0x500000ff

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const v0, 0x40800080

    goto :goto_0

    :cond_2
    const v0, 0x20800080

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Z)I
    .locals 1

    invoke-virtual {p0}, Lo/U;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const v0, 0x180000ff

    :goto_0
    return v0

    :cond_0
    const v0, 0x100000ff

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const v0, 0x20800080

    goto :goto_0

    :cond_2
    const v0, 0x10800080

    goto :goto_0
.end method

.method protected f()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x145

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/U;->n:Ljava/lang/String;

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(J)Z
    .locals 4

    invoke-virtual {p0}, Lo/U;->q()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/32 v2, 0xa4cb80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/U;->n:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/U;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lo/U;->c(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public h()I
    .locals 4

    iget v0, p0, Lo/U;->h:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x6e

    const/16 v2, 0x80

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Law/b;->a(Law/e;III)I

    move-result v0

    iput v0, p0, Lo/U;->h:I

    :cond_0
    iget v0, p0, Lo/U;->h:I

    return v0
.end method

.method public i()I
    .locals 4

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x6e

    const/16 v2, 0xa2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Law/b;->a(Law/e;III)I

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0xa3

    invoke-static {v0, v1}, Law/b;->h(Law/e;I)Z

    move-result v0

    goto :goto_0
.end method

.method public k()Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lo/U;->h()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    invoke-virtual {p0}, Lo/U;->h()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Law/e;->b(I)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lo/U;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method public o()Z
    .locals 3

    invoke-virtual {p0}, Lo/U;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lo/U;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    iput-object v0, p0, Lo/U;->i:Ljava/lang/Boolean;

    :cond_1
    iget-object v0, p0, Lo/U;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public p()Ljava/lang/Long;
    .locals 4

    iget-object v0, p0, Lo/U;->d:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    new-instance v1, Ljava/lang/Long;

    const/16 v2, 0x6f

    invoke-virtual {v0, v2}, Law/e;->e(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iput-object v1, p0, Lo/U;->d:Ljava/lang/Long;

    :cond_0
    iget-object v0, p0, Lo/U;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public q()J
    .locals 4

    iget-wide v0, p0, Lo/U;->j:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x6e

    const/16 v2, 0x79

    invoke-static {v0, v1, v2}, Law/b;->d(Law/e;II)J

    move-result-wide v0

    iput-wide v0, p0, Lo/U;->j:J

    :cond_0
    iget-wide v0, p0, Lo/U;->j:J

    return-wide v0
.end method

.method public r()J
    .locals 4

    iget-wide v0, p0, Lo/U;->m:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x6e

    const/16 v2, 0x82

    invoke-static {v0, v1, v2}, Law/b;->d(Law/e;II)J

    move-result-wide v0

    iput-wide v0, p0, Lo/U;->m:J

    :cond_0
    iget-wide v0, p0, Lo/U;->m:J

    return-wide v0
.end method

.method public s()J
    .locals 4

    iget-wide v0, p0, Lo/U;->l:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/U;->q()J

    move-result-wide v0

    iput-wide v0, p0, Lo/U;->l:J

    :cond_0
    iget-wide v0, p0, Lo/U;->l:J

    return-wide v0
.end method

.method public t()J
    .locals 3

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x6e

    const/16 v2, 0x7a

    invoke-static {v0, v1, v2}, Law/b;->d(Law/e;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public u()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x6e

    const/16 v2, 0x70

    invoke-static {v0, v1, v2}, Law/b;->b(Law/e;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v2}, Law/e;->i(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Law/e;->g(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w()J
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lo/U;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    move-wide v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lo/U;->g:J

    invoke-static {v0, v1}, Lo/U;->e(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lo/U;->g:J

    goto :goto_0
.end method

.method public x()J
    .locals 8

    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual {p0}, Lo/U;->w()J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-eqz v2, :cond_0

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_2
    move-wide v0, v4

    goto :goto_0
.end method

.method public y()Z
    .locals 2

    iget-object v0, p0, Lo/U;->e:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-static {v0, v1}, Law/b;->h(Law/e;I)Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lo/U;->c()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lo/U;->l()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lo/U;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lo/U;->J()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lo/U;->a:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
