.class public Lcom/google/android/maps/driveabout/app/NavigationService;
.super Landroid/app/Service;


# static fields
.field private static a:J


# instance fields
.field private b:Lak/h;

.field private c:LF/L;

.field private d:Lcom/google/android/maps/driveabout/app/dz;

.field private e:Lcom/google/android/maps/driveabout/app/dz;

.field private f:Lcom/google/android/maps/driveabout/app/be;

.field private g:Lcom/google/android/maps/driveabout/app/bX;

.field private h:Lcom/google/android/maps/driveabout/app/e;

.field private i:Lcom/google/android/maps/driveabout/app/a;

.field private j:Laa/D;

.field private k:Lah/j;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Lcom/google/android/maps/driveabout/app/ax;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private final t:Landroid/content/BroadcastReceiver;

.field private final u:Landroid/content/BroadcastReceiver;

.field private final v:Landroid/content/BroadcastReceiver;

.field private final w:Landroid/os/IBinder;

.field private x:Lcom/google/android/maps/driveabout/app/U;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/maps/driveabout/app/NavigationService;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->p:Z

    new-instance v0, Lcom/google/android/maps/driveabout/app/dJ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/app/dJ;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;Lcom/google/android/maps/driveabout/app/cP;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->t:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/google/android/maps/driveabout/app/cP;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/cP;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->u:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/google/android/maps/driveabout/app/cO;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/cO;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->v:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/google/android/maps/driveabout/app/aW;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/aW;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->w:Landroid/os/IBinder;

    return-void
.end method

.method private a(Ljava/lang/String;ZI)Landroid/content/Intent;
    .locals 8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/aN;->a(Z)V

    new-instance v6, Lah/F;

    invoke-direct {v6, p0, v0}, Lah/F;-><init>(Landroid/content/Context;Ljava/io/File;)V

    new-instance v7, Lah/I;

    invoke-direct {v7}, Lah/I;-><init>()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Laa/D;

    invoke-virtual {v0, v7}, Laa/D;->a(Lah/I;)V

    if-eqz p2, :cond_0

    :cond_0
    if-ltz p3, :cond_1

    if-nez p3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    move v2, v0

    :goto_0
    new-instance v0, Lah/u;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/be;

    int-to-long v2, v2

    const/16 v4, 0x1e

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lah/u;-><init>(Lcom/google/android/maps/driveabout/app/be;JII)V

    :cond_1
    invoke-virtual {v7, v6}, Lah/I;->a(LaT/d;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v6}, Lah/B;->e()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-class v1, Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0

    :cond_2
    move v2, p3

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationService;)Lcom/google/android/maps/driveabout/app/bX;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/bX;

    return-object v0
.end method

