.class Lcom/google/android/street/StreetView$3;
.super Ljava/lang/Object;
.source "StreetView.java"

# interfaces
.implements Landroid/widget/ZoomButtonsController$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/street/StreetView;->initialize(Lcom/google/android/street/Street;Lcom/google/android/street/PanoramaManager;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/street/StreetView;


# direct methods
.method constructor <init>(Lcom/google/android/street/StreetView;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/google/android/street/StreetView$3;->this$0:Lcom/google/android/street/StreetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 544
    if-eqz p1, :cond_0

    .line 545
    iget-object v0, p0, Lcom/google/android/street/StreetView$3;->this$0:Lcom/google/android/street/StreetView;

    invoke-static {v0}, Lcom/google/android/street/StreetView;->access$1200(Lcom/google/android/street/StreetView;)V

    .line 550
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/google/android/street/StreetView$3;->this$0:Lcom/google/android/street/StreetView;

    invoke-static {v0}, Lcom/google/android/street/StreetView;->access$1300(Lcom/google/android/street/StreetView;)Landroid/widget/ZoomButtonsController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setFocusable(Z)V

    goto :goto_0
.end method

.method public onZoom(Z)V
    .locals 2
    .parameter "zoomIn"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/android/street/StreetView$3;->this$0:Lcom/google/android/street/StreetView;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f80

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/street/StreetView;->access$1400(Lcom/google/android/street/StreetView;F)V

    .line 554
    return-void

    .line 553
    :cond_0
    const/high16 v1, -0x4080

    goto :goto_0
.end method
