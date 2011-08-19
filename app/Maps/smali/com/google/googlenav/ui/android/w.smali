.class Lcom/google/googlenav/ui/android/w;
.super Lcom/google/android/maps/driveabout/vector/VectorMapView;


# instance fields
.field private b:LaK/j;

.field private c:Lcom/google/android/maps/driveabout/vector/v;


# direct methods
.method private constructor <init>(Landroid/content/Context;LaK/j;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/googlenav/ui/android/w;->b:LaK/j;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cC;->a(I)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ak;->s:Lcom/google/android/maps/driveabout/vector/ak;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/w;->b(Lcom/google/android/maps/driveabout/vector/ak;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/w;->x()V

    const/4 v0, -0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/w;->c(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/w;->r()Lcom/google/android/maps/driveabout/vector/aS;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bj;->o()Lcom/google/android/maps/driveabout/vector/bV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bV;->h()Lcom/google/android/maps/driveabout/vector/m;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, "map"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bV;->a(Lcom/google/android/maps/driveabout/vector/m;ILjava/lang/String;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/bV;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/w;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lau/e;->a()Lau/e;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/bV;->a(Landroid/content/Context;Landroid/content/res/Resources;Lau/e;)Lcom/google/android/maps/driveabout/vector/bV;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/v;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/w;->c:Lcom/google/android/maps/driveabout/vector/v;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/w;->c:Lcom/google/android/maps/driveabout/vector/v;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/w;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/android/maps/driveabout/vector/ak;->r:Lcom/google/android/maps/driveabout/vector/ak;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/Context;LaK/j;Lcom/google/googlenav/ui/android/n;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/w;-><init>(Landroid/content/Context;LaK/j;)V

    return-void
.end method

.method private x()V
    .locals 5

    sget-object v0, Lr/g;->a:Lr/g;

    invoke-virtual {v0}, Lr/g;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/w;->t()Lcom/google/android/maps/driveabout/vector/ak;

    move-result-object v0

    const/4 v1, 0x2

    const v2, 0x3e4ccccd

    const/4 v3, 0x0

    sget-object v4, Lr/g;->b:Lcom/google/android/maps/driveabout/vector/aw;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/ak;->a(Lcom/google/android/maps/driveabout/vector/ak;IFFLcom/google/android/maps/driveabout/vector/aw;)Lcom/google/android/maps/driveabout/vector/ak;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/w;->a(Lcom/google/android/maps/driveabout/vector/ak;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/w;->t()Lcom/google/android/maps/driveabout/vector/ak;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/w;->a(Lcom/google/android/maps/driveabout/vector/ak;)V

    goto :goto_0
.end method


# virtual methods
.method public e()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/w;->b:LaK/j;

    invoke-virtual {v0}, LaK/j;->x()V

    return-void
.end method
