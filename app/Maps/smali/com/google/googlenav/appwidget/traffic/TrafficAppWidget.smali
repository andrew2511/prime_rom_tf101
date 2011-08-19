.class public Lcom/google/googlenav/appwidget/traffic/TrafficAppWidget;
.super Landroid/appwidget/AppWidgetProvider;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidget;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private a(Lcom/google/googlenav/appwidget/traffic/l;[I)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Lcom/google/googlenav/appwidget/traffic/l;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    array-length v1, p2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "c"

    invoke-static {v3, v0, v2}, Lac/g;->a(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    const-string v0, "dc"

    invoke-static {v0, v1, v2}, Lac/g;->a(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v3, p2, v1

    const-string v4, "id"

    invoke-static {v4, v3, v2}, Lac/g;->a(Ljava/lang/String;ILjava/lang/StringBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 6

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/l;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/appwidget/traffic/l;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {p0, v0, p2}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidget;->a(Lcom/google/googlenav/appwidget/traffic/l;[I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x48

    const-string v3, "wd"

    invoke-static {v2, v3, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p2, v2

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v3}, Lcom/google/googlenav/appwidget/traffic/e;->d(I)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/appwidget/traffic/l;->a(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidget;->a:Ljava/lang/String;

    const-string v1, "All widgets are disabled.  Stopping update service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 5

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidget;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got call to update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " widgets."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p3, v1

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/e;->b(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
