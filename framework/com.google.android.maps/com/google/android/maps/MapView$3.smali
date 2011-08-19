.class Lcom/google/android/maps/MapView$3;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/maps/MapView;->getZoomControls()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/maps/MapView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapView;)V
    .registers 2
    .parameter

    .prologue
    .line 1396
    iput-object p1, p0, Lcom/google/android/maps/MapView$3;->this$0:Lcom/google/android/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/google/android/maps/MapView$3;->this$0:Lcom/google/android/maps/MapView;

    #getter for: Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;
    invoke-static {v0}, Lcom/google/android/maps/MapView;->access$700(Lcom/google/android/maps/MapView;)Landroid/widget/ZoomControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1403
    iget-object v0, p0, Lcom/google/android/maps/MapView$3;->this$0:Lcom/google/android/maps/MapView;

    #getter for: Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;
    invoke-static {v0}, Lcom/google/android/maps/MapView;->access$700(Lcom/google/android/maps/MapView;)Landroid/widget/ZoomControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->hide()V

    .line 1409
    :goto_15
    return-void

    .line 1405
    :cond_16
    iget-object v0, p0, Lcom/google/android/maps/MapView$3;->this$0:Lcom/google/android/maps/MapView;

    #getter for: Lcom/google/android/maps/MapView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/maps/MapView;->access$900(Lcom/google/android/maps/MapView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/MapView$3;->this$0:Lcom/google/android/maps/MapView;

    #getter for: Lcom/google/android/maps/MapView;->mZoomControlRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/maps/MapView;->access$800(Lcom/google/android/maps/MapView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1406
    iget-object v0, p0, Lcom/google/android/maps/MapView$3;->this$0:Lcom/google/android/maps/MapView;

    #getter for: Lcom/google/android/maps/MapView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/maps/MapView;->access$900(Lcom/google/android/maps/MapView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/MapView$3;->this$0:Lcom/google/android/maps/MapView;

    #getter for: Lcom/google/android/maps/MapView;->mZoomControlRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/maps/MapView;->access$800(Lcom/google/android/maps/MapView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/google/android/maps/MapView;->access$1000()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_15
.end method
