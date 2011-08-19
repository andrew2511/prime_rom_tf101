.class Lcom/google/googlenav/appwidget/hotpot/activity/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/o;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/o;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->f(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/o;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v0}, Lcom/google/googlenav/android/S;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/o;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->g(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Lcom/google/googlenav/appwidget/hotpot/widget/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->d()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/o;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/o;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->f(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/o;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    const/4 v1, 0x1

    invoke-static {v0, v5, v1}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;ZZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/o;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->g(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Lcom/google/googlenav/appwidget/hotpot/widget/g;

    move-result-object v0

    const/16 v1, 0x1c6

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/activity/o;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->a(Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method
