.class Lcom/google/googlenav/appwidget/hotpot/activity/j;
.super Ljava/lang/Object;

# interfaces
.implements Lab/b;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/j;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/j;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->a(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;ZLjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/j;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    new-instance v1, Lcom/google/googlenav/appwidget/hotpot/activity/b;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/appwidget/hotpot/activity/b;-><init>(Lcom/google/googlenav/appwidget/hotpot/activity/j;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
