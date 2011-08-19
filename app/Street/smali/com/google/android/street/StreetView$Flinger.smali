.class Lcom/google/android/street/StreetView$Flinger;
.super Ljava/lang/Object;
.source "StreetView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/StreetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Flinger"
.end annotation


# instance fields
.field private mAbsDx:F

.field private mAbsDy:F

.field private final mIsDxPositive:Z

.field private final mIsDyPositive:Z

.field final synthetic this$0:Lcom/google/android/street/StreetView;


# direct methods
.method constructor <init>(Lcom/google/android/street/StreetView;FF)V
    .locals 4
    .parameter
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 256
    iput-object p1, p0, Lcom/google/android/street/StreetView$Flinger;->this$0:Lcom/google/android/street/StreetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/street/StreetView$Flinger;->mIsDxPositive:Z

    .line 258
    iget-boolean v0, p0, Lcom/google/android/street/StreetView$Flinger;->mIsDxPositive:Z

    if-eqz v0, :cond_1

    move v0, p2

    :goto_1
    iput v0, p0, Lcom/google/android/street/StreetView$Flinger;->mAbsDx:F

    .line 260
    cmpl-float v0, p3, v1

    if-lez v0, :cond_2

    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/street/StreetView$Flinger;->mIsDyPositive:Z

    .line 261
    iget-boolean v0, p0, Lcom/google/android/street/StreetView$Flinger;->mIsDyPositive:Z

    if-eqz v0, :cond_3

    move v0, p3

    :goto_3
    iput v0, p0, Lcom/google/android/street/StreetView$Flinger;->mAbsDy:F

    .line 262
    return-void

    :cond_0
    move v0, v2

    .line 257
    goto :goto_0

    .line 258
    :cond_1
    neg-float v0, p2

    goto :goto_1

    :cond_2
    move v0, v2

    .line 260
    goto :goto_2

    .line 261
    :cond_3
    neg-float v0, p3

    goto :goto_3
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const v6, 0x3f5eb852

    const v5, 0x3ba3d70a

    const/4 v4, 0x0

    .line 266
    iget-object v0, p0, Lcom/google/android/street/StreetView$Flinger;->this$0:Lcom/google/android/street/StreetView;

    invoke-static {v0}, Lcom/google/android/street/StreetView;->access$500(Lcom/google/android/street/StreetView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 269
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/street/StreetView$Flinger;->this$0:Lcom/google/android/street/StreetView;

    invoke-static {v1}, Lcom/google/android/street/StreetView;->access$500(Lcom/google/android/street/StreetView;)Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/street/StreetView$Flinger;->this$0:Lcom/google/android/street/StreetView;

    invoke-static {v1}, Lcom/google/android/street/StreetView;->access$600(Lcom/google/android/street/StreetView;)Lcom/google/android/street/PanoramaConfig;

    move-result-object v1

    if-nez v1, :cond_1

    .line 284
    :cond_0
    monitor-exit v0

    .line 285
    return-void

    .line 276
    :cond_1
    iget v1, p0, Lcom/google/android/street/StreetView$Flinger;->mAbsDx:F

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_2

    iget v1, p0, Lcom/google/android/street/StreetView$Flinger;->mAbsDy:F

    cmpg-float v1, v1, v4

    if-lez v1, :cond_0

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/google/android/street/StreetView$Flinger;->this$0:Lcom/google/android/street/StreetView;

    iget-boolean v2, p0, Lcom/google/android/street/StreetView$Flinger;->mIsDxPositive:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/street/StreetView$Flinger;->mAbsDx:F

    :goto_2
    iget-boolean v3, p0, Lcom/google/android/street/StreetView$Flinger;->mIsDyPositive:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/google/android/street/StreetView$Flinger;->mAbsDy:F

    :goto_3
    invoke-virtual {v1, v2, v3}, Lcom/google/android/street/StreetView;->yawTilt(FF)V

    .line 281
    iget v1, p0, Lcom/google/android/street/StreetView$Flinger;->mAbsDx:F

    mul-float/2addr v1, v6

    sub-float/2addr v1, v5

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/google/android/street/StreetView$Flinger;->mAbsDx:F

    .line 282
    iget v1, p0, Lcom/google/android/street/StreetView$Flinger;->mAbsDy:F

    mul-float/2addr v1, v6

    sub-float/2addr v1, v5

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/google/android/street/StreetView$Flinger;->mAbsDy:F

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 279
    :cond_3
    :try_start_2
    iget v2, p0, Lcom/google/android/street/StreetView$Flinger;->mAbsDx:F

    neg-float v2, v2

    goto :goto_2

    :cond_4
    iget v3, p0, Lcom/google/android/street/StreetView$Flinger;->mAbsDy:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    neg-float v3, v3

    goto :goto_3

    .line 270
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method stop()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/street/StreetView$Flinger;->this$0:Lcom/google/android/street/StreetView;

    invoke-static {v0}, Lcom/google/android/street/StreetView;->access$500(Lcom/google/android/street/StreetView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 289
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/google/android/street/StreetView$Flinger;->mAbsDx:F

    .line 290
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/street/StreetView$Flinger;->mAbsDy:F

    .line 291
    iget-object v1, p0, Lcom/google/android/street/StreetView$Flinger;->this$0:Lcom/google/android/street/StreetView;

    invoke-static {v1}, Lcom/google/android/street/StreetView;->access$500(Lcom/google/android/street/StreetView;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 292
    monitor-exit v0

    .line 293
    return-void

    .line 292
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
