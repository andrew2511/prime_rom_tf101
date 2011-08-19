.class Lcom/google/android/location/internal/server/e;
.super Landroid/os/Handler;

# interfaces
.implements Lcom/google/android/location/internal/c;
.implements Lcom/google/android/location/os/real/m;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Landroid/content/Context;

.field private final g:Landroid/location/LocationManager;

.field private h:Landroid/database/Cursor;

.field private i:Landroid/content/ContentQueryMap;

.field private j:Lcom/google/android/location/internal/server/a;

.field private k:Z

.field private l:Z

.field private final m:Ljava/lang/Object;

.field private n:Lw/v;

.field private final o:Ljava/util/LinkedHashMap;

.field private p:Z

.field private q:Lcom/google/android/location/os/real/l;

.field private r:Lal/b;

.field private final s:Lcom/google/android/location/internal/server/c;

.field private t:Z

.field private u:Lcom/google/android/location/os/real/c;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v0, "networkLocationType"

    iput-object v0, p0, Lcom/google/android/location/internal/server/e;->a:Ljava/lang/String;

    const-string v0, "levelId"

    iput-object v0, p0, Lcom/google/android/location/internal/server/e;->b:Ljava/lang/String;

    const-string v0, "levelNumberE3"

    iput-object v0, p0, Lcom/google/android/location/internal/server/e;->c:Ljava/lang/String;

    const-string v0, "cell"

    iput-object v0, p0, Lcom/google/android/location/internal/server/e;->d:Ljava/lang/String;

    const-string v0, "wifi"

    iput-object v0, p0, Lcom/google/android/location/internal/server/e;->e:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/location/internal/server/e;->k:Z

    iput-boolean v2, p0, Lcom/google/android/location/internal/server/e;->l:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/internal/server/e;->m:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/location/internal/server/f;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/internal/server/f;-><init>(Lcom/google/android/location/internal/server/e;I)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/e;->o:Ljava/util/LinkedHashMap;

    iput-boolean v2, p0, Lcom/google/android/location/internal/server/e;->p:Z

    new-instance v0, Lcom/google/android/location/internal/server/c;

    invoke-direct {v0}, Lcom/google/android/location/internal/server/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/internal/server/e;->s:Lcom/google/android/location/internal/server/c;

    iput-boolean v2, p0, Lcom/google/android/location/internal/server/e;->t:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/internal/server/e;->u:Lcom/google/android/location/os/real/c;

    iput-object p1, p0, Lcom/google/android/location/internal/server/e;->f:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/android/location/internal/server/e;->g:Landroid/location/LocationManager;

    return-void
.end method

.method private a(LW/h;)Landroid/location/Location;
    .locals 6

    const-wide v4, 0x416312d000000000L

    new-instance v0, Landroid/location/Location;

    const-string v1, "network"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, LW/h;->c:LW/o;

    iget v2, v1, LW/o;->a:I

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    iget v2, v1, LW/o;->b:I

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    iget v1, v1, LW/o;->c:I

    div-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    iget-wide v1, p1, LW/h;->e:J

    invoke-static {}, Lcom/google/android/location/os/real/l;->m()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    return-object v0
.end method

.method private a(J)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->u:Lcom/google/android/location/os/real/c;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/location/os/real/l;->k()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/location/internal/server/e;->u:Lcom/google/android/location/os/real/c;

    invoke-virtual {v2}, Lcom/google/android/location/os/real/c;->f()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->g:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/location/os/real/l;->l()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gtz v1, :cond_1

    new-instance v1, Lcom/google/android/location/os/real/c;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/location/os/real/l;->m()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/location/os/real/c;-><init>(Landroid/location/Location;J)V

    iput-object v1, p0, Lcom/google/android/location/internal/server/e;->u:Lcom/google/android/location/os/real/c;

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->o:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/location/internal/server/e;->u:Lcom/google/android/location/os/real/c;

    invoke-virtual {v2}, Lcom/google/android/location/os/real/c;->d()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iget-object v2, p0, Lcom/google/android/location/internal/server/e;->u:Lcom/google/android/location/os/real/c;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/internal/server/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/location/internal/server/e;->f()V

    return-void
.end method

