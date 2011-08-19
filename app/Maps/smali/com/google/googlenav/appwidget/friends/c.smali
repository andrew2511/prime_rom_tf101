.class Lcom/google/googlenav/appwidget/friends/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/friends/h;

.field final synthetic b:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/friends/c;->b:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    iput-object p2, p0, Lcom/google/googlenav/appwidget/friends/c;->a:Lcom/google/googlenav/appwidget/friends/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/c;->b:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/c;->a:Lcom/google/googlenav/appwidget/friends/h;

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/h;)Lcom/google/googlenav/appwidget/friends/h;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/appwidget/friends/h;->g:Lcom/google/googlenav/appwidget/friends/h;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/c;->a:Lcom/google/googlenav/appwidget/friends/h;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/c;->b:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v1, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/h;)V

    goto :goto_0
.end method
