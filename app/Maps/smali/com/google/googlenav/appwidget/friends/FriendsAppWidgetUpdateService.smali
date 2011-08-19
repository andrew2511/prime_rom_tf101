.class public Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;
.super Landroid/app/Service;


# static fields
.field private static k:LA/p;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:LT/a;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Li/br;

.field private g:Ljava/util/List;

.field private h:Lo/U;

.field private i:LaD/r;

.field private j:Lcom/google/googlenav/appwidget/friends/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LA/p;

    new-instance v1, Lz/c;

    invoke-direct {v1}, Lz/c;-><init>()V

    const-string v2, "latitude widget running"

    const-string v3, "wu"

    const/16 v4, 0x16

    invoke-direct {v0, v1, v2, v3, v4}, LA/p;-><init>(Lac/p;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->k:LA/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a()LT/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b:LT/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private a()LT/a;
    .locals 3

    new-instance v0, Lcom/google/googlenav/appwidget/friends/d;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/appwidget/friends/d;-><init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;LT/c;)V

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, LT/a;->a(J)V

    return-object v0
.end method

.method private a(Lcom/google/googlenav/appwidget/friends/e;)Lcom/google/googlenav/appwidget/friends/a;
    .locals 9

    const-wide/high16 v5, -0x8000

    const/4 v4, 0x0

    const/4 v8, 0x0

    sget-object v0, Lcom/google/googlenav/appwidget/friends/e;->a:Lcom/google/googlenav/appwidget/friends/e;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->g:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object v2, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->h:Lo/U;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/U;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->i:LaD/r;

    invoke-virtual {v0}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, LaD/r;->a(Ljava/lang/Long;)LaD/q;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->i:LaD/r;

    invoke-virtual {v0}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, LaD/r;->a(Ljava/lang/Long;)LaD/q;

    move-result-object v6

    invoke-virtual {v6}, LaD/q;->h()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->i:LaD/r;

    invoke-virtual {v0}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, LaD/r;->a(Ljava/lang/Long;)LaD/q;

    move-result-object v0

    invoke-virtual {v0}, LaD/q;->d()Lk/l;

    move-result-object v0

    check-cast v0, LaB/f;

    invoke-virtual {v0}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    move-object v3, v8

    :cond_2
    new-instance v0, Lcom/google/googlenav/appwidget/friends/a;

    const/4 v4, 0x1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v5

    invoke-virtual {v5}, Lac/m;->p()Lac/p;

    move-result-object v5

    invoke-interface {v5}, Lac/p;->a()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/appwidget/friends/a;-><init>(Ljava/util/List;Lo/U;Ljava/util/List;ZJ)V

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Lcom/google/googlenav/appwidget/friends/e;->c:Lcom/google/googlenav/appwidget/friends/e;

    if-ne p1, v0, :cond_5

    new-instance v0, Lcom/google/googlenav/appwidget/friends/a;

    move-object v1, v8

    move-object v2, v8

    move-object v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/appwidget/friends/a;-><init>(Ljava/util/List;Lo/U;Ljava/util/List;ZJ)V

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/google/googlenav/appwidget/friends/a;->a()Lcom/google/googlenav/appwidget/friends/a;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/googlenav/appwidget/friends/a;

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b()Z

    move-result v4

    move-object v1, v8

    move-object v2, v8

    move-object v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/appwidget/friends/a;-><init>(Ljava/util/List;Lo/U;Ljava/util/List;ZJ)V

    goto :goto_3

    :cond_6
    move-object v1, v8

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/h;)Lcom/google/googlenav/appwidget/friends/h;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c(Lcom/google/googlenav/appwidget/friends/h;)Lcom/google/googlenav/appwidget/friends/h;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/googlenav/appwidget/friends/h;)Lcom/google/googlenav/appwidget/friends/h;
    .locals 3

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/appwidget/friends/h;->f:Lcom/google/googlenav/appwidget/friends/h;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/google/googlenav/appwidget/friends/h;->g:Lcom/google/googlenav/appwidget/friends/h;

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/googlenav/appwidget/friends/h;->h:Lcom/google/googlenav/appwidget/friends/h;

    :goto_1
    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lak/h;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    sget-object v0, Lcom/google/googlenav/appwidget/friends/h;->e:Lcom/google/googlenav/appwidget/friends/h;

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Li/br;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->f:Li/br;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lo/U;)Lo/U;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->h:Lo/U;

    return-object p1
.end method

.method private a(Lcom/google/googlenav/appwidget/friends/a;Z)V
    .locals 3

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->j:Lcom/google/googlenav/appwidget/friends/g;

    invoke-virtual {v2, p1, p2}, Lcom/google/googlenav/appwidget/friends/g;->a(Lcom/google/googlenav/appwidget/friends/a;Z)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/h;)V

    return-void
.end method