.method private a(Lt/P;Lcom/google/android/maps/driveabout/app/eC;LF/L;)Lcom/google/android/maps/driveabout/app/dz;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/app/dz;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/dz;-><init>(Lt/P;Lcom/google/android/maps/driveabout/app/eC;)V

    invoke-virtual {p3, v0}, LF/L;->a(LF/G;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "DriveAbout"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "InterruptedDestination"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "InterruptedChimeBeforeSpeech"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private a(Landroid/content/Intent;II)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->b:Lak/h;

    invoke-virtual {v0}, Lak/h;->t()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a()V

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "f:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NavigationService:onStartInternal"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Las/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "event_log"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-boolean v9, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->r:Z

    if-eqz v0, :cond_8

    const-string v1, "is_feature_test"

    invoke-virtual {p1, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->r:Z

    const-string v1, "random_ui_seed"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->r:Z

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Ljava/lang/String;ZI)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    const/4 v1, 0x1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/bj;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/maps/driveabout/app/bj;

    invoke-direct {v3, v2}, Lcom/google/android/maps/driveabout/app/bj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bj;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bj;->h()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bj;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->h:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/e;->t()Lcom/google/android/maps/driveabout/app/aI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aI;->g()V

    :cond_2
    :goto_2
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-nez v0, :cond_7

    if-eq v1, v10, :cond_7

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p1

    goto :goto_1

    :cond_3
    if-ne v1, v10, :cond_4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->i:Lcom/google/android/maps/driveabout/app/a;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/a;->a()V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->x:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bj;->d()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/maps/driveabout/app/U;->b(I)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bj;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/app/bX;->a(I)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Lah/j;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Lah/j;

    new-instance v3, Lah/E;

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lah/E;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lah/j;->a(LaT/f;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bj;->c()[LF/u;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bj;->d()I

    move-result v5

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bj;->f()[LF/K;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bj;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bj;->e()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->s:Ljava/lang/String;

    const-string v8, "UserRequestedReroute"

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iget-object v9, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->h:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/app/e;->u()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/app/a;->b()Landroid/content/Intent;

    move-result-object v9

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->l:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v9}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_5
    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bj;->j()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bj;->b()LF/u;

    move-result-object v2

    invoke-virtual {v2}, LF/u;->f()LF/s;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, LF/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->x:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v2, v5}, Lcom/google/android/maps/driveabout/app/U;->b(I)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/google/android/maps/driveabout/app/bX;->a([LF/u;I[LF/K;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Lah/j;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Lah/j;

    new-instance v3, Lah/E;

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lah/E;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lah/j;->a(LaT/f;)V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->K()V

    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->a()Lcom/google/android/maps/driveabout/app/cC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cC;->c()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->d()V

    goto/16 :goto_0

    :cond_8
    move-object v0, p1

    goto/16 :goto_1
.end method

.method private a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    if-nez p1, :cond_1

    :goto_1
    new-instance v2, Lcom/google/android/maps/driveabout/app/cL;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/cL;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    invoke-static {}, Lcom/google/android/maps/driveabout/power/i;->a()Lcom/google/android/maps/driveabout/power/h;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/maps/driveabout/power/h;->a(Lcom/google/android/maps/driveabout/power/g;)Lcom/google/android/maps/driveabout/power/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/power/h;->a(Landroid/view/Window;)Lcom/google/android/maps/driveabout/power/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/power/h;->a(Lcom/google/android/maps/driveabout/power/c;)Lcom/google/android/maps/driveabout/power/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/power/h;->a()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/maps/driveabout/app/cM;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/cM;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    goto :goto_1
.end method

.method private a(Lcom/google/android/maps/driveabout/app/dz;Lcom/google/android/maps/driveabout/app/eC;)V
    .locals 2

    new-instance v0, Lcom/google/android/maps/driveabout/app/cK;

    const-string v1, "OfflineReroutingHelper"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/google/android/maps/driveabout/app/cK;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/eC;Lcom/google/android/maps/driveabout/app/dz;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->start()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "InterruptedDestination"

    invoke-static {p0, v0, p1}, Lad/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/NavigationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->l()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/NavigationService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->m:Z

    return p1
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/NavigationService;)Lcom/google/android/maps/driveabout/app/U;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->x:Lcom/google/android/maps/driveabout/app/U;

    return-object v0
.end method

.method private l()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->n:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->M()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->L()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->N()V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->H()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->I()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->J()V

    goto :goto_0
.end method

.method private m()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "InterruptedDestination"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lad/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "InterruptedChimeBeforeSpeech"

    invoke-static {p0, v1, v4}, Lad/a;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->i:Lcom/google/android/maps/driveabout/app/a;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/a;->a()V

    if-eqz v0, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "UserRequestedReroute"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2, v4}, Lcom/google/android/maps/driveabout/app/NavigationService;->onStart(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->x:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/U;->a(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->stopSelf()V

    goto :goto_0
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->i:Lcom/google/android/maps/driveabout/app/a;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->a()V

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->c()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aw;->b(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/bX;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bX;->b(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aw;->a(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/bX;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bX;->b(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->C()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->x:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/U;->a(Z)V

    const-string v0, "InterruptedChimeBeforeSpeech"

    invoke-static {p0, v0, p1}, Lad/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public a([LF/u;I[LF/K;)V
    .locals 3

    invoke-static {p1, p2, p3}, Lcom/google/android/maps/driveabout/app/bj;->a([LF/u;I[LF/K;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Lah/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Lah/j;

    new-instance v2, Lah/E;

    invoke-direct {v2, v0}, Lah/E;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lah/j;->a(LaT/f;)V

    :cond_0
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->l:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->p:Z

    return v0
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/be;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/be;->a()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->p:Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->p:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->a()Lcom/google/android/maps/driveabout/app/cC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cC;->c()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/be;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/be;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->p:Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->e()V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/be;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/be;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->q:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->n()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/be;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/be;->b()V

    return-void
.end method

.method public h()V
    .locals 1

    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->a()Lcom/google/android/maps/driveabout/app/cC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cC;->c()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->stopSelf()V

    goto :goto_0
.end method

.method public i()Lcom/google/android/maps/driveabout/app/be;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/be;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->x:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/U;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->r:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->w:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/cC;->a(Landroid/app/Application;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ax;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ax;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->o:Lcom/google/android/maps/driveabout/app/ax;

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->b:Lak/h;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->b:Lak/h;

    invoke-virtual {v0, v6}, Lak/h;->c(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->b:Lak/h;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lak/h;->d(I)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/driveabout/app/cN;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/cN;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    invoke-static {v0, v1, v2, v6}, Lad/b;->a(Landroid/content/Context;Lak/h;Ljava/lang/Runnable;Z)V

    invoke-static {v6}, Lcom/google/android/maps/driveabout/app/aN;->a(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aN;->b(Z)V

    new-instance v0, LF/L;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->b:Lak/h;

    invoke-static {p0}, Las/a;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, LF/L;-><init>(Landroid/content/Context;Lak/h;Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->c:LF/L;

    new-instance v0, Laa/D;

    invoke-direct {v0, p0, v6}, Laa/D;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Laa/D;

    new-instance v0, Lcom/google/android/maps/driveabout/app/be;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/be;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/be;

    new-instance v0, Lcom/google/android/maps/driveabout/app/U;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/U;-><init>(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->x:Lcom/google/android/maps/driveabout/app/U;

    new-instance v3, Lcom/google/android/maps/driveabout/app/aI;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->b:Lak/h;

    invoke-direct {v3, p0, v0}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Landroid/content/Context;Lak/h;)V

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/a;->a(Landroid/app/Service;)Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->i:Lcom/google/android/maps/driveabout/app/a;

    new-instance v0, Lcom/google/android/maps/driveabout/app/bX;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/bX;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/bX;

    new-instance v0, Lcom/google/android/maps/driveabout/app/e;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->x:Lcom/google/android/maps/driveabout/app/U;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->i:Lcom/google/android/maps/driveabout/app/a;

    new-instance v5, Lcom/google/android/maps/driveabout/vector/aQ;

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/google/android/maps/driveabout/vector/aQ;-><init>(Lak/h;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/e;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/U;Lcom/google/android/maps/driveabout/app/aI;Lcom/google/android/maps/driveabout/app/a;Lcom/google/android/maps/driveabout/vector/aQ;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->h:Lcom/google/android/maps/driveabout/app/e;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/bX;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/be;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->c:LF/L;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Laa/D;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->o:Lcom/google/android/maps/driveabout/app/ax;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/bX;->a(Lcom/google/android/maps/driveabout/app/NavigationService;Lcom/google/android/maps/driveabout/app/be;LF/L;Laa/D;Lcom/google/android/maps/driveabout/app/ax;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->f:Lcom/google/android/maps/driveabout/app/be;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->h:Lcom/google/android/maps/driveabout/app/e;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->c:LF/L;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/bX;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->k:Lah/j;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/be;->a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/e;LF/L;Lcom/google/android/maps/driveabout/app/bX;LaT/d;)V

    const-string v0, "map"

    invoke-static {v0}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v0

    check-cast v0, Lt/as;

    new-instance v1, Lcom/google/android/maps/driveabout/app/eC;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/app/eC;-><init>()V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->c:LF/L;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lt/P;Lcom/google/android/maps/driveabout/app/eC;LF/L;)Lcom/google/android/maps/driveabout/app/dz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->d:Lcom/google/android/maps/driveabout/app/dz;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->d:Lcom/google/android/maps/driveabout/app/dz;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dz;->v()V

    const-string v0, "roadgraph"

    invoke-static {v0}, Lt/ac;->c(Ljava/lang/String;)Lt/y;

    move-result-object v0

    check-cast v0, Lt/f;

    new-instance v1, Lcom/google/android/maps/driveabout/app/eC;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/app/eC;-><init>()V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->c:LF/L;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lt/P;Lcom/google/android/maps/driveabout/app/eC;LF/L;)Lcom/google/android/maps/driveabout/app/dz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->e:Lcom/google/android/maps/driveabout/app/dz;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->e:Lcom/google/android/maps/driveabout/app/dz;

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lcom/google/android/maps/driveabout/app/dz;Lcom/google/android/maps/driveabout/app/eC;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->t:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->v:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->a()Lcom/google/android/maps/driveabout/app/cC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cC;->c()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->m()V

    :cond_0
    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v1

    invoke-virtual {v1}, Lad/t;->E()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/power/BatteryMonitor;->a(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->c:LF/L;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/i;->a(LF/L;)V

    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->a()Lcom/google/android/maps/driveabout/app/cC;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/cC;->a(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    iput-boolean v6, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->q:Z

    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->d:Lcom/google/android/maps/driveabout/app/dz;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dz;->e()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->e:Lcom/google/android/maps/driveabout/app/dz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->e:Lcom/google/android/maps/driveabout/app/dz;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dz;->e()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->c:LF/L;

    invoke-virtual {v0}, LF/L;->e()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->j:Laa/D;

    invoke-virtual {v0}, Laa/D;->j()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->x:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/U;->o()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->b:Lak/h;

    invoke-virtual {v0}, Lak/h;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->c:LF/L;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/i;->b(LF/L;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/google/android/maps/driveabout/app/NavigationService;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bX;->X()F

    move-result v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->s:Ljava/lang/String;

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cp;->a(ILjava/lang/String;I)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->p:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationService;->n()V

    :goto_0
    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->a()Lcom/google/android/maps/driveabout/app/cC;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cC;->a(Lcom/google/android/maps/driveabout/app/NavigationService;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->i:Lcom/google/android/maps/driveabout/app/a;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationService;->q:Z

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Landroid/content/Intent;II)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/NavigationService;->a(Landroid/content/Intent;II)V

    const/4 v0, 0x1

    return v0
.end method
