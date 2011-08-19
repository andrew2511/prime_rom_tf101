.class public Lcom/google/googlenav/friend/android/u;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/NotificationManager;

.field private final c:Lcom/google/googlenav/friend/android/I;

.field private final d:Lcom/google/googlenav/friend/android/E;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/friend/android/I;Lcom/google/googlenav/friend/android/E;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/friend/android/u;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/googlenav/friend/android/u;->c:Lcom/google/googlenav/friend/android/I;

    iput-object p3, p0, Lcom/google/googlenav/friend/android/u;->d:Lcom/google/googlenav/friend/android/E;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/googlenav/friend/android/u;->b:Landroid/app/NotificationManager;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/friend/android/u;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/u;->b:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static a(Ljava/util/List;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/d;

    invoke-virtual {p0}, Lo/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lo/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/googlenav/friend/android/e;Lcom/google/googlenav/friend/android/v;Law/e;)V
    .locals 7

    const-wide v5, 0x412e848000000000L

    const/4 v4, 0x1

    iget-object v0, p1, Lcom/google/googlenav/friend/android/e;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v5

    double-to-int v1, v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    new-instance v3, Lo/bV;

    invoke-direct {v3}, Lo/bV;-><init>()V

    invoke-virtual {v3, v1}, Lo/bV;->a(I)Lo/bV;

    move-result-object v1

    invoke-virtual {v1, v2}, Lo/bV;->b(I)Lo/bV;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/bV;->e(I)Lo/bV;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/friend/android/o;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/googlenav/friend/android/o;-><init>(Lcom/google/googlenav/friend/android/u;Lcom/google/googlenav/friend/android/e;Lcom/google/googlenav/friend/android/v;)V

    invoke-virtual {v0, v1}, Lo/bV;->a(Lo/cd;)Lo/bV;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lo/bV;->f(I)Lo/bV;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/bV;->a(Z)Lo/bV;

    move-result-object v0

    invoke-virtual {v0, v4}, Lo/bV;->b(Z)Lo/bV;

    move-result-object v0

    invoke-virtual {v0, v4}, Lo/bV;->d(Z)Lo/bV;

    move-result-object v0

    invoke-virtual {v0, v4}, Lo/bV;->g(I)Lo/bV;

    move-result-object v0

    invoke-virtual {v0, p3}, Lo/bV;->a(Law/e;)Lo/bV;

    move-result-object v0

    invoke-virtual {v0}, Lo/bV;->a()Lo/J;

    move-result-object v0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    const-string v0, "cas"

    invoke-static {v0}, Lo/A;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const v0, 0x1869f

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/friend/android/u;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/h;ZIZ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/google/googlenav/friend/android/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/h;ZIZ)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/h;ZIZ)V
    .locals 15

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v5

    invoke-virtual {v5}, Lac/m;->p()Lac/p;

    move-result-object v5

    invoke-interface {v5}, Lac/p;->a()J

    move-result-wide v5

    new-instance v7, Landroid/app/Notification;

    move-object v0, v7

    move/from16 v1, p7

    move-object/from16 v2, p1

    move-wide v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v8, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v7, Landroid/app/Notification;->flags:I

    if-eqz p8, :cond_0

    const/4 v8, -0x1

    iput v8, v7, Landroid/app/Notification;->defaults:I

    :cond_0
    const/4 v8, 0x1

    sget-object v9, Lcom/google/googlenav/android/W;->a:Landroid/net/Uri;

    move-object v0, v9

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    if-eqz p6, :cond_3

    const/4 v8, 0x2

    sget-object v9, Lcom/google/googlenav/android/W;->b:Landroid/net/Uri;

    move-object v0, v9

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object v14, v9

    move v9, v8

    move-object v8, v14

    :goto_0
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    iget-object v12, p0, Lcom/google/googlenav/friend/android/u;->a:Landroid/content/Context;

    const-class v13, Lcom/google/android/maps/MapsActivity;

    invoke-direct {v10, v11, v8, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "notification_fired"

    invoke-virtual {v10, v8, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 v5, 0x1400

    invoke-virtual {v10, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-nez p6, :cond_1

    const-string v5, "source"

    const-string v6, "cn"

    invoke-virtual {v10, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string v5, "location"

    invoke-virtual/range {p5 .. p5}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v6

    invoke-virtual {v6}, Law/e;->f()[B

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/google/googlenav/friend/android/u;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/googlenav/friend/android/u;->a:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v11, 0x4000

    invoke-static {v6, v8, v10, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object v0, v7

    move-object v1, v5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/u;->b()V

    iget-object v5, p0, Lcom/google/googlenav/friend/android/u;->b:Landroid/app/NotificationManager;

    invoke-virtual {v5, v9, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    if-eqz p6, :cond_2

    invoke-static {}, Lo/A;->J()V

    :goto_2
    return-void

    :cond_2
    invoke-static {}, Lo/A;->I()V

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_1

    :cond_3
    move-object v14, v9

    move v9, v8

    move-object v8, v14

    goto :goto_0
.end method

.method static a(Lcom/google/googlenav/friend/android/e;Lcom/google/googlenav/bG;)Z
    .locals 5

    const/4 v4, 0x1

    if-nez p1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/google/googlenav/friend/android/u;->b(Lcom/google/googlenav/friend/android/e;Lcom/google/googlenav/bG;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/google/googlenav/friend/android/e;Lcom/google/googlenav/bG;)I
    .locals 7

    const-wide v5, 0x412e848000000000L

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bB;->i(Law/e;)Lf/h;

    move-result-object v0

    new-instance v1, Lf/h;

    iget-object v2, p0, Lcom/google/googlenav/friend/android/e;->a:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    iget-object v3, p0, Lcom/google/googlenav/friend/android/e;->a:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lf/h;-><init>(II)V

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/y;->a(Lf/h;Lf/h;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/friend/android/u;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/u;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/friend/android/u;->b:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/u;->b:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private static c()Law/e;
    .locals 3

    const/16 v0, 0x4e

    const-string v1, "sm"

    const-string v2, ""

    invoke-static {v0, v1, v2}, LaC/a;->a(ILjava/lang/String;Ljava/lang/String;)Law/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/friend/android/u;)Lcom/google/googlenav/friend/android/E;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/u;->d:Lcom/google/googlenav/friend/android/E;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/friend/android/u;)Lcom/google/googlenav/friend/android/I;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/u;->c:Lcom/google/googlenav/friend/android/I;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/friend/android/v;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/google/googlenav/friend/android/v;

    invoke-direct {v0, p0, v3}, Lcom/google/googlenav/friend/android/v;-><init>(Lcom/google/googlenav/friend/android/u;Lcom/google/googlenav/friend/android/c;)V

    iget-object v1, p0, Lcom/google/googlenav/friend/android/u;->d:Lcom/google/googlenav/friend/android/E;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/android/E;->a()Li/br;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3, v0}, Li/br;->a(ILaU/a;Li/o;)V

    return-object v0
.end method

.method public a(Lcom/google/googlenav/friend/android/e;)V
    .locals 2

    iget-object v0, p1, Lcom/google/googlenav/friend/android/e;->a:Landroid/location/Location;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/google/googlenav/friend/android/e;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {}, Lo/aX;->u()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-boolean v0, p1, Lcom/google/googlenav/friend/android/e;->e:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/google/googlenav/friend/android/e;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/u;->b()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/u;->a()Lcom/google/googlenav/friend/android/v;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/android/u;->c:Lcom/google/googlenav/friend/android/I;

    invoke-interface {v1}, Lcom/google/googlenav/friend/android/I;->l()V

    invoke-static {}, Lcom/google/googlenav/friend/android/u;->c()Law/e;

    move-result-object v1

    invoke-static {v1}, LaC/a;->a(Law/e;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/friend/android/u;->a(Lcom/google/googlenav/friend/android/e;Lcom/google/googlenav/friend/android/v;Law/e;)V

    goto :goto_0
.end method