.method private b(LW/b;)Landroid/location/Location;
    .locals 2

    iget-object v0, p1, LW/b;->a:LW/h;

    invoke-direct {p0, v0}, Lcom/google/android/location/internal/server/e;->a(LW/h;)Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/location/internal/server/e;->c(LW/b;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private c(LW/b;)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p1, LW/b;->a:LW/h;

    iget-object v2, p1, LW/b;->d:LW/i;

    if-ne v1, v2, :cond_1

    const-string v1, "networkLocationSource"

    const-string v2, "server"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "networkLocationSource"

    const-string v3, "cached"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, LW/b;->c:LW/l;

    if-ne v1, v2, :cond_2

    const-string v1, "networkLocationType"

    const-string v2, "cell"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p1, LW/b;->b:LW/d;

    if-ne v1, v2, :cond_0

    const-string v1, "networkLocationType"

    const-string v2, "wifi"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, LW/b;->b:LW/d;

    iget-object v1, v1, LW/d;->c:LW/o;

    if-eqz v1, :cond_3

    iget-object v1, p1, LW/b;->b:LW/d;

    iget-object v1, v1, LW/d;->c:LW/o;

    iget-object v1, v1, LW/o;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "levelId"

    iget-object v2, p1, LW/b;->b:LW/d;

    iget-object v2, v2, LW/d;->c:LW/o;

    iget-object v2, v2, LW/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p1, LW/b;->b:LW/d;

    iget-object v1, v1, LW/d;->c:LW/o;

    if-eqz v1, :cond_0

    iget-object v1, p1, LW/b;->b:LW/d;

    iget-object v1, v1, LW/d;->c:LW/o;

    iget v1, v1, LW/o;->f:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    const-string v1, "levelNumberE3"

    iget-object v2, p1, LW/b;->b:LW/d;

    iget-object v2, v2, LW/d;->c:LW/o;

    iget v2, v2, LW/o;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private final e()V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/google/android/location/internal/g;->a:Lcom/google/android/location/internal/g;

    iget-object v1, p0, Lcom/google/android/location/internal/server/e;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/location/internal/g;Landroid/content/Context;)Lcom/google/android/location/internal/d;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/internal/g;->b:Lcom/google/android/location/internal/g;

    iget-object v2, p0, Lcom/google/android/location/internal/server/e;->f:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/location/internal/g;Landroid/content/Context;)Lcom/google/android/location/internal/d;

    move-result-object v1

    iget v2, v0, Lcom/google/android/location/internal/d;->d:I

    iget v3, v1, Lcom/google/android/location/internal/d;->d:I

    if-lt v2, v3, :cond_1

    move-object v2, v0

    :goto_0
    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lcom/google/android/location/internal/server/e;->f:Landroid/content/Context;

    iget-object v1, v1, Lcom/google/android/location/internal/d;->e:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, v0, Lcom/google/android/location/internal/d;->a:Lcom/google/android/location/internal/g;

    sget-object v1, Lcom/google/android/location/internal/g;->c:Lcom/google/android/location/internal/g;

    if-ne v0, v1, :cond_2

    iput-boolean v4, p0, Lcom/google/android/location/internal/server/e;->t:Z

    :goto_1
    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->q:Lcom/google/android/location/os/real/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->q:Lcom/google/android/location/os/real/l;

    iget-boolean v1, p0, Lcom/google/android/location/internal/server/e;->t:Z

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/real/l;->b(Z)V

    :cond_0
    return-void

    :cond_1
    move-object v2, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/internal/server/e;->t:Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->f:Landroid/content/Context;

    iget-object v1, v1, Lcom/google/android/location/internal/d;->e:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    iput-boolean v4, p0, Lcom/google/android/location/internal/server/e;->t:Z

    goto :goto_1
.end method

