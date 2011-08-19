.class public Lcom/google/android/maps/MapsActivity;
.super Lcom/google/googlenav/android/BaseMapsActivity;

# interfaces
.implements Lcom/google/googlenav/android/ag;
.implements Lcom/google/googlenav/android/h;


# static fields
.field private static A:LA/p;

.field private static B:LA/p;

.field private static C:LA/p;

.field private static F:I

.field private static final i:Landroid/content/IntentFilter;

.field private static final j:Landroid/content/IntentFilter;

.field private static final k:Landroid/content/IntentFilter;

.field private static final m:Lac/p;

.field private static final o:LA/p;

.field private static final p:LA/p;

.field private static final q:LA/p;

.field private static final r:LA/p;

.field private static final s:LA/p;

.field private static final t:LA/p;

.field private static final u:LA/p;

.field private static final v:LA/p;

.field private static final w:LA/p;

.field private static final x:LA/p;

.field private static final y:LA/p;

.field private static final z:LA/p;


# instance fields
.field private D:Lcom/google/android/maps/a;

.field private E:LQ/g;

.field private G:Z

.field private H:Lcom/google/googlenav/ui/view/android/P;

.field private I:Z

.field private J:LT/a;

.field private K:Lcom/google/googlenav/android/T;

.field protected a:Lcom/google/android/maps/q;

.field private b:Lcom/google/googlenav/ui/android/BaseAndroidView;

.field private c:Lcom/google/googlenav/android/W;

.field private d:Lcom/google/googlenav/android/O;

.field private e:Ljava/util/List;

.field private final f:Landroid/content/BroadcastReceiver;

.field private g:Landroid/content/BroadcastReceiver;

.field private h:Z

