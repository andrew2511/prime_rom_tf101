.class public Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field private static final f:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "useraction://set"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->a:Landroid/net/Uri;

    const-string v0, "useraction://rate"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->b:Landroid/net/Uri;

    const-string v0, "useraction://view"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->c:Landroid/net/Uri;

    const-string v0, "useraction://placepage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->d:Landroid/net/Uri;

    const-string v0, "useraction://ratepage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->e:Landroid/net/Uri;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->f:Landroid/content/UriMatcher;

    sget-object v0, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->f:Landroid/content/UriMatcher;

    const-string v1, "set"

    const-string v2, "#"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->f:Landroid/content/UriMatcher;

    const-string v1, "rate"

    const-string v2, "#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->f:Landroid/content/UriMatcher;

    const-string v1, "view"

    const-string v2, "*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->f:Landroid/content/UriMatcher;

    const-string v1, "placepage"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->f:Landroid/content/UriMatcher;

    const-string v1, "ratepage"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Lcom/google/googlenav/appwidget/hotpot/widget/h;Lcom/google/googlenav/appwidget/hotpot/HotpotService;Lcom/google/googlenav/appwidget/hotpot/persistence/i;Lcom/google/googlenav/appwidget/hotpot/widget/g;Lcom/google/googlenav/appwidget/hotpot/j;)V
    .locals 3

    sget-object v0, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->f:Landroid/content/UriMatcher;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->a(I)V

    invoke-static {p0, p2, p4, p5, p6}, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->a(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/widget/h;Lcom/google/googlenav/appwidget/hotpot/persistence/i;Lcom/google/googlenav/appwidget/hotpot/widget/g;Lcom/google/googlenav/appwidget/hotpot/j;)V

    goto :goto_0

    :pswitch_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "original-rating"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "details-url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v0, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->a(IILjava/lang/String;)V

    invoke-static {p0, p2, p4, p5, p6}, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->a(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/widget/h;Lcom/google/googlenav/appwidget/hotpot/persistence/i;Lcom/google/googlenav/appwidget/hotpot/widget/g;Lcom/google/googlenav/appwidget/hotpot/j;)V

    invoke-static {p2, p5}, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->a(Lcom/google/googlenav/appwidget/hotpot/widget/h;Lcom/google/googlenav/appwidget/hotpot/widget/g;)V

    goto :goto_0

    :pswitch_3
    invoke-static {v1}, Lcom/google/googlenav/appwidget/hotpot/widget/e;->valueOf(Ljava/lang/String;)Lcom/google/googlenav/appwidget/hotpot/widget/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a(Lcom/google/googlenav/appwidget/hotpot/widget/e;)V

    invoke-static {p0, p2, p4, p5, p6}, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->a(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/widget/h;Lcom/google/googlenav/appwidget/hotpot/persistence/i;Lcom/google/googlenav/appwidget/hotpot/widget/g;Lcom/google/googlenav/appwidget/hotpot/j;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "details-url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p4, p2, v0}, Lab/a;->a(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/persistence/i;Lcom/google/googlenav/appwidget/hotpot/widget/h;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string v0, "details-url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p4, p2, v0}, Lab/a;->b(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/persistence/i;Lcom/google/googlenav/appwidget/hotpot/widget/h;Ljava/lang/String;)V

    sget-object v0, Lcom/google/googlenav/appwidget/hotpot/widget/e;->a:Lcom/google/googlenav/appwidget/hotpot/widget/e;

    invoke-interface {p2, v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a(Lcom/google/googlenav/appwidget/hotpot/widget/e;)V

    invoke-static {p5, p0}, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->a(Lcom/google/googlenav/appwidget/hotpot/widget/g;Landroid/content/Context;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/widget/h;Lcom/google/googlenav/appwidget/hotpot/persistence/i;Lcom/google/googlenav/appwidget/hotpot/widget/g;Lcom/google/googlenav/appwidget/hotpot/j;)V
    .locals 7

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {p4}, Lcom/google/googlenav/appwidget/hotpot/j;->b()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->d()Lcom/google/googlenav/appwidget/hotpot/widget/e;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a()I

    move-result v4

    invoke-interface {p2, v4}, Lcom/google/googlenav/appwidget/hotpot/persistence/i;->a(I)Lcom/google/googlenav/appwidget/hotpot/persistence/b;

    move-result-object v5

    invoke-interface {p2}, Lcom/google/googlenav/appwidget/hotpot/persistence/i;->a()I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    if-nez v5, :cond_4

    :cond_0
    invoke-interface {p1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->a(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {p0}, Lcom/google/googlenav/android/S;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0, p3}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->b(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/widget/g;)Landroid/widget/RemoteViews;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-static {p0, p3}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->a(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/widget/g;)Landroid/widget/RemoteViews;

    move-result-object v2

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/google/googlenav/appwidget/hotpot/widget/b;->a:[I

    invoke-virtual {v3}, Lcom/google/googlenav/appwidget/hotpot/widget/e;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, v5, p1, p3}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->a(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/persistence/b;Lcom/google/googlenav/appwidget/hotpot/widget/h;Lcom/google/googlenav/appwidget/hotpot/widget/g;)Landroid/widget/RemoteViews;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    invoke-static {p0, v5, p1, p3}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->b(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/persistence/b;Lcom/google/googlenav/appwidget/hotpot/widget/h;Lcom/google/googlenav/appwidget/hotpot/widget/g;)Landroid/widget/RemoteViews;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    const v2, 0x7f03006e

    invoke-static {p0, v5, p1, p3, v2}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->a(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/persistence/b;Lcom/google/googlenav/appwidget/hotpot/widget/h;Lcom/google/googlenav/appwidget/hotpot/widget/g;I)Landroid/widget/RemoteViews;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/appwidget/hotpot/widget/e;->b:Lcom/google/googlenav/appwidget/hotpot/widget/e;

    invoke-interface {p1, v3}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a(Lcom/google/googlenav/appwidget/hotpot/widget/e;)V

    invoke-static {p3, p0}, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->a(Lcom/google/googlenav/appwidget/hotpot/widget/g;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    const v2, 0x7f03006d

    invoke-static {p0, v5, p1, p3, v2}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->a(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/persistence/b;Lcom/google/googlenav/appwidget/hotpot/widget/h;Lcom/google/googlenav/appwidget/hotpot/widget/g;I)Landroid/widget/RemoteViews;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/appwidget/hotpot/widget/e;->a:Lcom/google/googlenav/appwidget/hotpot/widget/e;

    invoke-interface {p1, v3}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a(Lcom/google/googlenav/appwidget/hotpot/widget/e;)V

    invoke-static {p3, p0}, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->a(Lcom/google/googlenav/appwidget/hotpot/widget/g;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Lcom/google/googlenav/appwidget/hotpot/widget/g;Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/google/googlenav/appwidget/hotpot/widget/a;

    invoke-direct {v3, p0}, Lcom/google/googlenav/appwidget/hotpot/widget/a;-><init>(Lcom/google/googlenav/appwidget/hotpot/widget/g;)V

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private static a(Lcom/google/googlenav/appwidget/hotpot/widget/h;Lcom/google/googlenav/appwidget/hotpot/widget/g;)V
    .locals 4

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/google/googlenav/appwidget/hotpot/widget/c;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/appwidget/hotpot/widget/c;-><init>(Lcom/google/googlenav/appwidget/hotpot/widget/h;Lcom/google/googlenav/appwidget/hotpot/widget/g;)V

    const-wide/16 v2, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.googlenav.appwidget.hotpot.USER_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-class v0, Lcom/google/googlenav/appwidget/hotpot/HotpotService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
