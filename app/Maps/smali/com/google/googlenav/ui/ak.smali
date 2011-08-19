.class public Lcom/google/googlenav/ui/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/bR;


# instance fields
.field private final a:Lcom/google/googlenav/ui/aT;

.field private final b:LaU/a;

.field private c:Z

.field private d:Lcom/google/googlenav/ui/bU;

.field private e:[Lax/e;

.field private final f:Ljava/util/Vector;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aT;LaU/a;Lcom/google/googlenav/ui/bU;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/ak;->c:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/ak;->f:Ljava/util/Vector;

    iput-object p1, p0, Lcom/google/googlenav/ui/ak;->a:Lcom/google/googlenav/ui/aT;

    iput-object p2, p0, Lcom/google/googlenav/ui/ak;->b:LaU/a;

    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/ak;->b(Lcom/google/googlenav/ui/bU;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/ak;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/ak;->c()V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->b:LaU/a;

    new-instance v1, Lcom/google/googlenav/ui/aL;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/aL;-><init>(Lcom/google/googlenav/ui/ak;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Lax/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->f:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->b:LaU/a;

    invoke-interface {v0, p1}, LaU/a;->a(Lax/e;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->f:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private b(Lcom/google/googlenav/ui/bU;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->d:Lcom/google/googlenav/ui/bU;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->d:Lcom/google/googlenav/ui/bU;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->d:Lcom/google/googlenav/ui/bU;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/bU;->b(Lcom/google/googlenav/ui/bR;)V

    :cond_1
    iput-object p1, p0, Lcom/google/googlenav/ui/ak;->d:Lcom/google/googlenav/ui/bU;

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->d:Lcom/google/googlenav/ui/bU;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/bU;->a(Lcom/google/googlenav/ui/bR;)V

    goto :goto_0
.end method

.method private c()V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/ak;->f()V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/ak;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/ak;->e()V

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/ui/ak;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->e:[Lax/e;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/ui/ak;->e:[Lax/e;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/ak;->e:[Lax/e;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/ak;->b(Lax/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->d:Lcom/google/googlenav/ui/bU;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bU;->d()[Lax/e;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/ak;->b(Lax/e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->b:LaU/a;

    invoke-interface {v0}, LaU/a;->b()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/ui/ak;->b:LaU/a;

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->f:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/e;

    invoke-interface {v2, v0}, LaU/a;->b(Lax/e;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/bU;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->d:Lcom/google/googlenav/ui/bU;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/bU;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->d:Lcom/google/googlenav/ui/bU;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/ak;->b()V

    :cond_0
    return-void
.end method

.method a(ZLcom/google/googlenav/ui/bU;[Lax/e;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/ak;->c:Z

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->e:[Lax/e;

    invoke-static {p3, v0}, Lax/e;->a([Lax/e;[Lax/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->d:Lcom/google/googlenav/ui/bU;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->d:Lcom/google/googlenav/ui/bU;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bU;->c()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/googlenav/ui/ak;->c:Z

    iput-object p3, p0, Lcom/google/googlenav/ui/ak;->e:[Lax/e;

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/ak;->b(Lcom/google/googlenav/ui/bU;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/ak;->b()V

    goto :goto_0
.end method

.method a(Lax/e;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    sget-object v1, Lcom/google/googlenav/ui/w;->m:Lax/e;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    invoke-static {v0}, Lax/c;->a(I)Lax/c;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/googlenav/ui/w;->b(Lax/e;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lax/c;->a(I)Lax/c;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/googlenav/ui/ak;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->b(Lax/c;)Z

    move v0, v2

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aT;->a(Lax/e;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->v()V

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->a()V

    move v0, v2

    goto :goto_0
.end method
