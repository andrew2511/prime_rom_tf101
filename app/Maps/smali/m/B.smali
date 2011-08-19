.class Lm/B;
.super Ljava/lang/Object;

# interfaces
.implements Lm/v;


# instance fields
.field private a:Lm/K;

.field private b:Lm/v;

.field private c:Lm/p;

.field private d:Lm/p;


# direct methods
.method public constructor <init>(Lm/K;Lm/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/B;->a:Lm/K;

    iput-object p2, p0, Lm/B;->b:Lm/v;

    return-void
.end method

.method private a(Lm/p;)V
    .locals 2

    iget-object v0, p0, Lm/B;->b:Lm/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm/B;->b:Lm/v;

    iget-object v1, p0, Lm/B;->a:Lm/K;

    invoke-interface {v0, v1, p1}, Lm/v;->a(Lm/w;Lm/p;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lm/B;->b:Lm/v;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lm/w;Lm/p;)V
    .locals 4

    if-nez p2, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lm/B;->a(Lm/p;)V

    :cond_0
    iget-object v0, p0, Lm/B;->a:Lm/K;

    invoke-virtual {v0}, Lm/K;->e()Lm/w;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iput-object p2, p0, Lm/B;->c:Lm/p;

    :cond_1
    :goto_0
    iget-object v0, p0, Lm/B;->b:Lm/v;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lm/B;->c:Lm/p;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lm/B;->d:Lm/p;

    if-eqz v0, :cond_2

    new-instance v0, Lm/W;

    const/4 v1, 0x2

    new-array v1, v1, [Lm/p;

    const/4 v2, 0x0

    iget-object v3, p0, Lm/B;->c:Lm/p;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lm/B;->d:Lm/p;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lm/W;-><init>([Lm/p;)V

    invoke-direct {p0, v0}, Lm/B;->a(Lm/p;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lm/B;->a:Lm/K;

    invoke-virtual {v0}, Lm/K;->f()Lm/w;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iput-object p2, p0, Lm/B;->d:Lm/p;

    goto :goto_0
.end method
