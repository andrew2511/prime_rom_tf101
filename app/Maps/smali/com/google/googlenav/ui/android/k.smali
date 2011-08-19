.class Lcom/google/googlenav/ui/android/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/K;


# instance fields
.field final synthetic a:Lx/U;

.field final synthetic b:Lx/S;

.field final synthetic c:Lcom/google/googlenav/ui/android/AndroidVectorView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Lx/U;Lx/S;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/k;->c:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/k;->a:Lx/U;

    iput-object p3, p0, Lcom/google/googlenav/ui/android/k;->b:Lx/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/cA;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/k;->a:Lx/U;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/k;->b:Lx/S;

    invoke-interface {v0, v1}, Lx/U;->a(Lx/Q;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/cA;)V
    .locals 0

    return-void
.end method
