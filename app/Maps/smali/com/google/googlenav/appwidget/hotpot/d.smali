.class public Lcom/google/googlenav/appwidget/hotpot/d;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    invoke-static {}, Lcom/google/googlenav/bJ;->a()Lcom/google/googlenav/bJ;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/appwidget/hotpot/r;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/googlenav/appwidget/hotpot/r;-><init>(Lcom/google/googlenav/appwidget/hotpot/a;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bJ;->a(Lcom/google/googlenav/ar;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/google/googlenav/appwidget/hotpot/HotpotService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/j;

    invoke-direct {v0, p0}, Lcom/google/googlenav/appwidget/hotpot/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/j;->c()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->q(Landroid/content/Context;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->r(Landroid/content/Context;)V

    return-void
.end method
