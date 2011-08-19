.class public LaQ/a;
.super Lcom/google/googlenav/ui/view/android/aO;


# instance fields
.field private final h:Lu/d;

.field private final i:Lcom/google/android/maps/rideabout/app/l;

.field private final j:LB/c;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/aO;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    invoke-static {}, Lcom/google/android/maps/rideabout/app/l;->n()Lbb/b;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/app/l;

    iput-object v0, p0, LaQ/a;->i:Lcom/google/android/maps/rideabout/app/l;

    iget-object v0, p0, LaQ/a;->i:Lcom/google/android/maps/rideabout/app/l;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/l;->k()Lu/d;

    move-result-object v0

    iput-object v0, p0, LaQ/a;->h:Lu/d;

    iget-object v0, p0, LaQ/a;->i:Lcom/google/android/maps/rideabout/app/l;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/l;->l()LB/c;

    move-result-object v0

    iput-object v0, p0, LaQ/a;->j:LB/c;

    return-void
.end method


# virtual methods
.method protected h()Landroid/view/View;
    .locals 7

    invoke-static {}, Lcom/google/googlenav/ui/view/android/aP;->a()Lcom/google/googlenav/ui/view/android/aP;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlenav/ui/view/android/aP;->k()Lcom/google/android/maps/rideabout/view/b;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/maps/rideabout/view/NavigationView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, LaQ/a;->f:Landroid/view/View;

    iget-object v0, p0, LaQ/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, LaQ/a;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, LaQ/a;->f:Landroid/view/View;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/maps/rideabout/view/NavigationView;

    invoke-virtual {p0}, LaQ/a;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, LaQ/a;->h:Lu/d;

    iget-object v3, p0, LaQ/a;->j:LB/c;

    iget-object v4, p0, LaQ/a;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/aV;->ak()Lcom/google/googlenav/ui/bB;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/rideabout/view/NavigationView;-><init>(Landroid/content/Context;Lu/d;LB/c;Lcom/google/googlenav/ui/view/android/e;Lcom/google/googlenav/ui/bB;)V

    invoke-virtual {v6, v0}, Lcom/google/googlenav/ui/view/android/aP;->a(Lcom/google/android/maps/rideabout/view/b;)V

    invoke-virtual {v6}, Lcom/google/googlenav/ui/view/android/aP;->b()V

    iput-object v0, p0, LaQ/a;->f:Landroid/view/View;

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/aO;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x61

    const-string v1, "e"

    const-string v2, "m"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, LaQ/a;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->d()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0f03a0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, LaQ/a;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0f03a0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x37c

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
