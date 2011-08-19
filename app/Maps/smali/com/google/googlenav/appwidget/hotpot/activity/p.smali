.class Lcom/google/googlenav/appwidget/hotpot/activity/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/p;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/p;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    check-cast p2, Lcom/google/googlenav/appwidget/hotpot/f;

    invoke-virtual {p2}, Lcom/google/googlenav/appwidget/hotpot/f;->a()Lcom/google/googlenav/appwidget/hotpot/HotpotService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;Lcom/google/googlenav/appwidget/hotpot/HotpotService;)Lcom/google/googlenav/appwidget/hotpot/HotpotService;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/p;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/p;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->e(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Lcom/google/googlenav/appwidget/hotpot/HotpotService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->b()Lcom/google/googlenav/appwidget/hotpot/widget/h;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;Lcom/google/googlenav/appwidget/hotpot/widget/h;)Lcom/google/googlenav/appwidget/hotpot/widget/h;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/p;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/p;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->c(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Lcom/google/googlenav/appwidget/hotpot/widget/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v4

    :goto_0
    invoke-static {v0, v1, v3}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;ZZ)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/p;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->c(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Lcom/google/googlenav/appwidget/hotpot/widget/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/p;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->c(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Lcom/google/googlenav/appwidget/hotpot/widget/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/p;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/p;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->f(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/p;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->c(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Lcom/google/googlenav/appwidget/hotpot/widget/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->i()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/p;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->c(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Lcom/google/googlenav/appwidget/hotpot/widget/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->e()Lab/d;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "location_fix"

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/p;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->c(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Lcom/google/googlenav/appwidget/hotpot/widget/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->e()Lab/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "is_manual"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/p;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->e(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Lcom/google/googlenav/appwidget/hotpot/HotpotService;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->a(ILjava/lang/Object;)V

    :goto_1
    move v0, v4

    :goto_2
    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/p;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v1, v3, v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;ZZ)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/p;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    new-instance v1, Lcom/google/googlenav/appwidget/hotpot/activity/l;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/activity/p;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-direct {v1, v2}, Lcom/google/googlenav/appwidget/hotpot/activity/l;-><init>(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/p;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/activity/p;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v2}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->h(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_1
    move v1, v3

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/p;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->g(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Lcom/google/googlenav/appwidget/hotpot/widget/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->d()V

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/p;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/p;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;Lcom/google/googlenav/appwidget/hotpot/HotpotService;)Lcom/google/googlenav/appwidget/hotpot/HotpotService;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/p;->a:Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->finish()V

    return-void
.end method
