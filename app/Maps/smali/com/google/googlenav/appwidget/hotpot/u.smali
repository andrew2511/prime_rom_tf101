.class Lcom/google/googlenav/appwidget/hotpot/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/login/h;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;

.field private b:I

.field private c:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;Landroid/app/PendingIntent;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/u;->a:Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/google/googlenav/appwidget/hotpot/u;->b:I

    iput-object p2, p0, Lcom/google/googlenav/appwidget/hotpot/u;->c:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public R_()V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/u;->a:Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/u;->c:Landroid/app/PendingIntent;

    iget v2, p0, Lcom/google/googlenav/appwidget/hotpot/u;->b:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;->a(Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;Landroid/app/PendingIntent;IZ)V

    return-void
.end method

.method public S_()V
    .locals 0

    return-void
.end method

.method public W_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public an_()V
    .locals 0

    return-void
.end method

.method public ao_()V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/u;->a:Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/u;->c:Landroid/app/PendingIntent;

    iget v2, p0, Lcom/google/googlenav/appwidget/hotpot/u;->b:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;->a(Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;Landroid/app/PendingIntent;IZ)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
