.class public Lcom/google/googlenav/appwidget/hotpot/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/appwidget/hotpot/widget/g;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/h;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.googlenav.appwidget.hotpot.USER_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "details-url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/h;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/googlenav/appwidget/hotpot/HotpotService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/app/PendingIntent;I)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/h;->a:Landroid/content/Context;

    const-class v2, Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v1, "change-settings-intent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/app/PendingIntent;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.googlenav.android.LAUNCH_RESOLVE_PLACE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/h;->a:Landroid/content/Context;

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public a(IILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.googlenav.appwidget.hotpot.USER_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->b:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "details-url"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "original-rating"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/h;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/appwidget/hotpot/widget/e;)Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.googlenav.appwidget.hotpot.USER_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->c:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/google/googlenav/appwidget/hotpot/widget/e;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/h;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    sget-object v0, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->e:Landroid/net/Uri;

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/appwidget/hotpot/h;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.googlenav.appwidget.hotpot.USER_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->a:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/h;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/h;->a:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, v1}, Lcom/google/googlenav/appwidget/hotpot/h;->a(Ljava/lang/String;Landroid/app/PendingIntent;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public b()Landroid/app/PendingIntent;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/hotpot/h;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    sget-object v0, Lcom/google/googlenav/appwidget/hotpot/widget/HotpotWidgetProvider;->d:Landroid/net/Uri;

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/appwidget/hotpot/h;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/h;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, p2, v2}, Lcom/google/googlenav/appwidget/hotpot/h;->a(Ljava/lang/String;Landroid/app/PendingIntent;I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x800

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/hotpot/h;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/h;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/h;->a(Ljava/lang/String;Landroid/app/PendingIntent;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public d()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/h;->a:Landroid/content/Context;

    const-class v2, Lcom/google/googlenav/appwidget/hotpot/HotpotService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "force_location_update"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/h;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/h;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/h;->a(Ljava/lang/String;Landroid/app/PendingIntent;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
