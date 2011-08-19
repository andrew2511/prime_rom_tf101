.class public Lcom/google/googlenav/android/s;
.super Lcom/google/googlenav/ui/aX;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/w;

.field private final b:LT/c;

.field private c:Lcom/google/googlenav/ui/X;

.field private d:Lcom/google/googlenav/ui/aN;

.field private e:Lcom/google/googlenav/ui/android/x;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/w;LT/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-direct {p0}, Lcom/google/googlenav/ui/aX;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/android/s;->b:LT/c;

    invoke-virtual {p2}, LT/c;->d()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/g;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v0}, Lcom/google/googlenav/android/w;->h(Lcom/google/googlenav/android/w;)Lcom/google/googlenav/android/Q;

    move-result-object v0

    return-object v0
.end method

.method public a(Lf/v;)Lcom/google/googlenav/ui/P;
    .locals 1

    new-instance v0, Lcom/google/googlenav/ui/android/d;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/android/s;->b(Lf/v;)Lcom/google/googlenav/ui/bV;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/android/x;

    invoke-direct {v0, p1, p0}, Lcom/google/googlenav/ui/android/d;-><init>(Lf/v;Lcom/google/googlenav/ui/android/x;)V

    return-object v0
.end method

.method public a(Z)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v0}, Lcom/google/googlenav/android/w;->l(Lcom/google/googlenav/android/w;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->k(Z)V

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/aX;->a(Z)V

    iget-object v0, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v1}, Lcom/google/googlenav/android/w;->m(Lcom/google/googlenav/android/w;)Lf/Y;

    move-result-object v1

    invoke-virtual {v1}, Lf/Y;->e()Lf/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v2}, Lcom/google/googlenav/android/w;->m(Lcom/google/googlenav/android/w;)Lf/Y;

    move-result-object v2

    invoke-virtual {v2}, Lf/Y;->f()Lf/l;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v3}, Lcom/google/googlenav/android/w;->m(Lcom/google/googlenav/android/w;)Lf/Y;

    move-result-object v3

    invoke-virtual {v3}, Lf/Y;->h()Lf/C;

    move-result-object v3

    invoke-virtual {v3}, Lf/C;->c()I

    move-result v3

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v3}, Lcom/google/googlenav/android/w;->l(Lcom/google/googlenav/android/w;)Lcom/google/googlenav/ui/aT;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v3

    invoke-virtual {v3}, Li/aE;->F()V

    iget-object v3, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v3}, Lcom/google/googlenav/android/w;->l(Lcom/google/googlenav/android/w;)Lcom/google/googlenav/ui/aT;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aT;->aK()V

    move v3, v6

    :cond_0
    iget-object v4, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v4}, Lcom/google/googlenav/android/w;->l(Lcom/google/googlenav/android/w;)Lcom/google/googlenav/ui/aT;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/ui/aT;->j()V

    iget-object v4, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v4}, Lcom/google/googlenav/android/w;->l(Lcom/google/googlenav/android/w;)Lcom/google/googlenav/ui/aT;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/ui/aT;->i()V

    iget-object v4, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    iget-object v5, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-virtual {v5}, Lcom/google/googlenav/android/w;->b()Lf/v;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/googlenav/android/w;->a(Lf/v;)V

    iget-object v4, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-virtual {v4}, Lcom/google/googlenav/android/w;->c()V

    iget-object v4, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v4}, Lcom/google/googlenav/android/w;->m(Lcom/google/googlenav/android/w;)Lf/Y;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/maps/MapsActivity;->a(Lf/Y;)V

    iget-object v4, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v4}, Lcom/google/googlenav/android/w;->l(Lcom/google/googlenav/android/w;)Lcom/google/googlenav/ui/aT;

    move-result-object v4

    iget-object v5, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-virtual {v5}, Lcom/google/googlenav/android/w;->g()Lf/v;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/googlenav/ui/aT;->a(Lf/v;)V

    iget-object v4, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-virtual {v4}, Lcom/google/googlenav/android/w;->g()Lf/v;

    move-result-object v4

    new-instance v5, Lf/C;

    invoke-direct {v5, v1, v2, v3}, Lf/C;-><init>(Lf/h;Lf/l;I)V

    invoke-virtual {v4, v5}, Lf/v;->a(Lf/C;)V

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->g()V

    iget-object v3, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v3}, Lcom/google/googlenav/android/w;->l(Lcom/google/googlenav/android/w;)Lcom/google/googlenav/ui/aT;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aT;->al()V

    :cond_1
    iget-object v3, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v3}, Lcom/google/googlenav/android/w;->m(Lcom/google/googlenav/android/w;)Lf/Y;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lf/Y;->e(Lf/h;Lf/l;)V

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->e()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-virtual {v2}, Lcom/google/googlenav/android/w;->n()Lcom/google/googlenav/ui/android/ar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/android/ar;->a(Landroid/view/View;)V

    iget-object v2, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v2}, Lcom/google/googlenav/android/w;->l(Lcom/google/googlenav/android/w;)Lcom/google/googlenav/ui/aT;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/googlenav/ui/aT;->j(Z)V

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->k()Lcom/google/googlenav/ui/android/ao;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/android/ao;->f()V

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v0}, Lcom/google/googlenav/android/w;->l(Lcom/google/googlenav/android/w;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/googlenav/ui/aT;->k(Z)V

    return-void
.end method

.method public b()Lcom/google/googlenav/ui/aN;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/android/s;->d:Lcom/google/googlenav/ui/aN;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/android/ae;

    iget-object v1, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v1}, Lcom/google/googlenav/android/w;->c(Lcom/google/googlenav/android/w;)Lcom/google/googlenav/android/AndroidGmmApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/android/ae;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/google/googlenav/android/s;->d:Lcom/google/googlenav/ui/aN;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/android/s;->d:Lcom/google/googlenav/ui/aN;

    return-object v0
