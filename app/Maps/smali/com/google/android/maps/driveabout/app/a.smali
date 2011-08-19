.class public Lcom/google/android/maps/driveabout/app/a;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Landroid/app/Service;

.field protected final b:Landroid/app/Notification;

.field private final c:Landroid/app/NotificationManager;

.field private final d:Landroid/content/Intent;

.field private e:Z

.field private f:Landroid/app/PendingIntent;

.field private g:Ljava/lang/CharSequence;

.field private h:Ljava/lang/CharSequence;

.field private i:[LF/u;

.field private j:I

.field private k:[LF/K;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/app/Service;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->c:Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->b:Landroid/app/Notification;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>(Landroid/app/Service;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/app/Service;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->c:Landroid/app/NotificationManager;

    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f0200f5

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->b:Landroid/app/Notification;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->b:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/app/Service;

    const-class v2, Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method

.method private static a(Z)I
    .locals 1

    if-eqz p0, :cond_0

    const v0, 0x7f0200f5

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0200f6

    goto :goto_0
.end method

.method public static a(Landroid/app/Service;)Lcom/google/android/maps/driveabout/app/a;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/app/a;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/a;-><init>(Landroid/app/Service;)V

    return-object v0
.end method

.method private a([LF/u;I[LF/K;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->i:[LF/u;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/a;->j:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->k:[LF/K;

    if-ne p3, v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Landroid/content/Intent;

    invoke-static {p1, p2, p3}, Lcom/google/android/maps/driveabout/app/bj;->a([LF/u;I[LF/K;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/app/Service;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->d:Landroid/content/Intent;

    const/high16 v2, 0x800

    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->f:Landroid/app/PendingIntent;

    array-length v0, p1

    sub-int/2addr v0, v4

    aget-object v0, p1, v0

    invoke-static {}, Lcom/google/android/maps/driveabout/app/t;->a()Lcom/google/android/maps/driveabout/app/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/t;->a(LF/u;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->g:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/a;->i:[LF/u;

    iput p2, p0, Lcom/google/android/maps/driveabout/app/a;->j:I

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/a;->k:[LF/K;

    move v0, v4

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/a;->d()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->c:Landroid/app/NotificationManager;

    const/16 v1, 0x174f

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-void
.end method

.method public a([LF/u;I[LF/K;Ljava/lang/CharSequence;ZZ)V
    .locals 4

    invoke-static {p5}, Lcom/google/android/maps/driveabout/app/a;->a(Z)I

    move-result v0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/a;->a([LF/u;I[LF/K;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->b:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->h:Ljava/lang/CharSequence;

    invoke-static {p4, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/a;->e:Z

    if-eq p6, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->b:Landroid/app/Notification;

    iput v0, v1, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->b:Landroid/app/Notification;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/app/Service;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/a;->g:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/a;->f:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, p4, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/a;->h:Ljava/lang/CharSequence;

    if-eqz p6, :cond_2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/a;->c()V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->c:Landroid/app/NotificationManager;

    const/16 v1, 0x174f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/a;->b:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/a;->d()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public b()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->d:Landroid/content/Intent;

    return-object v0
.end method

.method public c()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->e:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/app/Service;

    const/16 v1, 0x174f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/a;->b:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->e:Z

    goto :goto_0
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->e:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/a;->a:Landroid/app/Service;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/a;->e:Z

    goto :goto_0
.end method
