.class public Lcom/google/googlenav/ui/view/android/i;
.super Lcom/google/ads/AdSenseSpec;


# instance fields
.field private a:Lf/h;

.field private b:Lf/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/ads/AdSenseSpec;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lf/h;)Lcom/google/googlenav/ui/view/android/i;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/i;->a:Lf/h;

    return-object p0
.end method

.method public b(Lf/h;)Lcom/google/googlenav/ui/view/android/i;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/i;->b:Lf/h;

    return-object p0
.end method

.method public generateParameters(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    invoke-super {p0, p1}, Lcom/google/ads/AdSenseSpec;->generateParameters(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/i;->a:Lf/h;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "ll"

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/i;->a:Lf/h;

    invoke-virtual {v3}, Lf/h;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/i;->b:Lf/h;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "spn"

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/i;->b:Lf/h;

    invoke-virtual {v3}, Lf/h;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method
