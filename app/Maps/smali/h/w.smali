.class Lh/w;
.super Lh/fb;


# instance fields
.field final synthetic a:Lh/fQ;


# direct methods
.method private constructor <init>(Lh/fQ;)V
    .locals 1

    iput-object p1, p0, Lh/w;->a:Lh/fQ;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lh/fb;-><init>(Lh/fQ;Lh/aP;)V

    return-void
.end method

.method synthetic constructor <init>(Lh/fQ;Lh/aP;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/w;-><init>(Lh/fQ;)V

    return-void
.end method


# virtual methods
.method public ay_()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public b(IILandroid/content/Intent;)V
    .locals 4

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapsActivity;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh/w;->a:Lh/fQ;

    const/16 v2, 0x327

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Lh/fQ;->a(IILjava/lang/Object;)Z

    return-void
.end method
