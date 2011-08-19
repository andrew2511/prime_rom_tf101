.class public Lcom/google/android/maps/driveabout/app/NavigationActivity;
.super Landroid/app/Activity;


# static fields
.field private static a:J


# instance fields
.field private b:Z

.field private c:Z

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/ViewGroup;

.field private f:Lcom/google/android/maps/driveabout/app/NavigationView;

.field private g:Lcom/google/android/maps/driveabout/app/LoadingView;

.field private h:Lcom/google/android/maps/driveabout/app/bo;

.field private i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

.field private j:Landroid/os/PowerManager$WakeLock;

.field private k:Landroid/app/KeyguardManager;

.field private l:Landroid/app/KeyguardManager$KeyguardLock;

.field private m:Lcom/google/android/maps/driveabout/app/NavigationService;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Landroid/os/Handler;

.field private final t:Landroid/content/ServiceConnection;

.field private final u:Lcom/google/android/maps/driveabout/app/bc;

.field private final v:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->o:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->p:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->q:Z

    new-instance v0, Lcom/google/android/maps/driveabout/app/er;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/er;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->t:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/google/android/maps/driveabout/app/bc;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/bc;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->u:Lcom/google/android/maps/driveabout/app/bc;

    new-instance v0, Lcom/google/android/maps/driveabout/app/es;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/es;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->v:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(J)J
    .locals 2

    sget-wide v0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a:J

    add-long/2addr v0, p0

    sput-wide v0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->e:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Lcom/google/android/maps/driveabout/app/NavigationService;)Lcom/google/android/maps/driveabout/app/NavigationService;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    return-object p1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Lcom/google/android/maps/driveabout/app/LoadingView;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/LoadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g:Lcom/google/android/maps/driveabout/app/LoadingView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g:Lcom/google/android/maps/driveabout/app/LoadingView;

    new-instance v1, Lcom/google/android/maps/driveabout/app/en;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/en;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/LoadingView;->a(Lcom/google/android/maps/driveabout/app/bI;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g:Lcom/google/android/maps/driveabout/app/LoadingView;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->n:Z

    return v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b:Z

    return p1
.end method

.method public static b()J
    .locals 2

    sget-wide v0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/NavigationActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->d:Landroid/view/ViewGroup;

    return-object p1
.end method

.method private b(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g:Lcom/google/android/maps/driveabout/app/LoadingView;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j()V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->q()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/NavigationActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->o:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/NavigationView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    return-object v0
.end method

.method private c(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-class v1, Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/NavigationMapView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private f()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.googlenav.suggest.android.SuggestProvider.INIT_SUGGEST_PROVIDER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method static synthetic f(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->r()V

    return-void
.end method

.method static synthetic g(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/NavigationService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    return-object v0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->l:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->l:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->l:Landroid/app/KeyguardManager$KeyguardLock;

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->l:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->k:Landroid/app/KeyguardManager;

    const-string v1, "NavigationActivity"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->l:Landroid/app/KeyguardManager$KeyguardLock;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->l:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f()V

    return-void
.end method

.method private i()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j()V

    return-void
.end method

.method static synthetic i(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->p()V

    return-void
.end method

.method static synthetic j(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/bo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/bo;

    return-object v0
.end method

.method private j()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/cC;->a(Landroid/app/Application;)V

    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->a()Lcom/google/android/maps/driveabout/app/cC;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/cC;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/driveabout/app/eo;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/eo;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lad/b;->a(Landroid/content/Context;Lak/h;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private k()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static synthetic k(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->n()V

    return-void
.end method

.method private l()V
    .locals 0

    return-void
.end method

.method private m()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/bo;

    new-instance v3, Lcom/google/android/maps/driveabout/app/ep;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/maps/driveabout/app/ep;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;J)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/eq;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/eq;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    invoke-virtual {v2, v3, v0}, Lcom/google/android/maps/driveabout/app/bo;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private n()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private o()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/bo;

    new-instance v2, Lcom/google/android/maps/driveabout/app/eu;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/eu;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    new-instance v3, Lcom/google/android/maps/driveabout/app/et;

    invoke-direct {v3, p0}, Lcom/google/android/maps/driveabout/app/et;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/app/bo;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private p()V
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/app/cH;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/cH;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private q()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g:Lcom/google/android/maps/driveabout/app/LoadingView;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c:Z

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/cC;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->o()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->l()V

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->t:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->r:Z

    const-string v0, ")"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->v()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->o:Z

    goto :goto_0
.end method

.method private r()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/NavigationView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Lcom/google/android/maps/driveabout/app/bo;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Lcom/google/android/maps/driveabout/app/NavigationMapView;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/maps/driveabout/app/NavigationView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->s:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->s:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public c()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->stopService(Landroid/content/Intent;)Z

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->t:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->r:Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->finish()V

    return-void
.end method

.method public d()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.maps.driveabout.app.STARTING_NAVIGATION_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public e()Lcom/google/android/maps/driveabout/app/bo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/bo;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/bo;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cE;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/cE;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    invoke-static {p0, p2, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/bp;->a(Landroid/content/Context;ILandroid/content/Intent;Lcom/google/android/maps/driveabout/app/bo;Lcom/google/android/maps/driveabout/app/as;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->r()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->i()Lcom/google/android/maps/driveabout/app/be;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/be;->a(Lcom/google/android/maps/driveabout/app/NavigationView;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->u:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/bc;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->k()V

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->k:Landroid/app/KeyguardManager;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->setDefaultKeyMode(I)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x1000000a

    const-string v2, "NavigationActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Landroid/os/PowerManager$WakeLock;

    const-string v0, "Show Disclaimer"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lad/a;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b:Z

    new-instance v0, Lcom/google/android/maps/driveabout/app/bo;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/bo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/bo;

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m()V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->v:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.googlenav.suggest.android.SuggestProvider.SUGGEST_PROVIDER_CREATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->s:Landroid/os/Handler;

    :goto_1
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "IsActivityRestart"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/google/googlenav/android/ac;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->finish()V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->u:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bc;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->e()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->g()V

    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->a()Lcom/google/android/maps/driveabout/app/cC;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cC;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->u:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/bc;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->p:Z

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->d(Landroid/content/Context;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const-string v0, "I"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->i()Lcom/google/android/maps/driveabout/app/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/be;->m()Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->u:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/bc;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->p:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->p:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->i()Lcom/google/android/maps/driveabout/app/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/be;->n()V

    move v0, v1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->n:Z

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f()V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "UserRequestedReroute"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v3

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->onSearchRequested()Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->i()Lcom/google/android/maps/driveabout/app/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/be;->d()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->i()Lcom/google/android/maps/driveabout/app/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/be;->i()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->y()Lcom/google/android/maps/driveabout/app/NavigationMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l()LG/F;

    move-result-object v0

    invoke-virtual {v0}, LG/F;->a()LG/R;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->i()Lcom/google/android/maps/driveabout/app/be;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/be;->a(LG/R;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->i()Lcom/google/android/maps/driveabout/app/be;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/be;->a(Z)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->i()Lcom/google/android/maps/driveabout/app/be;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/be;->a(Z)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->i()Lcom/google/android/maps/driveabout/app/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/be;->h()V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->z()V

    goto :goto_0

    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {}, Las/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {}, Las/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {}, Las/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {}, Las/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_d
    const-string v0, "A"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/maps/driveabout/app/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_e
    const-string v0, "I"

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/bo;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cG;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/cG;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bo;->b(Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->i()Lcom/google/android/maps/driveabout/app/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/be;->m()Z

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->i()Lcom/google/android/maps/driveabout/app/be;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/be;->d(Z)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->i()Lcom/google/android/maps/driveabout/app/be;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/be;->d(Z)V

    goto/16 :goto_0

    :pswitch_12
    invoke-static {}, LaT/d;->d()LaT/d;

    move-result-object v0

    invoke-virtual {v0}, LaT/d;->b()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0388
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_f
        :pswitch_2
        :pswitch_7
        :pswitch_e
        :pswitch_d
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_8
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->u:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bc;->c()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->c()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->i:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->d()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    const-string v0, "("

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->r:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->t:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->r:Z

    :cond_3
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->o:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->f()V

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bo;->a()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    :cond_5
    return-void

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->b()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_7
    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/cC;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c:Z

    if-eqz v0, :cond_0

    :cond_8
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->n:Z

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/app/bY;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/app/bY;-><init>(Landroid/view/Menu;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->i()Lcom/google/android/maps/driveabout/app/be;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/google/android/maps/driveabout/app/be;->a(Lcom/google/android/maps/driveabout/app/bY;Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->u:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bc;->b()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->q()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "IsActivityRestart"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->p:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->e()V

    goto :goto_0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->f:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->y()Lcom/google/android/maps/driveabout/app/NavigationMapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l()LG/F;

    move-result-object v1

    invoke-virtual {v1}, LG/F;->c()LG/z;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/driveabout/app/cF;

    invoke-direct {v2, p0, p1, p2, p4}, Lcom/google/android/maps/driveabout/app/cF;-><init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;Ljava/lang/String;ZZ)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationActivity;->m:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/NavigationService;->i()Lcom/google/android/maps/driveabout/app/be;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/be;->a(Landroid/os/Bundle;LG/z;Lcom/google/android/maps/driveabout/app/F;)V

    goto :goto_0

    :cond_2
    move-object v0, p3

    goto :goto_1
.end method
