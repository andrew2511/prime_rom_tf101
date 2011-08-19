.class public Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;
.super Landroid/app/Service;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;I)I
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lak/h;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v0

    invoke-virtual {v0}, LT/c;->d()V

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/googlenav/login/b;->a(Landroid/content/Context;LaU/a;)Lcom/google/googlenav/login/j;

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "terms-accepted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "user-identity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/google/googlenav/az;->c(Ljava/lang/String;)V

    :cond_2
    invoke-static {v3}, Lcom/google/googlenav/az;->a(Z)V

    invoke-virtual {p0, p2}, Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;->stopSelf(I)V

    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;->stopSelf(I)V

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    const-string v2, "sign-in"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "sign-in-reply"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_5

    invoke-direct {p0, v0, p2}, Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;->a(Landroid/app/PendingIntent;I)V

    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private a(Landroid/app/PendingIntent;I)V
    .locals 6

    const/4 v1, 0x0

    new-instance v5, Lcom/google/googlenav/appwidget/hotpot/u;

    invoke-direct {v5, p0, p1, p2}, Lcom/google/googlenav/appwidget/hotpot/u;-><init>(Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;Landroid/app/PendingIntent;I)V

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/login/j;->c(Lcom/google/googlenav/login/h;)V

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/login/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    return-void
.end method

.method private a(Landroid/app/PendingIntent;IZ)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "sign-in-success"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v1, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;->stopSelf(I)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, LT/a;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/appwidget/hotpot/A;

    invoke-direct {v2, p0, p2}, Lcom/google/googlenav/appwidget/hotpot/A;-><init>(Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;I)V

    invoke-direct {v0, v1, v2}, LT/a;-><init>(LT/c;Ljava/lang/Runnable;)V

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, v1, v2}, LT/a;->a(J)V

    invoke-virtual {v0}, LT/a;->b()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "sign-in"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "sign-in-reply"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "terms-accepted"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "user-identity"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;Landroid/app/PendingIntent;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;->a(Landroid/app/PendingIntent;IZ)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Lcom/google/googlenav/android/c;->g()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;->a(Landroid/content/Intent;I)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;->a(Landroid/content/Intent;I)I

    move-result v0

    return v0
.end method
