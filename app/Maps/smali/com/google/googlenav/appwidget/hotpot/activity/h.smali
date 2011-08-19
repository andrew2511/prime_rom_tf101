.class Lcom/google/googlenav/appwidget/hotpot/activity/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/h;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/h;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/h;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->a(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/activity/h;->a:Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;

    invoke-static {v2}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->b(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;->a(Lcom/google/googlenav/appwidget/hotpot/activity/RatingsTermsActivity;ZLjava/lang/String;)V

    return-void
.end method
