.class Lcom/google/android/maps/MapView$4;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/maps/MapView;->createZoomControls()Landroid/widget/ZoomControls;
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
    .line 1418
    iput-object p1, p0, Lcom/google/android/maps/MapView$4;->this$0:Lcom/google/android/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/google/android/maps/MapView$4;->this$0:Lcom/google/android/maps/MapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->doZoom(Z)Z

    .line 1421
    return-void
.end method
