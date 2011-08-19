.class Lcom/google/googlenav/appwidget/traffic/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final b:Landroid/net/Uri;

.field private static final c:Landroid/net/Uri;

.field private static final d:Landroid/net/Uri;

.field private static final e:Landroid/net/Uri;

.field private static final f:Ljava/util/Map;

.field private static final g:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x14

    const-string v0, "appwidgets://com.google.googlenav.appwidget.Traffic"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/e;->a:Landroid/net/Uri;

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/e;->a:Landroid/net/Uri;

    const-string v1, "update"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/e;->b:Landroid/net/Uri;

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/e;->a:Landroid/net/Uri;

    const-string v1, "wakeup"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/e;->c:Landroid/net/Uri;

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/e;->a:Landroid/net/Uri;

    const-string v1, "cancelUpdate"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/e;->d:Landroid/net/Uri;

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/e;->a:Landroid/net/Uri;

    const-string v1, "updateLocation"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/e;->e:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/e;->e(I)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/e;->f:Ljava/util/Map;

    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/e;->e(I)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/e;->g:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/net/Uri;)I
    .locals 1

    const-string v0, "id"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static a(Landroid/net/Uri$Builder;I)Landroid/net/Uri$Builder;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method static a()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetProvider;->a:Landroid/net/Uri;

    return-object v0
.end method

.method static a(I)Landroid/net/Uri;
    .locals 4

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/e;->f:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/e;->f:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetProvider;->a:Landroid/net/Uri;

    int-to-long v2, p0

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/appwidget/traffic/e;->f:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static b()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/e;->e:Landroid/net/Uri;

    return-object v0
.end method

.method static b(I)Landroid/net/Uri;
    .locals 4

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/e;->g:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/e;->g:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/e;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/googlenav/appwidget/traffic/e;->a(Landroid/net/Uri$Builder;I)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/appwidget/traffic/e;->g:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static b(Landroid/net/Uri;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "appwidgets"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.googlenav.appwidget.Traffic"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(I)Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/e;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/googlenav/appwidget/traffic/e;->a(Landroid/net/Uri$Builder;I)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static c(Landroid/net/Uri;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/googlenav/appwidget/traffic/e;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "update"

    invoke-static {p0, v0}, Lcom/google/googlenav/appwidget/traffic/e;->a(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static d(I)Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/e;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/googlenav/appwidget/traffic/e;->a(Landroid/net/Uri$Builder;I)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static d(Landroid/net/Uri;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/googlenav/appwidget/traffic/e;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wakeup"

    invoke-static {p0, v0}, Lcom/google/googlenav/appwidget/traffic/e;->a(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(I)Ljava/util/Map;
    .locals 1

    new-instance v0, Lav/a;

    invoke-direct {v0, p0}, Lav/a;-><init>(I)V

    return-object v0
.end method

.method static e(Landroid/net/Uri;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/googlenav/appwidget/traffic/e;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cancelUpdate"

    invoke-static {p0, v0}, Lcom/google/googlenav/appwidget/traffic/e;->a(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static f(Landroid/net/Uri;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/googlenav/appwidget/traffic/e;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "updateLocation"

    invoke-static {p0, v0}, Lcom/google/googlenav/appwidget/traffic/e;->a(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
