.class Lcom/splashtop/remote/zoom/DynamicZoomControl$1;
.super Ljava/lang/Object;
.source "DynamicZoomControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/zoom/DynamicZoomControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/zoom/DynamicZoomControl;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/zoom/DynamicZoomControl;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl$1;->this$0:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const v7, 0x3c23d70a

    const v6, 0x3b83126f

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 267
    .local v1, startTime:J
    iget-object v5, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl$1;->this$0:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    invoke-static {v5}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->access$000(Lcom/splashtop/remote/zoom/DynamicZoomControl;)Lcom/splashtop/remote/utils/SpringDynamics;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/splashtop/remote/utils/SpringDynamics;->update(J)V

    .line 268
    iget-object v5, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl$1;->this$0:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    invoke-static {v5}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->access$100(Lcom/splashtop/remote/zoom/DynamicZoomControl;)Lcom/splashtop/remote/utils/SpringDynamics;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/splashtop/remote/utils/SpringDynamics;->update(J)V

    .line 269
    iget-object v5, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl$1;->this$0:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    invoke-static {v5}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->access$000(Lcom/splashtop/remote/zoom/DynamicZoomControl;)Lcom/splashtop/remote/utils/SpringDynamics;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Lcom/splashtop/remote/utils/SpringDynamics;->isAtRest(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl$1;->this$0:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    invoke-static {v5}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->access$100(Lcom/splashtop/remote/zoom/DynamicZoomControl;)Lcom/splashtop/remote/utils/SpringDynamics;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Lcom/splashtop/remote/utils/SpringDynamics;->isAtRest(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    move v0, v5

    .line 272
    .local v0, isAtRest:Z
    :goto_0
    iget-object v5, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl$1;->this$0:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    invoke-static {v5}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->access$200(Lcom/splashtop/remote/zoom/DynamicZoomControl;)Lcom/splashtop/remote/zoom/ZoomState;

    move-result-object v5

    iget-object v6, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl$1;->this$0:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    invoke-static {v6}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->access$000(Lcom/splashtop/remote/zoom/DynamicZoomControl;)Lcom/splashtop/remote/utils/SpringDynamics;

    move-result-object v6

    invoke-virtual {v6}, Lcom/splashtop/remote/utils/SpringDynamics;->getPosition()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/splashtop/remote/zoom/ZoomState;->setPanX(F)V

    .line 273
    iget-object v5, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl$1;->this$0:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    invoke-static {v5}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->access$200(Lcom/splashtop/remote/zoom/DynamicZoomControl;)Lcom/splashtop/remote/zoom/ZoomState;

    move-result-object v5

    iget-object v6, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl$1;->this$0:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    invoke-static {v6}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->access$100(Lcom/splashtop/remote/zoom/DynamicZoomControl;)Lcom/splashtop/remote/utils/SpringDynamics;

    move-result-object v6

    invoke-virtual {v6}, Lcom/splashtop/remote/utils/SpringDynamics;->getPosition()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/splashtop/remote/zoom/ZoomState;->setPanY(F)V

    .line 275
    if-nez v0, :cond_0

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 277
    .local v3, stopTime:J
    iget-object v5, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl$1;->this$0:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    invoke-static {v5}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->access$400(Lcom/splashtop/remote/zoom/DynamicZoomControl;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl$1;->this$0:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    invoke-static {v6}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->access$300(Lcom/splashtop/remote/zoom/DynamicZoomControl;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v7, 0x14

    sub-long v9, v3, v1

    sub-long/2addr v7, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    .end local v3           #stopTime:J
    :cond_0
    iget-object v5, p0, Lcom/splashtop/remote/zoom/DynamicZoomControl$1;->this$0:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    invoke-static {v5}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->access$200(Lcom/splashtop/remote/zoom/DynamicZoomControl;)Lcom/splashtop/remote/zoom/ZoomState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/splashtop/remote/zoom/ZoomState;->notifyObservers()V

    .line 281
    return-void

    .line 269
    .end local v0           #isAtRest:Z
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method
