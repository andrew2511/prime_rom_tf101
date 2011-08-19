.class public Lcom/google/googlenav/layer/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/layer/a;


# instance fields
.field private final a:Lcom/google/googlenav/android/w;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/layer/l;->a:Lcom/google/googlenav/android/w;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Lcom/google/googlenav/layer/j;

    invoke-direct {v0, p0}, Lcom/google/googlenav/layer/j;-><init>(Lcom/google/googlenav/layer/l;)V

    new-instance v1, LT/a;

    invoke-virtual {p0}, Lcom/google/googlenav/layer/l;->c()LT/c;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LT/a;-><init>(LT/c;Ljava/lang/Runnable;)V

    invoke-virtual {v1}, LT/a;->b()V

    return-void
.end method

.method public a(Li/x;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Li/x;->b()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object v0, p1

    check-cast v0, Li/aw;

    move-object v1, v0

    invoke-virtual {v1}, Li/aw;->g()Lcom/google/googlenav/layer/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/s;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1}, Li/x;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Li/x;->aY()Z

    move-result v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "layerId"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "layerDisplayName"

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "isActive"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "isSearch"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v1, Lcom/google/googlenav/layer/k;

    invoke-direct {v1, p0, v5}, Lcom/google/googlenav/layer/k;-><init>(Lcom/google/googlenav/layer/l;Landroid/content/ContentValues;)V

    new-instance v2, LT/a;

    invoke-virtual {p0}, Lcom/google/googlenav/layer/l;->c()LT/c;

    move-result-object v3

    invoke-direct {v2, v3, v1}, LT/a;-><init>(LT/c;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, LT/a;->b()V

    goto :goto_0

    :sswitch_1
    move-object v0, p1

    check-cast v0, Li/n;

    move-object v1, v0

    invoke-virtual {v1}, Li/n;->g()Lcom/google/googlenav/layer/s;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/googlenav/layer/s;->b()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move v1, v3

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected b()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/l;->a:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    return-object v0
.end method

.method protected c()LT/c;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/l;->a:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->at()LT/c;

    move-result-object v0

    return-object v0
.end method
