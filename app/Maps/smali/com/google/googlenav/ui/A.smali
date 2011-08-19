.class public Lcom/google/googlenav/ui/A;
.super Ljava/lang/Object;


# instance fields
.field private a:Lx/J;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x55

    const-string v1, "nuts"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    return-void
.end method

.method public a(Lx/i;Lcom/google/googlenav/ui/aY;)V
    .locals 2

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lx/k;->a(Lx/i;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/A;->a:Lx/J;

    iget-object v0, p0, Lcom/google/googlenav/ui/A;->a:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lx/i;->a:Lx/C;

    iget-object v0, v0, Lx/C;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/A;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/A;->a:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/A;->a:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/A;->a:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/A;->a:Lx/J;

    :cond_0
    return-void
.end method
