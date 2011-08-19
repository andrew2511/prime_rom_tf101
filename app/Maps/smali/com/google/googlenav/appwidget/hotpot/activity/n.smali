.class Lcom/google/googlenav/appwidget/hotpot/activity/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/n;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/n;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->i(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/n;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->onSearchRequested()Z

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x55

    const-string v1, "rpr"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "l="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/googlenav/appwidget/hotpot/activity/n;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v4}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->c(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Lcom/google/googlenav/appwidget/hotpot/widget/h;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->k()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "s"

    :goto_1
    aput-object v4, v2, v3

    invoke-static {v2}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/n;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->g(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Lcom/google/googlenav/appwidget/hotpot/widget/g;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/n;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->finish()V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
