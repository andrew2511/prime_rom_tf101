.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$1;
.super Ljava/lang/Object;
.source "MapService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;-><init>(IIIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;


# direct methods
.method constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)V
    .registers 2
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$1;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$1;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #calls: Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->startWorkThread()V
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->access$000(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)V

    .line 277
    return-void
.end method
