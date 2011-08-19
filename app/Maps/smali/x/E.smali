.class public Lx/E;
.super Lx/t;


# instance fields
.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/c;[Lax/e;)V
    .locals 2

    new-instance v0, LI/H;

    invoke-direct {v0, p1}, LI/H;-><init>(Lcom/google/googlenav/c;)V

    const/4 v1, 0x2

    invoke-direct {p0, v0, p2, v1, p1}, Lx/t;-><init>(LI/n;[Lax/e;ILcom/google/googlenav/c;)V

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx/E;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/c;->bu()I

    move-result v0

    iput v0, p0, Lx/E;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lx/E;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/bl;Z)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/googlenav/bl;->a()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lx/E;->b:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/google/googlenav/bl;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lx/E;->e:Ljava/util/List;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lx/E;->n:LI/n;

    check-cast p0, LI/H;

    invoke-virtual {p0}, LI/H;->c()V

    :cond_0
    return-void
.end method

.method public a(Li/aw;)V
    .locals 0

    iget-object p0, p0, Lx/E;->n:LI/n;

    check-cast p0, LI/H;

    invoke-virtual {p0, p1}, LI/H;->a(Li/aw;)V

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lx/E;->e:Ljava/util/List;

    return-object v0
.end method
