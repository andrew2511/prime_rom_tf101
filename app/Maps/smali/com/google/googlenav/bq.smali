.class Lcom/google/googlenav/bq;
.super Lcom/google/googlenav/bx;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/googlenav/RatingReminderAlarmManager;


# direct methods
.method constructor <init>(Lcom/google/googlenav/RatingReminderAlarmManager;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/googlenav/bq;->d:Lcom/google/googlenav/RatingReminderAlarmManager;

    iput-object p2, p0, Lcom/google/googlenav/bq;->a:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/googlenav/bq;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/googlenav/bq;->c:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/bx;-><init>(Lcom/google/googlenav/bq;)V

    return-void
.end method


# virtual methods
.method public a(Law/e;)V
    .locals 5

    new-instance v0, Lcom/google/googlenav/h;

    new-instance v1, Lcom/google/googlenav/c;

    invoke-direct {v1, p1}, Lcom/google/googlenav/c;-><init>(Law/e;)V

    invoke-direct {v0, v1}, Lcom/google/googlenav/h;-><init>(Lcom/google/googlenav/c;)V

    invoke-static {v0}, Lcom/google/googlenav/RatingReminderAlarmManager;->b(Lcom/google/googlenav/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/bq;->d:Lcom/google/googlenav/RatingReminderAlarmManager;

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->c()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/bq;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/googlenav/bq;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/googlenav/bq;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/googlenav/RatingReminderAlarmManager;->a(Lcom/google/googlenav/RatingReminderAlarmManager;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
