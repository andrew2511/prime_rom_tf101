.class public Lcom/google/android/youtube/core/ui/OrientationHelper;
.super Landroid/view/OrientationEventListener;
.source "OrientationHelper.java"


# static fields
.field private static final TURN_THRESHOLD:I = 0x3c


# instance fields
.field private final activity:Landroid/app/Activity;

.field private initialOrientation:I

.field private targetOrientation:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 24
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->activity:Landroid/app/Activity;

    .line 25
    return-void
.end method

.method private turned(II)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 35
    sub-int v1, p1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 36
    .local v0, diff:I
    const/16 v1, 0x3c

    if-le v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enable()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->initialOrientation:I

    .line 30
    iput v0, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->targetOrientation:I

    .line 31
    invoke-super {p0}, Landroid/view/OrientationEventListener;->enable()V

    .line 32
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    const/4 v1, -0x1

    .line 41
    iget v0, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->initialOrientation:I

    if-ne v0, v1, :cond_1

    .line 42
    iput p1, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->initialOrientation:I

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget v0, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->targetOrientation:I

    if-ne v0, v1, :cond_2

    .line 44
    iget v0, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->initialOrientation:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/ui/OrientationHelper;->turned(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iput p1, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->targetOrientation:I

    goto :goto_0

    .line 48
    :cond_2
    iget v0, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->targetOrientation:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/ui/OrientationHelper;->turned(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->activity:Landroid/app/Activity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/OrientationHelper;->disable()V

    goto :goto_0
.end method
