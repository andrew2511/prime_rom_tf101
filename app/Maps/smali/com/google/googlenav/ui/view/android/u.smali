.class public Lcom/google/googlenav/ui/view/android/u;
.super Lcom/google/googlenav/ui/view/android/a;


# instance fields
.field protected final f:LI/o;

.field private final g:Z

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;LI/n;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/googlenav/ui/view/android/u;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;LI/n;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;LI/n;Z)V
    .locals 1

    invoke-interface {p3}, LI/n;->b()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/a;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;I)V

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/u;->f:LI/o;

    iput-boolean p4, p0, Lcom/google/googlenav/ui/view/android/u;->g:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/u;->h()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/u;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected h()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/u;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/u;->f:LI/o;

    invoke-interface {v1}, LI/o;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/u;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/u;->f:LI/o;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/u;->b:Lcom/google/googlenav/ui/view/android/e;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/u;->h:Landroid/view/View;

    invoke-interface {v0, v1, v2}, LI/o;->a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/u;->h:Landroid/view/View;

    return-object v0
.end method

.method protected i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/u;->g:Z

    return v0
.end method
