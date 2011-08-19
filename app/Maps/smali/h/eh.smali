.class Lh/eh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/w;


# instance fields
.field private final a:Lcom/google/googlenav/c;

.field private final b:Lcom/google/googlenav/ui/aG;

.field private final c:Lx/J;

.field private final d:Lcom/google/googlenav/bL;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/c;Lcom/google/googlenav/ui/aG;Lx/J;Lcom/google/googlenav/bL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/eh;->a:Lcom/google/googlenav/c;

    iput-object p2, p0, Lh/eh;->b:Lcom/google/googlenav/ui/aG;

    iput-object p3, p0, Lh/eh;->c:Lx/J;

    iput-object p4, p0, Lh/eh;->d:Lcom/google/googlenav/bL;

    return-void
.end method


# virtual methods
.method public a(ZLjava/util/List;)V
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lh/eh;->c:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eh;->c:Lx/J;

    check-cast v0, Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/bs;->b(Z)V

    :cond_0
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Law/e;->h(I)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/google/googlenav/s;

    invoke-direct {v3, v0}, Lcom/google/googlenav/s;-><init>(Law/e;)V

    invoke-virtual {v3}, Lcom/google/googlenav/s;->b()Lcom/google/googlenav/ui/aS;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lh/eh;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->af()Lcom/google/googlenav/bH;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bH;->a(Lcom/google/googlenav/s;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lh/eh;->b:Lcom/google/googlenav/ui/aG;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aG;->a()LaD/p;

    move-result-object v0

    new-instance v2, Lh/E;

    iget-object v3, p0, Lh/eh;->c:Lx/J;

    invoke-direct {v2, v3}, Lh/E;-><init>(Lx/J;)V

    invoke-virtual {v0, v1, v2}, LaD/p;->a(Ljava/util/List;LaD/n;)V

    :cond_3
    iget-object v0, p0, Lh/eh;->c:Lx/J;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lh/eh;->c:Lx/J;

    check-cast p0, Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->e()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v0, p0, Lh/eh;->d:Lcom/google/googlenav/bL;

    const/16 v1, 0x304

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lh/eh;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->af()Lcom/google/googlenav/bH;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bH;->a(Z)V

    goto :goto_1
.end method
