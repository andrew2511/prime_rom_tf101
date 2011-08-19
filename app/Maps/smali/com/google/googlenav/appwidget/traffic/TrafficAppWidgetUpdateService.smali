.class public Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/google/googlenav/appwidget/traffic/h;
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Landroid/location/Criteria;


# instance fields
.field private c:Ljava/lang/Thread;

.field private final d:Ljava/util/concurrent/BlockingQueue;

.field private final e:Ljava/util/Set;

.field private final f:Ljava/util/Set;

.field private final g:Ljava/util/Map;

.field private h:Z

.field private volatile i:Landroid/location/Location;

.field private volatile j:J

.field private k:Landroid/content/Intent;

.field private l:Landroid/content/Intent;

.field private m:Landroid/app/AlarmManager;

.field private n:Lac/p;

.field private o:Landroid/location/LocationManager;

.field private p:Landroid/app/PendingIntent;

.field private q:Lcom/google/googlenav/appwidget/traffic/k;

.field private r:Lcom/google/googlenav/appwidget/traffic/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b:Landroid/location/Criteria;

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b:Landroid/location/Criteria;

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b:Landroid/location/Criteria;

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b:Landroid/location/Criteria;

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b:Landroid/location/Criteria;

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c:Ljava/lang/Thread;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->d:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->h:Z

    iput-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->i:Landroid/location/Location;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->j:J

    return-void
.end method

