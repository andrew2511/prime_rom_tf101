.class Lcom/google/googlenav/appwidget/hotpot/activity/l;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/l;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/l;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/l;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/l;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->b(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/l;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/l;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->b(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/l;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->c(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Lcom/google/googlenav/appwidget/hotpot/widget/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/l;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->d(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/l;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/l;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->c(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Lcom/google/googlenav/appwidget/hotpot/widget/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->k()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;ZZ)V

    :cond_1
    return-void
.end method
