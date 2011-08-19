.class Lcom/google/googlenav/appwidget/hotpot/activity/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/view/android/E;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/i;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/i;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    invoke-static {v0, p2}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->b(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/i;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/i;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->b(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->c(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "w"

    const-string v1, "c"

    invoke-static {v0, v1}, Lcom/google/googlenav/az;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/i;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->a(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;ZLjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/i;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/i;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->a(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/activity/i;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    invoke-static {v2}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->b(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->a(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;ZLjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6a9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
