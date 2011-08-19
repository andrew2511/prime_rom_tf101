.class public Lcom/google/googlenav/ui/view/android/z;
.super Lcom/google/googlenav/ui/view/android/u;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;LI/n;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/googlenav/ui/view/android/u;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;LI/n;Z)V

    return-void
.end method

.method private o()LI/p;
    .locals 0

    iget-object p0, p0, Lcom/google/googlenav/ui/view/android/z;->f:LI/o;

    check-cast p0, LI/p;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/z;->o()LI/p;

    move-result-object v0

    sget v1, Lcom/google/googlenav/ui/view/android/z;->e:I

    invoke-virtual {v0, p1, v1}, LI/p;->a(II)V

    return-void
.end method

.method public e()V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/z;->o()LI/p;

    move-result-object v0

    invoke-virtual {v0}, LI/p;->c()V

    return-void
.end method

.method public n()V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/z;->o()LI/p;

    move-result-object v0

    invoke-virtual {v0}, LI/p;->g()Lcom/google/googlenav/ui/view/android/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/W;->c()V

    return-void
.end method
