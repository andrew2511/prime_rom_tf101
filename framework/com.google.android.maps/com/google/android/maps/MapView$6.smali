.class Lcom/google/android/maps/MapView$6;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Landroid/widget/ZoomButtonsController$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/maps/MapView;->createZoomButtonsController()Landroid/widget/ZoomButtonsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTempPoint:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/google/android/maps/MapView;

.field final synthetic val$controller:Landroid/widget/ZoomButtonsController;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapView;Landroid/widget/ZoomButtonsController;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1446
    iput-object p1, p0, Lcom/google/android/maps/MapView$6;->this$0:Lcom/google/android/maps/MapView;

    iput-object p2, p0, Lcom/google/android/maps/MapView$6;->val$controller:Landroid/widget/ZoomButtonsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1447
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/MapView$6;->mTempPoint:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 1473
    if-eqz p1, :cond_8

    .line 1474
    iget-object v0, p0, Lcom/google/android/maps/MapView$6;->this$0:Lcom/google/android/maps/MapView;

    #calls: Lcom/google/android/maps/MapView;->updateZoomControls()V
    invoke-static {v0}, Lcom/google/android/maps/MapView;->access$1100(Lcom/google/android/maps/MapView;)V

    .line 1478
    :goto_7
    return-void

    .line 1476
    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/MapView$6;->val$controller:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setFocusable(Z)V

    goto :goto_7
.end method

.method public onZoom(Z)V
    .registers 3
    .parameter "zoomIn"

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/google/android/maps/MapView$6;->this$0:Lcom/google/android/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapView;->doZoom(Z)Z

    .line 1482
    return-void
.end method
