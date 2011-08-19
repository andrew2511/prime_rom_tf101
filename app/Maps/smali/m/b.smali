.class public Lm/b;
.super Ljava/lang/Object;

# interfaces
.implements Lm/k;


# instance fields
.field private final a:Lm/k;


# direct methods
.method public constructor <init>(Lm/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/b;->a:Lm/k;

    return-void
.end method


# virtual methods
.method public a(Lm/w;)Lm/p;
    .locals 5

    const/4 v0, 0x0

    instance-of v1, p1, Lm/K;

    if-eqz v1, :cond_1

    check-cast p1, Lm/K;

    iget-object v1, p0, Lm/b;->a:Lm/k;

    invoke-virtual {p1}, Lm/K;->e()Lm/w;

    move-result-object v2

    invoke-interface {v1, v2}, Lm/k;->a(Lm/w;)Lm/p;

    move-result-object v1

    iget-object v2, p0, Lm/b;->a:Lm/k;

    invoke-virtual {p1}, Lm/K;->f()Lm/w;

    move-result-object v3

    invoke-interface {v2, v3}, Lm/k;->a(Lm/w;)Lm/p;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    new-instance v0, Lm/W;

    const/4 v3, 0x2

    new-array v3, v3, [Lm/p;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Lm/W;-><init>([Lm/p;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lm/b;->a:Lm/k;

    invoke-interface {v0, p1}, Lm/k;->a(Lm/w;)Lm/p;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lm/b;->a:Lm/k;

    invoke-interface {v0}, Lm/k;->a()V

    return-void
.end method

.method public a(Lm/w;Lm/v;)V
    .locals 3

    instance-of v0, p1, Lm/K;

    if-eqz v0, :cond_0

    check-cast p1, Lm/K;

    new-instance v0, Lm/B;

    invoke-direct {v0, p1, p2}, Lm/B;-><init>(Lm/K;Lm/v;)V

    iget-object v1, p0, Lm/b;->a:Lm/k;

    invoke-virtual {p1}, Lm/K;->e()Lm/w;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lm/k;->a(Lm/w;Lm/v;)V

    iget-object v1, p0, Lm/b;->a:Lm/k;

    invoke-virtual {p1}, Lm/K;->f()Lm/w;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lm/k;->a(Lm/w;Lm/v;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lm/b;->a:Lm/k;

    invoke-interface {v0, p1, p2}, Lm/k;->a(Lm/w;Lm/v;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lm/b;->a:Lm/k;

    invoke-interface {v0}, Lm/k;->b()V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm/b;->a:Lm/k;

    invoke-interface {v0}, Lm/k;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