.field private final l:Landroid/content/BroadcastReceiver;

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x16

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->i:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.app.action.ENTER_CAR_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->j:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.googlenav.STOP_TRANSIT_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->k:Landroid/content/IntentFilter;

    new-instance v0, Lz/c;

    invoke-direct {v0}, Lz/c;-><init>()V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->m:Lac/p;

    new-instance v0, LA/p;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->m:Lac/p;

    const-string v2, "startup remote strings"

    const-string v3, "guid"

    invoke-direct {v0, v1, v2, v3, v4}, LA/p;-><init>(Lac/p;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->o:LA/p;

    new-instance v0, LA/p;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->m:Lac/p;

    const-string v2, "startup remote strings vm"

    const-string v3, "guid_vm"

    invoke-direct {v0, v1, v2, v3, v4}, LA/p;-><init>(Lac/p;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->p:LA/p;

    new-instance v0, LA/p;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->m:Lac/p;

    const-string v2, "startup cold"

    const-string v3, "guif"

    invoke-direct {v0, v1, v2, v3, v4}, LA/p;-><init>(Lac/p;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->q:LA/p;

    new-instance v0, LA/p;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->m:Lac/p;

    const-string v2, "startup cold vm"

    const-string v3, "guif_vm"

    invoke-direct {v0, v1, v2, v3, v4}, LA/p;-><init>(Lac/p;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->r:LA/p;

    new-instance v0, LA/p;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->m:Lac/p;

    const-string v2, "startup after back"

    const-string v3, "guir"

    invoke-direct {v0, v1, v2, v3, v4}, LA/p;-><init>(Lac/p;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->s:LA/p;

    new-instance v0, LA/p;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->m:Lac/p;

    const-string v2, "startup after back vm"

    const-string v3, "guir_vm"

    invoke-direct {v0, v1, v2, v3, v4}, LA/p;-><init>(Lac/p;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->t:LA/p;

    new-instance v0, LA/p;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->m:Lac/p;

    const-string v2, "startup hot"

    const-string v3, "guis"

    invoke-direct {v0, v1, v2, v3, v4}, LA/p;-><init>(Lac/p;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->u:LA/p;

    new-instance v0, LA/p;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->m:Lac/p;

    const-string v2, "startup hot vm"

    const-string v3, "guis_vm"

    invoke-direct {v0, v1, v2, v3, v4}, LA/p;-><init>(Lac/p;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->v:LA/p;

    new-instance v0, LA/p;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->m:Lac/p;

    const-string v2, "startup screen on"

    const-string v3, "guip"

    invoke-direct {v0, v1, v2, v3, v4}, LA/p;-><init>(Lac/p;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->w:LA/p;

    new-instance v0, LA/p;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->m:Lac/p;

    const-string v2, "startup screen on vm"

    const-string v3, "guip_vm"

    invoke-direct {v0, v1, v2, v3, v4}, LA/p;-><init>(Lac/p;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->x:LA/p;

    new-instance v0, LA/p;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->m:Lac/p;

    const-string v2, "startup after brief pause"

    const-string v3, "guib"

    invoke-direct {v0, v1, v2, v3, v4}, LA/p;-><init>(Lac/p;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->y:LA/p;

    new-instance v0, LA/p;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->m:Lac/p;

    const-string v2, "startup after brief pause vm"

    const-string v3, "guib_vm"

    invoke-direct {v0, v1, v2, v3, v4}, LA/p;-><init>(Lac/p;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->z:LA/p;

    const/4 v0, -0x1

    sput v0, Lcom/google/android/maps/MapsActivity;->F:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/android/BaseMapsActivity;-><init>()V

    new-instance v0, Lcom/google/android/maps/f;

    invoke-direct {v0, p0}, Lcom/google/android/maps/f;-><init>(Lcom/google/android/maps/MapsActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->f:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/google/android/maps/c;

    invoke-direct {v0, p0}, Lcom/google/android/maps/c;-><init>(Lcom/google/android/maps/MapsActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->g:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Lcom/google/android/maps/MapsActivity;->h:Z

    new-instance v0, Lcom/google/android/maps/b;

    invoke-direct {v0, p0}, Lcom/google/android/maps/b;-><init>(Lcom/google/android/maps/MapsActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->l:Landroid/content/BroadcastReceiver;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/MapsActivity;->n:J

    sget-object v0, Lcom/google/android/maps/a;->a:Lcom/google/android/maps/a;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->D:Lcom/google/android/maps/a;

    iput-boolean v2, p0, Lcom/google/android/maps/MapsActivity;->I:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->K:Lcom/google/googlenav/android/T;

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/MapsActivity;LT/a;)LT/a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/MapsActivity;->J:LT/a;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/android/AndroidGmmApplication;

    invoke-virtual {p0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/P;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/android/c;

    invoke-virtual {p0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/MapsActivity;Lcom/google/android/maps/a;)Lcom/google/android/maps/a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/MapsActivity;->D:Lcom/google/android/maps/a;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/MapsActivity;)Lcom/google/googlenav/ui/aT;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)V
    .locals 0

    return-void
.end method

.method private a(J)V
    .locals 6

    :try_start_0
    const-string v0, "dalvik.system.VMRuntime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getRuntime"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "setMinimumHeapSize"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "setMinimumHeapSize reflection failed"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/MapsActivity;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->g:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->k:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/MapsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v4, p0, Lcom/google/android/maps/MapsActivity;->h:Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->d()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->setDefaultKeyMode(I)V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->g()V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->l()V

    sget-object v0, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/af;

    new-instance v1, Lcom/google/googlenav/android/i;

    invoke-direct {v1}, Lcom/google/googlenav/android/i;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/af;->a(Lcom/google/googlenav/android/l;)V

    sget-object v0, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/af;

    invoke-virtual {v0}, Lcom/google/googlenav/android/af;->d()V

    sget-object v0, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/af;

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->H:Lcom/google/googlenav/ui/view/android/P;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/af;->a(Lcom/google/googlenav/android/n;)V

    new-instance v0, Lcom/google/googlenav/android/O;

    invoke-direct {v0, p0}, Lcom/google/googlenav/android/O;-><init>(Lcom/google/googlenav/android/ag;)V

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->d:Lcom/google/googlenav/android/O;

    new-instance v0, Lcom/google/googlenav/android/W;

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->x()Lf/Y;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/googlenav/android/W;-><init>(Lcom/google/googlenav/android/h;Lcom/google/googlenav/ui/aT;Lf/Y;)V

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->c:Lcom/google/googlenav/android/W;

    if-nez p1, :cond_1

    new-instance v0, Lcom/google/android/maps/d;

    invoke-direct {v0, p0, v4, v3}, Lcom/google/android/maps/d;-><init>(Lcom/google/android/maps/MapsActivity;ZZ)V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->t()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/googlenav/G;->a:Lcom/google/googlenav/G;

    invoke-static {v1, v0, v3}, Lcom/google/googlenav/aw;->a(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;I)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/googlenav/G;->a:Lcom/google/googlenav/G;

    new-instance v1, Lcom/google/android/maps/h;

    invoke-direct {v1, p0}, Lcom/google/android/maps/h;-><init>(Lcom/google/android/maps/MapsActivity;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/aw;->a(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;)V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->o()V

    return-void

    :cond_2
    sget-object v1, Lcom/google/googlenav/G;->b:Lcom/google/googlenav/G;

    invoke-static {v1, v0}, Lcom/google/googlenav/aw;->a(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;)V

    goto :goto_0
.end method

.method private a(Landroid/view/Menu;)V
    .locals 5

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/e;

    iget-object v2, p0, Lcom/google/android/maps/MapsActivity;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/e;

    invoke-virtual {v0}, Lax/e;->c()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Lax/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/w;->F:Lax/e;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f02020e

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v3, 0x73

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    :cond_1
    :goto_2
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/d;->U()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2, v0}, Lcom/google/googlenav/ui/android/S;->a(Landroid/view/MenuItem;Lax/e;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/google/googlenav/ui/w;->G:Lax/e;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f0201f5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v3, 0x64

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto :goto_2

    :cond_4
    sget-object v3, Lcom/google/googlenav/ui/w;->R:Lax/e;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v3

    invoke-virtual {v3}, Li/aE;->O()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v3, 0x7f02020d

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v3, 0x63

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/google/googlenav/ui/w;->Q:Lax/e;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const v3, 0x7f020201

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_6
    sget-object v3, Lcom/google/googlenav/ui/w;->I:Lax/e;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0x7f020203

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v3, 0x30

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto :goto_2

    :cond_7
    sget-object v3, Lcom/google/googlenav/ui/w;->J:Lax/e;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/google/googlenav/ui/w;->K:Lax/e;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    const v3, 0x7f0201fe

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v3, 0x6c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_9
    sget-object v3, Lcom/google/googlenav/ui/w;->r:Lax/e;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const v3, 0x7f02020f

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v3, 0x6d

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_a
    sget-object v3, Lcom/google/googlenav/ui/w;->S:Lax/e;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const v3, 0x7f020211

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_b
    sget-object v3, Lcom/google/googlenav/ui/w;->au:Lax/e;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0201f9

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v3, 0x78

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_c
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/MapsActivity;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/MapsActivity;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/MapsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/MapsActivity;->I:Z

    return p1
.end method

.method private b(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/MapsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->n()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/maps/MapsActivity;)LT/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->J:LT/a;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/maps/MapsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->u()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/maps/MapsActivity;)LQ/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->E:LQ/g;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/maps/MapsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/MapsActivity;->I:Z

    return v0
.end method

.method static synthetic g(Lcom/google/android/maps/MapsActivity;)Lcom/google/googlenav/android/W;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->c:Lcom/google/googlenav/android/W;

    return-object v0
.end method

.method private n()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->Y()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->E:LQ/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->E:LQ/g;

    invoke-virtual {v0}, LQ/g;->h()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->i()V

    :cond_2
    return-void
.end method

.method private o()V
    .locals 4

    sget-object v0, Lcom/google/googlenav/G;->a:Lcom/google/googlenav/G;

    new-instance v1, Lcom/google/android/maps/g;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/maps/g;-><init>(Lcom/google/android/maps/MapsActivity;ZZ)V

    invoke-static {v0, v1}, Lcom/google/googlenav/aw;->a(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;)V

    return-void
.end method

.method private p()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/rideabout/view/h;

    iget-object v2, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-direct {v1, v2}, Lcom/google/android/maps/rideabout/view/h;-><init>(Lcom/google/googlenav/ui/android/BaseAndroidView;)V

    invoke-static {v1}, Lx/N;->a(Lx/N;)V

    new-instance v1, Lcom/google/android/maps/rideabout/app/l;

    invoke-direct {v1, p0, v0}, Lcom/google/android/maps/rideabout/app/l;-><init>(Landroid/content/Context;Lh/eY;)V

    invoke-static {v1}, Lbb/b;->a(Lbb/b;)V

    return-void
.end method

.method private q()V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/ui/view/android/aP;->a()Lcom/google/googlenav/ui/view/android/aP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aP;->d()V

    return-void
.end method

.method private r()V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/ui/view/android/aP;->a()Lcom/google/googlenav/ui/view/android/aP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aP;->c()V

    return-void
.end method

.method private s()V
    .locals 3

    new-instance v0, Lx/R;

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aJ()Lcom/google/googlenav/ui/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/ak;->a()Lcom/google/googlenav/ui/bU;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bU;->d()[Lax/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lx/R;-><init>([Lax/e;)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/e;

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0}, Lcom/google/googlenav/ui/view/android/e;-><init>(Lx/z;Lcom/google/googlenav/ui/aY;Lcom/google/googlenav/android/BaseMapsActivity;)V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/e;->c(I)V

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/P;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->H:Lcom/google/googlenav/ui/view/android/P;

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->H:Lcom/google/googlenav/ui/view/android/P;

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/actionbar/a;->a(Lcom/google/googlenav/ui/view/android/a;Lcom/google/googlenav/ui/aT;)V

    return-void
.end method

.method private t()Lcom/google/googlenav/android/AndroidGmmApplication;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/android/AndroidGmmApplication;

    return-object p0
.end method

.method private u()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->t()Z

    move-result v0

    invoke-static {}, Lcom/google/googlenav/login/g;->e()Lcom/google/googlenav/login/g;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/i;

    invoke-direct {v2, p0, v0}, Lcom/google/android/maps/i;-><init>(Lcom/google/android/maps/MapsActivity;Z)V

    invoke-virtual {v1, p0, v2}, Lcom/google/googlenav/login/g;->a(Landroid/app/Activity;Lcom/google/googlenav/login/p;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->e()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->n()Lcom/google/googlenav/ui/android/ar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/ar;->a(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/maps/MapsActivity;->I:Z

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->j(Z)V

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->requestFocus()Z

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->f()V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->r()V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->v()V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->k()V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ab()V

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/maps/MapsActivity;->I:Z

    if-nez v0, :cond_6

    sget-object v0, Lcom/google/googlenav/G;->a:Lcom/google/googlenav/G;

    new-instance v1, Lcom/google/android/maps/n;

    sget-object v2, Lcom/google/googlenav/r;->a:Lcom/google/googlenav/r;

    invoke-direct {v1, p0, v4, v3, v2}, Lcom/google/android/maps/n;-><init>(Lcom/google/android/maps/MapsActivity;ZZLcom/google/googlenav/r;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/aw;->a(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;)V

    iput-boolean v3, p0, Lcom/google/android/maps/MapsActivity;->I:Z

    :cond_5
    :goto_0
    sget-object v0, Lcom/google/googlenav/G;->a:Lcom/google/googlenav/G;

    new-instance v1, Lcom/google/android/maps/p;

    sget-object v2, Lcom/google/googlenav/r;->b:Lcom/google/googlenav/r;

    invoke-direct {v1, p0, v4, v3, v2}, Lcom/google/android/maps/p;-><init>(Lcom/google/android/maps/MapsActivity;ZZLcom/google/googlenav/r;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/aw;->a(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->J:LT/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->J:LT/a;

    invoke-virtual {v0}, LT/a;->h()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->J:LT/a;

    goto :goto_0
.end method

.method private v()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/android/maps/q;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/w;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/android/maps/q;

    sget-object v1, Lcom/google/android/maps/q;->b:Lcom/google/android/maps/q;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/android/maps/q;

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/w;->m()Lcom/google/android/maps/q;

    move-result-object v1

    if-ne v0, v1, :cond_1

    move v0, v7

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/maps/MapsActivity;->G:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->F()J

    move-result-wide v2

    const-wide/32 v4, 0xdbba0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/android/maps/q;

    sget-object v1, Lcom/google/android/maps/q;->b:Lcom/google/android/maps/q;

    if-ne v0, v1, :cond_5

    const/16 v0, 0x57

    const-string v1, "o"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Lcom/google/googlenav/ui/bu;->a(ZZ)V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aF()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    new-instance v1, Lh/fc;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lh/fc;-><init>(I)V

    invoke-virtual {v0, v1}, Lh/l;->a(Lh/fc;)V

    :cond_4
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/googlenav/ui/aT;->a(I)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v1

    invoke-virtual {v1}, Lh/eo;->ac()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->I()Lh/fa;

    move-result-object v0

    invoke-virtual {v0}, Lh/fa;->v()V

    goto :goto_1
.end method

.method private w()Lcom/google/googlenav/ui/aT;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    return-object v0
.end method

.method private x()Lf/Y;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->h()Lf/Y;

    move-result-object v0

    return-object v0
.end method

.method private y()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ae()Lcom/google/googlenav/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/g;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v1

    invoke-virtual {v1, p0, v2}, Lcom/google/googlenav/android/w;->a(Lcom/google/android/maps/MapsActivity;Z)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aT;->q(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/android/ar;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->n()Lcom/google/googlenav/ui/android/ar;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/googlenav/friend/android/w;->c()Lcom/google/googlenav/friend/android/w;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/googlenav/friend/android/w;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "contacts_accessor_formatted_address"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method public a(Lcom/google/googlenav/c;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/c;I)V

    return-void
.end method

.method public a(Lcom/google/googlenav/c;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/bJ;->a()Lcom/google/googlenav/bJ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/bJ;->a(Lcom/google/googlenav/c;Z)V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/c;ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/h;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->as()Lcom/google/googlenav/u;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/h;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v1

    move-object v2, p1

    move v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Lcom/google/googlenav/ui/aT;Lcom/google/googlenav/h;ZZLjava/lang/String;Lh/ae;)V

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/ui/aT;)V
    .locals 3

    sget-object v0, Lcom/google/googlenav/labs/android/a;->a:Lcom/google/googlenav/labs/android/a;

    invoke-virtual {v0}, Lcom/google/googlenav/labs/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->c()Lcom/google/googlenav/ui/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ac;->a()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0f01e2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bubble not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030014

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    const v0, 0x7f0f0248

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/googlenav/ui/view/android/ar;

    iget-object v2, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/ui/view/android/ar;-><init>(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/android/BaseAndroidView;)V

    invoke-static {v1}, Lx/h;->a(Lx/h;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aT;->aI()Lcom/google/googlenav/ui/aP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aP;->a()V

    return-void
.end method

.method public a(Lf/Y;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->c:Lcom/google/googlenav/android/W;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->c:Lcom/google/googlenav/android/W;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/android/W;->a(Lf/Y;)V

    :cond_0
    return-void
.end method

.method public a(Li/aE;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->g(Z)V

    return-void
.end method

.method public a(Li/aE;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x14b

    invoke-virtual {p1, v0, p2}, Li/aE;->a(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->g(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, LaO/a;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, LaO/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/16 v1, 0x2af

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->g(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, LaO/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/16 v1, 0x2b0

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->g(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lf/h;Lf/l;)V
    .locals 1

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->as()Lcom/google/googlenav/u;

    move-result-object v0

    invoke-virtual {v0, p3, p1}, Lcom/google/googlenav/u;->a(Lf/l;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p1}, Lcom/google/googlenav/ui/aT;->a(Lf/h;Lf/l;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/googlenav/provider/SearchHistoryProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;ZI)V

    return-void
.end method

.method public b()Lcom/google/android/maps/MapsActivity;
    .locals 0

    return-object p0
.end method

.method public b(Li/aE;)V
    .locals 2

    const/16 v0, 0x13c

    invoke-virtual {p1, v0}, Li/aE;->d(I)V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->g(Z)V

    return-void
.end method

.method public b(Li/aE;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x14a

    invoke-virtual {p1, v0, p2}, Li/aE;->a(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->g(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aT;->i(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->D()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aT;->j(Ljava/lang/String;)V

    return-void
.end method

.method public d()Lcom/google/googlenav/android/w;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->t()Lcom/google/googlenav/android/AndroidGmmApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/P;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/android/c;

    invoke-virtual {p0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/V;

    invoke-direct {v1}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/bs;)V

    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->D()Li/C;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Li/C;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/google/googlenav/ui/view/android/P;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->H:Lcom/google/googlenav/ui/view/android/P;

    return-object v0
.end method

.method public g()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0300b6

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->setContentView(I)V

    const v0, 0x7f0f0194

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->M()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->D()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0f0246

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/BaseAndroidView;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/BaseAndroidView;->a(Lcom/google/googlenav/android/w;)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/k;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/k;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;)V

    invoke-static {v0}, Lx/k;->a(Lx/k;)V

    invoke-static {}, LQ/g;->j()LQ/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->E:LQ/g;

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->a(Lcom/google/googlenav/ui/aT;)V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->p()V

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ac()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->s()V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x8

    goto :goto_0

    :cond_2
    const v0, 0x7f0300b7

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->setContentView(I)V

    goto :goto_1

    :cond_3
    const v0, 0x7f0f0245

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    goto :goto_2
.end method

.method public h()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->c:Lcom/google/googlenav/android/W;

    invoke-virtual {v1}, Lcom/google/googlenav/android/W;->a()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/googlenav/d;->a(I)V

    return v1
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->e:Ljava/util/List;

    return-void
.end method

.method public j()Lcom/google/googlenav/ui/android/BaseAndroidView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    return-object v0
.end method

.method public k()Lcom/google/googlenav/ui/android/ao;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    return-object v0
.end method

.method public l()Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->x()Lf/Y;

    move-result-object v1

    invoke-virtual {v1}, Lf/Y;->e()Lf/h;

    move-result-object v2

    const-string v3, "centerLatitude"

    invoke-virtual {v2}, Lf/h;->b()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "centerLongitude"

    invoke-virtual {v2}, Lf/h;->d()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "latitudeSpan"

    invoke-virtual {v1}, Lf/Y;->a()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "longitudeSpan"

    invoke-virtual {v1}, Lf/Y;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "zoomLevel"

    invoke-virtual {v1}, Lf/Y;->f()Lf/l;

    move-result-object v1

    invoke-virtual {v1}, Lf/l;->a()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public m()V
    .locals 6

    const-wide/16 v4, -0x1

    iget-wide v0, p0, Lcom/google/android/maps/MapsActivity;->n:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/maps/MapsActivity;->m:Lac/p;

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/MapsActivity;->n:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->D()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/maps/m;->a:[I

    iget-object v2, p0, Lcom/google/android/maps/MapsActivity;->D:Lcom/google/android/maps/a;

    invoke-virtual {v2}, Lcom/google/android/maps/a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/maps/a;->a:Lcom/google/android/maps/a;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->D:Lcom/google/android/maps/a;

    iput-wide v4, p0, Lcom/google/android/maps/MapsActivity;->n:J

    return-void

    :pswitch_0
    sget-object v1, Lcom/google/android/maps/MapsActivity;->p:LA/p;

    invoke-virtual {v1, v0}, LA/p;->a(I)V

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/google/android/maps/MapsActivity;->r:LA/p;

    invoke-virtual {v1, v0}, LA/p;->a(I)V

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/google/android/maps/MapsActivity;->t:LA/p;

    invoke-virtual {v1, v0}, LA/p;->a(I)V

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/google/android/maps/MapsActivity;->v:LA/p;

    invoke-virtual {v1, v0}, LA/p;->a(I)V

    goto :goto_0

    :pswitch_4
    sget-object v1, Lcom/google/android/maps/MapsActivity;->x:LA/p;

    invoke-virtual {v1, v0}, LA/p;->a(I)V

    goto :goto_0

    :pswitch_5
    sget-object v1, Lcom/google/android/maps/MapsActivity;->z:LA/p;

    invoke-virtual {v1, v0}, LA/p;->a(I)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/maps/m;->a:[I

    iget-object v2, p0, Lcom/google/android/maps/MapsActivity;->D:Lcom/google/android/maps/a;

    invoke-virtual {v2}, Lcom/google/android/maps/a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_6
    sget-object v1, Lcom/google/android/maps/MapsActivity;->o:LA/p;

    invoke-virtual {v1, v0}, LA/p;->a(I)V

    goto :goto_0

    :pswitch_7
    sget-object v1, Lcom/google/android/maps/MapsActivity;->q:LA/p;

    invoke-virtual {v1, v0}, LA/p;->a(I)V

    goto :goto_0

    :pswitch_8
    sget-object v1, Lcom/google/android/maps/MapsActivity;->s:LA/p;

    invoke-virtual {v1, v0}, LA/p;->a(I)V

    goto :goto_0

    :pswitch_9
    sget-object v1, Lcom/google/android/maps/MapsActivity;->u:LA/p;

    invoke-virtual {v1, v0}, LA/p;->a(I)V

    goto :goto_0

    :pswitch_a
    sget-object v1, Lcom/google/android/maps/MapsActivity;->w:LA/p;

    invoke-virtual {v1, v0}, LA/p;->a(I)V

    goto :goto_0

    :pswitch_b
    sget-object v1, Lcom/google/android/maps/MapsActivity;->y:LA/p;

    invoke-virtual {v1, v0}, LA/p;->a(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/android/ad;->a()Lcom/google/googlenav/android/ad;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/android/ad;->a(IILandroid/content/Intent;)V

    invoke-super {p0, p1, p2, p3}, Lcom/google/googlenav/android/BaseMapsActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/googlenav/android/BaseMapsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->d()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/actionbar/a;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x16

    const/4 v3, 0x1

    sget-object v0, Lcom/google/android/maps/MapsActivity;->m:Lac/p;

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/MapsActivity;->n:J

    const-wide/32 v0, 0x600000

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/MapsActivity;->a(J)V

    invoke-static {}, Lcom/google/googlenav/android/c;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/maps/a;->d:Lcom/google/android/maps/a;

    :goto_0
    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->D:Lcom/google/android/maps/a;

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/android/maps/q;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/maps/q;->a:Lcom/google/android/maps/q;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/android/maps/q;

    :cond_0
    iput-boolean v3, p0, Lcom/google/android/maps/MapsActivity;->G:Z

    invoke-super {p0, p1}, Lcom/google/googlenav/android/BaseMapsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/c;->a(Landroid/app/Application;)Lcom/google/googlenav/android/c;

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/google/googlenav/android/w;->a(Lcom/google/android/maps/MapsActivity;Z)V

    invoke-static {}, Lcom/google/googlenav/gesture/A;->c()Lcom/google/googlenav/gesture/A;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/gesture/A;->a(Landroid/content/pm/PackageManager;)V

    new-instance v0, Lcom/google/android/maps/e;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/e;-><init>(Lcom/google/android/maps/MapsActivity;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/googlenav/android/w;->a(Ljava/util/Locale;Lcom/google/googlenav/android/N;Z)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->o()V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/ad;->a(Landroid/content/Context;)V

    new-instance v0, LA/p;

    const-string v1, "menu open"

    const-string v2, "mo"

    invoke-direct {v0, v1, v2, v4}, LA/p;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->A:LA/p;

    new-instance v0, LA/p;

    const-string v1, "maps onPause"

    const-string v2, "ap"

    invoke-direct {v0, v1, v2, v4}, LA/p;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->B:LA/p;

    new-instance v0, LA/p;

    const-string v1, "maps onPause vm"

    const-string v2, "ap_vm"

    invoke-direct {v0, v1, v2, v4}, LA/p;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->C:LA/p;

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->p()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->q()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    sget-object v0, Lcom/google/android/maps/a;->c:Lcom/google/android/maps/a;

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/maps/MapsActivity;->a(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/maps/MapsActivity;->a(Landroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->K()V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->l()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->H:Lcom/google/googlenav/ui/view/android/P;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->H:Lcom/google/googlenav/ui/view/android/P;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/P;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->H:Lcom/google/googlenav/ui/view/android/P;

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->b()V

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->j()V

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/maps/MapsActivity;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/MapsActivity;->h:Z

    :cond_3
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/google/googlenav/android/BaseMapsActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->k()V

    invoke-static {}, Lac/i;->a()V

    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->g()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/android/BaseMapsActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    sget-object v1, Lcom/google/android/maps/MapsActivity;->A:LA/p;

    invoke-virtual {v1}, LA/p;->b()V

    invoke-direct {p0, p2}, Lcom/google/android/maps/MapsActivity;->b(Landroid/view/Menu;)V

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->c:Lcom/google/googlenav/android/W;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/google/googlenav/android/w;->a(Lcom/google/android/maps/MapsActivity;Z)V

    invoke-virtual {p0, p1}, Lcom/google/android/maps/MapsActivity;->setIntent(Landroid/content/Intent;)V

    iput-boolean v4, p0, Lcom/google/android/maps/MapsActivity;->G:Z

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->y()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/google/googlenav/android/BaseMapsActivity;->onNewIntent(Landroid/content/Intent;)V

    sget-object v0, Lcom/google/googlenav/G;->a:Lcom/google/googlenav/G;

    new-instance v1, Lcom/google/android/maps/l;

    invoke-direct {v1, p0, v4, v3}, Lcom/google/android/maps/l;-><init>(Lcom/google/android/maps/MapsActivity;ZZ)V

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/aw;->a(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/w;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/d;->U()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/w;->I:Lax/e;

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/android/w;->n()Lcom/google/googlenav/ui/android/ar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/aT;->a(Lax/e;Ljava/lang/Object;)V

    move v0, v6

    :goto_0
    return v0

    :cond_0
    if-ltz v0, :cond_1

    if-lt v0, v1, :cond_2

    :cond_1
    const-string v2, "onOptionsItemSelected"

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") command count: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v6

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/w;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/e;

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/android/w;->n()Lcom/google/googlenav/ui/android/ar;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/aT;->a(Lax/e;Ljava/lang/Object;)V

    move v0, v6

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/googlenav/android/BaseMapsActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/MapsActivity;->b(Landroid/view/Menu;)V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->h()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/android/BaseMapsActivity;->onPanelClosed(ILandroid/view/Menu;)V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->r(Z)V

    return-void
.end method

.method public onPause()V
    .locals 4

    invoke-static {}, Lcom/google/googlenav/aw;->c()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->D()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/google/android/maps/MapsActivity;->C:LA/p;

    invoke-virtual {v1}, LA/p;->a()V

    :goto_0
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/maps/MapsActivity;->n:J

    sget-object v1, Lcom/google/android/maps/a;->g:Lcom/google/android/maps/a;

    iput-object v1, p0, Lcom/google/android/maps/MapsActivity;->D:Lcom/google/android/maps/a;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/MapsActivity;->G:Z

    invoke-super {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->onPause()V

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->K:Lcom/google/googlenav/android/T;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->K:Lcom/google/googlenav/android/T;

    invoke-virtual {v1}, Lcom/google/googlenav/android/T;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/w;->p()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/w;->q()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/maps/MapsActivity;->C:LA/p;

    invoke-virtual {v0}, LA/p;->c()V

    :goto_1
    return-void

    :cond_2
    sget-object v1, Lcom/google/android/maps/MapsActivity;->B:LA/p;

    invoke-virtual {v1}, LA/p;->a()V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/maps/MapsActivity;->B:LA/p;

    invoke-virtual {v0}, LA/p;->c()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aT;->n(Z)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/googlenav/android/OnPauseService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "is_finishing"

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->isFinishing()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/google/android/maps/MapsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->S()V

    :cond_5
    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/BaseAndroidView;->e()V

    :cond_6
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->q()V

    sget-object v1, Lr/e;->a:Lr/e;

    invoke-virtual {v1}, Lr/e;->f()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lr/e;->a:Lr/e;

    invoke-virtual {v1}, Lr/e;->h()V

    :cond_7
    new-instance v1, Lcom/google/android/maps/o;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/maps/o;-><init>(Lcom/google/android/maps/MapsActivity;LT/c;)V

    iput-object v1, p0, Lcom/google/android/maps/MapsActivity;->J:LT/a;

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->J:LT/a;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, LT/a;->a(J)V

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->J:LT/a;

    invoke-virtual {v1}, LT/a;->b()V

    if-eqz v0, :cond_8

    sget-object v0, Lcom/google/android/maps/MapsActivity;->C:LA/p;

    invoke-virtual {v0}, LA/p;->b()V

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/google/android/maps/MapsActivity;->B:LA/p;

    invoke-virtual {v0}, LA/p;->b()V

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/4 v4, 0x1

    sget-object v0, Lcom/google/android/maps/MapsActivity;->A:LA/p;

    invoke-virtual {v0}, LA/p;->a()V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/aT;->r(Z)V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->k()Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/maps/MapsActivity;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/maps/MapsActivity;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/maps/MapsActivity;->a(Landroid/view/Menu;)V

    move v0, v4

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/e;

    iget-object v3, p0, Lcom/google/android/maps/MapsActivity;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/maps/MapsActivity;->a(Landroid/view/Menu;)V

    move v0, v4

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/google/googlenav/ui/w;->R:Lax/e;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/google/android/maps/MapsActivity;->a(Landroid/view/Menu;)V

    move v0, v4

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v3

    invoke-virtual {v3}, Li/aE;->O()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    move v0, v4

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 2

    sget-object v0, Lcom/google/android/maps/MapsActivity;->m:Lac/p;

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/MapsActivity;->n:J

    sget-object v0, Lcom/google/android/maps/a;->e:Lcom/google/android/maps/a;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->D:Lcom/google/android/maps/a;

    invoke-super {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/maps/MapsActivity;->n:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/maps/MapsActivity;->m:Lac/p;

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/MapsActivity;->n:J

    :cond_0
    invoke-static {}, Lcom/google/googlenav/aw;->b()V

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/android/maps/q;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/maps/q;->a:Lcom/google/android/maps/q;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/android/maps/q;

    :cond_1
    invoke-super {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->onResume()V

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->K:Lcom/google/googlenav/android/T;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->K:Lcom/google/googlenav/android/T;

    invoke-virtual {v0}, Lcom/google/googlenav/android/T;->b()V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/maps/j;

    invoke-direct {v0, p0}, Lcom/google/android/maps/j;-><init>(Lcom/google/android/maps/MapsActivity;)V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/googlenav/android/w;->a(Ljava/util/Locale;Lcom/google/googlenav/android/N;Z)V

    :cond_3
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->d()V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->p()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->q()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->u()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/maps/MapsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/googlenav/android/Z;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->f:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->j:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/MapsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->a()Lcom/google/googlenav/prefetch/android/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, LH/f;->a()LH/f;

    move-result-object v1

    invoke-virtual {v1, v0}, LH/f;->a(LH/o;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->f:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->i:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/MapsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->onStop()V

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->a()Lcom/google/googlenav/prefetch/android/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, LH/f;->a()LH/f;

    move-result-object v1

    invoke-virtual {v1, v0}, LH/f;->b(LH/o;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/MapsActivity;->I:Z

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->J:LT/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->J:LT/a;

    invoke-virtual {v0}, LT/a;->h()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->J:LT/a;

    :cond_1
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/google/googlenav/android/BaseMapsActivity;->onWindowFocusChanged(Z)V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    if-nez p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->r(Z)V

    if-eqz p1, :cond_0

    invoke-static {v2}, Lcom/google/android/maps/MapsActivity;->a(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;)Z
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v6

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v3, :cond_0

    :goto_1
    move-object v3, v0

    goto :goto_0

    :cond_0
    iget v4, v3, Landroid/content/pm/ResolveInfo;->priority:I

    iget v0, v0, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v4, v0, :cond_2

    move-object v0, v6

    :goto_2
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/google/android/maps/MapsActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    move-object v0, v3

    goto :goto_1

    :cond_3
    move-object v0, v3

    goto :goto_2
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 3

    invoke-static {}, Lcom/google/googlenav/suggest/android/SuggestProvider;->a()V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->l()Landroid/os/Bundle;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string v1, "searchIncludeInHistory"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/actionbar/a;->a(Landroid/view/View;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2, v0, p4}, Lcom/google/googlenav/android/BaseMapsActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0
.end method
