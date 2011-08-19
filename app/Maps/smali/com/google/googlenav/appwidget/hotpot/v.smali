.class public Lcom/google/googlenav/appwidget/hotpot/v;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

.field private final b:Lcom/google/googlenav/appwidget/hotpot/persistence/i;

.field private final c:Lcom/google/googlenav/appwidget/hotpot/b;

.field private final d:Lcom/google/googlenav/appwidget/hotpot/widget/g;

.field private e:Lab/b;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/appwidget/hotpot/persistence/i;Lcom/google/googlenav/appwidget/hotpot/widget/h;Lcom/google/googlenav/appwidget/hotpot/b;Lcom/google/googlenav/appwidget/hotpot/widget/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/p;

    invoke-direct {v0, p0}, Lcom/google/googlenav/appwidget/hotpot/p;-><init>(Lcom/google/googlenav/appwidget/hotpot/v;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->e:Lab/b;

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/v;->b:Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    iput-object p2, p0, Lcom/google/googlenav/appwidget/hotpot/v;->a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    iput-object p3, p0, Lcom/google/googlenav/appwidget/hotpot/v;->c:Lcom/google/googlenav/appwidget/hotpot/b;

    iput-object p4, p0, Lcom/google/googlenav/appwidget/hotpot/v;->d:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/persistence/i;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->b:Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/HashMap;
    .locals 1

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->o()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lab/c;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/v;->e:Lab/b;

    invoke-direct {v0, v1}, Lab/c;-><init>(Lab/b;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    :cond_0
    return-void
.end method

.method private a(IILjava/lang/String;)V
    .locals 3

    invoke-direct {p0, p3, p1}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Ljava/lang/String;I)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/v;->a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->h()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->b(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Z)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->d:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    const/16 v1, 0x30c

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 6

    const/16 v0, 0x55

    const-string v1, "ct"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "n="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "u="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private a(Law/e;)V
    .locals 6

    const/4 v5, 0x3

    new-instance v0, Law/e;

    sget-object v1, Ls/N;->e:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-virtual {p1, v5}, Law/e;->i(I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v5, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v3}, Law/e;->a(ILaw/e;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lo/aX;->a(Law/e;)V

    :cond_1
    return-void
.end method

.method private a(Law/e;Ljava/lang/String;I)V
    .locals 9

    invoke-static {p1}, Lcom/google/googlenav/c;->a(Law/e;)Lcom/google/googlenav/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/c;->bk()I

    move-result v5

    invoke-virtual {v4}, Lcom/google/googlenav/c;->bt()Z

    move-result v0

    invoke-virtual {v4, p3}, Lcom/google/googlenav/c;->e(I)V

    const/16 v1, 0x55

    const-string v2, "s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "s="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/googlenav/c;->bk()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    const-string v0, "x"

    :goto_0
    aput-object v0, v3, v6

    const/4 v0, 0x2

    const-string v6, "w"

    aput-object v6, v3, v0

    invoke-static {v3}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/k;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/appwidget/hotpot/k;-><init>(Lcom/google/googlenav/appwidget/hotpot/v;Ljava/lang/String;ILcom/google/googlenav/c;I)V

    new-instance v1, Lcom/google/googlenav/aJ;

    const-string v2, "hotpot-mobile-Android-widget"

    invoke-direct {v1, v4, v2, v0}, Lcom/google/googlenav/aJ;-><init>(Lcom/google/googlenav/c;Ljava/lang/String;Lcom/google/googlenav/i;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/hotpot/v;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/appwidget/hotpot/v;->a(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/hotpot/v;Law/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Law/e;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/hotpot/v;Law/e;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Law/e;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/hotpot/v;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/hotpot/v;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/hotpot/v;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/l;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/appwidget/hotpot/l;-><init>(Lcom/google/googlenav/appwidget/hotpot/v;Ljava/lang/String;)V

    new-instance v1, Lcom/google/googlenav/ad;

    invoke-direct {v1, v0, p1}, Lcom/google/googlenav/ad;-><init>(Lcom/google/googlenav/bh;Ljava/lang/String;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->g()Lcom/google/googlenav/appwidget/hotpot/widget/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/googlenav/appwidget/hotpot/widget/d;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/google/googlenav/appwidget/hotpot/widget/d;->b:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a(Lcom/google/googlenav/appwidget/hotpot/widget/d;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Lcom/google/googlenav/appwidget/hotpot/o;

    invoke-direct {v1, p0}, Lcom/google/googlenav/appwidget/hotpot/o;-><init>(Lcom/google/googlenav/appwidget/hotpot/v;)V

    const-string v0, "query"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/v;->a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v2}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->e()Lab/d;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lf/C;

    invoke-virtual {v2}, Lab/d;->a()Lf/h;

    move-result-object v2

    const/16 v4, 0x16

    invoke-static {v4}, Lf/l;->b(I)Lf/l;

    move-result-object v4

    invoke-direct {v3, v2, v4, v5}, Lf/C;-><init>(Lf/h;Lf/l;I)V

    move-object v2, v3

    :goto_0
    new-instance v3, Lcom/google/googlenav/V;

    invoke-direct {v3}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {v3, v5}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/googlenav/V;->a(I)Lcom/google/googlenav/V;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/googlenav/V;->a(Lcom/google/googlenav/a;)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->a(Lf/C;)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/googlenav/V;->c(Z)Lcom/google/googlenav/V;

    move-result-object v1

    const-string v2, "23"

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->b(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/googlenav/V;->c(I)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/googlenav/V;->d(I)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/v;->a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v2, v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/google/googlenav/z;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/z;-><init>(Lcom/google/googlenav/bs;Lf/Y;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    new-instance v3, Lf/C;

    invoke-virtual {v2}, Lcom/google/googlenav/d;->g()Lf/h;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/googlenav/d;->h()Lf/l;

    move-result-object v2

    invoke-direct {v3, v4, v2, v5}, Lf/C;-><init>(Lf/h;Lf/l;I)V

    move-object v2, v3

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->b(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->d:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->c()V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/b;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->c:Lcom/google/googlenav/appwidget/hotpot/b;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->b(Z)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->d:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->c()V

    goto :goto_0
.end method

.method private b(Ljava/util/Map;)V
    .locals 13

    const-wide v11, 0x412e848000000000L

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v0, "location_fix"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lab/d;

    const-string v1, "is_manual"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "is_latitude"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Lab/d;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->c:Lcom/google/googlenav/appwidget/hotpot/b;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/b;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/v;->b()V

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/v;->a()V

    new-instance v3, Lcom/google/googlenav/appwidget/hotpot/q;

    invoke-direct {v3, p0, v0}, Lcom/google/googlenav/appwidget/hotpot/q;-><init>(Lcom/google/googlenav/appwidget/hotpot/v;Lab/d;)V

    invoke-virtual {v0}, Lab/d;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lab/d;->f()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    :goto_1
    if-eqz v1, :cond_2

    const-string v1, "m"

    :goto_2
    const/16 v2, 0x55

    const-string v5, "stp"

    new-array v6, v10, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "s="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v9

    invoke-static {v6}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v5, v1}, LaC/a;->a(ILjava/lang/String;Ljava/lang/String;)Law/e;

    move-result-object v1

    new-instance v2, Lo/bV;

    invoke-direct {v2}, Lo/bV;-><init>()V

    invoke-virtual {v0}, Lab/d;->c()D

    move-result-wide v5

    mul-double/2addr v5, v11

    double-to-int v5, v5

    invoke-virtual {v2, v5}, Lo/bV;->a(I)Lo/bV;

    move-result-object v2

    invoke-virtual {v0}, Lab/d;->d()D

    move-result-wide v5

    mul-double/2addr v5, v11

    double-to-int v0, v5

    invoke-virtual {v2, v0}, Lo/bV;->b(I)Lo/bV;

    move-result-object v0

    invoke-virtual {v0, v4}, Lo/bV;->e(I)Lo/bV;

    move-result-object v0

    invoke-virtual {v0, v3}, Lo/bV;->a(Lo/cd;)Lo/bV;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lo/bV;->f(I)Lo/bV;

    move-result-object v0

    invoke-virtual {v0, v9}, Lo/bV;->a(Z)Lo/bV;

    move-result-object v0

    invoke-virtual {v0, v10}, Lo/bV;->c(Z)Lo/bV;

    move-result-object v0

    invoke-virtual {v0, v10}, Lo/bV;->d(Z)Lo/bV;

    move-result-object v0

    invoke-virtual {v0, v9}, Lo/bV;->g(I)Lo/bV;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/bV;->a(Law/e;)Lo/bV;

    move-result-object v0

    invoke-virtual {v0}, Lo/bV;->a()Lo/J;

    move-result-object v0

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lo/J;->b(J)V

    invoke-static {v1}, LaC/a;->a(Law/e;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    goto/16 :goto_0

    :cond_1
    const v4, 0x1869f

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    const-string v1, "l"

    goto :goto_2

    :cond_3
    const-string v1, "a"

    goto :goto_2
.end method

.method private b(Lab/d;)Z
    .locals 5

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->e()Lab/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lab/d;->a()Lf/h;

    move-result-object v1

    invoke-virtual {p1}, Lab/d;->a()Lf/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf/h;->b(Lf/h;)J

    move-result-wide v1

    invoke-virtual {p1}, Lab/d;->f()F

    move-result v3

    invoke-virtual {v0}, Lab/d;->f()F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-long v3, v0

    mul-long/2addr v3, v3

    cmp-long v0, v1, v3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/widget/h;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    return-object v0
.end method

.method private c()V
    .locals 3

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/c;

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->al()I

    move-result v1

    new-instance v2, Lcom/google/googlenav/appwidget/hotpot/m;

    invoke-direct {v2, p0}, Lcom/google/googlenav/appwidget/hotpot/m;-><init>(Lcom/google/googlenav/appwidget/hotpot/v;)V

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/c;-><init>(ILcom/google/googlenav/appwidget/hotpot/w;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method private c(Ljava/util/Map;)V
    .locals 4

    const-string v0, "additional_data_listing_url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "additional_data_star_rating"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v1, "additional_data_original_star_rating"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v3, Lcom/google/googlenav/appwidget/hotpot/n;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/google/googlenav/appwidget/hotpot/n;-><init>(Lcom/google/googlenav/appwidget/hotpot/v;Ljava/lang/String;II)V

    new-instance v1, Lcom/google/googlenav/ad;

    invoke-direct {v1, v3, v0}, Lcom/google/googlenav/ad;-><init>(Lcom/google/googlenav/bh;Ljava/lang/String;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/appwidget/hotpot/v;)Lcom/google/googlenav/appwidget/hotpot/widget/g;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->d:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    return-object v0
.end method

.method private d(Ljava/util/Map;)V
    .locals 3

    const-string v0, "additional_data_listing_index"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/v;->b:Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    invoke-interface {v1}, Lcom/google/googlenav/appwidget/hotpot/persistence/i;->a()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/v;->a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v1, v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a(I)V

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/v;->a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a(Z)V

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/v;->b:Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    invoke-interface {v1, v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/i;->a(I)Lcom/google/googlenav/appwidget/hotpot/persistence/b;

    move-result-object v1

    iget-object v2, v1, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->d:Ljava/lang/String;

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/appwidget/hotpot/v;->a(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->a()Law/e;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->c:Lcom/google/googlenav/appwidget/hotpot/b;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/b;->a()V

    goto :goto_0
.end method


# virtual methods
.method a(ILjava/util/Map;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->c:Lcom/google/googlenav/appwidget/hotpot/b;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/b;->a()V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/google/googlenav/appwidget/hotpot/v;->b(Ljava/util/Map;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/google/googlenav/appwidget/hotpot/v;->c(Ljava/util/Map;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/google/googlenav/appwidget/hotpot/v;->d(Ljava/util/Map;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Ljava/util/Map;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/v;->c()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method a(Lab/d;)Z
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->b:Lcom/google/googlenav/appwidget/hotpot/persistence/i;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/i;->a()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/v;->a:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->d()Lcom/google/googlenav/appwidget/hotpot/widget/e;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/appwidget/hotpot/widget/e;->a:Lcom/google/googlenav/appwidget/hotpot/widget/e;

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/hotpot/v;->b(Lab/d;)Z

    move-result v0

    goto :goto_0
.end method
