.class public Lcom/google/googlenav/ui/bu;
.super Lcom/google/googlenav/ui/bS;

# interfaces
.implements Lcom/google/googlenav/ui/bA;


# static fields
.field public static final a:I


# instance fields
.field private final b:LH/f;

.field private c:Lf/v;

.field private d:Lf/Y;

.field private final e:Lcom/google/googlenav/ui/aT;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Z

.field private final j:[Lcom/google/googlenav/ui/r;

.field private final k:LaF/a;

.field private final l:LaF/a;

.field private m:J

.field private n:J

.field private o:[Lk/l;

.field private p:I

.field private q:Z

.field private final r:Lf/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lac/m;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/bu;->a:I

    return-void
.end method

.method public constructor <init>(LH/f;Lcom/google/googlenav/ui/aT;Lf/Y;Lf/v;)V
    .locals 4

    const-wide/high16 v2, -0x8000

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/bS;-><init>()V

    iput-boolean v1, p0, Lcom/google/googlenav/ui/bu;->f:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/bu;->g:Z

    iput v1, p0, Lcom/google/googlenav/ui/bu;->h:I

    new-instance v0, LaF/a;

    invoke-direct {v0, v1, v1}, LaF/a;-><init>(II)V

    iput-object v0, p0, Lcom/google/googlenav/ui/bu;->k:LaF/a;

    new-instance v0, LaF/a;

    invoke-direct {v0, v1, v1}, LaF/a;-><init>(II)V

    iput-object v0, p0, Lcom/google/googlenav/ui/bu;->l:LaF/a;

    iput-wide v2, p0, Lcom/google/googlenav/ui/bu;->m:J

    iput-wide v2, p0, Lcom/google/googlenav/ui/bu;->n:J

    new-instance v0, Lcom/google/googlenav/ui/ar;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/ar;-><init>(Lcom/google/googlenav/ui/bu;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/bu;->r:Lf/a;

    iput-object p1, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    iput-object p2, p0, Lcom/google/googlenav/ui/bu;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {p0, p3}, Lcom/google/googlenav/ui/bu;->a(Lf/Y;)V

    iput-object p4, p0, Lcom/google/googlenav/ui/bu;->c:Lf/v;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlenav/ui/r;

    aput-object p0, v0, v1

    iput-object v0, p0, Lcom/google/googlenav/ui/bu;->j:[Lcom/google/googlenav/ui/r;

    return-void
.end method

.method private H()Z
    .locals 2

    const-string v0, "GPS_FIX"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lac/i;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private I()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->l()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/bu;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->n()Lf/h;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Li/aE;->a(Lf/h;Ljava/lang/String;Z[Ljava/lang/String;)Li/M;

    move-result-object v0

    invoke-virtual {v0, v4}, Li/M;->j(Z)V

    iput-boolean v4, p0, Lcom/google/googlenav/ui/bu;->i:Z

    const-string v0, "GPS_FIX"

    invoke-static {v0, v4}, Lac/i;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private J()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->G()J

    move-result-wide v0

    const-wide/16 v2, 0x1f40

    add-long/2addr v2, v0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v4

    invoke-virtual {v4}, Lac/m;->p()Lac/p;

    move-result-object v4

    invoke-interface {v4}, Lac/p;->a()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v2, v8

    :goto_0
    iget-object v3, p0, Lcom/google/googlenav/ui/bu;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aT;->F()J

    move-result-wide v3

    const-wide/32 v5, 0x6ddd00

    add-long/2addr v3, v5

    cmp-long v0, v3, v0

    if-gez v0, :cond_1

    move v0, v8

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    move v0, v8

    :goto_2
    return v0

    :cond_0
    move v2, v7

    goto :goto_0

    :cond_1
    move v0, v7

    goto :goto_1

    :cond_2
    move v0, v7

    goto :goto_2
.end method

.method private K()V
    .locals 2

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/googlenav/ui/bu;->m:J

    return-void
.end method

.method private L()I
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->h()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v1}, LH/f;->q()Lf/h;

    move-result-object v1

    invoke-static {v1}, LH/e;->e(Lf/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, LH/e;->i()LH/e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v2}, LH/f;->q()Lf/h;

    move-result-object v2

    invoke-virtual {v1, v2}, LH/e;->b(Lf/h;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit16 v0, v0, 0x275

    :cond_0
    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    rem-int/lit8 v1, v0, 0x64

    sub-int/2addr v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    rem-int/lit8 v1, v0, 0xa

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private M()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->h()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/bu;->N()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private N()I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->c:Lf/v;

    iget-object v1, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v1}, LH/f;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lf/v;->c(I)I

    move-result v0

    return v0
.end method

.method public static a(ILf/h;)Lf/l;
    .locals 6

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    int-to-long v0, p0

    int-to-long v2, p0

    mul-long/2addr v0, v2

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->ab()I

    move-result v2

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aV;->ac()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/16 v3, 0x16

    invoke-static {v3}, Lf/l;->b(I)Lf/l;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Lf/h;->a(IILf/l;)Lf/h;

    move-result-object v4

    invoke-virtual {p1, v4}, Lf/h;->b(Lf/h;)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Lf/l;->d()Lf/l;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v0, v3

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Lk/m;II)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->o:[Lk/l;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/google/googlenav/ui/bu;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/googlenav/ui/aV;->am()[Lk/l;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lk/l;

    iput-object v1, p0, Lcom/google/googlenav/ui/bu;->o:[Lk/l;

    iget-object v1, p0, Lcom/google/googlenav/ui/bu;->o:[Lk/l;

    aget-object v2, v0, v3

    if-nez v2, :cond_3

    move-object v2, v5

    :goto_0
    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/google/googlenav/ui/bu;->o:[Lk/l;

    aget-object v2, v0, v4

    if-nez v2, :cond_4

    move-object v0, v5

    :goto_1
    aput-object v0, v1, v4

    iput p3, p0, Lcom/google/googlenav/ui/bu;->p:I

    :cond_1
    rem-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lcom/google/googlenav/ui/bu;->o:[Lk/l;

    aget-object v0, v1, v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/googlenav/ui/bu;->k:LaF/a;

    iget v1, v1, LaF/a;->a:I

    invoke-interface {v0}, Lk/l;->f()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/googlenav/ui/bu;->k:LaF/a;

    iget v2, v2, LaF/a;->b:I

    invoke-interface {v0}, Lk/l;->e()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-interface {p1, v0, v1, v2}, Lk/m;->a(Lk/l;II)V

    :cond_2
    return-void

    :cond_3
    aget-object v2, v0, v3

    invoke-interface {v2, p3}, Lk/l;->a(I)Lk/l;

    move-result-object v2

    goto :goto_0

    :cond_4
    aget-object v0, v0, v4

    invoke-interface {v0, p3}, Lk/l;->a(I)Lk/l;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/bu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/bu;->q:Z

    return v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/bu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/ui/bu;->q:Z

    return p1
.end method

.method private static b(J)J
    .locals 2

    mul-long v0, p0, p0

    return-wide v0
.end method

.method private b(ZZ)Lf/l;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->d:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->f()Lf/l;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->d:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->f()Lf/l;

    move-result-object v0

    if-eqz p1, :cond_2

    const/16 v0, 0xf

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v1}, LH/f;->q()Lf/h;

    move-result-object v1

    invoke-static {v1}, Lf/v;->g(Lf/h;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x13

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->p()Lf/l;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lf/l;->b(Lf/l;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method private c(Lcom/google/googlenav/ui/x;)V
    .locals 7

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->c:Lf/v;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->n()Lf/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/bu;->l:LaF/a;

    invoke-virtual {v0, v1, v2}, Lf/v;->a(Lf/h;LaF/a;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->c:Lf/v;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lf/v;->c(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->y()I

    move-result v0

    move v6, v0

    :goto_1
    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->l:LaF/a;

    iget v1, v0, LaF/a;->a:I

    div-int/lit8 v2, v3, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, LaF/a;->a:I

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->l:LaF/a;

    iget v1, v0, LaF/a;->b:I

    div-int/lit8 v2, v3, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, LaF/a;->b:I

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->b()Lk/m;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/bu;->l:LaF/a;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->c()I

    move-result v5

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/aV;->a(Lk/m;LaF/a;IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->e()I

    move-result v0

    move v6, v0

    goto :goto_1
.end method

.method private d(Lcom/google/googlenav/ui/x;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->b()Lk/m;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/bu;->c:Lf/v;

    invoke-virtual {v1}, Lf/v;->t()I

    move-result v5

    iget-object v1, p0, Lcom/google/googlenav/ui/bu;->c:Lf/v;

    invoke-virtual {v1}, Lf/v;->s()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->c()I

    move-result v1

    sget v4, Lcom/google/googlenav/ui/bu;->a:I

    move v3, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Lcom/google/googlenav/ui/bQ;->a(Lk/m;IIIIIZ)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->c()I

    move-result v1

    sget v3, Lcom/google/googlenav/ui/bu;->a:I

    sub-int v3, v7, v3

    sget v4, Lcom/google/googlenav/ui/bu;->a:I

    move v6, v2

    invoke-static/range {v0 .. v6}, Lcom/google/googlenav/ui/bQ;->a(Lk/m;IIIIIZ)V

    sget v9, Lcom/google/googlenav/ui/bu;->a:I

    sget v1, Lcom/google/googlenav/ui/bu;->a:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v11, v7, v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->c()I

    move-result v7

    sget v10, Lcom/google/googlenav/ui/bu;->a:I

    move-object v6, v0

    move v8, v2

    invoke-static/range {v6 .. v12}, Lcom/google/googlenav/ui/bQ;->a(Lk/m;IIIIIZ)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->c()I

    move-result v7

    sget v1, Lcom/google/googlenav/ui/bu;->a:I

    sub-int v8, v5, v1

    sget v10, Lcom/google/googlenav/ui/bu;->a:I

    move-object v6, v0

    invoke-static/range {v6 .. v12}, Lcom/google/googlenav/ui/bQ;->a(Lk/m;IIIIIZ)V

    goto :goto_0
.end method


# virtual methods
.method public A()Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->n()Lf/h;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v5

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->d:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->o()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/bu;->d:Lf/Y;

    iget-object v2, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v2}, LH/f;->h()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->n()Lf/h;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lf/Y;->a(ILf/h;)F

    move-result v1

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    float-to-long v1, v1

    div-int/lit8 v0, v0, 0x2

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_0
.end method

.method public B()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->C()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public C()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->k()Z

    move-result v0

    return v0
.end method

.method public D()Z
    .locals 1

    invoke-static {}, LaR/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LaR/d;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public E()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/bu;->f:Z

    return-void
.end method

.method public F()V
    .locals 6

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/googlenav/ui/bu;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->G()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->E()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/bu;->K()V

    goto :goto_0
.end method

.method public G()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->A()LG/Z;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/bu;->d:Lf/Y;

    invoke-virtual {v1, v0}, Lf/Y;->a(LG/Z;)V

    :cond_0
    return-void
.end method

.method public M_()[Lcom/google/googlenav/ui/r;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->j:[Lcom/google/googlenav/ui/r;

    return-object v0
.end method

.method public a()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->f()Lf/h;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2a

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/ui/bu;->M()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lf/h;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v1}, LH/f;->h()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->t()I

    move-result v0

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->u()I

    move-result v0

    if-eq v0, p2, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->v()V

    goto :goto_0
.end method

.method public a(J)V
    .locals 4

    iget-wide v0, p0, Lcom/google/googlenav/ui/bu;->m:J

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/googlenav/ui/bu;->m:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x443

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/bu;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->I()Lh/fa;

    move-result-object v0

    invoke-virtual {v0}, Lh/fa;->m()V

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/ui/bu;->K()V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/x;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/bu;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/bu;->c(Lcom/google/googlenav/ui/x;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/x;IZ)V
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->b()Lk/m;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/bu;->c:Lf/v;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->n()Lf/h;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/bu;->k:LaF/a;

    invoke-virtual {v1, v2, v3}, Lf/v;->a(Lf/h;LaF/a;)V

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->q()Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/af;

    invoke-virtual {v1}, Lcom/google/googlenav/android/af;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/googlenav/ui/bu;->g:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ne v1, v4, :cond_4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->q()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/google/googlenav/ui/aV;->an()[Lk/l;

    move-result-object v1

    :goto_1
    array-length v2, v1

    rem-int v2, p2, v2

    aget-object v1, v1, v2

    invoke-interface {v1}, Lk/l;->e()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/bu;->k:LaF/a;

    iget v3, v3, LaF/a;->a:I

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/googlenav/ui/bu;->k:LaF/a;

    iget v4, v4, LaF/a;->b:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v4, v2

    invoke-interface {v0, v1, v3, v2}, Lk/m;->a(Lk/l;II)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v1}, LH/f;->x()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v1}, LH/f;->e()I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {}, LQ/g;->j()LQ/g;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, LQ/g;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, LQ/g;->d()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/googlenav/ui/aV;->al()[Lk/l;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0, p2, v1}, Lcom/google/googlenav/ui/bu;->a(Lk/m;II)V

    goto :goto_2

    :cond_5
    move v1, v4

    goto :goto_0
.end method

.method public a(Lf/Y;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->d:Lf/Y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->d:Lf/Y;

    iget-object v1, p0, Lcom/google/googlenav/ui/bu;->r:Lf/a;

    invoke-virtual {v0, v1}, Lf/Y;->b(Lf/a;)V

    :cond_0
    iput-object p1, p0, Lcom/google/googlenav/ui/bu;->d:Lf/Y;

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->r:Lf/a;

    invoke-virtual {p1, v0}, Lf/Y;->a(Lf/a;)V

    return-void
.end method

.method public a(Lf/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/bu;->c:Lf/v;

    return-void
.end method

.method public a(ZZ)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/google/googlenav/ui/bu;->i:Z

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->d:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->f()Lf/l;

    move-result-object v0

    invoke-virtual {v0}, Lf/l;->a()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {p0, v0, v2, p2}, Lcom/google/googlenav/ui/bu;->a(ZZZ)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(ZZZ)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v3, p0, Lcom/google/googlenav/ui/bu;->g:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->K()V

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/bu;->b(ZZ)Lf/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->n()Lf/h;

    move-result-object v1

    iput-boolean v3, p0, Lcom/google/googlenav/ui/bu;->q:Z

    iget-object v2, p0, Lcom/google/googlenav/ui/bu;->d:Lf/Y;

    invoke-virtual {v2, v1, v0}, Lf/Y;->a(Lf/h;Lf/l;)V

    iget v0, p0, Lcom/google/googlenav/ui/bu;->h:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/bu;->h:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/bu;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->s()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/ui/bu;->L()I

    move-result v0

    if-ltz v0, :cond_1

    const/16 v1, 0x1b3

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/bu;->a(Ljava/lang/String;Z)V

    :cond_1
    iput v3, p0, Lcom/google/googlenav/ui/bu;->h:I

    :cond_2
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->an()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->D()Li/C;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Li/C;->bo()V

    :cond_3
    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->G()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/bu;->K()V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->s()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->t()V

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lcom/google/googlenav/ui/bu;->g:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->K()V

    goto :goto_0

    :cond_7
    const/16 v0, 0x22e

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/google/googlenav/ui/bu;->a(Ljava/lang/String;Z)V

    iget-wide v0, p0, Lcom/google/googlenav/ui/bu;->m:J

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/ui/bu;->m:J

    goto :goto_0
.end method

.method a(I)Z
    .locals 2

    iget v0, p0, Lcom/google/googlenav/ui/bu;->p:I

    sub-int v0, p1, v0

    invoke-static {v0}, LA/h;->e(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lax/c;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lax/c;->e()C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2, v3}, Lcom/google/googlenav/ui/bu;->a(ZZ)V

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public b(Lcom/google/googlenav/ui/x;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/bu;->d(Lcom/google/googlenav/ui/x;)V

    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/bu;->M()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x73aaaaaa

    goto :goto_0

    :cond_1
    const v0, 0x73217bce

    goto :goto_0
.end method

.method public e()I
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/bu;->M()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x33cccccc

    goto :goto_0

    :cond_1
    const v0, 0x338cc6ef

    goto :goto_0
.end method

.method public f()Lf/h;
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->n()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->h()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->h()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/bu;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/googlenav/ui/bu;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/bu;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/bu;->n:J

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->n()Lf/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2, v2, v2}, Lcom/google/googlenav/ui/bu;->a(ZZZ)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/bu;->H()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/bu;->I()V

    :cond_0
    iput-boolean v2, p0, Lcom/google/googlenav/ui/bu;->f:Z

    iget-boolean v1, p0, Lcom/google/googlenav/ui/bu;->g:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/googlenav/ui/bu;->d:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->e()Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/google/googlenav/ui/bu;->q:Z

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/bu;->d:Lf/Y;

    invoke-virtual {v2, v0, v1}, Lf/Y;->a(Lf/h;Lf/l;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->G()V

    :cond_2
    invoke-direct {p0}, Lcom/google/googlenav/ui/bu;->K()V

    :cond_3
    return-void
.end method

.method public l()[Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/bu;->L()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1b5

    :goto_0
    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "\n"

    invoke-static {v0, v1}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x439

    goto :goto_0

    :cond_1
    const/16 v0, 0x43a

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

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

.method public n()Lf/h;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->p()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/bu;->g:Z

    return v0
.end method

.method public p()Lf/l;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->h()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v1}, LH/f;->p()Lf/h;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bu;->a(ILf/h;)Lf/l;

    move-result-object v0

    goto :goto_0
.end method

.method public q()Z
    .locals 4

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/googlenav/ui/bu;->n:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b2

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/bu;->a(Ljava/lang/String;Z)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/bu;->f:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/google/googlenav/ui/bu;->h:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ao()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->e:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ui/bu;->h:I

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method t()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->c:Lf/v;

    invoke-virtual {v0}, Lf/v;->t()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method u()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->c:Lf/v;

    invoke-virtual {v0}, Lf/v;->s()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public v()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/bu;->g:Z

    return-void
.end method

.method x()Z
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v11

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->d:Lf/Y;

    instance-of v0, v0, Lf/u;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method should not be called except for drawing image maps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->c:Lf/v;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->n()Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/v;->b(Lf/h;)LaF/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/bu;->c:Lf/v;

    invoke-virtual {v1}, Lf/v;->t()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/bu;->c:Lf/v;

    invoke-virtual {v2}, Lf/v;->s()I

    move-result v2

    invoke-direct {p0}, Lcom/google/googlenav/ui/bu;->N()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bu;->b(J)J

    move-result-wide v3

    move v5, v11

    :goto_1
    if-ge v5, v12, :cond_4

    move v6, v11

    :goto_2
    if-ge v6, v12, :cond_3

    mul-int v7, v5, v1

    iget v8, v0, LaF/a;->a:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/bu;->b(J)J

    move-result-wide v7

    mul-int v9, v6, v2

    iget v10, v0, LaF/a;->b:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    invoke-static {v9, v10}, Lcom/google/googlenav/ui/bu;->b(J)J

    move-result-wide v9

    add-long/2addr v7, v9

    cmp-long v7, v7, v3

    if-lez v7, :cond_2

    move v0, v11

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public y()I
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/bu;->M()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/bu;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x33cccccc

    goto :goto_0

    :cond_1
    const v0, 0x208cc6ef

    goto :goto_0
.end method

.method public z()LH/f;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LH/f;

    return-object v0
.end method
