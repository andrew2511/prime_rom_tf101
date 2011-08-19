.class public Lcom/google/android/maps/rideabout/app/NavigationService;
.super Landroid/app/Service;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Landroid/content/IntentFilter;

.field private static final m:Landroid/content/IntentFilter;


# instance fields
.field private c:Lcom/google/android/maps/rideabout/app/g;

.field private d:LB/c;

.field private e:Ll/k;

.field private f:Ll/w;

.field private g:Lcom/google/android/maps/rideabout/view/g;

.field private h:LC/b;

.field private final i:Landroid/os/IBinder;

.field private j:Z

.field private k:Z

.field private final l:Lcom/google/android/maps/rideabout/app/b;

.field private final n:Landroid/content/Intent;

.field private final o:Lcom/google/android/maps/rideabout/app/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/rideabout/app/NavigationService;->a:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/google/android/maps/rideabout/app/NavigationService;->b:Landroid/content/IntentFilter;

    sget-object v0, Lcom/google/android/maps/rideabout/app/NavigationService;->b:Landroid/content/IntentFilter;

    sget-object v1, Lcom/google/android/maps/rideabout/view/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/maps/rideabout/app/NavigationService;->b:Landroid/content/IntentFilter;

    sget-object v1, Lcom/google/android/maps/rideabout/view/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.maps.driveabout.app.STARTING_NAVIGATION_INTENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/rideabout/app/NavigationService;->m:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/google/android/maps/rideabout/app/n;

    invoke-direct {v0, p0}, Lcom/google/android/maps/rideabout/app/n;-><init>(Lcom/google/android/maps/rideabout/app/NavigationService;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->i:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->k:Z

    new-instance v0, Lcom/google/android/maps/rideabout/app/b;

    invoke-direct {v0, p0, v2}, Lcom/google/android/maps/rideabout/app/b;-><init>(Lcom/google/android/maps/rideabout/app/NavigationService;Lcom/google/android/maps/rideabout/app/h;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->l:Lcom/google/android/maps/rideabout/app/b;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.googlenav.STOP_TRANSIT_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->n:Landroid/content/Intent;

    new-instance v0, Lcom/google/android/maps/rideabout/app/a;

    invoke-direct {v0, p0, v2}, Lcom/google/android/maps/rideabout/app/a;-><init>(Lcom/google/android/maps/rideabout/app/NavigationService;Lcom/google/android/maps/rideabout/app/h;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->o:Lcom/google/android/maps/rideabout/app/a;

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/rideabout/app/NavigationService;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->n:Landroid/content/Intent;

    return-object v0
.end method

.method private a(Lu/d;)V
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v1}, Lu/d;->b(Ljava/io/DataOutput;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v1, "directions"

    invoke-static {v0}, LA/d;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, LK/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/rideabout/app/NavigationService;)Lcom/google/android/maps/rideabout/view/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->g:Lcom/google/android/maps/rideabout/view/g;

    return-object v0
.end method

.method private b(Lu/d;LB/c;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->d()V

    iput-object p2, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->d:LB/c;

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/rideabout/app/NavigationService;->c(Lu/d;LB/c;)Ll/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->f:Ll/w;

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->c()V

    invoke-static {}, Lcom/google/android/maps/rideabout/app/l;->n()Lbb/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/maps/rideabout/app/l;->n()Lbb/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbb/b;->a(Z)V

    :cond_0
    return-void
.end method

.method private c(Lu/d;LB/c;)Ll/w;
    .locals 6

    new-instance v0, Ll/k;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->h:LC/b;

    invoke-direct {v0, p0, v1}, Ll/k;-><init>(Landroid/content/Context;LC/b;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->e:Ll/k;

    new-instance v0, Ll/x;

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->e:Ll/k;

    new-instance v3, Lz/c;

    invoke-direct {v3}, Lz/c;-><init>()V

    new-instance v4, LK/i;

    invoke-direct {v4}, LK/i;-><init>()V

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->e:Ll/k;

    invoke-virtual {v1}, Ll/k;->c()LK/e;

    move-result-object v5

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Ll/x;-><init>(LB/c;Ll/k;Lac/p;LK/e;LK/e;)V

    return-object v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->d:LB/c;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->f:Ll/w;

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->c:Lcom/google/android/maps/rideabout/app/g;

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/rideabout/view/g;->a(LB/c;Ll/w;Lcom/google/android/maps/rideabout/app/f;)Lcom/google/android/maps/rideabout/view/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->g:Lcom/google/android/maps/rideabout/view/g;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->e:Ll/k;

    invoke-virtual {v0}, Ll/k;->a()V

    return-void
.end method

.method private d()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->f:Ll/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->f:Ll/w;

    invoke-interface {v0}, Ll/w;->a()V

    iput-object v1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->f:Ll/w;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->g:Lcom/google/android/maps/rideabout/view/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->g:Lcom/google/android/maps/rideabout/view/g;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/view/g;->a(Lcom/google/android/maps/rideabout/view/g;)V

    iput-object v1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->g:Lcom/google/android/maps/rideabout/view/g;

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->e:Ll/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->e:Ll/k;

    invoke-virtual {v0}, Ll/k;->b()V

    iput-object v1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->e:Ll/k;

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->h:LC/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->h:LC/b;

    invoke-virtual {v0}, LC/b;->a()V

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->h:LC/b;

    invoke-virtual {v0}, LC/b;->b()V

    :cond_3
    iput-object v1, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->h:LC/b;

    :cond_4
    return-void
.end method

.method private e()Lu/d;
    .locals 4

    const/4 v3, 0x0

    const-string v0, "directions"

    const-string v1, ""

    invoke-static {p0, v0, v1}, LK/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {v0}, LA/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v3}, Lu/d;->a(Ljava/io/DataInput;Lcom/google/googlenav/ui/bB;)Lu/v;

    move-result-object p0

    check-cast p0, Lu/d;

    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public a(Lu/d;LB/c;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->j:Z

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(Lu/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/rideabout/app/NavigationService;->b(Lu/d;LB/c;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/maps/rideabout/app/NavigationService;->a:Ljava/lang/String;

    const-string v2, "Unable to save direction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->j:Z

    return v0
.end method

.method public b()V
    .locals 2

    const-string v0, "directions"

    const-string v1, ""

    invoke-static {p0, v0, v1}, LK/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->i:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/google/android/maps/rideabout/app/g;->a(Landroid/app/Service;)Lcom/google/android/maps/rideabout/app/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->c:Lcom/google/android/maps/rideabout/app/g;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->c:Lcom/google/android/maps/rideabout/app/g;

    const/16 v1, 0x386

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x39f

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/android/maps/rideabout/app/g;->a(ZZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->c:Lcom/google/android/maps/rideabout/app/g;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/g;->b()V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->e()Lu/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    new-instance v1, LB/j;

    invoke-direct {v1, v0}, LB/j;-><init>(Lu/d;)V

    invoke-virtual {v1}, LB/j;->a()LB/c;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/rideabout/app/NavigationService;->b(Lu/d;LB/c;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->l:Lcom/google/android/maps/rideabout/app/b;

    sget-object v1, Lcom/google/android/maps/rideabout/app/NavigationService;->m:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/rideabout/app/NavigationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->o:Lcom/google/android/maps/rideabout/app/a;

    sget-object v1, Lcom/google/android/maps/rideabout/app/NavigationService;->b:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/rideabout/app/NavigationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lcom/google/android/maps/rideabout/app/NavigationService;->a:Ljava/lang/String;

    const-string v3, "Unable to load direction"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/NavigationService;->d()V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->c:Lcom/google/android/maps/rideabout/app/g;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/g;->a()V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->l:Lcom/google/android/maps/rideabout/app/b;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/NavigationService;->o:Lcom/google/android/maps/rideabout/app/a;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/google/android/maps/rideabout/app/l;->n()Lbb/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbb/b;->a(Z)V

    return-void
.end method
