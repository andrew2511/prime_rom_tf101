.class Lcom/google/android/maps/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/login/p;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/i;->b:Lcom/google/android/maps/MapsActivity;

    iput-boolean p2, p0, Lcom/google/android/maps/i;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/maps/i;->a:Z

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->t()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/i;->b:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(Lcom/google/android/maps/MapsActivity;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->al()V

    :cond_0
    return-void
.end method
