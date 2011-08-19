.class Lcom/google/googlenav/appwidget/hotpot/activity/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/PendingIntent;

.field final synthetic b:Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/d;->b:Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;

    iput-object p2, p0, Lcom/google/googlenav/appwidget/hotpot/activity/d;->a:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/d;->b:Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/activity/NotifyActivity;->finish()V

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/d;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
