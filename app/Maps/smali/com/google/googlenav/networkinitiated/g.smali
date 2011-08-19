.class public Lcom/google/googlenav/networkinitiated/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/networkinitiated/c;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/networkinitiated/g;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)Landroid/app/Notification;
    .locals 3

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2, p3, p2, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, v2, Landroid/app/Notification;->flags:I

    const/4 v0, -0x1

    iput v0, v2, Landroid/app/Notification;->defaults:I

    const/4 v0, 0x0

    const/high16 v1, 0x4000

    invoke-static {p0, v0, p4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, p0, p1, p2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v2
.end method

.method private c(Landroid/content/Intent;)V
    .locals 10

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/g;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gaiaId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x153

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lac/m;->E()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lac/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x152

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const v4, 0x7f020257

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    sget-object v7, Lcom/google/googlenav/android/W;->a:Landroid/net/Uri;

    iget-object v8, p0, Lcom/google/googlenav/networkinitiated/g;->a:Landroid/content/Context;

    const-class v9, Lcom/google/android/maps/MapsActivity;

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "source"

    const-string v7, "ce"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "gaiaId"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1400

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x3

    iget-object v6, p0, Lcom/google/googlenav/networkinitiated/g;->a:Landroid/content/Context;

    invoke-static {v6, v3, v1, v4, v5}, Lcom/google/googlenav/networkinitiated/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const/16 v0, 0x3d

    const-string v1, "pm"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    return-void

    :cond_0
    const/16 v1, 0x92

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "pingMe"

    const-string v1, "op"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "op"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pingMe"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/googlenav/networkinitiated/g;->c(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
