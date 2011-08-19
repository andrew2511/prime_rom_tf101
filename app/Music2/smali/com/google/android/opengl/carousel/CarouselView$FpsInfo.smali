.class public Lcom/google/android/opengl/carousel/CarouselView$FpsInfo;
.super Ljava/lang/Object;
.source "CarouselView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/carousel/CarouselView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FpsInfo"
.end annotation


# instance fields
.field public mAvgRenderTime:D

.field public mFps:D

.field public mUptimeMillis:J


# direct methods
.method public constructor <init>(DD)V
    .locals 2
    .parameter "fps"
    .parameter "renderTime"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselView$FpsInfo;->mUptimeMillis:J

    .line 125
    iput-wide p1, p0, Lcom/google/android/opengl/carousel/CarouselView$FpsInfo;->mFps:D

    .line 126
    iput-wide p3, p0, Lcom/google/android/opengl/carousel/CarouselView$FpsInfo;->mAvgRenderTime:D

    .line 127
    return-void
.end method
