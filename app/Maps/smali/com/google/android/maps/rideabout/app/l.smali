.class public Lcom/google/android/maps/rideabout/app/l;
.super Lbb/b;


# instance fields
.field private a:Lcom/google/android/maps/rideabout/app/NavigationService;

.field private b:Z

.field private c:LB/c;

.field private d:Z

.field private final e:Landroid/content/Context;

.field private f:Lu/d;

.field private g:Lcom/google/googlenav/ui/aY;

.field private final h:Lh/eY;

.field private final i:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lh/eY;)V
    .locals 1

    invoke-direct {p0}, Lbb/b;-><init>()V

    new-instance v0, Lcom/google/android/maps/rideabout/app/c;

    invoke-direct {v0, p0}, Lcom/google/android/maps/rideabout/app/c;-><init>(Lcom/google/android/maps/rideabout/app/l;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->i:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/l;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/maps/rideabout/app/l;->h:Lh/eY;

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/rideabout/app/l;)Lcom/google/android/maps/rideabout/app/NavigationService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->a:Lcom/google/android/maps/rideabout/app/NavigationService;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/rideabout/app/l;Lcom/google/android/maps/rideabout/app/NavigationService;)Lcom/google/android/maps/rideabout/app/NavigationService;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/l;->a:Lcom/google/android/maps/rideabout/app/NavigationService;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 v0, 0xc3b

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/rideabout/app/l;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/l;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x61

    const-string v1, "d"

    invoke-static {v0, v1, p1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/rideabout/app/l;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/rideabout/app/l;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/maps/rideabout/app/l;)Lu/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->f:Lu/d;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/maps/rideabout/app/l;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/l;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x61

    const-string v1, "gd"

    invoke-static {v0, v1, p1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningServiceInfo;

    const-class v1, Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "PERM"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/maps/rideabout/app/l;)LB/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->c:LB/c;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/maps/rideabout/app/l;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/maps/rideabout/app/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/l;->p()V

    return-void
.end method

.method static synthetic f(Lcom/google/android/maps/rideabout/app/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/l;->t()V

    return-void
.end method

.method private o()V
    .locals 2

    const-string v0, "s"

    invoke-direct {p0, v0}, Lcom/google/android/maps/rideabout/app/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->h:Lh/eY;

    new-instance v1, Lcom/google/android/maps/rideabout/app/d;

    invoke-direct {v1, p0}, Lcom/google/android/maps/rideabout/app/d;-><init>(Lcom/google/android/maps/rideabout/app/l;)V

    invoke-virtual {v0, v1}, Lh/eY;->a(Lh/eJ;)V

    return-void
.end method

.method private p()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/l;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/l;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/l;->m()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/l;->j()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/app/l;->a(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/l;->u()V

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/l;->a()V

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/l;->c()V

    goto :goto_0
.end method

.method private q()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/l;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/l;->s()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private s()V
    .locals 6

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->h:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->L()Lh/ap;

    move-result-object v0

    invoke-virtual {v0}, Lh/ap;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->h:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->L()Lh/ap;

    move-result-object v0

    invoke-virtual {v0}, Lh/ap;->v()V

    :cond_0
    const-string v0, "s"

    invoke-direct {p0, v0}, Lcom/google/android/maps/rideabout/app/l;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->h:Lh/eY;

    const/16 v1, 0x382

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x39e

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/google/android/maps/rideabout/app/e;

    invoke-direct {v5, p0}, Lcom/google/android/maps/rideabout/app/e;-><init>(Lcom/google/android/maps/rideabout/app/l;)V

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;ZZLh/eJ;)V

    return-void
.end method

.method private t()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->e:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private u()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->e:Landroid/content/Context;

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LK/m;->a(Landroid/content/Context;Lak/h;LK/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/l;->e:Landroid/content/Context;

    const-class v2, Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/l;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public a(Lu/d;Lcom/google/googlenav/ui/aY;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/l;->f:Lu/d;

    new-instance v0, LB/j;

    invoke-direct {v0, p1}, LB/j;-><init>(Lu/d;)V

    invoke-virtual {v0}, LB/j;->a()LB/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->c:LB/c;

    iput-object p2, p0, Lcom/google/android/maps/rideabout/app/l;->g:Lcom/google/googlenav/ui/aY;

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->e:Landroid/content/Context;

    const-string v1, "ServiceTerminatedSafely"

    invoke-static {v0, v1, p1}, LK/d;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->a:Lcom/google/android/maps/rideabout/app/NavigationService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->a:Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->b()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/l;->e:Landroid/content/Context;

    const-class v2, Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/l;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/l;->d:Z

    iput-object v3, p0, Lcom/google/android/maps/rideabout/app/l;->f:Lu/d;

    iput-object v3, p0, Lcom/google/android/maps/rideabout/app/l;->c:LB/c;

    iput-object v3, p0, Lcom/google/android/maps/rideabout/app/l;->g:Lcom/google/googlenav/ui/aY;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/l;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/l;->e:Landroid/content/Context;

    const-class v2, Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/l;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/l;->i:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v3, p0, Lcom/google/android/maps/rideabout/app/l;->b:Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/l;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/l;->i:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/l;->b:Z

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/l;->d:Z

    return v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/l;->a(Landroid/content/Context;)V

    return-void
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/l;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/l;->i()V

    return-void
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->e:Landroid/content/Context;

    const-string v1, "ShowTransitNavDisclaimer"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, LK/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/l;->o()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/l;->p()V

    goto :goto_0
.end method

.method public j()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->g:Lcom/google/googlenav/ui/aY;

    const/16 v1, 0xb54

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/aY;->a(IILjava/lang/Object;)Z

    return-void
.end method

.method public k()Lu/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->f:Lu/d;

    return-object v0
.end method

.method public l()LB/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->c:LB/c;

    return-object v0
.end method

.method public m()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/l;->e:Landroid/content/Context;

    const-string v1, "ServiceTerminatedSafely"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, LK/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