.method private declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->m:Landroid/app/AlarmManager;

    invoke-static {}, Lz/b;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->n:Lac/p;

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->o:Landroid/location/LocationManager;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->k:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->l:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->k:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-static {}, Lcom/google/googlenav/appwidget/traffic/e;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->p:Landroid/app/PendingIntent;

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/k;

    invoke-direct {v0, p0}, Lcom/google/googlenav/appwidget/traffic/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->q:Lcom/google/googlenav/appwidget/traffic/k;

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/l;

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/appwidget/traffic/l;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->r:Lcom/google/googlenav/appwidget/traffic/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(IJ)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->h(I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->m:Landroid/app/AlarmManager;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->n:Lac/p;

    invoke-interface {v3}, Lac/p;->a()J

    move-result-wide v3

    add-long/2addr v3, p2

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduled update for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b(ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->q:Lcom/google/googlenav/appwidget/traffic/k;

    invoke-virtual {v1, p1, v0}, Lcom/google/googlenav/appwidget/traffic/k;->b(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 6

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->n:Lac/p;

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/e;->c(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/e;->a(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b(I)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/e;->f(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->i:Landroid/location/Location;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(Landroid/location/Location;J)Z

    move-result v3

    const-string v4, "location"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->i:Landroid/location/Location;

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got new location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->i:Landroid/location/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    if-nez v3, :cond_0

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    const-string v1, "Previous location was invalid: updating active widgets."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b(I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    const-string v4, "status"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "status"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v2, :cond_3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    sget-object v4, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    const-string v5, "LocationProvider is alive: updating location timestamp."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setTime(J)V

    goto :goto_1

    :cond_5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_6
    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/e;->d(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/e;->a(Landroid/net/Uri;)I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->r:Lcom/google/googlenav/appwidget/traffic/l;

    invoke-virtual {v3, v2, v0, v1}, Lcom/google/googlenav/appwidget/traffic/l;->a(IJ)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->r:Lcom/google/googlenav/appwidget/traffic/l;

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/googlenav/appwidget/traffic/l;->b(IJ)V

    invoke-direct {p0, v2}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b(I)V

    goto/16 :goto_0

    :cond_7
    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/e;->e(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/e;->a(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->d(I)V

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unknown intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private a(Lcom/google/googlenav/appwidget/traffic/d;Lu/h;Lu/h;)V
    .locals 6

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/f;

    new-instance v3, Lu/g;

    invoke-direct {v3, p2, p3}, Lu/g;-><init>(Lu/h;Lu/h;)V

    iget-object v4, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->r:Lcom/google/googlenav/appwidget/traffic/l;

    iget-object v5, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->n:Lac/p;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/appwidget/traffic/f;-><init>(Lcom/google/googlenav/appwidget/traffic/h;Lcom/google/googlenav/appwidget/traffic/d;Lu/g;Lcom/google/googlenav/appwidget/traffic/l;Lac/p;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending traffic request for widget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/google/googlenav/appwidget/traffic/d;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/google/googlenav/appwidget/traffic/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    iget v0, p1, Lcom/google/googlenav/appwidget/traffic/d;->a:I

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->e(I)Lcom/google/googlenav/appwidget/traffic/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/traffic/j;->a()I

    :cond_0
    return-void
.end method

.method private a(Lcom/google/googlenav/appwidget/traffic/j;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "id"

    iget v2, p1, Lcom/google/googlenav/appwidget/traffic/j;->a:I

    invoke-static {v1, v2, v0}, Lac/g;->a(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    const-string v1, "c"

    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->r:Lcom/google/googlenav/appwidget/traffic/l;

    invoke-virtual {v2}, Lcom/google/googlenav/appwidget/traffic/l;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v1, v2, v0}, Lac/g;->a(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    const-string v1, "lcs"

    iget-wide v2, p1, Lcom/google/googlenav/appwidget/traffic/j;->b:J

    invoke-static {v1, v2, v3, v0}, Lac/g;->a(Ljava/lang/String;JLjava/lang/StringBuffer;)V

    const-string v1, "lce"

    invoke-virtual {p1}, Lcom/google/googlenav/appwidget/traffic/j;->b()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Lac/g;->a(Ljava/lang/String;JLjava/lang/StringBuffer;)V

    const-string v1, "lcd"

    invoke-virtual {p1}, Lcom/google/googlenav/appwidget/traffic/j;->c()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Lac/g;->a(Ljava/lang/String;JLjava/lang/StringBuffer;)V

    const-string v1, "acs"

    iget v2, p1, Lcom/google/googlenav/appwidget/traffic/j;->c:I

    invoke-static {v1, v2, v0}, Lac/g;->a(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    const-string v1, "ace"

    invoke-virtual {p1}, Lcom/google/googlenav/appwidget/traffic/j;->d()I

    move-result v2

    invoke-static {v1, v2, v0}, Lac/g;->a(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    const-string v1, "ts"

    invoke-virtual {p1}, Lcom/google/googlenav/appwidget/traffic/j;->e()I

    move-result v2

    invoke-static {v1, v2, v0}, Lac/g;->a(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x48

    const-string v2, "wlc"

    invoke-static {v1, v2, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private a(Landroid/location/Location;J)Z
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    const-string v1, "No location"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    sub-long v0, p2, v0

    const-wide/32 v2, 0x927c0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    sget-object v2, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Location is too old.  Age (ms): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/google/googlenav/appwidget/traffic/d;J)Z
    .locals 5

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    iget-wide v0, p1, Lcom/google/googlenav/appwidget/traffic/d;->l:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/google/googlenav/appwidget/traffic/d;->l:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/google/googlenav/appwidget/traffic/d;->h:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/google/googlenav/appwidget/traffic/d;->h:J

    sub-long v0, p2, v0

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(ILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->l:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string v1, "errorMsg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    const-string v1, "Waiting for worker thread to stop..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->h:Z

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    const-string v1, "Ignoring interrupt: waiting for worker thread to stop."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method private b(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->e:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    const-string v1, "Interrupted while queuing widget id."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private c()V
    .locals 6

    const-wide/32 v2, 0x1d4c0

    const/high16 v4, 0x4248

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    const-string v1, "Requested location updates."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->o:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->p:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->o:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->p:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    return-void
.end method

.method private c(I)V
    .locals 2

    const-wide/16 v0, 0x7148

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(IJ)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->o:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->p:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    const-string v1, "No longer requesting location updates."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private d(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->h(I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->m:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g(I)V

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelled any scheduled update for app widget id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private e(I)Lcom/google/googlenav/appwidget/traffic/j;
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/appwidget/traffic/j;

    if-nez p0, :cond_0

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find live cycle for widget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private f(I)V
    .locals 5

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added widget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to active set."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/google/googlenav/appwidget/traffic/j;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->n:Lac/p;

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/google/googlenav/appwidget/traffic/j;-><init>(IJI)V

    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private g(I)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed widget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from active set."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->e(I)Lcom/google/googlenav/appwidget/traffic/j;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->d()V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->n:Lac/p;

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/appwidget/traffic/j;->a(JI)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/traffic/j;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private h(I)Landroid/app/PendingIntent;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->k:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/google/googlenav/appwidget/traffic/e;->b(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private i(I)Landroid/app/PendingIntent;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->k:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/google/googlenav/appwidget/traffic/e;->c(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b(I)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized onCreate()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    const-string v1, "Service created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lak/h;

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onCreate() called while a thread is already running."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    const-string v1, "Destroying service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->d()V

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->b()V

    invoke-static {}, Lcom/google/googlenav/android/c;->g()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 20

    sget-object v4, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    const-string v5, "Started worker thread."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->h:Z

    move v4, v0

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->d:Ljava/util/concurrent/BlockingQueue;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->e:Ljava/util/Set;

    move-object v4, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got widget id to update: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->n:Lac/p;

    move-object v4, v0

    invoke-interface {v4}, Lac/p;->a()J

    move-result-wide v6

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->r:Lcom/google/googlenav/appwidget/traffic/l;

    move-object v4, v0

    invoke-virtual {v4, v5}, Lcom/google/googlenav/appwidget/traffic/l;->b(I)Lcom/google/googlenav/appwidget/traffic/d;

    move-result-object v10

    if-nez v10, :cond_2

    sget-object v4, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requested widget update, but no data found for id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x453

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(ILjava/lang/String;)V

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    sget-object v4, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    const-string v5, "Worker thread was interrupted."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    monitor-enter p0

    const/4 v4, 0x0

    :try_start_1
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->c:Ljava/lang/Thread;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v4, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    const-string v5, "Worker thread stopped."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_2
    iget-boolean v4, v10, Lcom/google/googlenav/appwidget/traffic/d;->k:Z

    if-nez v4, :cond_3

    sget-object v4, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update was requested for non-configured widget id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x453

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(ILjava/lang/String;)V

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v4, v10, Lcom/google/googlenav/appwidget/traffic/d;->m:Ljava/lang/String;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error for app widget "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v10, Lcom/google/googlenav/appwidget/traffic/d;->m:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v10, Lcom/google/googlenav/appwidget/traffic/d;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(ILjava/lang/String;)V

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g(I)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    move-object v1, v10

    move-wide v2, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/traffic/d;J)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App widget going to sleep: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v10, Lcom/google/googlenav/appwidget/traffic/d;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->q:Lcom/google/googlenav/appwidget/traffic/k;

    move-object v4, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->i(I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/googlenav/appwidget/traffic/k;->c(ILandroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->g(I)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->i:Landroid/location/Location;

    move-object v4, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->f(I)V

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v2, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(Landroid/location/Location;J)Z

    move-result v8

    if-nez v8, :cond_6

    sget-object v4, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    const-string v6, "No or old location."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->q:Lcom/google/googlenav/appwidget/traffic/k;

    move-object v4, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->h(I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/googlenav/appwidget/traffic/k;->a(ILandroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {v4}, Lad/m;->a(Landroid/location/Location;)Lf/h;

    move-result-object v8

    invoke-static {v8}, Lu/h;->b(Lf/h;)Lu/h;

    move-result-object v11

    const/4 v4, 0x0

    iget-object v9, v10, Lcom/google/googlenav/appwidget/traffic/d;->d:Ljava/lang/Integer;

    if-eqz v9, :cond_8

    iget-object v9, v10, Lcom/google/googlenav/appwidget/traffic/d;->e:Ljava/lang/Integer;

    if-eqz v9, :cond_8

    new-instance v4, Lf/h;

    iget-object v9, v10, Lcom/google/googlenav/appwidget/traffic/d;->d:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v12, v10, Lcom/google/googlenav/appwidget/traffic/d;->e:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v4, v9, v12}, Lf/h;-><init>(II)V

    iget-object v9, v10, Lcom/google/googlenav/appwidget/traffic/d;->c:Ljava/lang/String;

    invoke-static {v4, v9}, Lu/h;->a(Lf/h;Ljava/lang/String;)Lu/h;

    move-result-object v9

    move-object v12, v9

    move-object v9, v4

    :goto_1
    iget-wide v13, v10, Lcom/google/googlenav/appwidget/traffic/d;->i:J

    const-wide/16 v15, -0x1

    cmp-long v4, v13, v15

    if-eqz v4, :cond_a

    iget-wide v13, v10, Lcom/google/googlenav/appwidget/traffic/d;->i:J

    sub-long v13, v6, v13

    sget-object v4, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "App widget "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " was updated "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide v0, v13

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x408f400000000000L

    div-double v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "s ago."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v15, 0xafc80

    cmp-long v4, v13, v15

    if-lez v4, :cond_9

    sget-object v4, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App widget "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v10, Lcom/google/googlenav/appwidget/traffic/d;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") is stale."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->q:Lcom/google/googlenav/appwidget/traffic/k;

    move-object v4, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/googlenav/appwidget/traffic/k;->a(ILandroid/app/PendingIntent;)V

    :cond_7
    :goto_2
    const-wide/32 v4, 0x493e0

    cmp-long v4, v13, v4

    if-ltz v4, :cond_0

    :goto_3
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/traffic/d;Lu/h;Lu/h;)V

    goto/16 :goto_0

    :cond_8
    iget-object v9, v10, Lcom/google/googlenav/appwidget/traffic/d;->c:Ljava/lang/String;

    invoke-static {v9}, Lu/h;->a(Ljava/lang/String;)Lu/h;

    move-result-object v9

    move-object v12, v9

    move-object v9, v4

    goto/16 :goto_1

    :cond_9
    if-eqz v9, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->q:Lcom/google/googlenav/appwidget/traffic/k;

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Lcom/google/googlenav/appwidget/traffic/k;->a(IJLf/h;Lf/h;)V

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->q:Lcom/google/googlenav/appwidget/traffic/k;

    move-object v4, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;->h(I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/googlenav/appwidget/traffic/k;->a(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method
