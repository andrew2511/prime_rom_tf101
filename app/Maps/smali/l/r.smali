.class Ll/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field final e:Ljava/lang/Runnable;

.field final f:Ljava/lang/Runnable;

.field final g:Ljava/lang/Runnable;

.field final h:Ljava/lang/Runnable;

.field private final j:Ljava/util/LinkedList;

.field private final k:Ljava/util/HashSet;

.field private final l:LK/e;

.field private final m:Z

.field private final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final o:Z

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ll/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ll/r;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Ll/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll/f;-><init>(Ll/F;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ll/r;-><init>(Ll/q;Z)V

    return-void
.end method

.method constructor <init>(Ll/q;Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lj/X;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Ll/r;->j:Ljava/util/LinkedList;

    invoke-static {}, Lj/aH;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Ll/r;->k:Ljava/util/HashSet;

    iput v1, p0, Ll/r;->a:I

    iput v1, p0, Ll/r;->b:I

    iput v1, p0, Ll/r;->c:I

    iput v1, p0, Ll/r;->d:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Ll/r;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v1, p0, Ll/r;->o:Z

    new-instance v0, Ll/F;

    invoke-direct {v0, p0}, Ll/F;-><init>(Ll/r;)V

    iput-object v0, p0, Ll/r;->e:Ljava/lang/Runnable;

    new-instance v0, Ll/H;

    invoke-direct {v0, p0}, Ll/H;-><init>(Ll/r;)V

    iput-object v0, p0, Ll/r;->f:Ljava/lang/Runnable;

    new-instance v0, Ll/G;

    invoke-direct {v0, p0}, Ll/G;-><init>(Ll/r;)V

    iput-object v0, p0, Ll/r;->g:Ljava/lang/Runnable;

    new-instance v0, Ll/E;

    invoke-direct {v0, p0}, Ll/E;-><init>(Ll/r;)V

    iput-object v0, p0, Ll/r;->h:Ljava/lang/Runnable;

    new-instance v0, Ll/D;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ll/D;-><init>(Ll/r;Ll/F;)V

    invoke-interface {p1, v0}, Ll/q;->a(Landroid/os/Handler$Callback;)LK/e;

    move-result-object v0

    iput-object v0, p0, Ll/r;->l:LK/e;

    iput-boolean p2, p0, Ll/r;->m:Z

    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x2

    invoke-direct {p0}, Ll/r;->q()V

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v1, "gps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Ll/r;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-lez v1, :cond_1

    iget v1, p0, Ll/r;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ll/r;->p:I

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Ll/r;->p:I

    if-lez v1, :cond_3

    invoke-static {}, Lac/d;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ll/r;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Num transit gps updates dropped: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ll/r;->p:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Ll/r;->p:I

    :cond_3
    iget v1, p0, Ll/r;->a:I

    if-eq v1, v5, :cond_4

    iput v5, p0, Ll/r;->a:I

    const-string v1, "gps"

    iget v3, p0, Ll/r;->a:I

    invoke-direct {p0, v1, v3, v6}, Ll/r;->a(Ljava/lang/String;ILandroid/os/Bundle;)V

    :cond_4
    :goto_0
    iget-object v1, p0, Ll/r;->j:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll/u;

    invoke-virtual {p0}, Ll/u;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Ll/u;->b()Landroid/location/LocationListener;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_1

    :cond_6
    const-string v1, "base_location_provider"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v0, p1

    check-cast v0, Ll/g;

    move-object v1, v0

    invoke-virtual {v1}, Ll/g;->a()Ll/s;

    move-result-object v1

    sget-object v3, Ll/s;->a:Ll/s;

    if-ne v1, v3, :cond_7

    invoke-direct {p0}, Ll/r;->h()V

    invoke-direct {p0}, Ll/r;->i()V

    goto :goto_0

    :cond_7
    sget-object v3, Ll/s;->b:Ll/s;

    if-ne v1, v3, :cond_4

    iget v1, p0, Ll/r;->b:I

    if-eq v1, v5, :cond_8

    iput v5, p0, Ll/r;->b:I

    const-string v1, "network"

    iget v3, p0, Ll/r;->b:I

    invoke-direct {p0, v1, v3, v6}, Ll/r;->a(Ljava/lang/String;ILandroid/os/Bundle;)V

    :cond_8
    invoke-direct {p0}, Ll/r;->j()V

    invoke-direct {p0}, Ll/r;->k()V

    goto :goto_0

    :cond_9
    const-string v1, "wifi_provider"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, p0, Ll/r;->c:I

    if-eq v1, v5, :cond_a

    iput v5, p0, Ll/r;->c:I

    const-string v1, "wifi_provider"

    iget v3, p0, Ll/r;->c:I

    invoke-direct {p0, v1, v3, v6}, Ll/r;->a(Ljava/lang/String;ILandroid/os/Bundle;)V

    :cond_a
    invoke-direct {p0}, Ll/r;->l()V

    invoke-direct {p0}, Ll/r;->m()V

    goto :goto_0

    :cond_b
    const-string v1, "cell_provider"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Ll/r;->d:I

    if-eq v1, v5, :cond_c

    iput v5, p0, Ll/r;->d:I

    const-string v1, "cell_provider"

    iget v3, p0, Ll/r;->d:I

    invoke-direct {p0, v1, v3, v6}, Ll/r;->a(Ljava/lang/String;ILandroid/os/Bundle;)V

    :cond_c
    invoke-direct {p0}, Ll/r;->n()V

    invoke-direct {p0}, Ll/r;->o()V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ll/r;->q()V

    iget-object v0, p0, Ll/r;->k:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationListener;

    invoke-interface {p0, p1}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ll/r;->q()V

    iget-object v0, p0, Ll/r;->k:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationListener;

    invoke-interface {p0, p1, p2, p3}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Ll/r;)V
    .locals 0

    invoke-direct {p0}, Ll/r;->g()V

    return-void
.end method

.method static synthetic a(Ll/r;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Ll/r;->a(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Ll/r;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ll/r;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ll/r;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ll/r;->a(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Ll/r;Ll/u;)V
    .locals 0

    invoke-direct {p0, p1}, Ll/r;->a(Ll/u;)V

    return-void
.end method

.method private a(Ll/u;)V
    .locals 2

    invoke-direct {p0}, Ll/r;->q()V

    iget-object v0, p0, Ll/r;->j:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Ll/r;->j:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ll/r;->k:Ljava/util/HashSet;

    invoke-virtual {p1}, Ll/u;->b()Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ll/r;->q()V

    iget-object v0, p0, Ll/r;->k:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationListener;

    invoke-interface {p0, p1}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Ll/r;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ll/r;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Ll/r;Ll/u;)V
    .locals 0

    invoke-direct {p0, p1}, Ll/r;->b(Ll/u;)V

    return-void
.end method

.method private b(Ll/u;)V
    .locals 3

    invoke-direct {p0}, Ll/r;->q()V

    iget-object v0, p0, Ll/r;->j:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Ll/r;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/u;

    invoke-virtual {v0}, Ll/u;->b()Landroid/location/LocationListener;

    move-result-object v0

    invoke-virtual {p1}, Ll/u;->b()Landroid/location/LocationListener;

    move-result-object v2

    if-ne v0, v2, :cond_0

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ll/r;->k:Ljava/util/HashSet;

    invoke-virtual {p1}, Ll/u;->b()Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static e()J
    .locals 2

    invoke-static {}, LK/m;->a()LK/l;

    move-result-object v0

    iget v0, v0, LK/l;->o:I

    int-to-long v0, v0

    return-wide v0
.end method

.method static f()J
    .locals 2

    invoke-static {}, LK/m;->a()LK/l;

    move-result-object v0

    iget v0, v0, LK/l;->p:I

    int-to-long v0, v0

    return-wide v0
.end method

.method private g()V
    .locals 1

    invoke-direct {p0}, Ll/r;->q()V

    iget-object v0, p0, Ll/r;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Ll/r;->k:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Ll/r;->l:LK/e;

    invoke-interface {v0}, LK/e;->a()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Ll/r;->l:LK/e;

    iget-object v1, p0, Ll/r;->e:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, LK/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Ll/r;->l:LK/e;

    iget-object v1, p0, Ll/r;->e:Ljava/lang/Runnable;

    invoke-static {}, Ll/r;->e()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, LK/e;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Ll/r;->l:LK/e;

    iget-object v1, p0, Ll/r;->f:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, LK/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private k()V
    .locals 4

    iget-object v0, p0, Ll/r;->l:LK/e;

    iget-object v1, p0, Ll/r;->f:Ljava/lang/Runnable;

    invoke-static {}, Ll/r;->f()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, LK/e;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Ll/r;->l:LK/e;

    iget-object v1, p0, Ll/r;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, LK/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private m()V
    .locals 4

    iget-object v0, p0, Ll/r;->l:LK/e;

    iget-object v1, p0, Ll/r;->g:Ljava/lang/Runnable;

    invoke-virtual {p0}, Ll/r;->c()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, LK/e;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Ll/r;->l:LK/e;

    iget-object v1, p0, Ll/r;->h:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, LK/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private o()V
    .locals 4

    iget-object v0, p0, Ll/r;->l:LK/e;

    iget-object v1, p0, Ll/r;->h:Ljava/lang/Runnable;

    invoke-virtual {p0}, Ll/r;->d()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, LK/e;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static p()J
    .locals 2

    invoke-static {}, LK/m;->a()LK/l;

    move-result-object v0

    iget v0, v0, LK/l;->n:I

    int-to-long v0, v0

    return-wide v0
.end method

.method private q()V
    .locals 3

    iget-boolean v0, p0, Ll/r;->m:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ll/r;->r()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation must be called on the location thread. Called on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private r()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ll/r;->l:LK/e;

    invoke-interface {v1}, LK/e;->a()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-direct {p0}, Ll/r;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ll/r;->g()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ll/r;->l:LK/e;

    iget-object v1, p0, Ll/r;->l:LK/e;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, LK/e;->a(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, LK/e;->a(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/location/LocationListener;)V
    .locals 4

    new-instance v0, Ll/u;

    invoke-direct {v0, p1, p2}, Ll/u;-><init>(Ljava/lang/String;Landroid/location/LocationListener;)V

    iget-object v1, p0, Ll/r;->l:LK/e;

    iget-object v2, p0, Ll/r;->l:LK/e;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0}, LK/e;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-interface {v1, v0}, LK/e;->a(Landroid/os/Message;)Z

    return-void
.end method

.method public b()LK/e;
    .locals 1

    iget-object v0, p0, Ll/r;->l:LK/e;

    return-object v0
.end method

.method c()J
    .locals 4

    invoke-static {}, Ll/n;->a()J

    move-result-wide v0

    invoke-static {}, Ll/r;->p()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method d()J
    .locals 4

    invoke-static {}, Ll/y;->a()J

    move-result-wide v0

    invoke-static {}, Ll/r;->p()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5

    const-wide v3, 0x3eb0c6f7a0b5ed8dL

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ll/r;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_0
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p1}, LK/n;->a(Landroid/location/Location;)Lf/h;

    move-result-object v0

    invoke-static {v0}, LH/e;->e(Lf/h;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, LH/e;->i()LH/e;

    move-result-object v1

    invoke-virtual {v1, v0}, LH/e;->d(Lf/h;)Lf/h;

    move-result-object v0

    invoke-virtual {v0}, Lf/h;->b()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v0}, Lf/h;->d()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    :cond_2
    invoke-direct {p0}, Ll/r;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Ll/r;->a(Landroid/location/Location;)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Ll/r;->l:LK/e;

    iget-object v1, p0, Ll/r;->l:LK/e;

    const/4 v2, 0x3

    invoke-interface {v1, v2, p1}, LK/e;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, LK/e;->a(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ll/r;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Ll/r;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ll/r;->l:LK/e;

    iget-object v1, p0, Ll/r;->l:LK/e;

    const/4 v2, 0x4

    invoke-interface {v1, v2, p1}, LK/e;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, LK/e;->a(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ll/r;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Ll/r;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ll/r;->l:LK/e;

    iget-object v1, p0, Ll/r;->l:LK/e;

    const/4 v2, 0x5

    invoke-interface {v1, v2, p1}, LK/e;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, LK/e;->a(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4

    invoke-direct {p0}, Ll/r;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Ll/r;->a(Ljava/lang/String;ILandroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ll/r;->l:LK/e;

    iget-object v1, p0, Ll/r;->l:LK/e;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {v1, v2, p2, v3, p1}, LK/e;->a(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, LK/e;->a(Landroid/os/Message;)Z

    goto :goto_0
.end method