.method private f()V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/internal/server/e;->h:Landroid/database/Cursor;

    if-eqz v1, :cond_5

    const-string v1, "network_location_opt_in"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_5

    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/google/android/location/internal/server/e;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/location/internal/server/e;->k:Z

    if-eq v2, v0, :cond_0

    iput-boolean v0, p0, Lcom/google/android/location/internal/server/e;->k:Z

    iget-object v2, p0, Lcom/google/android/location/internal/server/e;->s:Lcom/google/android/location/internal/server/c;

    invoke-virtual {v2, v0}, Lcom/google/android/location/internal/server/c;->a(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/location/internal/server/e;->p:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/location/internal/server/e;->k:Z

    if-eqz v0, :cond_6

    move v0, v3

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/google/android/location/internal/server/e;->q:Lcom/google/android/location/os/real/l;

    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/os/real/l;->a(Landroid/content/Context;)Lal/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/internal/server/e;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/location/internal/server/e;->p:Z

    if-eqz v2, :cond_2

    iput-object v0, p0, Lcom/google/android/location/internal/server/e;->r:Lal/b;

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->r:Lal/b;

    iget-object v0, v0, Lal/b;->b:LW/h;

    iget-object v0, v0, LW/h;->d:LW/n;

    sget-object v2, LW/n;->a:LW/n;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->r:Lal/b;

    iget-object v0, v0, Lal/b;->b:LW/h;

    invoke-direct {p0, v0}, Lcom/google/android/location/internal/server/e;->a(LW/h;)Landroid/location/Location;

    move-result-object v0

    new-instance v2, Lcom/google/android/location/os/real/c;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-static {}, Lcom/google/android/location/os/real/l;->m()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/location/os/real/c;-><init>(Landroid/location/Location;J)V

    iput-object v2, p0, Lcom/google/android/location/internal/server/e;->u:Lcom/google/android/location/os/real/c;

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->o:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/android/location/internal/server/e;->u:Lcom/google/android/location/os/real/c;

    invoke-virtual {v3}, Lcom/google/android/location/os/real/c;->d()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    iget-object v3, p0, Lcom/google/android/location/internal/server/e;->r:Lal/b;

    iget-object v3, v3, Lal/b;->b:LW/h;

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v0, Lcom/google/android/location/os/real/l;

    iget-object v2, p0, Lcom/google/android/location/internal/server/e;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/location/internal/server/e;->n:Lw/v;

    iget-boolean v4, p0, Lcom/google/android/location/internal/server/e;->t:Z

    invoke-direct {v0, v2, v3, p0, v4}, Lcom/google/android/location/os/real/l;-><init>(Landroid/content/Context;Lw/v;Lcom/google/android/location/os/real/m;Z)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/e;->q:Lcom/google/android/location/os/real/l;

    new-instance v0, LL/m;

    iget-object v2, p0, Lcom/google/android/location/internal/server/e;->q:Lcom/google/android/location/os/real/l;

    iget-object v3, p0, Lcom/google/android/location/internal/server/e;->r:Lal/b;

    invoke-direct {v0, v2, v3}, LL/m;-><init>(Lw/l;Lal/b;)V

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->q:Lcom/google/android/location/os/real/l;

    iget-object v2, p0, Lcom/google/android/location/internal/server/e;->s:Lcom/google/android/location/internal/server/c;

    invoke-virtual {v2}, Lcom/google/android/location/internal/server/c;->a()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/os/real/l;->a(IZ)V

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/google/android/location/internal/server/e;->k:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/os/real/l;->b(Landroid/content/Context;)V

    :cond_4
    return-void

    :cond_5
    move v0, v4

    goto/16 :goto_0

    :cond_6
    move v0, v4

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_7
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->q:Lcom/google/android/location/os/real/l;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->q:Lcom/google/android/location/os/real/l;

    invoke-virtual {v0}, Lcom/google/android/location/os/real/l;->i()V

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->q:Lcom/google/android/location/os/real/l;

    invoke-virtual {v0}, Lcom/google/android/location/os/real/l;->j()V

    iget-boolean v0, p0, Lcom/google/android/location/internal/server/e;->k:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/location/internal/server/e;->r:Lal/b;

    invoke-static {v0, v1}, Lcom/google/android/location/os/real/l;->a(Landroid/content/Context;Lal/b;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->m:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/google/android/location/internal/server/e;->q:Lcom/google/android/location/os/real/l;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/location/internal/server/e;->r:Lal/b;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/location/internal/server/e;->u:Lcom/google/android/location/os/real/c;

    monitor-exit v0

    goto :goto_2

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method


# virtual methods
.method public a(Landroid/location/Location;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/internal/server/e;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->m:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(LW/b;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/google/android/location/internal/server/e;->b(LW/b;)Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/internal/server/e;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/google/android/location/os/real/c;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-static {}, Lcom/google/android/location/os/real/l;->m()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/location/os/real/c;-><init>(Landroid/location/Location;J)V

    iput-object v2, p0, Lcom/google/android/location/internal/server/e;->u:Lcom/google/android/location/os/real/c;

    iget-object v2, p0, Lcom/google/android/location/internal/server/e;->o:Ljava/util/LinkedHashMap;

    new-instance v3, Ljava/lang/Long;

    iget-object v4, p0, Lcom/google/android/location/internal/server/e;->u:Lcom/google/android/location/os/real/c;

    invoke-virtual {v4}, Lcom/google/android/location/os/real/c;->d()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v3, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/location/internal/server/e;->s:Lcom/google/android/location/internal/server/c;

    invoke-virtual {v2}, Lcom/google/android/location/internal/server/c;->a()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/location/internal/server/e;->s:Lcom/google/android/location/internal/server/c;

    invoke-virtual {v3, v0}, Lcom/google/android/location/internal/server/c;->a(Landroid/location/Location;)V

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->s:Lcom/google/android/location/internal/server/c;

    invoke-virtual {v0}, Lcom/google/android/location/internal/server/c;->a()I

    move-result v0

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/google/android/location/internal/server/e;->q:Lcom/google/android/location/os/real/l;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/internal/server/e;->q:Lcom/google/android/location/os/real/l;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/google/android/location/os/real/l;->a(IZ)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/location/internal/a;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/internal/server/e;->s:Lcom/google/android/location/internal/server/c;

    invoke-virtual {v1}, Lcom/google/android/location/internal/server/c;->a()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/location/internal/server/e;->s:Lcom/google/android/location/internal/server/c;

    invoke-virtual {v2, p1}, Lcom/google/android/location/internal/server/c;->a(Lcom/google/android/location/internal/a;)V

    iget-object v2, p0, Lcom/google/android/location/internal/server/e;->s:Lcom/google/android/location/internal/server/c;

    invoke-virtual {v2}, Lcom/google/android/location/internal/server/c;->a()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/location/internal/server/e;->q:Lcom/google/android/location/os/real/l;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/internal/server/e;->q:Lcom/google/android/location/os/real/l;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/location/os/real/l;->a(IZ)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcom/google/android/location/internal/a;II)V
    .locals 7

    mul-int/lit16 v0, p3, 0x3e8

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/android/location/internal/server/e;->m:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, -0x1

    if-eq p3, v3, :cond_0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/location/internal/server/e;->a(J)V

    iget-object v3, p0, Lcom/google/android/location/internal/server/e;->u:Lcom/google/android/location/os/real/c;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/google/android/location/os/real/l;->k()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/location/internal/server/e;->u:Lcom/google/android/location/os/real/c;

    invoke-virtual {v5}, Lcom/google/android/location/os/real/c;->f()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v0

    if-gtz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->u:Lcom/google/android/location/os/real/c;

    invoke-virtual {v0}, Lcom/google/android/location/os/real/c;->d()Landroid/location/Location;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/location/internal/a;->a(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->s:Lcom/google/android/location/internal/server/c;

    const/16 v1, 0x14

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/location/internal/server/c;->a(Lcom/google/android/location/internal/a;I)V

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->q:Lcom/google/android/location/os/real/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->q:Lcom/google/android/location/os/real/l;

    iget-object v1, p0, Lcom/google/android/location/internal/server/e;->s:Lcom/google/android/location/internal/server/c;

    invoke-virtual {v1}, Lcom/google/android/location/internal/server/c;->a()I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/location/os/real/l;->a(IZ)V

    :cond_1
    monitor-exit v2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public a(Lw/v;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/location/internal/server/e;->n:Lw/v;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()Lw/A;
    .locals 2

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/internal/server/e;->u:Lcom/google/android/location/os/real/c;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 8

    iget-object v6, p0, Lcom/google/android/location/internal/server/e;->m:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;->a(Lcom/google/android/location/internal/c;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/internal/server/e;->p:Z

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->h:Landroid/database/Cursor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "(name=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "network_location_opt_in"

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/internal/server/e;->h:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->h:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/google/android/location/internal/server/e;->h:Landroid/database/Cursor;

    const-string v2, "name"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/e;->i:Landroid/content/ContentQueryMap;

    new-instance v0, Lcom/google/android/location/internal/server/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/internal/server/a;-><init>(Lcom/google/android/location/internal/server/e;Lcom/google/android/location/internal/server/f;)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/e;->j:Lcom/google/android/location/internal/server/a;

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->i:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/google/android/location/internal/server/e;->j:Lcom/google/android/location/internal/server/a;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/google/android/location/internal/server/e;->e()V

    monitor-exit v6

    return-void

    :cond_1
    const-string v0, "gmmNlpServiceThread"

    const-string v1, "Couldn\'t get a cursor to track opt in; disabling service."

    invoke-static {v0, v1}, Lw/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;->b(Lcom/google/android/location/internal/c;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/location/internal/server/e;->p:Z

    iget-object v1, p0, Lcom/google/android/location/internal/server/e;->h:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/internal/server/e;->i:Landroid/content/ContentQueryMap;

    iget-object v2, p0, Lcom/google/android/location/internal/server/e;->j:Lcom/google/android/location/internal/server/a;

    invoke-virtual {v1, v2}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    iget-object v1, p0, Lcom/google/android/location/internal/server/e;->i:Landroid/content/ContentQueryMap;

    invoke-virtual {v1}, Landroid/content/ContentQueryMap;->close()V

    iget-object v1, p0, Lcom/google/android/location/internal/server/e;->h:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/location/internal/server/e;->j:Lcom/google/android/location/internal/server/a;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/location/internal/server/e;->i:Landroid/content/ContentQueryMap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/location/internal/server/e;->h:Landroid/database/Cursor;

    :cond_0
    iget-object v1, p0, Lcom/google/android/location/internal/server/e;->q:Lcom/google/android/location/os/real/l;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/location/internal/server/e;->q:Lcom/google/android/location/os/real/l;

    invoke-virtual {v1}, Lcom/google/android/location/os/real/l;->i()V

    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/google/android/location/internal/server/e;->e()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/location/internal/server/e;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/internal/server/e;->l:Z

    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/os/real/l;->c(Landroid/content/Context;)V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/location/internal/server/e;->f()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/location/internal/server/e;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/location/internal/server/e;->e()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
