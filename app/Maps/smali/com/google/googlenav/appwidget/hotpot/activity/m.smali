.class Lcom/google/googlenav/appwidget/hotpot/activity/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/m;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5

    const/16 v0, 0x55

    const-string v1, "rpr"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "c"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/googlenav/appwidget/hotpot/activity/m;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v4}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->c(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Lcom/google/googlenav/appwidget/hotpot/widget/h;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/googlenav/appwidget/hotpot/activity/m;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v4}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->c(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Lcom/google/googlenav/appwidget/hotpot/widget/h;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->k()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "s"

    :goto_0
    aput-object v4, v2, v3

    invoke-static {v2}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/m;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->finish()V

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
