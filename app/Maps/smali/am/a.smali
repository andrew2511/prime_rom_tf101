.class public Lam/a;
.super Li/ay;


# instance fields
.field private final E:Lcom/google/android/maps/driveabout/vector/VectorMapView;

.field private O:Lcom/google/android/maps/driveabout/vector/cn;

.field private P:Lcom/google/android/maps/driveabout/vector/bm;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/x;Lcom/google/android/maps/driveabout/vector/VectorMapView;)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Li/ay;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/x;)V

    new-instance v0, Lam/o;

    invoke-direct {v0, p0}, Lam/o;-><init>(Lam/a;)V

    iput-object v0, p0, Lam/a;->P:Lcom/google/android/maps/driveabout/vector/bm;

    iput-object p7, p0, Lam/a;->E:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    return-void
.end method

.method static synthetic a(Lam/a;)Lf/Y;
    .locals 1

    iget-object v0, p0, Lam/a;->i:Lf/Y;

    return-object v0
.end method

.method static synthetic b(Lam/a;)Lcom/google/googlenav/ui/aT;
    .locals 1

    iget-object v0, p0, Lam/a;->g:Lcom/google/googlenav/ui/aT;

    return-object v0
.end method


# virtual methods
.method protected O_()V
    .locals 2

    iget-object v0, p0, Lam/a;->O:Lcom/google/android/maps/driveabout/vector/cn;

    iget-object v1, p0, Lam/a;->P:Lcom/google/android/maps/driveabout/vector/bm;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cn;->b(Lcom/google/android/maps/driveabout/vector/bm;)V

    iget-object v0, p0, Lam/a;->E:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, Lam/a;->O:Lcom/google/android/maps/driveabout/vector/cn;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b(Lcom/google/android/maps/driveabout/vector/cr;)V

    return-void
.end method

.method protected z()V
    .locals 2

    iget-object v0, p0, Lam/a;->E:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/bV;->a(Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/cn;

    move-result-object v0

    iput-object v0, p0, Lam/a;->O:Lcom/google/android/maps/driveabout/vector/cn;

    iget-object v0, p0, Lam/a;->O:Lcom/google/android/maps/driveabout/vector/cn;

    iget-object v1, p0, Lam/a;->P:Lcom/google/android/maps/driveabout/vector/bm;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cn;->a(Lcom/google/android/maps/driveabout/vector/bm;)V

    iget-object v0, p0, Lam/a;->E:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, Lam/a;->O:Lcom/google/android/maps/driveabout/vector/cn;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    return-void
.end method
