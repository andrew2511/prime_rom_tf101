.class final Lcom/google/googlenav/appwidget/friends/f;
.super Ljava/lang/Object;

# interfaces
.implements LaD/n;
.implements Lcom/google/googlenav/a;
.implements Li/o;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/friends/f;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/friends/f;-><init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)V

    return-void
.end method

.method private b()V
    .locals 7

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/f;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/f;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/googlenav/appwidget/friends/f;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v3}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/f;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->c(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/U;

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/google/googlenav/appwidget/friends/f;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v5}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->d(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)LaD/r;

    move-result-object v5

    invoke-virtual {v0}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, LaD/r;->a(Ljava/lang/Long;)LaD/q;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v5, LaD/j;

    invoke-virtual {v0}, Lo/U;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v5, v6, v0}, LaD/j;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/f;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->d(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)LaD/r;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, LaD/r;->a(Ljava/util/Vector;LaD/n;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/friends/f;->ar_()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c(Lcom/google/googlenav/z;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/f;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lo/aH;

    invoke-direct {v1, p1}, Lo/aH;-><init>(Lcom/google/googlenav/j;)V

    iget-object v2, p0, Lcom/google/googlenav/appwidget/friends/f;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/friends/g;->a(Lo/aH;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Ljava/util/List;)Ljava/util/List;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/friends/f;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-virtual {v1}, Lo/aH;->d()Lo/U;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lo/U;)Lo/U;

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/f;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Li/br;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, v4, v4}, Li/br;->a(ILcom/google/googlenav/j;LaU/a;Li/aD;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/f;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/f;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lo/U;)Lo/U;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Lcom/google/googlenav/j;)V
    .locals 1

    check-cast p1, Lcom/google/googlenav/z;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/appwidget/friends/f;->a(Lcom/google/googlenav/z;Z)V

    return-void
.end method

.method public a(Lcom/google/googlenav/z;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/googlenav/z;Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/friends/f;->c(Lcom/google/googlenav/z;)V

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/friends/f;->b()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/f;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/friend/android/A;->c(Landroid/content/Context;J)V

    return-void
.end method

.method public ar_()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/f;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    sget-object v1, Lcom/google/googlenav/appwidget/friends/h;->d:Lcom/google/googlenav/appwidget/friends/h;

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/h;)V

    return-void
.end method

.method public b(Lcom/google/googlenav/z;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/f;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;)Li/br;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2, v2}, Li/br;->a(ILcom/google/googlenav/j;LaU/a;Li/aD;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/f;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    sget-object v1, Lcom/google/googlenav/appwidget/friends/h;->e:Lcom/google/googlenav/appwidget/friends/h;

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/h;)V

    return-void
.end method
