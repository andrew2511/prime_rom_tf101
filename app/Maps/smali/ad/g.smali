.class public Lad/g;
.super Ljava/lang/Object;


# instance fields
.field protected final a:I

.field private final b:Ljava/util/HashMap;

.field private c:Lad/n;

.field private d:Lad/n;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lad/g;->b:Ljava/util/HashMap;

    iput p1, p0, Lad/g;->a:I

    return-void
.end method

.method private a(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lad/g;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/n;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lad/g;->b(Lad/n;)V

    if-eqz p2, :cond_1

    iget-object v1, v0, Lad/n;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lad/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v0, Lad/n;->d:Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Lad/n;)V
    .locals 1

    iget-object v0, p0, Lad/g;->d:Lad/n;

    if-nez v0, :cond_0

    iput-object p1, p0, Lad/g;->c:Lad/n;

    iput-object p1, p0, Lad/g;->d:Lad/n;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lad/g;->d:Lad/n;

    iput-object v0, p1, Lad/n;->a:Lad/n;

    iput-object p1, v0, Lad/n;->b:Lad/n;

    iput-object p1, p0, Lad/g;->d:Lad/n;

    goto :goto_0
.end method

.method private b(Lad/n;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Lad/n;->a:Lad/n;

    iget-object v1, p1, Lad/n;->b:Lad/n;

    if-eqz v0, :cond_0

    iput-object v1, v0, Lad/n;->b:Lad/n;

    :cond_0
    if-eqz v1, :cond_1

    iput-object v0, v1, Lad/n;->a:Lad/n;

    :cond_1
    iput-object v2, p1, Lad/n;->a:Lad/n;

    iput-object v2, p1, Lad/n;->b:Lad/n;

    iget-object v2, p0, Lad/g;->c:Lad/n;

    if-ne v2, p1, :cond_2

    iput-object v1, p0, Lad/g;->c:Lad/n;

    :cond_2
    iget-object v1, p0, Lad/g;->d:Lad/n;

    if-ne v1, p1, :cond_3

    iput-object v0, p0, Lad/g;->d:Lad/n;

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lad/g;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lad/n;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lad/n;->d:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lad/g;->a(I)V

    return-void
.end method

.method public a(I)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lad/g;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lad/g;->c:Lad/n;

    iget-object v0, v0, Lad/n;->c:Ljava/lang/Object;

    iget-object v1, p0, Lad/g;->c:Lad/n;

    iget-object v1, v1, Lad/n;->c:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lad/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lad/g;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lad/g;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lad/g;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/n;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lad/g;->b(Lad/n;)V

    invoke-direct {p0, v0}, Lad/g;->a(Lad/n;)V

    iget-object v0, v0, Lad/n;->d:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lad/g;->d:Lad/n;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lad/g;->d:Lad/n;

    iget-object v0, v0, Lad/n;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lad/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lad/g;->a(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lad/g;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/n;

    if-nez v0, :cond_0

    iget v1, p0, Lad/g;->a:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lad/g;->a(I)V

    :cond_0
    new-instance v1, Lad/n;

    invoke-direct {v1}, Lad/n;-><init>()V

    iput-object p2, v1, Lad/n;->d:Ljava/lang/Object;

    iput-object p1, v1, Lad/n;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lad/g;->b(Lad/n;)V

    iget-object v2, v0, Lad/n;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lad/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v0, Lad/n;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lad/g;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lad/g;->b:Ljava/util/HashMap;

    iget-object v2, v1, Lad/n;->c:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lad/g;->a(Lad/n;)V

    return-void
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lad/g;->a(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/Collection;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lad/g;->b()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lad/g;->c:Lad/n;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lad/n;->d:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lad/n;->b:Lad/n;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public e()Lad/d;
    .locals 2

    new-instance v0, Lad/d;

    iget-object v1, p0, Lad/g;->c:Lad/n;

    invoke-direct {v0, v1}, Lad/d;-><init>(Lad/n;)V

    return-object v0
.end method
