.class Lcom/google/googlenav/ui/android/aa;
.super Lcom/google/android/maps/driveabout/vector/aj;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/AndroidVectorView;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/aa;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Lcom/google/googlenav/ui/android/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/aa;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/aa;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-boolean v0, v0, Lcom/google/googlenav/ui/android/AndroidVectorView;->d:Z

    iget-object v1, p0, Lcom/google/googlenav/ui/android/aa;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-boolean v1, v1, Lcom/google/googlenav/ui/android/AndroidVectorView;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/aa;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/googlenav/ui/android/AndroidVectorView;->d:Z

    iget-object v1, p0, Lcom/google/googlenav/ui/android/aa;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/AndroidVectorView;->a()V

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/ui/android/aa;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    new-instance v2, Lcom/google/googlenav/ui/android/s;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/android/s;-><init>(Lcom/google/googlenav/ui/android/aa;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/android/AndroidVectorView;->post(Ljava/lang/Runnable;)Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/aa;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->m()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
