.class public abstract LB/u;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lu/e;

.field protected final b:Lu/d;

.field protected final c:I

.field private final d:LB/h;

.field private final e:Ljava/util/List;

.field private f:Lj/v;

.field private g:[F

.field private h:F

.field private i:I

.field private j:I

.field private k:I

.field private l:F


# direct methods
.method protected constructor <init>(LB/h;Lu/d;Lu/e;ILjava/util/List;)V
    .locals 2

    const/high16 v1, -0x4080

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, LB/u;->h:F

    iput v0, p0, LB/u;->i:I

    iput v0, p0, LB/u;->j:I

    iput v0, p0, LB/u;->k:I

    iput v1, p0, LB/u;->l:F

    iput-object p1, p0, LB/u;->d:LB/h;

    iput-object p2, p0, LB/u;->b:Lu/d;

    iput-object p3, p0, LB/u;->a:Lu/e;

    iput p4, p0, LB/u;->c:I

    if-eqz p5, :cond_0

    invoke-static {p5}, Lj/v;->a(Ljava/util/Collection;)Lj/v;

    move-result-object v0

    iput-object v0, p0, LB/u;->e:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lj/v;->a()Lj/v;

    move-result-object v0

    iput-object v0, p0, LB/u;->e:Ljava/util/List;

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/Date;Ljava/util/Date;)I
    .locals 1

    invoke-static {p0, p1}, LB/u;->b(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method static a(Lf/h;Lf/h;Ljava/util/List;F)Lj/v;
    .locals 4

    invoke-static {p2}, Lj/X;->b(Ljava/lang/Iterable;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, p0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf/h;

    invoke-static {v2, p0}, LK/n;->a(Lf/h;Lf/h;)F

    move-result v3

    cmpg-float v3, v3, p3

    if-gez v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    move-object v2, p0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf/h;

    invoke-static {p0, p1}, LK/n;->a(Lf/h;Lf/h;)F

    move-result v1

    cmpg-float v1, v1, p3

    if-gez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lj/v;->a(Ljava/util/Collection;)Lj/v;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lu/e;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, LB/u;->h(Lu/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lu/f;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LB/u;->b:Lu/d;

    invoke-virtual {v0, p1}, Lu/d;->a(Lu/f;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lu/h;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/googlenav/ui/aZ;->b(Lu/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Law/e;)Ljava/util/Date;
    .locals 1

    invoke-static {p0}, LB/u;->b(Law/e;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static a(Lu/d;ILB/u;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lu/d;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lu/f;

    invoke-virtual {v0}, Lu/f;->p()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Lu/f;->i()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lu/f;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast v0, Lu/o;

    invoke-virtual {v0}, Lu/o;->u()I

    move-result v1

    invoke-virtual {v0}, Lu/o;->t()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    cmpl-float v2, v0, v6

    if-lez v2, :cond_0

    invoke-virtual {p2, v0}, LB/u;->a(F)V

    :cond_0
    if-lez v1, :cond_1

    invoke-virtual {p2, v1}, LB/u;->a(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    move v1, v6

    :goto_1
    invoke-virtual {p0}, Lu/d;->aa()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {p0, v0}, Lu/d;->l(I)Lu/e;

    move-result-object v3

    invoke-virtual {v3}, Lu/e;->y()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lu/e;->s()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v3}, Lu/e;->q()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    move v1, v2

    goto :goto_0
.end method

.method private static b(Ljava/util/Date;Ljava/util/Date;)I
    .locals 4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static synthetic b(Lu/e;)I
    .locals 1

    invoke-static {p0}, LB/u;->f(Lu/e;)I

    move-result v0

    return v0
.end method

.method private static b(Law/e;)Ljava/util/Date;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/googlenav/ui/aM;->e(Law/e;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lu/d;ILB/u;)V
    .locals 0

    invoke-static {p0, p1, p2}, LB/u;->c(Lu/d;ILB/u;)V

    return-void
.end method

.method static synthetic c(Lu/e;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, LB/u;->e(Lu/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lu/d;ILB/u;)V
    .locals 2

    invoke-static {p0, p1, p2}, LB/u;->a(Lu/d;ILB/u;)V

    invoke-virtual {p2}, LB/u;->z()F

    move-result v0

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p2}, LB/u;->D()F

    move-result v0

    invoke-virtual {p2, v0}, LB/u;->a(F)V

    :cond_0
    iget v0, p2, LB/u;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, LB/u;->A()V

    :cond_1
    return-void
.end method

.method static synthetic d(Lu/e;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, LB/u;->g(Lu/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(Lu/e;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lu/e;->m()Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->b(Law/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x3ff

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lu/e;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x400

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lu/e;->o()I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/ui/aM;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static f(Lu/e;)I
    .locals 1

    invoke-virtual {p0}, Lu/e;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu/e;->E()I

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/rideabout/i;->c(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static g()F
    .locals 1

    invoke-static {}, LK/m;->a()LK/l;

    move-result-object v0

    iget v0, v0, LK/l;->v:F

    return v0
.end method

.method private static g(Lu/e;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lu/e;->g()Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->b(Law/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x3fe

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lu/e;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3fd

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lu/e;->s()I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/ui/aM;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static h(Lu/e;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lu/e;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lu/e;->x()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected A()V
    .locals 2

    invoke-virtual {p0}, LB/u;->c()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, LB/u;->d()Ljava/util/Date;

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, LB/u;->c()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, LB/u;->d()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, LB/u;->b(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    iput v0, p0, LB/u;->k:I

    goto :goto_0
.end method

.method protected B()Z
    .locals 1

    invoke-virtual {p0}, LB/u;->aq_()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LB/u;->b()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public C()Lj/v;
    .locals 4

    iget-object v0, p0, LB/u;->f:Lj/v;

    if-nez v0, :cond_0

    invoke-virtual {p0}, LB/u;->aq_()Lf/h;

    move-result-object v0

    invoke-virtual {p0}, LB/u;->b()Lf/h;

    move-result-object v1

    iget-object v2, p0, LB/u;->e:Ljava/util/List;

    invoke-static {}, LB/u;->g()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, LB/u;->a(Lf/h;Lf/h;Ljava/util/List;F)Lj/v;

    move-result-object v0

    iput-object v0, p0, LB/u;->f:Lj/v;

    :cond_0
    iget-object v0, p0, LB/u;->f:Lj/v;

    return-object v0
.end method

.method public D()F
    .locals 1

    invoke-virtual {p0}, LB/u;->C()Lj/v;

    move-result-object v0

    invoke-virtual {v0}, Lj/v;->size()I

    move-result v0

    invoke-virtual {p0, v0}, LB/u;->c(I)F

    move-result v0

    return v0
.end method

.method public E()F
    .locals 1

    iget v0, p0, LB/u;->h:F

    return v0
.end method

.method public F()I
    .locals 1

    iget v0, p0, LB/u;->i:I

    return v0
.end method

.method public G()I
    .locals 1

    iget v0, p0, LB/u;->j:I

    return v0
.end method

.method public a(Ljava/util/Date;)J
    .locals 2

    invoke-virtual {p0}, LB/u;->c()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p1, v0}, LB/u;->b(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, LB/u;->l:F

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, LB/u;->k:I

    return-void
.end method

.method public ai_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LB/u;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract aq_()Lf/h;
.end method

.method public abstract b()Lf/h;
.end method

.method public b(I)Lf/h;
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p0}, LB/u;->C()Lj/v;

    move-result-object v0

    if-gt v4, p1, :cond_0

    invoke-virtual {v0}, Lj/v;->size()I

    move-result v1

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index not in range:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lae/k;->a(ZLjava/lang/Object;)V

    if-ne p1, v4, :cond_1

    invoke-virtual {p0}, LB/u;->aq_()Lf/h;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lj/v;->size()I

    move-result v1

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, LB/u;->b()Lf/h;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lj/v;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf/h;

    move-object v0, p0

    goto :goto_1
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, LB/u;->h:F

    return-void
.end method

.method public c(I)F
    .locals 7

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, LB/u;->C()Lj/v;

    move-result-object v0

    invoke-virtual {v0}, Lj/v;->size()I

    move-result v0

    if-gt v6, p1, :cond_0

    if-gt p1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shapePointIndex not in range [0, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lae/k;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, LB/u;->g:[F

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [F

    iput-object v1, p0, LB/u;->g:[F

    invoke-virtual {p0}, LB/u;->aq_()Lf/h;

    move-result-object v1

    move-object v2, v1

    move v3, v5

    move v1, v4

    :goto_1
    if-gt v1, v0, :cond_1

    invoke-virtual {p0, v1}, LB/u;->b(I)Lf/h;

    move-result-object v4

    invoke-static {v2, v4}, LK/n;->a(Lf/h;Lf/h;)F

    move-result v2

    add-float/2addr v2, v3

    iget-object v3, p0, LB/u;->g:[F

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move-object v2, v4

    goto :goto_1

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    move v0, v5

    :goto_2
    return v0

    :cond_2
    iget-object v0, p0, LB/u;->g:[F

    aget v0, v0, p1

    goto :goto_2
.end method

.method public abstract c()Ljava/util/Date;
.end method

.method public d(I)F
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, LB/u;->c(I)F

    move-result v0

    invoke-virtual {p0, p1}, LB/u;->c(I)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public abstract d()Ljava/util/Date;
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, LB/u;->i:I

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, LB/u;->j:I

    return-void
.end method

.method public m()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()Lu/e;
    .locals 1

    iget-object v0, p0, LB/u;->a:Lu/e;

    return-object v0
.end method

.method public p()LB/h;
    .locals 1

    iget-object v0, p0, LB/u;->d:LB/h;

    return-object v0
.end method

.method public q()Z
    .locals 2

    sget-object v0, LB/e;->a:[I

    iget-object v1, p0, LB/u;->d:LB/h;

    invoke-virtual {v1}, LB/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public r()I
    .locals 1

    iget v0, p0, LB/u;->c:I

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LB/u;->b:Lu/d;

    iget v1, p0, LB/u;->c:I

    invoke-virtual {v0, v1}, Lu/d;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lu/f;

    invoke-direct {p0, v0}, LB/u;->a(Lu/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LB/u;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LB/u;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()J
    .locals 2

    iget-object v0, p0, LB/u;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LB/u;->a:Lu/e;

    invoke-virtual {v0}, Lu/e;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Z
    .locals 2

    iget v0, p0, LB/u;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y()I
    .locals 1

    invoke-virtual {p0}, LB/u;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LB/u;->k:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public z()F
    .locals 1

    iget v0, p0, LB/u;->l:F

    return v0
.end method
