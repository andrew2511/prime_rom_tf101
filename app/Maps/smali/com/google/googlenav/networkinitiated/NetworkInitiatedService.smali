.class public Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;
.super Landroid/app/Service;


# instance fields
.field private a:Landroid/os/PowerManager$WakeLock;

.field private b:Landroid/os/Handler;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->r()V

    :cond_0
    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0}, Lak/h;->s()V

    :cond_1
    invoke-static {}, Lcom/google/googlenav/android/c;->g()V

    invoke-direct {p0}, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->c()V

    return-void
.end method

.method private a(Landroid/content/Intent;I)V
    .locals 1

    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lak/h;

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->a(Landroid/app/Service;)Lcom/google/googlenav/login/j;

    if-eqz p1, :cond_0

    const-string v0, "remote_intent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->b()V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->c()V

    return-void
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    sget-wide v2, Lcom/google/googlenav/friend/android/A;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/networkinitiated/c;

    invoke-interface {p0, p1}, Lcom/google/googlenav/networkinitiated/c;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, p1}, Lcom/google/googlenav/networkinitiated/c;->b(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "NetworkInitiatedService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->a:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Lcom/google/googlenav/networkinitiated/d;

    invoke-direct {v0, p0}, Lcom/google/googlenav/networkinitiated/d;-><init>(Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;)V

    iput-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->b:Landroid/os/Handler;

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->c:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/networkinitiated/j;

    invoke-direct {v1, p0}, Lcom/google/googlenav/networkinitiated/j;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->c:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/networkinitiated/f;

    invoke-direct {v1, p0}, Lcom/google/googlenav/networkinitiated/f;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->c:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/networkinitiated/e;

    invoke-direct {v1, p0}, Lcom/google/googlenav/networkinitiated/e;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->c:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/networkinitiated/g;

    invoke-direct {v1, p0}, Lcom/google/googlenav/networkinitiated/g;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->d:Ljava/util/List;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->a()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->a(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->a(Landroid/content/Intent;I)V

    const/4 v0, 0x3

    return v0
.end method
