.class Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;
.super Ljava/lang/Object;
.source "VideoAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatPosition"
.end annotation


# instance fields
.field x:F

.field y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter "_x"
    .parameter "_y"

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p1, p0, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;->x:F

    .line 129
    iput p2, p0, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;->y:F

    .line 130
    return-void
.end method
