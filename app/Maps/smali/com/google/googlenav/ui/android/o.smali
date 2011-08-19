.class Lcom/google/googlenav/ui/android/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bl;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/AndroidVectorView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/o;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/VectorMapView;LG/Q;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/o;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    sget-object v1, Lr/a;->a:Lr/a;

    invoke-virtual {v1}, Lr/a;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v1

    invoke-virtual {v1}, Li/aE;->r()Li/aN;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Li/aN;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Lad/m;->b(LG/Q;)Lf/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/aN;->c(Lf/h;)Z

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->am()Lh/eR;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v1

    invoke-static {p2}, Lad/m;->b(LG/Q;)Lf/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lh/eY;->b(Lf/h;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/aT;->a(ILax/c;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/VectorMapView;LG/Q;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/o;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->am()Lh/eR;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v1

    invoke-static {p2}, Lad/m;->b(LG/Q;)Lf/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lh/eY;->b(Lf/h;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/aT;->a(ILax/c;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
