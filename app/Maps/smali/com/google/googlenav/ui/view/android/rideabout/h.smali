.class Lcom/google/googlenav/ui/view/android/rideabout/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/h;->a:Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x61

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/h;->a:Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->a(Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;)Lu/e;

    move-result-object v0

    invoke-virtual {v0}, Lu/e;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "is"

    const-string v1, "c"

    invoke-static {v2, v0, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/h;->a:Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->c()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "is"

    const-string v1, "e"

    invoke-static {v2, v0, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/h;->a:Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->a()V

    goto :goto_0
.end method
