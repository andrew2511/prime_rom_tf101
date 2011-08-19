.class Lcom/google/googlenav/appwidget/hotpot/activity/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/googlenav/appwidget/hotpot/activity/j;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/activity/j;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/b;->b:Lcom/google/googlenav/appwidget/hotpot/activity/j;

    iput-object p2, p0, Lcom/google/googlenav/appwidget/hotpot/activity/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/b;->b:Lcom/google/googlenav/appwidget/hotpot/activity/j;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/activity/j;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/b;->b:Lcom/google/googlenav/appwidget/hotpot/activity/j;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/hotpot/activity/j;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->a(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;Ljava/lang/String;)V

    return-void
.end method
