.class public Lcom/google/googlenav/android/w;
.super Ljava/lang/Object;


# static fields
.field private static final w:Ljava/util/List;


# instance fields
.field private final a:Lcom/google/googlenav/android/AndroidGmmApplication;

.field private final b:Lcom/google/googlenav/ui/aX;

.field private c:Lf/v;

.field private d:Lf/Y;

.field private e:Li/a;

.field private f:Lcom/google/googlenav/ui/P;

.field private g:Lcom/google/googlenav/ui/bV;

.field private final h:Lcom/google/googlenav/ui/aT;

.field private final i:Lak/h;

.field private final j:Lcom/google/googlenav/ui/android/ar;

.field private final k:Lcom/google/googlenav/layer/a;

.field private final l:Lcom/google/googlenav/android/Q;

.field private final m:LE/i;

.field private final n:Lcom/google/googlenav/prefetch/android/j;

.field private final o:LE/f;

.field private p:Landroid/view/Menu;

.field private q:Lcom/google/android/maps/MapsActivity;

.field private r:Lcom/google/android/maps/q;

.field private s:Ljava/lang/Object;

.field private t:Z

.field private final u:LD/j;

.field private final v:[LD/j;

.field private x:Ljava/util/Locale;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/w;->w:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/android/AndroidGmmApplication;LT/c;Lak/h;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/google/googlenav/android/w;->p:Landroid/view/Menu;

    iput-object v4, p0, Lcom/google/googlenav/android/w;->r:Lcom/google/android/maps/q;

    iput-object v4, p0, Lcom/google/googlenav/android/w;->s:Ljava/lang/Object;

    new-instance v0, LD/l;

    const v1, 0x13d655

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LD/l;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/googlenav/android/w;->u:LD/j;

    const/4 v0, 0x5

    new-array v0, v0, [LD/j;

    iget-object v1, p0, Lcom/google/googlenav/android/w;->u:LD/j;

    aput-object v1, v0, v3

    sget-object v1, LD/a;->a:LD/a;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    sget-object v2, LD/m;->a:LD/m;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, LD/k;->a:LD/k;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, LD/h;->a:LD/h;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/googlenav/android/w;->v:[LD/j;

    iput-boolean v3, p0, Lcom/google/googlenav/android/w;->y:Z

    sget-object v0, Lcom/google/googlenav/android/w;->w:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/googlenav/android/w;->w()V

    iput-object p1, p0, Lcom/google/googlenav/android/w;->a:Lcom/google/googlenav/android/AndroidGmmApplication;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/googlenav/android/w;->u()V

    invoke-virtual {v1}, Lcom/google/googlenav/d;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/google/googlenav/android/w;->a(Lcom/google/googlenav/android/AndroidGmmApplication;)V

    :cond_0
    new-instance v1, Lcom/google/googlenav/android/Q;

    invoke-direct {v1, p0}, Lcom/google/googlenav/android/Q;-><init>(Lcom/google/googlenav/android/w;)V

    iput-object v1, p0, Lcom/google/googlenav/android/w;->l:Lcom/google/googlenav/android/Q;

    iput-object p3, p0, Lcom/google/googlenav/android/w;->i:Lak/h;

    iget-object v1, p0, Lcom/google/googlenav/android/w;->i:Lak/h;

    invoke-virtual {v1}, Lak/h;->f()V

    sget-object v1, Lcom/google/googlenav/G;->a:Lcom/google/googlenav/G;

    new-instance v2, Lcom/google/googlenav/android/C;

    invoke-direct {v2, p0, v5, v3}, Lcom/google/googlenav/android/C;-><init>(Lcom/google/googlenav/android/w;ZZ)V

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/aw;->a(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;I)V

    const/16 v1, 0xb

    invoke-static {v1}, Lac/g;->a(I)Z

    invoke-direct {p0, p1}, Lcom/google/googlenav/android/w;->a(Landroid/content/Context;)V

    new-instance v1, Lcom/google/googlenav/ui/android/ar;

    invoke-direct {v1, p1}, Lcom/google/googlenav/ui/android/ar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/googlenav/android/w;->j:Lcom/google/googlenav/ui/android/ar;

    invoke-virtual {p0}, Lcom/google/googlenav/android/w;->b()Lf/v;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/android/w;->a(Lf/v;)V

    new-instance v1, Lcom/google/googlenav/layer/l;

    invoke-direct {v1, p0}, Lcom/google/googlenav/layer/l;-><init>(Lcom/google/googlenav/android/w;)V

    iput-object v1, p0, Lcom/google/googlenav/android/w;->k:Lcom/google/googlenav/layer/a;

    invoke-static {}, Lcom/google/googlenav/d;->L()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/googlenav/prefetch/android/f;->a()Lcom/google/googlenav/prefetch/android/f;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/android/w;->m:LE/i;

    sget-object v1, Lcom/google/googlenav/G;->a:Lcom/google/googlenav/G;

    new-instance v2, Lcom/google/googlenav/android/B;

    invoke-direct {v2, p0}, Lcom/google/googlenav/android/B;-><init>(Lcom/google/googlenav/android/w;)V

    invoke-static {v1, v2}, Lcom/google/googlenav/aw;->a(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;)V

    new-instance v1, Lcom/google/googlenav/prefetch/android/j;

    iget-object v2, p0, Lcom/google/googlenav/android/w;->m:LE/i;

    invoke-direct {v1, v2}, Lcom/google/googlenav/prefetch/android/j;-><init>(LE/i;)V

    iput-object v1, p0, Lcom/google/googlenav/android/w;->n:Lcom/google/googlenav/prefetch/android/j;

    new-instance v1, Lcom/google/googlenav/prefetch/android/e;

    invoke-direct {v1, p1}, Lcom/google/googlenav/prefetch/android/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/googlenav/android/w;->o:LE/f;

    sget-object v1, Lcom/google/googlenav/G;->a:Lcom/google/googlenav/G;

    new-instance v2, Lcom/google/googlenav/android/E;

    invoke-direct {v2, p0}, Lcom/google/googlenav/android/E;-><init>(Lcom/google/googlenav/android/w;)V

    invoke-static {v1, v2}, Lcom/google/googlenav/aw;->a(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/googlenav/android/w;->v()V

    iget-object v1, p0, Lcom/google/googlenav/android/w;->j:Lcom/google/googlenav/ui/android/ar;

    invoke-static {p1, v1}, Lcom/google/googlenav/login/b;->a(Landroid/content/Context;LaU/a;)Lcom/google/googlenav/login/j;

    new-instance v1, LQ/d;

    new-instance v2, Lcom/google/googlenav/android/D;

    invoke-direct {v2, p0}, Lcom/google/googlenav/android/D;-><init>(Lcom/google/googlenav/android/w;)V

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-direct {v1, v2, v0}, LQ/d;-><init>(LQ/e;Lac/p;)V

    invoke-static {v1}, LQ/g;->a(LQ/g;)V

    new-instance v0, Lcom/google/googlenav/android/s;

    invoke-direct {v0, p0, p2}, Lcom/google/googlenav/android/s;-><init>(Lcom/google/googlenav/android/w;LT/c;)V

    iput-object v0, p0, Lcom/google/googlenav/android/w;->b:Lcom/google/googlenav/ui/aX;

    invoke-direct {p0}, Lcom/google/googlenav/android/w;->t()V

    new-instance v0, Lcom/google/googlenav/ui/aT;

    iget-object v1, p0, Lcom/google/googlenav/android/w;->b:Lcom/google/googlenav/ui/aX;

    iget-object v2, p0, Lcom/google/googlenav/android/w;->c:Lf/v;

    iget-object v3, p0, Lcom/google/googlenav/android/w;->d:Lf/Y;

    iget-object v4, p0, Lcom/google/googlenav/android/w;->f:Lcom/google/googlenav/ui/P;

    iget-object v5, p0, Lcom/google/googlenav/android/w;->g:Lcom/google/googlenav/ui/bV;

    invoke-static {}, LH/f;->a()LH/f;

    move-result-object v6

    iget-object v7, p0, Lcom/google/googlenav/android/w;->e:Li/a;

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/ui/aT;-><init>(Lcom/google/googlenav/ui/aX;Lf/v;Lf/Y;Lcom/google/googlenav/ui/P;Lcom/google/googlenav/ui/bV;LH/f;Li/a;)V

    iput-object v0, p0, Lcom/google/googlenav/android/w;->h:Lcom/google/googlenav/ui/aT;

    iget-object v0, p0, Lcom/google/googlenav/android/w;->v:[LD/j;

    invoke-static {p3, v0}, LD/e;->a(Lak/h;[LD/j;)V

    new-instance v0, Lcom/google/googlenav/android/U;

    invoke-direct {v0}, Lcom/google/googlenav/android/U;-><init>()V

    new-instance v1, Lcom/google/googlenav/android/S;

    invoke-direct {v1, p1}, Lcom/google/googlenav/android/S;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/U;->a(Lcom/google/googlenav/android/S;)V

    return-void

    :cond_1
    new-instance v1, LE/g;

    invoke-direct {v1}, LE/g;-><init>()V

    iput-object v1, p0, Lcom/google/googlenav/android/w;->m:LE/i;

    new-instance v1, LE/a;

    invoke-direct {v1}, LE/a;-><init>()V

    iput-object v1, p0, Lcom/google/googlenav/android/w;->o:LE/f;

    iput-object v4, p0, Lcom/google/googlenav/android/w;->n:Lcom/google/googlenav/prefetch/android/j;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/android/w;)LE/i;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/w;->m:LE/i;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ui/android/an;)Landroid/app/ProgressDialog;
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/googlenav/android/w;->q:Lcom/google/android/maps/MapsActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/google/googlenav/android/w;->q:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v1}, Lcom/google/android/maps/MapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b012c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/googlenav/android/K;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/android/K;-><init>(Lcom/google/googlenav/android/w;Lcom/google/googlenav/ui/android/an;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {}, Laj/b;->a()Laj/g;

    move-result-object v1

    invoke-virtual {v1}, Laj/g;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/googlenav/android/Z;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/googlenav/capabilities/a;->a()Lcom/google/googlenav/capabilities/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlenav/capabilities/a;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/android/w;->a(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    :goto_0
    new-instance v2, Lbc/a;

    if-nez v1, :cond_0

    move v3, v4

    :cond_0
    invoke-direct {v2, v3}, Lbc/a;-><init>(Z)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eqz v1, :cond_2

    new-instance v1, LH/g;

    invoke-direct {v1, p1}, LH/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    new-instance v1, LH/f;

    invoke-direct {v1, v4, v0}, LH/f;-><init>(ZLjava/util/Vector;)V

    new-instance v0, Lcom/google/googlenav/android/H;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/googlenav/android/H;-><init>(Lcom/google/googlenav/android/C;)V

    invoke-virtual {v1, v0}, LH/f;->a(LH/j;)V

    invoke-static {v1}, LH/f;->a(LH/f;)V

    new-instance v0, LaW/c;

    invoke-direct {v0}, LaW/c;-><init>()V

    invoke-static {v0}, LaW/a;->a(LaW/b;)V

    new-instance v0, LaR/b;

    invoke-direct {v0}, LaR/b;-><init>()V

    invoke-static {v0}, LaR/d;->a(LaR/c;)V

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const-string v1, "nlp_state"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private a(Landroid/os/Handler;Lcom/google/googlenav/android/N;Landroid/app/ProgressDialog;ZLak/c;)V
    .locals 6

    new-instance v0, Lcom/google/googlenav/android/G;

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/android/G;-><init>(Lcom/google/googlenav/android/w;Landroid/app/ProgressDialog;ZLcom/google/googlenav/android/N;Lak/c;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static declared-synchronized a(Lcom/google/googlenav/android/AndroidGmmApplication;)V
    .locals 7

    const-class v0, Lcom/google/googlenav/android/w;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->B()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lr/h;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/d;->b(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/android/AndroidGmmApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/driveabout/vector/bc;->b:[Ljava/lang/String;

    const-string v3, "GMM"

    const v4, 0x7f060003

    new-instance v5, Lcom/google/googlenav/android/q;

    invoke-virtual {p0}, Lcom/google/googlenav/android/AndroidGmmApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/googlenav/android/q;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/bc;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;ILac/y;)V

    :cond_1
    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-static {v1}, Laj/b;->a(Lak/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/google/googlenav/android/w;Landroid/os/Handler;Lcom/google/googlenav/android/N;Landroid/app/ProgressDialog;ZLak/c;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/googlenav/android/w;->a(Landroid/os/Handler;Lcom/google/googlenav/android/N;Landroid/app/ProgressDialog;ZLak/c;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/google/googlenav/android/N;)V
    .locals 8

    new-instance v3, Lcom/google/googlenav/ui/android/an;

    invoke-direct {v3, p1}, Lcom/google/googlenav/ui/android/an;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/googlenav/ui/android/an;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/google/googlenav/android/w;->a(Lcom/google/googlenav/ui/android/an;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-static {v6}, Lcom/google/googlenav/ui/android/h;->b(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/google/googlenav/android/w;->i:Lak/h;

    invoke-virtual {v0}, Lak/h;->e()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/android/w;->i:Lak/h;

    invoke-virtual {v0}, Lak/h;->g()V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/android/w;->i:Lak/h;

    invoke-virtual {v0, v3}, Lak/h;->a(Lak/c;)V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/google/googlenav/android/F;

    const-string v2, "RemoteStrings"

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/android/F;-><init>(Lcom/google/googlenav/android/w;Ljava/lang/String;Lcom/google/googlenav/ui/android/an;Landroid/os/Handler;Lcom/google/googlenav/android/N;Landroid/app/ProgressDialog;Z)V

    invoke-virtual {v0}, Lcom/google/googlenav/android/F;->start()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/android/an;->a(Z)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lac/m;->a([Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/googlenav/android/w;->x()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/android/w;->t:Z

    goto :goto_0
.end method

.method private a(Landroid/content/ContentResolver;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "network_location_opt_in"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_0
    return v0

    :pswitch_0
    move v0, v2

    :goto_1
    const-string v1, "network"

    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :pswitch_1
    move v0, v3

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/googlenav/android/w;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/android/w;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/android/w;)LE/f;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/w;->o:LE/f;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/android/w;)Lcom/google/googlenav/android/AndroidGmmApplication;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/w;->a:Lcom/google/googlenav/android/AndroidGmmApplication;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/android/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/android/w;->y()V

    return-void
.end method

.method static synthetic e(Lcom/google/googlenav/android/w;)Lak/h;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/w;->i:Lak/h;

    return-object v0
.end method

.method static synthetic f(Lcom/google/googlenav/android/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/android/w;->x()V

    return-void
.end method

.method static synthetic g(Lcom/google/googlenav/android/w;)Lcom/google/android/maps/MapsActivity;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/w;->q:Lcom/google/android/maps/MapsActivity;

    return-object v0
.end method

.method static synthetic h(Lcom/google/googlenav/android/w;)Lcom/google/googlenav/android/Q;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/w;->l:Lcom/google/googlenav/android/Q;

    return-object v0
.end method

.method static synthetic i(Lcom/google/googlenav/android/w;)Lcom/google/googlenav/ui/android/ar;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/w;->j:Lcom/google/googlenav/ui/android/ar;

    return-object v0
.end method

.method static synthetic j(Lcom/google/googlenav/android/w;)Lcom/google/googlenav/layer/a;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/w;->k:Lcom/google/googlenav/layer/a;

    return-object v0
.end method

.method static synthetic k(Lcom/google/googlenav/android/w;)Lf/v;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/w;->c:Lf/v;

    return-object v0
.end method

.method static synthetic l(Lcom/google/googlenav/android/w;)Lcom/google/googlenav/ui/aT;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/w;->h:Lcom/google/googlenav/ui/aT;

    return-object v0
.end method

.method static synthetic m(Lcom/google/googlenav/android/w;)Lf/Y;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/w;->d:Lf/Y;

    return-object v0
.end method

.method private s()[Lr/c;
    .locals 3

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/L;

    const/16 v1, 0xa

    invoke-static {v1}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/android/L;->U()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lr/b;->a:Lr/b;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v2, Lr/a;->a:Lr/a;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/d;->o()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/googlenav/labs/android/e;->a:Lcom/google/googlenav/labs/android/e;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/android/L;->D()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lr/g;->a:Lr/g;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lac/d;->a()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lr/c;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lr/c;

    return-object p0

    :cond_4
    sget-object v2, Lcom/google/googlenav/labs/android/f;->a:Lcom/google/googlenav/labs/android/f;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/googlenav/android/L;->q()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/google/googlenav/android/L;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lr/d;->a:Lr/d;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object v0, Lcom/google/googlenav/labs/android/j;->a:Lcom/google/googlenav/labs/android/j;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lr/e;->a:Lr/e;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/android/w;->l:Lcom/google/googlenav/android/Q;

    invoke-virtual {v0}, Lcom/google/googlenav/android/Q;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/googlenav/labs/android/h;->a:Lcom/google/googlenav/labs/android/h;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {}, Lcom/google/googlenav/d;->L()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/googlenav/labs/android/e;->a:Lcom/google/googlenav/labs/android/e;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/googlenav/labs/android/e;->a:Lcom/google/googlenav/labs/android/e;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private t()V
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lam/q;

    invoke-direct {v0}, Lam/q;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/android/w;->e:Li/a;

    iget-object v0, p0, Lcom/google/googlenav/android/w;->c:Lf/v;

    check-cast v0, LaK/j;

    iput-object v1, p0, Lcom/google/googlenav/android/w;->f:Lcom/google/googlenav/ui/P;

    iput-object v1, p0, Lcom/google/googlenav/android/w;->g:Lcom/google/googlenav/ui/bV;

    new-instance v1, LaK/i;

    invoke-virtual {v0}, LaK/j;->w()Lcom/google/android/maps/driveabout/vector/bD;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/android/w;->c:Lf/v;

    invoke-virtual {v3}, Lf/v;->b()Lf/C;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/android/w;->j:Lcom/google/googlenav/ui/android/ar;

    invoke-direct {v1, v2, v0, v3, v4}, LaK/i;-><init>(Lcom/google/android/maps/driveabout/vector/bD;LaK/j;Lf/C;LaU/a;)V

    iput-object v1, p0, Lcom/google/googlenav/android/w;->d:Lf/Y;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Li/a;

    invoke-direct {v0}, Li/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/android/w;->e:Li/a;

    iget-object v0, p0, Lcom/google/googlenav/android/w;->b:Lcom/google/googlenav/ui/aX;

    iget-object v1, p0, Lcom/google/googlenav/android/w;->c:Lf/v;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aX;->a(Lf/v;)Lcom/google/googlenav/ui/P;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/w;->f:Lcom/google/googlenav/ui/P;

    iget-object v0, p0, Lcom/google/googlenav/android/w;->b:Lcom/google/googlenav/ui/aX;

    iget-object v1, p0, Lcom/google/googlenav/android/w;->c:Lf/v;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aX;->b(Lf/v;)Lcom/google/googlenav/ui/bV;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/w;->g:Lcom/google/googlenav/ui/bV;

    new-instance v0, Lf/u;

    iget-object v1, p0, Lcom/google/googlenav/android/w;->c:Lf/v;

    iget-object v2, p0, Lcom/google/googlenav/android/w;->f:Lcom/google/googlenav/ui/P;

    iget-object v3, p0, Lcom/google/googlenav/android/w;->g:Lcom/google/googlenav/ui/bV;

    iget-object v4, p0, Lcom/google/googlenav/android/w;->b:Lcom/google/googlenav/ui/aX;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/aX;->j()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lf/u;-><init>(Lf/v;Lcom/google/googlenav/ui/P;Lcom/google/googlenav/ui/bV;Z)V

    iput-object v0, p0, Lcom/google/googlenav/android/w;->d:Lf/Y;

    goto :goto_0
.end method

.method private u()V
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->Z()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "UserAgentPref"

    invoke-static {v0}, Lac/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->x()Ln/b;

    move-result-object p0

    check-cast p0, LP/a;

    invoke-virtual {p0, v0}, LP/a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/googlenav/G;->a:Lcom/google/googlenav/G;

    new-instance v1, Lcom/google/googlenav/android/I;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/google/googlenav/android/I;-><init>(Lcom/google/googlenav/android/w;ZZ)V

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/aw;->a(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;I)V

    goto :goto_0
.end method

.method private v()V
    .locals 1

    new-instance v0, Lcom/google/googlenav/ui/android/S;

    invoke-direct {v0}, Lcom/google/googlenav/ui/android/S;-><init>()V

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->a(Lcom/google/googlenav/ui/aV;)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->f()Lk/q;

    move-result-object p0

    check-cast p0, Lk/k;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk/k;->a(Lk/a;)V

    new-instance v0, Li/J;

    invoke-direct {v0}, Li/J;-><init>()V

    invoke-static {v0}, Li/bd;->a(Li/bd;)V

    return-void
.end method

.method private w()V
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/google/googlenav/android/w;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const-string v1, "AndroidState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "******************** WARNING **** =====>  Memory leak detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AndroidState instances !!! <==== **** WARNING ********************"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method private x()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/w;->h:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aD()V

    iget-object v0, p0, Lcom/google/googlenav/android/w;->q:Lcom/google/android/maps/MapsActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/android/w;->q:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->i()V

    :cond_0
    return-void
.end method

.method private y()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/android/w;->q:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/googlenav/android/w;->q:Lcom/google/android/maps/MapsActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0132

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/google/googlenav/android/Z;->f()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lac/d;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    new-instance v1, Lcom/google/googlenav/android/S;

    iget-object v2, p0, Lcom/google/googlenav/android/w;->q:Lcom/google/android/maps/MapsActivity;

    invoke-direct {v1, v2}, Lcom/google/googlenav/android/S;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/googlenav/android/S;->e()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/d;->ai()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is unavailable. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Check that the server is up and that you have a network connection."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_1
    const v1, 0x7f0b0109

    new-instance v2, Lcom/google/googlenav/android/k;

    invoke-direct {v2, p0}, Lcom/google/googlenav/android/k;-><init>(Lcom/google/googlenav/android/w;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/google/googlenav/android/j;

    invoke-direct {v1, p0}, Lcom/google/googlenav/android/j;-><init>(Lcom/google/googlenav/android/w;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong remote strings version.  GMM Server must be hosting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_3
    const v1, 0x7f0b0131

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/google/googlenav/prefetch/android/j;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/w;->n:Lcom/google/googlenav/prefetch/android/j;

    return-object v0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/android/w;->x:Ljava/util/Locale;

    if-nez v0, :cond_1

    const-string v0, "Android onConfigurationChanged"

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "currentLocale should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/android/w;->x:Ljava/util/Locale;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lac/m;->a([Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/android/w;->y:Z

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/MapsActivity;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/android/w;->q:Lcom/google/android/maps/MapsActivity;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/googlenav/android/w;->q:Lcom/google/android/maps/MapsActivity;

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/S;

    invoke-virtual {p1}, Lcom/google/android/maps/MapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/S;->a(Landroid/content/Context;)V

    invoke-static {}, LQ/g;->j()LQ/g;

    move-result-object v0

    check-cast v0, LQ/d;

    invoke-virtual {p1}, Lcom/google/android/maps/MapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LQ/d;->a(Landroid/content/Context;)V

    if-nez p2, :cond_0

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/MapsActivity;->g()V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/maps/q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/w;->r:Lcom/google/android/maps/q;

    return-void
.end method

.method public a(Lf/v;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/android/w;->c:Lf/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/android/w;->c:Lf/v;

    iget-object v1, p0, Lcom/google/googlenav/android/w;->j:Lcom/google/googlenav/ui/android/ar;

    invoke-virtual {v0, v1}, Lf/v;->b(Lax/g;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlenav/android/w;->c:Lf/v;

    invoke-virtual {v1, v0}, Lf/v;->a(Z)V

    :cond_0
    iput-object p1, p0, Lcom/google/googlenav/android/w;->c:Lf/v;

    iget-object v0, p0, Lcom/google/googlenav/android/w;->j:Lcom/google/googlenav/ui/android/ar;

    invoke-virtual {p1, v0}, Lf/v;->a(Lax/g;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/w;->s:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/Locale;Lcom/google/googlenav/android/N;Z)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/google/googlenav/android/w;->x:Ljava/util/Locale;

    iput-boolean v2, p0, Lcom/google/googlenav/android/w;->y:Z

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    check-cast v0, Lz/b;

    invoke-virtual {v0, v1}, Lz/b;->a(Ljava/util/Locale;)V

    invoke-virtual {p0}, Lcom/google/googlenav/android/w;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    iput-boolean v2, p0, Lcom/google/googlenav/android/w;->t:Z

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/googlenav/android/w;->a(Ljava/lang/String;Lcom/google/googlenav/android/N;)V

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/android/w;->x()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/android/w;->t:Z

    goto :goto_1

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method public b()Lf/v;
    .locals 15

    const/16 v7, 0x190

    const/high16 v2, 0x10

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/d;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LaK/j;

    iget-object v1, p0, Lcom/google/googlenav/android/w;->a:Lcom/google/googlenav/android/AndroidGmmApplication;

    invoke-virtual {v1}, Lcom/google/googlenav/android/AndroidGmmApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x8

    invoke-virtual {v4}, Lcom/google/googlenav/d;->g()Lf/h;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/googlenav/d;->h()Lf/l;

    move-result-object v6

    move v4, v2

    invoke-direct/range {v0 .. v7}, LaK/j;-><init>(Landroid/content/Context;IIILf/h;Lf/l;I)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/googlenav/ui/aV;->ah()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_1
    mul-int v9, v2, v0

    new-instance v8, Lf/v;

    const/4 v10, -0x1

    invoke-virtual {v4}, Lcom/google/googlenav/d;->g()Lf/h;

    move-result-object v12

    invoke-virtual {v4}, Lcom/google/googlenav/d;->h()Lf/l;

    move-result-object v13

    move v11, v2

    move v14, v7

    invoke-direct/range {v8 .. v14}, Lf/v;-><init>(IIILf/h;Lf/l;I)V

    move-object v0, v8

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/android/w;->h:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aL()V

    invoke-static {}, LQ/g;->j()LQ/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/android/w;->h:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v1

    invoke-virtual {v0, v1}, LQ/g;->b(LQ/i;)V

    invoke-direct {p0}, Lcom/google/googlenav/android/w;->t()V

    iget-object v0, p0, Lcom/google/googlenav/android/w;->h:Lcom/google/googlenav/ui/aT;

    iget-object v1, p0, Lcom/google/googlenav/android/w;->d:Lf/Y;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->a(Lf/Y;)V

    iget-object v0, p0, Lcom/google/googlenav/android/w;->h:Lcom/google/googlenav/ui/aT;

    iget-object v1, p0, Lcom/google/googlenav/android/w;->f:Lcom/google/googlenav/ui/P;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/ui/P;)V

    iget-object v0, p0, Lcom/google/googlenav/android/w;->h:Lcom/google/googlenav/ui/aT;

    iget-object v1, p0, Lcom/google/googlenav/android/w;->e:Li/a;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->a(Li/a;)V

    iget-object v0, p0, Lcom/google/googlenav/android/w;->h:Lcom/google/googlenav/ui/aT;

    iget-object v1, p0, Lcom/google/googlenav/android/w;->g:Lcom/google/googlenav/ui/bV;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/ui/bV;)V

    return-void
.end method

.method public d()V
    .locals 5

    invoke-static {}, Lr/h;->a()Lr/h;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/googlenav/android/w;->s()[Lr/c;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v0, v1, v3

    instance-of v4, v0, Lcom/google/googlenav/labs/android/b;

    if-eqz v4, :cond_0

    check-cast v0, Lcom/google/googlenav/labs/android/b;

    iget-object v4, p0, Lcom/google/googlenav/android/w;->q:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v4}, Lcom/google/android/maps/MapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/googlenav/labs/android/b;->a(Landroid/content/Context;)V

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/android/w;->h:Lcom/google/googlenav/ui/aT;

    invoke-static {v0, v1}, Lr/h;->a(Lcom/google/googlenav/ui/aT;[Lr/c;)V

    :cond_2
    return-void
.end method

.method public e()Lcom/google/googlenav/android/AndroidGmmApplication;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/w;->a:Lcom/google/googlenav/android/AndroidGmmApplication;

    return-object v0
.end method

.method public f()Lcom/google/android/maps/MapsActivity;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/w;->q:Lcom/google/android/maps/MapsActivity;

    return-object v0
.end method

.method public g()Lf/v;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/w;->c:Lf/v;

    return-object v0
.end method

.method public h()Lf/Y;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/w;->d:Lf/Y;

    return-object v0
.end method

.method public i()Lcom/google/googlenav/ui/aT;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/w;->h:Lcom/google/googlenav/ui/aT;

    return-object v0
.end method

.method public j()Lak/h;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/w;->i:Lak/h;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/android/w;->n()Lcom/google/googlenav/ui/android/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ar;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/w;->s:Ljava/lang/Object;

    return-object v0
.end method

.method public m()Lcom/google/android/maps/q;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/w;->r:Lcom/google/android/maps/q;

    return-object v0
.end method

.method public n()Lcom/google/googlenav/ui/android/ar;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/w;->j:Lcom/google/googlenav/ui/android/ar;

    return-object v0
.end method

.method public o()V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/google/googlenav/android/J;

    invoke-direct {v2, p0, v1}, Lcom/google/googlenav/android/J;-><init>(Lcom/google/googlenav/android/w;Landroid/os/Handler;)V

    invoke-static {}, Lad/b;->e()V

    iget-object v1, p0, Lcom/google/googlenav/android/w;->a:Lcom/google/googlenav/android/AndroidGmmApplication;

    iget-object v3, p0, Lcom/google/googlenav/android/w;->i:Lak/h;

    invoke-static {v1, v3, v2, v0}, Lad/b;->a(Landroid/content/Context;Lak/h;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public p()Z
    .locals 1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->B()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/android/w;->t:Z

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/android/w;->y:Z

    return v0
.end method
