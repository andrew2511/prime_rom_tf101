.class public Lam/b;
.super Li/n;


# instance fields
.field private final E:Lcom/google/android/maps/driveabout/vector/VectorMapView;

.field private O:Lcom/google/android/maps/driveabout/vector/bV;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/x;Lcom/google/android/maps/driveabout/vector/VectorMapView;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Li/n;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/x;)V

    iput-object p7, p0, Lam/b;->E:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    return-void
.end method


# virtual methods
.method public x()Z
    .locals 2

    iget-object v0, p0, Lam/b;->E:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/bV;->b(Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/bV;

    move-result-object v0

    iput-object v0, p0, Lam/b;->O:Lcom/google/android/maps/driveabout/vector/bV;

    iget-object v0, p0, Lam/b;->E:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, Lam/b;->O:Lcom/google/android/maps/driveabout/vector/bV;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    const/4 v0, 0x1

    return v0
.end method

.method public y()V
    .locals 2

    iget-object v0, p0, Lam/b;->E:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, Lam/b;->O:Lcom/google/android/maps/driveabout/vector/bV;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b(Lcom/google/android/maps/driveabout/vector/cr;)V

    return-void
.end method
