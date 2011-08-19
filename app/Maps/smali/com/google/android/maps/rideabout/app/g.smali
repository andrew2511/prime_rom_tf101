.class public abstract Lcom/google/android/maps/rideabout/app/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/rideabout/app/f;


# static fields
.field private static final c:[J


# instance fields
.field protected final a:Landroid/app/Service;

.field protected final b:Landroid/app/Notification;

.field private final d:Landroid/app/NotificationManager;

.field private final e:Landroid/content/Intent;

.field private f:Z

.field private g:Ljava/lang/CharSequence;

.field private h:Ljava/lang/CharSequence;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/maps/rideabout/app/g;->c:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/app/Service;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/g;->a:Landroid/app/Service;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/g;->d:Landroid/app/NotificationManager;

    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f02028b

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/g;->b:Landroid/app/Notification;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/g;->b:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/maps/MapsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/g;->e:Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/g;->e:Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/g;->e:Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Service;Lcom/google/android/maps/rideabout/app/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/g;-><init>(Landroid/app/Service;)V

    return-void
.end method

.method private static a(Z)I
    .locals 1

    if-eqz p0, :cond_0

    const v0, 0x7f02028b

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f02028c

    goto :goto_0
.end method

.method public static a(Landroid/app/Service;)Lcom/google/android/maps/rideabout/app/g;
    .locals 1

    invoke-static {}, Lcom/google/googlenav/android/Z;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/maps/rideabout/app/p;

    invoke-direct {v0, p0}, Lcom/google/android/maps/rideabout/app/p;-><init>(Landroid/app/Service;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/maps/rideabout/app/j;

    invoke-direct {v0, p0}, Lcom/google/android/maps/rideabout/app/j;-><init>(Landroid/app/Service;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/g;->c()V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/g;->d:Landroid/app/NotificationManager;

    const/16 v1, 0xc3b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/g;->e:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-void
.end method

.method public a(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/g;->i:Z

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/g;->g:Ljava/lang/CharSequence;

    invoke-static {v0, p3}, Lae/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/g;->h:Ljava/lang/CharSequence;

    invoke-static {v0, p4}, Lae/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/maps/rideabout/app/g;->a(Z)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/g;->e:Landroid/content/Intent;

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "rideabout"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "/navigation"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/g;->a:Landroid/app/Service;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/maps/rideabout/app/g;->e:Landroid/content/Intent;

    const/high16 v4, 0x800

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object p3, p0, Lcom/google/android/maps/rideabout/app/g;->g:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/google/android/maps/rideabout/app/g;->h:Ljava/lang/CharSequence;

    iput-boolean p1, p0, Lcom/google/android/maps/rideabout/app/g;->i:Z

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/g;->b:Landroid/app/Notification;

    iput v0, v2, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/g;->b:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/g;->b:Landroid/app/Notification;

    sget-object v2, Lcom/google/android/maps/rideabout/app/g;->c:[J

    iput-object v2, v0, Landroid/app/Notification;->vibrate:[J

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/g;->b:Landroid/app/Notification;

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/g;->g:Ljava/lang/CharSequence;

    iput-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/g;->b:Landroid/app/Notification;

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/g;->a:Landroid/app/Service;

    iget-object v3, p0, Lcom/google/android/maps/rideabout/app/g;->g:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/google/android/maps/rideabout/app/g;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/g;->d:Landroid/app/NotificationManager;

    const/16 v1, 0xc3b

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/g;->b:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/g;->b:Landroid/app/Notification;

    iput-object v5, v0, Landroid/app/Notification;->vibrate:[J

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/g;->b:Landroid/app/Notification;

    iput-object v5, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/g;->f:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/g;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/g;->f:Z

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/g;->f:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/g;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/g;->f:Z

    goto :goto_0
.end method

.method public d()Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/g;->d:Landroid/app/NotificationManager;

    return-object v0
.end method

.method protected abstract e()V
.end method

.method protected abstract f()V
.end method
