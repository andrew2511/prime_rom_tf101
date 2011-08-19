.class public Lb/d;
.super Lb/k;


# static fields
.field public static final a:Lb/d;


# instance fields
.field private b:Z

.field private j:Lb/w;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:LF/M;

.field private p:[LF/M;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/d;

    invoke-direct {v0}, Lb/d;-><init>()V

    sput-object v0, Lb/d;->a:Lb/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/k;-><init>()V

    return-void
.end method

.method static synthetic a(Lb/d;)LF/M;
    .locals 1

    iget-object v0, p0, Lb/d;->o:LF/M;

    return-object v0
.end method

.method private a(LF/M;LF/M;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, LF/M;->u()[LF/o;

    move-result-object v0

    invoke-virtual {p2}, LF/M;->u()[LF/o;

    move-result-object v1

    array-length v2, v0

    array-length v3, v1

    if-eq v2, v3, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move v2, v5

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, LF/o;->e()LG/y;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v4}, LF/o;->e()LG/y;

    move-result-object v4

    invoke-virtual {v3, v4}, LG/y;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lb/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lb/d;->m:Z

    return p1
.end method

.method private af()V
    .locals 3

    iget-boolean v0, p0, Lb/d;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/d;->p:[LF/M;

    :goto_0
    iget-object v1, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v2, p0, Lb/d;->o:LF/M;

    invoke-interface {v1, v2, v0}, Lcom/google/android/maps/driveabout/app/Q;->b(LF/M;[LF/M;)V

    iget-object v0, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/d;->o:LF/M;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->b(LF/M;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [LF/M;

    const/4 v1, 0x0

    iget-object v2, p0, Lb/d;->o:LF/M;

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method private ag()V
    .locals 3

    iget-object v0, p0, Lb/d;->o:LF/M;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/d;->o:LF/M;

    invoke-virtual {v0}, LF/M;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/d;->o:LF/M;

    invoke-virtual {v0}, LF/M;->B()[LF/K;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, LF/c;->a([LF/K;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/d;->c:Landroid/content/Context;

    const v2, 0x7f0b00c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->a(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/d;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/t;->b(Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->e()V

    goto :goto_0
.end method

.method private ah()V
    .locals 3

    iget-object v0, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/d;->o:LF/M;

    if-eqz v1, :cond_0

    invoke-static {}, LF/c;->a()LF/c;

    move-result-object v1

    iget-object v2, p0, Lb/d;->o:LF/M;

    invoke-virtual {v2}, LF/M;->B()[LF/K;

    move-result-object v2

    invoke-virtual {v1, v2}, LF/c;->b([LF/K;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->f(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private c(LF/M;[LF/M;)LF/M;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget-object v1, p2, v0

    invoke-direct {p0, p1, v1}, Lb/d;->a(LF/M;LF/M;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v0, p2, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected a()V
    .locals 3

    iget-boolean v0, p0, Lb/d;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/d;->o:LF/M;

    iget-object v2, p0, Lb/d;->p:[LF/M;

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/Q;->a(LF/M;[LF/M;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lb/d;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->a(Lcom/google/android/maps/driveabout/app/bX;)V

    goto :goto_0
.end method

.method public a(LF/M;)V
    .locals 0

    iput-object p1, p0, Lb/d;->o:LF/M;

    invoke-direct {p0}, Lb/d;->af()V

    invoke-direct {p0}, Lb/d;->ag()V

    invoke-virtual {p0}, Lb/d;->a()V

    return-void
.end method

.method public a(LF/M;[LF/M;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lb/d;->ac()V

    iget-boolean v0, p0, Lb/d;->l:Z

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lb/d;->l:Z

    array-length v0, p2

    if-le v0, v1, :cond_0

    iput-boolean v1, p0, Lb/d;->b:Z

    iget-object v0, p0, Lb/d;->i:LF/L;

    invoke-virtual {v0, v2}, LF/L;->a(Z)V

    :cond_0
    :goto_0
    iput-boolean v1, p0, Lb/d;->n:Z

    iget-object v0, p0, Lb/d;->o:LF/M;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lb/d;->o:LF/M;

    invoke-direct {p0, v0, p2}, Lb/d;->c(LF/M;[LF/M;)LF/M;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lb/d;->o:LF/M;

    iget-object v0, p0, Lb/d;->o:LF/M;

    if-nez v0, :cond_1

    iput-object p1, p0, Lb/d;->o:LF/M;

    :cond_1
    iput-object p2, p0, Lb/d;->p:[LF/M;

    invoke-direct {p0}, Lb/d;->af()V

    invoke-direct {p0}, Lb/d;->ag()V

    invoke-virtual {p0}, Lb/d;->o()V

    invoke-direct {p0}, Lb/d;->ah()V

    iget-boolean v0, p0, Lb/d;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/d;->i:LF/L;

    invoke-virtual {v0}, LF/L;->f()V

    :cond_2
    iget-object v0, p0, Lb/d;->o:LF/M;

    invoke-virtual {v0}, LF/M;->w()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lb/d;->j:Lb/w;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/d;->h:Lb/p;

    iget-object v1, p0, Lb/d;->j:Lb/w;

    invoke-virtual {v0, v1}, Lb/p;->a(Lb/w;)V

    iput-object v3, p0, Lb/d;->j:Lb/w;

    :cond_3
    return-void

    :cond_4
    iget-boolean v0, p0, Lb/d;->m:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lb/d;->m:Z

    iget-boolean v0, p0, Lb/d;->b:Z

    if-eqz v0, :cond_0

    array-length v0, p2

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lb/d;->b:Z

    iget-object v0, p0, Lb/d;->i:LF/L;

    invoke-virtual {v0, v1}, LF/L;->a(Z)V

    goto :goto_0

    :cond_5
    move-object v0, v3

    goto :goto_1
.end method

.method protected a(LF/l;)V
    .locals 0

    invoke-super {p0, p1}, Lb/k;->a(LF/l;)V

    invoke-virtual {p0}, Lb/d;->ac()V

    return-void
.end method

.method protected a(LG/Q;)V
    .locals 14

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/high16 v0, 0x3fc4

    const-wide/high16 v2, 0x4000

    const/high16 v4, 0x41f0

    iget-object v5, p0, Lb/d;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/app/aH;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide v2, 0x7fefffffffffffffL

    const/4 v4, 0x0

    iget-boolean v5, p0, Lb/d;->b:Z

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    move v12, v5

    move-object v13, v4

    move-wide v4, v2

    move v2, v12

    move-object v3, v13

    :goto_1
    iget-object v6, p0, Lb/d;->p:[LF/M;

    array-length v6, v6

    if-ge v2, v6, :cond_5

    iget-object v6, p0, Lb/d;->p:[LF/M;

    aget-object v6, v6, v2

    invoke-virtual {v6, p1, v0, v1}, LF/M;->a(LG/Q;D)LF/i;

    move-result-object v7

    if-nez v7, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, LF/i;->d()D

    move-result-wide v8

    iget-object v10, p0, Lb/d;->o:LF/M;

    if-ne v6, v10, :cond_4

    const-wide v10, 0x3fe999999999999aL

    mul-double/2addr v8, v10

    :cond_4
    cmpg-double v8, v8, v4

    if-gez v8, :cond_2

    invoke-virtual {v7}, LF/i;->d()D

    move-result-wide v3

    move-wide v12, v3

    move-wide v4, v12

    move-object v3, v6

    goto :goto_2

    :cond_5
    move-object v0, v3

    :goto_3
    if-eqz v0, :cond_0

    iget-object v1, p0, Lb/d;->o:LF/M;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lb/d;->a(LF/M;)V

    goto :goto_0

    :cond_6
    move-object v0, v4

    goto :goto_3
.end method

.method protected a(Landroid/os/Bundle;LG/z;)V
    .locals 1

    iget-object v0, p0, Lb/d;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-static {p1, v0, p2}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Landroid/os/Bundle;Lcom/google/android/maps/driveabout/app/bX;LG/z;)V

    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/cA;)V
    .locals 0

    return-void
.end method

.method protected a(Z)V
    .locals 2

    iget-object v0, p0, Lb/d;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lb/d;->n:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/d;->n:Z

    iget-boolean v0, p0, Lb/d;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/d;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v0

    iget-object v1, p0, Lb/d;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aH;->b(Lcom/google/android/maps/driveabout/app/bX;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lb/d;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v0

    iget-object v1, p0, Lb/d;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aH;->c(Lcom/google/android/maps/driveabout/app/bX;)V

    goto :goto_0
.end method

.method public a(Lb/w;)Z
    .locals 1

    iget-object v0, p0, Lb/d;->o:LF/M;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/d;->o:LF/M;

    invoke-virtual {v0}, LF/M;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lb/d;->d(I)V

    iput-object p1, p0, Lb/d;->j:Lb/w;

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->c(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "ROUTE_OVERVIEW"

    return-object v0
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/d;->n:Z

    iget-object v0, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->b(I)V

    iget-object v0, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->r()V

    iget-object v0, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->k()V

    iget-object v0, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->f()V

    iget-object v0, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->w()V

    iget-object v0, p0, Lb/d;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->j()[LF/M;

    move-result-object v0

    iput-object v0, p0, Lb/d;->p:[LF/M;

    iget-object v0, p0, Lb/d;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    iput-object v0, p0, Lb/d;->o:LF/M;

    invoke-virtual {p0}, Lb/d;->o()V

    invoke-direct {p0}, Lb/d;->ah()V

    iget-object v0, p0, Lb/d;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lb/d;->af()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/d;->b:Z

    const-string v0, "UIState"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/i;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/d;->g()V

    return-void
.end method

.method public k()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lb/d;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/d;->o:LF/M;

    iget-object v1, p0, Lb/d;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lb/d;->i:LF/L;

    iget-object v1, p0, Lb/d;->o:LF/M;

    invoke-virtual {v0, v1}, LF/L;->a(LF/M;)V

    :cond_0
    iget-object v0, p0, Lb/d;->i:LF/L;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LF/L;->a(Z)V

    invoke-super {p0}, Lb/k;->k()V

    iput-object v2, p0, Lb/d;->o:LF/M;

    iput-object v2, p0, Lb/d;->p:[LF/M;

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->l()V

    iget-object v0, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->g()V

    iget-object v0, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->x()V

    iget-object v0, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->h()V

    iget-object v0, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->i()V

    iget-object v0, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/Q;->e()V

    return-void
.end method

.method public m()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/d;->n:Z

    iget-boolean v0, p0, Lb/d;->k:Z

    iput-boolean v0, p0, Lb/d;->b:Z

    iget-boolean v0, p0, Lb/d;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/d;->o()V

    iget-object v0, p0, Lb/d;->i:LF/L;

    invoke-virtual {v0}, LF/L;->f()V

    iget-object v0, p0, Lb/d;->i:LF/L;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LF/L;->a(Z)V

    :cond_0
    invoke-direct {p0}, Lb/d;->af()V

    invoke-direct {p0}, Lb/d;->ah()V

    invoke-virtual {p0}, Lb/d;->a()V

    return-void
.end method

.method public n()V
    .locals 1

    iget-boolean v0, p0, Lb/d;->b:Z

    iput-boolean v0, p0, Lb/d;->k:Z

    return-void
.end method

.method protected o()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-boolean v1, p0, Lb/d;->l:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lb/d;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->l()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lb/d;->p:[LF/M;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb/d;->p:[LF/M;

    array-length v1, v1

    if-le v1, v2, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->d(Z)V

    iget-object v0, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    iget-boolean v1, p0, Lb/d;->b:Z

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->e(Z)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected p()V
    .locals 2

    iget-object v0, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->c(I)V

    return-void
.end method

.method protected q()V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lb/d;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lb/d;->l:Z

    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lb/d;->d(I)V

    iget-object v0, p0, Lb/d;->i:LF/L;

    iget-object v1, p0, Lb/d;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v1

    iget-object v2, p0, Lb/d;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LF/L;->a(Laa/E;LF/M;)V

    :goto_0
    invoke-virtual {p0}, Lb/d;->o()V

    return-void

    :cond_0
    iget-object v0, p0, Lb/d;->i:LF/L;

    invoke-virtual {v0, v1}, LF/L;->a(Z)V

    iget-boolean v0, p0, Lb/d;->b:Z

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lb/d;->b:Z

    iput-boolean v2, p0, Lb/d;->n:Z

    invoke-virtual {p0}, Lb/d;->a()V

    invoke-virtual {p0, v1}, Lb/d;->a(Z)V

    iget-object v0, p0, Lb/d;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    iput-object v0, p0, Lb/d;->o:LF/M;

    iget-object v0, p0, Lb/d;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->j()[LF/M;

    move-result-object v0

    iput-object v0, p0, Lb/d;->p:[LF/M;

    invoke-direct {p0}, Lb/d;->af()V

    iget-object v0, p0, Lb/d;->i:LF/L;

    invoke-virtual {v0}, LF/L;->f()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public s()V
    .locals 3

    iget-object v0, p0, Lb/d;->o:LF/M;

    invoke-virtual {v0}, LF/M;->B()[LF/K;

    move-result-object v0

    new-instance v1, Lb/v;

    invoke-direct {v1, p0, v0}, Lb/v;-><init>(Lb/d;[LF/K;)V

    iget-object v2, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v2, v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->a([LF/K;Lcom/google/android/maps/driveabout/app/dw;)V

    return-void
.end method

.method public t()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lb/d;->j:Lb/w;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/d;->ac()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/d;->j:Lb/w;

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lb/d;->l:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lb/d;->ac()V

    iput-boolean v1, p0, Lb/d;->b:Z

    iget-object v0, p0, Lb/d;->e:Lcom/google/android/maps/driveabout/app/Q;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/Q;->d(Z)V

    iput-boolean v1, p0, Lb/d;->l:Z

    move v0, v2

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lb/d;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/d;->i:LF/L;

    invoke-virtual {v0}, LF/L;->a()V

    invoke-virtual {p0}, Lb/d;->ac()V

    iput-boolean v1, p0, Lb/d;->m:Z

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
