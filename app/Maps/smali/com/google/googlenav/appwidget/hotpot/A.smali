.class Lcom/google/googlenav/appwidget/hotpot/A;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/A;->b:Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;

    iput p2, p0, Lcom/google/googlenav/appwidget/hotpot/A;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/A;->b:Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;

    iget v1, p0, Lcom/google/googlenav/appwidget/hotpot/A;->a:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/RatingsFeatureService;->stopSelf(I)V

    return-void
.end method
