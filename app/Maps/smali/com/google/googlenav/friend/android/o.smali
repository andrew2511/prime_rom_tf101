.class Lcom/google/googlenav/friend/android/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ae;
.implements Li/o;
.implements Lo/cd;


# instance fields
.field a:Z

.field final synthetic b:Lcom/google/googlenav/friend/android/u;

.field private c:Lcom/google/googlenav/friend/android/v;

.field private d:Lcom/google/googlenav/friend/android/e;

.field private e:Lcom/google/googlenav/bG;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/android/u;Lcom/google/googlenav/friend/android/e;Lcom/google/googlenav/friend/android/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/friend/android/o;->b:Lcom/google/googlenav/friend/android/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/friend/android/o;->d:Lcom/google/googlenav/friend/android/e;

    iput-object p3, p0, Lcom/google/googlenav/friend/android/o;->c:Lcom/google/googlenav/friend/android/v;

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/friend/android/o;->a:Z

    iget-object v0, p0, Lcom/google/googlenav/friend/android/o;->b:Lcom/google/googlenav/friend/android/u;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/u;->d(Lcom/google/googlenav/friend/android/u;)Lcom/google/googlenav/friend/android/I;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/friend/android/I;->m()V

    return-void
.end method

.method private a(Lcom/google/googlenav/bG;Ljava/util/List;)V
    .locals 9

    invoke-static {p2}, Lcom/google/googlenav/friend/android/u;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->d()Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0x1f2

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v0}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x1f3

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->p()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/o;->b:Lcom/google/googlenav/friend/android/u;

    const/4 v5, 0x0

    const v7, 0x7f020254

    const/4 v8, 0x0

    move-object v3, v1

    invoke-static/range {v0 .. v8}, Lcom/google/googlenav/friend/android/u;->a(Lcom/google/googlenav/friend/android/u;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/h;ZIZ)V

    return-void
.end method

.method private a(Lcom/google/googlenav/h;)V
    .locals 6

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/au;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Lo/d;

    const/4 v4, 0x0

    invoke-static {}, Lo/d;->h()Lo/d;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lj/X;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3, p0}, Lcom/google/googlenav/au;-><init>(Lcom/google/googlenav/h;Ljava/lang/String;Ljava/util/List;Lcom/google/googlenav/ae;)V

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/h;Z)V
    .locals 9

    const/16 v0, 0x1f4

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x1f5

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/h;->c()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/googlenav/friend/android/o;->b:Lcom/google/googlenav/friend/android/u;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->d()Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f020257

    move-object v5, p1

    move v8, p2

    invoke-static/range {v0 .. v8}, Lcom/google/googlenav/friend/android/u;->a(Lcom/google/googlenav/friend/android/u;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/h;ZIZ)V

    return-void
.end method

