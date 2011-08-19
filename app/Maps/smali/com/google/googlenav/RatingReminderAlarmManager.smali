.class public Lcom/google/googlenav/RatingReminderAlarmManager;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Lcom/google/googlenav/bN;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/RatingReminderAlarmManager;-><init>(Lcom/google/googlenav/bN;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/bN;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/RatingReminderAlarmManager;->a:Lcom/google/googlenav/bN;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://maps.google.com/maps/place?cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&action=openratings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.googlenav.RATING_REMINDER_ALARM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.google.googlenav.RatingReminderCid"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.google.googlenav.RatingReminderPlaceName"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method

.method private a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "intent-source"

    const-string v2, "rr"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f020329

    const/16 v2, 0x327

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p4}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v3

    invoke-virtual {v3}, Lac/m;->p()Lac/p;

    move-result-object v3

    invoke-interface {v3}, Lac/p;->a()J

    move-result-wide v3

    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/16 v1, 0x2f2

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/high16 v4, 0x4000

    invoke-static {p1, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v5, p1, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v0, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v5, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcom/google/googlenav/RatingReminderAlarmManager;->a:Lcom/google/googlenav/bN;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/googlenav/b;

    invoke-direct {v0, p1}, Lcom/google/googlenav/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/RatingReminderAlarmManager;->a:Lcom/google/googlenav/bN;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/RatingReminderAlarmManager;->a:Lcom/google/googlenav/bN;

    const/4 v1, 0x5

    invoke-interface {v0, v1, v5}, Lcom/google/googlenav/bN;->a(ILandroid/app/Notification;)V

    const/16 v0, 0x55

    const-string v1, "rrs"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/RatingReminderAlarmManager;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/googlenav/RatingReminderAlarmManager;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/google/googlenav/h;)V
    .locals 4

    invoke-static {p0}, Lcom/google/googlenav/RatingReminderAlarmManager;->c(Lcom/google/googlenav/h;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v2}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/h;->p()Lcom/google/googlenav/aP;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/aP;->b:Lcom/google/googlenav/aP;

    if-ne v2, v3, :cond_1

    invoke-static {v1, v0}, Lcom/google/googlenav/RatingReminderAlarmManager;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/googlenav/bp;

    invoke-direct {v0}, Lcom/google/googlenav/bp;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bp;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->c()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/b;

    invoke-direct {v1, v0}, Lcom/google/googlenav/b;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v1}, Lcom/google/googlenav/RatingReminderAlarmManager;->a(ZLcom/google/googlenav/bN;)V

    return-void
.end method

.method public static a(ZLcom/google/googlenav/bN;)V
    .locals 0

    return-void
.end method

.method public static a()Z
    .locals 2

    const-string v0, "RATING_REMINDERS_PREFERENCE"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lac/i;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/google/googlenav/RatingReminderAlarmManager;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->c()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    invoke-static {}, Lz/b;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v1

    const-wide/32 v3, 0x1b7740

    const/4 v5, 0x1

    add-long/2addr v1, v3

    invoke-virtual {p0, v5, v1, v2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/googlenav/h;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/googlenav/RatingReminderAlarmManager;->c(Lcom/google/googlenav/h;)Z

    move-result v0

    return v0
.end method

.method private static c(Lcom/google/googlenav/h;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x10

    invoke-static {v0, v1}, Law/b;->h(Law/e;I)Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/h;->p()Lcom/google/googlenav/aP;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/aP;->a:Lcom/google/googlenav/aP;

    if-ne v1, v2, :cond_1

    move v1, v4

    :goto_1
    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    move v0, v4

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-static {}, Lcom/google/googlenav/RatingReminderAlarmManager;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "com.google.googlenav.RatingReminderCid"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.googlenav.RatingReminderPlaceName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    new-instance v3, Lcom/google/googlenav/bq;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/google/googlenav/bq;-><init>(Lcom/google/googlenav/RatingReminderAlarmManager;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/googlenav/bq;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
