.class Lcom/google/android/maps/MapView$Repainter;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Repainter"
.end annotation


# instance fields
.field private mThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/google/android/maps/MapView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapView;)V
    .registers 2
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/google/android/maps/MapView$Repainter;->this$0:Lcom/google/android/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V
    .registers 3
    .parameter "dataRequest"

    .prologue
    .line 442
    invoke-interface {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->isImmediate()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 443
    invoke-virtual {p0}, Lcom/google/android/maps/MapView$Repainter;->repaint()V

    .line 445
    :cond_9
    return-void
.end method

.method public onNetworkError(IZLjava/lang/String;)V
    .registers 4
    .parameter "errorCode"
    .parameter "networkEverWorked"
    .parameter "debugMessage"

    .prologue
    .line 449
    return-void
.end method

.method repaint()V
    .registers 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/android/maps/MapView$Repainter;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/MapView$Repainter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_18

    .line 422
    :cond_c
    new-instance v0, Lcom/google/android/maps/MapView$Repainter$1;

    invoke-direct {v0, p0}, Lcom/google/android/maps/MapView$Repainter$1;-><init>(Lcom/google/android/maps/MapView$Repainter;)V

    iput-object v0, p0, Lcom/google/android/maps/MapView$Repainter;->mThread:Ljava/lang/Thread;

    .line 432
    iget-object v0, p0, Lcom/google/android/maps/MapView$Repainter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 434
    :cond_18
    return-void
.end method