.method private a(Lcom/google/googlenav/h;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/friend/android/o;->b:Lcom/google/googlenav/friend/android/u;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/u;->b(Lcom/google/googlenav/friend/android/u;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/android/A;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/o;->b:Lcom/google/googlenav/friend/android/u;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/u;->b(Lcom/google/googlenav/friend/android/u;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/h;->m()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/android/A;->b(Landroid/content/Context;Z)V

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/android/o;->a(Lcom/google/googlenav/h;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/friend/android/o;->a(Lcom/google/googlenav/h;Z)V

    :goto_1
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/o;->a()V

    goto :goto_0

    :cond_1
    const-string v0, "oo"

    invoke-static {v0}, Lo/A;->d(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public a(J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/o;->a()V

    return-void
.end method

.method public a(Law/e;Ljava/util/List;Law/e;J)V
    .locals 8

    const-wide v6, 0x412e848000000000L

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/o;->a()V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/o;->b:Lcom/google/googlenav/friend/android/u;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/u;->a(Lcom/google/googlenav/friend/android/u;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v0, "oo"

    invoke-static {v0}, Lo/A;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/google/googlenav/h;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;

    invoke-direct {v1, v0}, Lcom/google/googlenav/h;-><init>(Law/e;)V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/o;->c:Lcom/google/googlenav/friend/android/v;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/android/v;->a()Lcom/google/googlenav/bG;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_2
    iget-object v2, p0, Lcom/google/googlenav/friend/android/o;->b:Lcom/google/googlenav/friend/android/u;

    invoke-static {v2}, Lcom/google/googlenav/friend/android/u;->b(Lcom/google/googlenav/friend/android/u;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/friend/android/A;->l(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/friend/android/o;->b:Lcom/google/googlenav/friend/android/u;

    invoke-static {v3}, Lcom/google/googlenav/friend/android/u;->b(Lcom/google/googlenav/friend/android/u;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/friend/android/A;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lcom/google/googlenav/ai;->a(Law/e;ZLjava/lang/String;)Z

    move-result v2

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v3

    const/16 v4, 0xc

    invoke-static {v3, v4}, Law/b;->h(Law/e;I)Z

    move-result v3

    invoke-virtual {v1}, Lcom/google/googlenav/h;->j()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/googlenav/h;->k()Z

    iget-object v5, p0, Lcom/google/googlenav/friend/android/o;->d:Lcom/google/googlenav/friend/android/e;

    invoke-static {v5, v0}, Lcom/google/googlenav/friend/android/u;->a(Lcom/google/googlenav/friend/android/e;Lcom/google/googlenav/bG;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    if-eqz v2, :cond_5

    :goto_1
    const-string v0, "oo"

    invoke-static {v0}, Lo/A;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/o;->a()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1, v3, v4}, Lcom/google/googlenav/friend/android/o;->a(Lcom/google/googlenav/h;ZZ)V

    goto :goto_0

    :cond_5
    new-instance v0, Lf/h;

    iget-object v2, p0, Lcom/google/googlenav/friend/android/o;->d:Lcom/google/googlenav/friend/android/e;

    iget-object v2, v2, Lcom/google/googlenav/friend/android/e;->a:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iget-object v3, p0, Lcom/google/googlenav/friend/android/o;->d:Lcom/google/googlenav/friend/android/e;

    iget-object v3, v3, Lcom/google/googlenav/friend/android/e;->a:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    invoke-direct {v0, v2, v3}, Lf/h;-><init>(II)V

    invoke-virtual {v1}, Lcom/google/googlenav/h;->g()Lf/h;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/y;->a(Lf/h;Lf/h;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_1
.end method

.method public a(Lcom/google/googlenav/j;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lo/aH;

    invoke-direct {v0, p1}, Lo/aH;-><init>(Lcom/google/googlenav/j;)V

    invoke-virtual {v0}, Lo/aH;->d()Lo/U;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/android/o;->e:Lcom/google/googlenav/bG;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/U;->a(Lcom/google/googlenav/bG;I)V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/o;->b:Lcom/google/googlenav/friend/android/u;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/u;->c(Lcom/google/googlenav/friend/android/u;)Lcom/google/googlenav/friend/android/E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/android/E;->a()Li/br;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, v3, v3}, Li/br;->a(ILcom/google/googlenav/j;LaU/a;Li/aD;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/o;->a()V

    return-void
.end method

.method public a(ZLcom/google/googlenav/bG;Lcom/google/googlenav/h;Ljava/util/List;)V
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "ca"

    invoke-static {v0}, Lo/A;->d(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/googlenav/friend/android/o;->e:Lcom/google/googlenav/bG;

    iget-object v0, p0, Lcom/google/googlenav/friend/android/o;->e:Lcom/google/googlenav/bG;

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bB;->e(Law/e;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/bg;->a()Lcom/google/googlenav/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/android/o;->e:Lcom/google/googlenav/bG;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bg;->a(Lcom/google/googlenav/bG;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/friend/android/o;->b:Lcom/google/googlenav/friend/android/u;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/u;->c(Lcom/google/googlenav/friend/android/u;)Lcom/google/googlenav/friend/android/E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/android/E;->a()Li/br;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Li/br;->a(ILaU/a;Li/o;)V

    invoke-direct {p0, p2, p4}, Lcom/google/googlenav/friend/android/o;->a(Lcom/google/googlenav/bG;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/o;->a()V

    goto :goto_0
.end method