.end method

.method public b(Lf/v;)Lcom/google/googlenav/ui/bV;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/android/s;->e:Lcom/google/googlenav/ui/android/x;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/android/x;

    iget-object v1, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v1}, Lcom/google/googlenav/android/w;->k(Lcom/google/googlenav/android/w;)Lf/v;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v2}, Lcom/google/googlenav/android/w;->i(Lcom/google/googlenav/android/w;)Lcom/google/googlenav/ui/android/ar;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/android/x;-><init>(Lf/v;LaU/a;)V

    iput-object v0, p0, Lcom/google/googlenav/android/s;->e:Lcom/google/googlenav/ui/android/x;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/android/s;->e:Lcom/google/googlenav/ui/android/x;

    return-object v0
.end method

.method public c()Lcom/google/googlenav/ui/X;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/s;->c:Lcom/google/googlenav/ui/X;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/android/q;

    invoke-direct {v0}, Lcom/google/googlenav/ui/android/q;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/android/s;->c:Lcom/google/googlenav/ui/X;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/android/s;->c:Lcom/google/googlenav/ui/X;

    return-object v0
.end method

.method public d()LaU/a;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v0}, Lcom/google/googlenav/android/w;->i(Lcom/google/googlenav/android/w;)Lcom/google/googlenav/ui/android/ar;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/google/googlenav/layer/a;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v0}, Lcom/google/googlenav/android/w;->j(Lcom/google/googlenav/android/w;)Lcom/google/googlenav/layer/a;

    move-result-object v0

    return-object v0
.end method

.method public f()LE/i;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v0}, Lcom/google/googlenav/android/w;->a(Lcom/google/googlenav/android/w;)LE/i;

    move-result-object v0

    return-object v0
.end method

.method public g()LE/f;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v0}, Lcom/google/googlenav/android/w;->b(Lcom/google/googlenav/android/w;)LE/f;

    move-result-object v0

    return-object v0
.end method

.method public h()LT/c;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/s;->b:LT/c;

    return-object v0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v1}, Lcom/google/googlenav/android/w;->l(Lcom/google/googlenav/android/w;)Lcom/google/googlenav/ui/aT;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapsActivity;->a(Lcom/google/googlenav/ui/aT;)V

    iget-object v0, p0, Lcom/google/googlenav/android/s;->a:Lcom/google/googlenav/android/w;

    invoke-static {v0}, Lcom/google/googlenav/android/w;->l(Lcom/google/googlenav/android/w;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->aa()V

    return-void
.end method
