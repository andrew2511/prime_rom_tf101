.class Lcom/google/googlenav/appwidget/hotpot/activity/k;
.super Lcom/google/googlenav/aK;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/k;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    invoke-direct {p0}, Lcom/google/googlenav/aK;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "w"

    const-string v1, "f"

    invoke-static {v0, v1}, Lcom/google/googlenav/az;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/k;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/k;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    const/16 v1, 0x2fb

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/k;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/k;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->b(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->a(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;ZLjava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "w"

    const-string v1, "s"

    invoke-static {v0, v1}, Lcom/google/googlenav/az;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/k;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/k;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    invoke-static {v0, v2}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->a(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;Z)Z

    return-void
.end method