.method private b(Lcom/google/googlenav/appwidget/friends/h;)V
    .locals 3

    new-instance v0, LT/d;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/appwidget/friends/c;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/appwidget/friends/c;-><init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/h;)V

    invoke-direct {v0, v1, v2}, LT/d;-><init>(LT/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LT/d;->b()V

    return-void
.end method

.method private final b()Z
    .locals 1

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/aF;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/google/googlenav/appwidget/friends/h;)Lcom/google/googlenav/appwidget/friends/h;
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    monitor-enter v0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lak/h;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lak/h;->g()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/h;)Lcom/google/googlenav/appwidget/friends/h;

    move-result-object v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/google/googlenav/appwidget/friends/b;->a:[I

    invoke-virtual {v1}, Lcom/google/googlenav/appwidget/friends/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/google/googlenav/appwidget/friends/h;->g:Lcom/google/googlenav/appwidget/friends/h;

    :goto_1
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/google/googlenav/appwidget/friends/e;->c:Lcom/google/googlenav/appwidget/friends/e;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/e;)Lcom/google/googlenav/appwidget/friends/a;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/a;Z)V

    sget-object v0, Lcom/google/googlenav/appwidget/friends/h;->f:Lcom/google/googlenav/appwidget/friends/h;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->k:LA/p;

    invoke-virtual {v0}, LA/p;->a()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b:LT/a;

    invoke-virtual {v0}, LT/a;->b()V

    sget-object v0, Lcom/google/googlenav/appwidget/friends/e;->b:Lcom/google/googlenav/appwidget/friends/e;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/e;)Lcom/google/googlenav/appwidget/friends/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/a;Z)V

    sget-object v0, Lcom/google/googlenav/appwidget/friends/h;->b:Lcom/google/googlenav/appwidget/friends/h;

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->i(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/google/googlenav/appwidget/friends/f;

    invoke-direct {v0, p0, v4}, Lcom/google/googlenav/appwidget/friends/f;-><init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/c;)V

    invoke-static {v0}, Lo/by;->a(Lcom/google/googlenav/a;)V

    :goto_2
    sget-object v0, Lcom/google/googlenav/appwidget/friends/h;->c:Lcom/google/googlenav/appwidget/friends/h;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->f:Li/br;

    const/4 v1, 0x3

    new-instance v2, Lcom/google/googlenav/appwidget/friends/f;

    invoke-direct {v2, p0, v4}, Lcom/google/googlenav/appwidget/friends/f;-><init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/c;)V

    invoke-virtual {v0, v1, v4, v2}, Li/br;->a(ILaU/a;Li/o;)V

    goto :goto_2

    :pswitch_3
    sget-object v0, Lcom/google/googlenav/appwidget/friends/h;->c:Lcom/google/googlenav/appwidget/friends/h;

    goto :goto_1

    :pswitch_4
    sget-object v0, Lcom/google/googlenav/appwidget/friends/e;->a:Lcom/google/googlenav/appwidget/friends/e;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/e;)Lcom/google/googlenav/appwidget/friends/a;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/a;Z)V

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/friends/a;->b()V

    sget-object v0, Lcom/google/googlenav/appwidget/friends/h;->f:Lcom/google/googlenav/appwidget/friends/h;

    goto :goto_1

    :pswitch_5
    sget-object v0, Lcom/google/googlenav/appwidget/friends/e;->b:Lcom/google/googlenav/appwidget/friends/e;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/e;)Lcom/google/googlenav/appwidget/friends/a;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/a;Z)V

    sget-object v0, Lcom/google/googlenav/appwidget/friends/h;->f:Lcom/google/googlenav/appwidget/friends/h;

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b:LT/a;

    invoke-virtual {v0}, LT/a;->h()I

    sget-object v0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->k:LA/p;

    invoke-virtual {v0}, LA/p;->b()V

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->stopSelf()V

    sget-object v0, Lcom/google/googlenav/appwidget/friends/h;->g:Lcom/google/googlenav/appwidget/friends/h;

    goto/16 :goto_1

    :pswitch_7
    sget-object v0, Lcom/google/googlenav/appwidget/friends/h;->g:Lcom/google/googlenav/appwidget/friends/h;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic c(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)LaD/r;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->i:LaD/r;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lak/h;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v0

    invoke-virtual {v0}, LT/c;->d()V

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->a(Landroid/app/Service;)Lcom/google/googlenav/login/j;

    new-instance v0, Lcom/google/googlenav/appwidget/friends/g;

    invoke-direct {v0, p0}, Lcom/google/googlenav/appwidget/friends/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->j:Lcom/google/googlenav/appwidget/friends/g;

    new-instance v0, Li/br;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    invoke-direct {v0, v1}, Li/br;-><init>(LT/c;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->f:Li/br;

    new-instance v0, LaD/r;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v2

    const/4 v3, 0x1

    const v4, 0x7fffffff

    invoke-direct {v0, v1, v2, v3, v4}, LaD/r;-><init>(LaU/a;LT/c;ZI)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->i:LaD/r;

    :try_start_0
    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/googlenav/ui/android/S;

    invoke-direct {v0}, Lcom/google/googlenav/ui/android/S;-><init>()V

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->a(Lcom/google/googlenav/ui/aV;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Lcom/google/googlenav/android/c;->g()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/h;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/h;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/googlenav/appwidget/friends/h;->e:Lcom/google/googlenav/appwidget/friends/h;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/h;)V

    goto :goto_0

    :cond_2
    const-string v0, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lo/A;->r()V

    goto :goto_0

    :cond_3
    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v1, "com.google.googlenav.appwidget.friends.FriendsAppWidgetUpdateService.EXTRA_MANUAL"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/h;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/h;)V

    goto :goto_0

    :cond_4
    const-string v0, "com.google.googlenav.appwidget.friends.FriendsAppWidgetUpdateService.UPDATED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v1, "com.google.googlenav.appwidget.friends.FriendsAppWidgetUpdateService.UPDATED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/h;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/h;)V

    goto :goto_0

    :cond_5
    const-string v0, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/googlenav/appwidget/friends/h;->f:Lcom/google/googlenav/appwidget/friends/h;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/h;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "com.google.googlenav.friend.android.FriendServiceHelper.SIGNED_IN_OUT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/googlenav/appwidget/friends/h;->a:Lcom/google/googlenav/appwidget/friends/h;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/h;)V

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/google/googlenav/appwidget/friends/h;->f:Lcom/google/googlenav/appwidget/friends/h;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/h;)V

    goto/16 :goto_0
.end method
