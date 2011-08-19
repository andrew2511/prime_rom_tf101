.class public Lcom/google/android/talk/videochat/VideoAnimator;
.super Ljava/lang/Object;
.source "VideoAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/VideoAnimator$CameraViewSizeChangedCallback;,
        Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;,
        Lcom/google/android/talk/videochat/VideoAnimator$FloatPositionEvaluator;
    }
.end annotation


# static fields
.field private static final BACKGROUND_FINAL_COLOR:I = -0x1000000

.field private static final CAMERA_VIDEO_CORNER_FINAL_ALPHA:F = 1.0f

.field private static final CAMERA_VIDEO_VANITY_FINAL_ALPHA:F = 1.0f

.field private static final CAMERA_VIDEO_VANITY_FINAL_POSITION:Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition; = null

.field private static final CAMERA_VIDEO_VANITY_FINAL_SIZE:F = 0.3f

.field private static final CAMERA_VIDEO_VANITY_INITIAL_SIZE:F = 0.27f

.field private static final FADE_LOCAL_VIDEO_DURATION:I = 0x1f4

.field private static final FADE_TO_BLACK_DURATION:I = 0x1f4

.field private static final REMOTE_VIDEO_FINAL_ALPHA:F = 1.0f

.field private static final REMOTE_VIDEO_FINAL_POSITION:Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition; = null

.field private static final REMOTE_VIDEO_FINAL_SIZE:F = 1.0f


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundFadeAnimator:Landroid/animation/ObjectAnimator;

.field private mBackgroundImageAlpha:F

.field private mCameraFrameAspectRatio:F

.field private mCameraMarginBottom:I

.field private mCameraMarginRight:I

.field private mCameraVideoCornerFinalHeight:F

.field private mCameraVideoCornerFinalPosition:Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;

.field private mCameraVideoCornerFinalSizeRatio:F

.field private mCameraVideoCornerFinalWidth:F

.field private mCameraViewSizeChangedCallback:Lcom/google/android/talk/videochat/VideoAnimator$CameraViewSizeChangedCallback;

.field private mHideLocalAnimator:Landroid/animation/ObjectAnimator;

.field private mLocalMoveToCornerAnimator:Landroid/animation/AnimatorSet;

.field private mLocalVideoAlpha:F

.field private mLocalVideoAvailable:Z

.field private mLocalVideoRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

.field private mLocalVideoSize:F

.field private mLocalVideoX:F

.field private mLocalVideoY:F

.field private mLocalViewFadeInInAnimator:Landroid/animation/ObjectAnimator;

.field private mLocalViewFlyInAnimator:Landroid/animation/AnimatorSet;

.field private mNeedToAnimateToCorner:Z

.field private mNeedToFadeInToCorner:Z

.field private mNeedToPlaceInCorner:Z

.field private mRemoteVideoAlpha:F

.field private mRemoteVideoRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

.field private mRemoteVideoSize:F

.field private mRemoteVideoX:F

.field private mRemoteVideoY:F

.field private mRemoteViewFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mShowLocalAnimator:Landroid/animation/ObjectAnimator;

.field private mUnhideLocalVideoIfAvailable:Z

.field private mVideoFrameToCornerAnimDuration:I

.field private mViewportHeight:I

.field private mViewportWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f00

    .line 23
    new-instance v0, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;

    invoke-direct {v0, v1, v1}, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;-><init>(FF)V

    sput-object v0, Lcom/google/android/talk/videochat/VideoAnimator;->CAMERA_VIDEO_VANITY_FINAL_POSITION:Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;

    .line 35
    new-instance v0, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;

    invoke-direct {v0, v1, v1}, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;-><init>(FF)V

    sput-object v0, Lcom/google/android/talk/videochat/VideoAnimator;->REMOTE_VIDEO_FINAL_POSITION:Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/google/android/talk/videochat/VideoAnimator$CameraViewSizeChangedCallback;)V
    .locals 8
    .parameter "context"
    .parameter "initiate"
    .parameter "callback"

    .prologue
    const/high16 v4, 0x3fc0

    const-wide/16 v6, 0x1f4

    const/high16 v3, 0x3f00

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v1, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;-><init>(FFFF)V

    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteVideoRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    .line 44
    new-instance v1, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;-><init>(FFFF)V

    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalVideoRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    .line 45
    iput v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteVideoX:F

    .line 46
    iput v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteVideoY:F

    .line 47
    iput v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteVideoSize:F

    .line 48
    iput v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalVideoX:F

    .line 49
    iput v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalVideoY:F

    .line 50
    iput v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalVideoSize:F

    .line 51
    iput v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteVideoAlpha:F

    .line 52
    iput v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalVideoAlpha:F

    .line 135
    iput-object p3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraViewSizeChangedCallback:Lcom/google/android/talk/videochat/VideoAnimator$CameraViewSizeChangedCallback;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mVideoFrameToCornerAnimDuration:I

    .line 139
    const-string v1, "remoteVideoAlpha"

    new-array v2, v5, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteViewFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 141
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteViewFadeInAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 142
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteViewFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 145
    const-string v1, "localVideoAlpha"

    new-array v2, v5, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalViewFadeInInAnimator:Landroid/animation/ObjectAnimator;

    .line 147
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalViewFadeInInAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 148
    const-string v1, "localVideoSize"

    new-array v2, v5, [F

    fill-array-data v2, :array_2

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 151
    .local v0, localViewScaleAnimator:Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4020

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 152
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalViewFlyInAnimator:Landroid/animation/AnimatorSet;

    .line 153
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalViewFlyInAnimator:Landroid/animation/AnimatorSet;

    new-array v2, v5, [Landroid/animation/Animator;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalViewFadeInInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 156
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalViewFlyInAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 159
    if-eqz p2, :cond_0

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mBackgroundColor:I

    .line 164
    :goto_0
    const-string v1, "backgroundImageAlpha"

    new-array v2, v5, [F

    fill-array-data v2, :array_3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mBackgroundFadeAnimator:Landroid/animation/ObjectAnimator;

    .line 166
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mBackgroundFadeAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mBackgroundFadeAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 168
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mBackgroundFadeAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/google/android/talk/videochat/VideoAnimator$1;

    invoke-direct {v2, p0}, Lcom/google/android/talk/videochat/VideoAnimator$1;-><init>(Lcom/google/android/talk/videochat/VideoAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraMarginBottom:I

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraMarginRight:I

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraVideoCornerFinalWidth:F

    .line 186
    const-string v1, "localVideoAlpha"

    new-array v2, v5, [F

    fill-array-data v2, :array_4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mShowLocalAnimator:Landroid/animation/ObjectAnimator;

    .line 188
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mShowLocalAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 190
    const-string v1, "localVideoAlpha"

    new-array v2, v5, [F

    fill-array-data v2, :array_5

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mHideLocalAnimator:Landroid/animation/ObjectAnimator;

    .line 192
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mHideLocalAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 193
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mHideLocalAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/google/android/talk/videochat/VideoAnimator$2;

    invoke-direct {v2, p0}, Lcom/google/android/talk/videochat/VideoAnimator$2;-><init>(Lcom/google/android/talk/videochat/VideoAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 205
    return-void

    .line 162
    :cond_0
    const/high16 v1, -0x100

    iput v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mBackgroundColor:I

    goto/16 :goto_0

    .line 139
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 145
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 148
    :array_2
    .array-data 0x4
        0x71t 0x3dt 0x8at 0x3et
        0x9at 0x99t 0x99t 0x3et
    .end array-data

    .line 164
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 186
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 190
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/google/android/talk/videochat/VideoAnimator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mUnhideLocalVideoIfAvailable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/talk/videochat/VideoAnimator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalVideoAvailable:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/videochat/VideoAnimator;)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mShowLocalAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private calculateCameraCornerSizePostion()V
    .locals 13

    .prologue
    const/high16 v9, 0x4000

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 253
    iget v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraFrameAspectRatio:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 255
    iget v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraVideoCornerFinalWidth:F

    iget v7, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraFrameAspectRatio:F

    div-float v0, v6, v7

    .line 256
    .local v0, height:F
    iput v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraVideoCornerFinalHeight:F

    .line 257
    iget v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportHeight:I

    int-to-float v6, v6

    div-float v6, v0, v6

    iput v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraVideoCornerFinalSizeRatio:F

    .line 266
    .end local v0           #height:F
    :goto_0
    iget v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportWidth:I

    iget v7, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraMarginRight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraVideoCornerFinalWidth:F

    div-float/2addr v7, v9

    sub-float v4, v6, v7

    .line 267
    .local v4, x:F
    iget v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportHeight:I

    iget v7, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraMarginBottom:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraVideoCornerFinalWidth:F

    iget v8, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraFrameAspectRatio:F

    div-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float v5, v6, v7

    .line 270
    .local v5, y:F
    new-instance v6, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;

    iget v7, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportWidth:I

    int-to-float v7, v7

    div-float v7, v4, v7

    iget v8, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportHeight:I

    int-to-float v8, v8

    div-float v8, v5, v8

    invoke-direct {v6, v7, v8}, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;-><init>(FF)V

    iput-object v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraVideoCornerFinalPosition:Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;

    .line 273
    iget-object v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraViewSizeChangedCallback:Lcom/google/android/talk/videochat/VideoAnimator$CameraViewSizeChangedCallback;

    if-eqz v6, :cond_0

    .line 274
    iget-object v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraViewSizeChangedCallback:Lcom/google/android/talk/videochat/VideoAnimator$CameraViewSizeChangedCallback;

    iget v7, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraVideoCornerFinalWidth:F

    float-to-int v7, v7

    iget v8, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraVideoCornerFinalHeight:F

    float-to-int v8, v8

    invoke-interface {v6, v7, v8}, Lcom/google/android/talk/videochat/VideoAnimator$CameraViewSizeChangedCallback;->onCameraViewSizeChanged(II)V

    .line 280
    :cond_0
    const-string v6, "localVideoPosition"

    new-instance v7, Lcom/google/android/talk/videochat/VideoAnimator$FloatPositionEvaluator;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/google/android/talk/videochat/VideoAnimator$FloatPositionEvaluator;-><init>(Lcom/google/android/talk/videochat/VideoAnimator;Lcom/google/android/talk/videochat/VideoAnimator$1;)V

    new-array v8, v12, [Ljava/lang/Object;

    sget-object v9, Lcom/google/android/talk/videochat/VideoAnimator;->CAMERA_VIDEO_VANITY_FINAL_POSITION:Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraVideoCornerFinalPosition:Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;

    aput-object v9, v8, v11

    invoke-static {p0, v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 284
    .local v2, localTranslateToCornerAnimator:Landroid/animation/ObjectAnimator;
    const-string v6, "localVideoSize"

    new-array v7, v12, [F

    const v8, 0x3e99999a

    aput v8, v7, v10

    iget v8, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraVideoCornerFinalSizeRatio:F

    aput v8, v7, v11

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 287
    .local v1, localShrinkToCornerAnimator:Landroid/animation/ObjectAnimator;
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalMoveToCornerAnimator:Landroid/animation/AnimatorSet;

    .line 288
    iget-object v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalMoveToCornerAnimator:Landroid/animation/AnimatorSet;

    new-array v7, v12, [Landroid/animation/Animator;

    aput-object v2, v7, v10

    aput-object v1, v7, v11

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 291
    iget-object v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalMoveToCornerAnimator:Landroid/animation/AnimatorSet;

    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 292
    iget-object v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalMoveToCornerAnimator:Landroid/animation/AnimatorSet;

    iget v7, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mVideoFrameToCornerAnimDuration:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 293
    return-void

    .line 260
    .end local v1           #localShrinkToCornerAnimator:Landroid/animation/ObjectAnimator;
    .end local v2           #localTranslateToCornerAnimator:Landroid/animation/ObjectAnimator;
    .end local v4           #x:F
    .end local v5           #y:F
    :cond_1
    iget v3, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraVideoCornerFinalWidth:F

    .line 261
    .local v3, width:F
    iget v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraFrameAspectRatio:F

    div-float v6, v3, v6

    iput v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraVideoCornerFinalHeight:F

    .line 262
    iget v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportWidth:I

    int-to-float v6, v6

    div-float v6, v3, v6

    iput v6, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraVideoCornerFinalSizeRatio:F

    goto/16 :goto_0
.end method

.method private isFullySpecified()Z
    .locals 2

    .prologue
    .line 248
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraFrameAspectRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportHeight:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onFullySpecified()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->calculateCameraCornerSizePostion()V

    .line 235
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToAnimateToCorner:Z

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->startCameraMoveToCornerAnimation()V

    .line 237
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToAnimateToCorner:Z

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToPlaceInCorner:Z

    if-eqz v0, :cond_2

    .line 239
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->placeCameraInCorner()V

    .line 240
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToPlaceInCorner:Z

    goto :goto_0

    .line 241
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToFadeInToCorner:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->startLocalVideoFadeInAnimation()V

    .line 243
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToFadeInToCorner:Z

    goto :goto_0
.end method

.method private updateLocalRect()V
    .locals 3

    .prologue
    .line 443
    iget v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalVideoSize:F

    const/high16 v2, 0x4000

    div-float v0, v1, v2

    .line 444
    .local v0, halfSize:F
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalVideoRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    iget v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalVideoX:F

    sub-float/2addr v2, v0

    iput v2, v1, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->left:F

    .line 445
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalVideoRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    iget v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalVideoY:F

    sub-float/2addr v2, v0

    iput v2, v1, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->top:F

    .line 446
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalVideoRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    iget v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalVideoX:F

    add-float/2addr v2, v0

    iput v2, v1, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->right:F

    .line 447
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalVideoRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    iget v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalVideoY:F

    add-float/2addr v2, v0

    iput v2, v1, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->bottom:F

    .line 448
    return-void
.end method

.method private updateRemoteRect()V
    .locals 3

    .prologue
    .line 435
    iget v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteVideoSize:F

    const/high16 v2, 0x4000

    div-float v0, v1, v2

    .line 436
    .local v0, halfSize:F
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteVideoRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    iget v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteVideoX:F

    sub-float/2addr v2, v0

    iput v2, v1, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->left:F

    .line 437
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteVideoRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    iget v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteVideoY:F

    sub-float/2addr v2, v0

    iput v2, v1, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->top:F

    .line 438
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteVideoRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    iget v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteVideoX:F

    add-float/2addr v2, v0

    iput v2, v1, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->right:F

    .line 439
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteVideoRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    iget v2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteVideoY:F

    add-float/2addr v2, v0

    iput v2, v1, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->bottom:F

    .line 440
    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mBackgroundColor:I

    return v0
.end method

.method public getBackgroundImageAlpha()F
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mBackgroundImageAlpha:F

    return v0
.end method

.method public getLocalVideoAlpha()F
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalVideoAlpha:F

    return v0
.end method

.method public getLocalVideoRect()Lcom/google/android/talk/videochat/GlVideoView$FloatRect;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalVideoRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    return-object v0
.end method

.method public getRemoteVideoAlpha()F
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteVideoAlpha:F

    return v0
.end method

.method public getRemoteVideoRect()Lcom/google/android/talk/videochat/GlVideoView$FloatRect;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteVideoRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    return-object v0
.end method

.method public placeCameraInCorner()V
    .locals 1

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->isFullySpecified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToPlaceInCorner:Z

    .line 387
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraVideoCornerFinalPosition:Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setLocalVideoPosition(Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;)V

    .line 383
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraVideoCornerFinalSizeRatio:F

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setLocalVideoSize(F)V

    .line 384
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setLocalVideoAlpha(F)V

    .line 385
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->updateLocalRect()V

    goto :goto_0
.end method

.method public placeCameraInVanity()V
    .locals 1

    .prologue
    .line 390
    sget-object v0, Lcom/google/android/talk/videochat/VideoAnimator;->CAMERA_VIDEO_VANITY_FINAL_POSITION:Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setLocalVideoPosition(Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;)V

    .line 391
    const v0, 0x3e99999a

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setLocalVideoSize(F)V

    .line 392
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setLocalVideoAlpha(F)V

    .line 393
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->updateLocalRect()V

    .line 394
    return-void
.end method

.method public placeRemoteInBackground()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 372
    sget-object v0, Lcom/google/android/talk/videochat/VideoAnimator;->REMOTE_VIDEO_FINAL_POSITION:Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteVideoPosition(Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;)V

    .line 373
    invoke-virtual {p0, v1}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteVideoSize(F)V

    .line 374
    invoke-virtual {p0, v1}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteVideoAlpha(F)V

    .line 375
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->updateLocalRect()V

    .line 376
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 401
    iput p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mBackgroundColor:I

    .line 402
    return-void
.end method

.method public setBackgroundImageAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 397
    iput p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mBackgroundImageAlpha:F

    .line 398
    return-void
.end method

.method public setCameraFrameAspectRatio(F)V
    .locals 1
    .parameter "aspectRatio"

    .prologue
    .line 208
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraFrameAspectRatio:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iput p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraFrameAspectRatio:F

    .line 215
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->isFullySpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->onFullySpecified()V

    goto :goto_0
.end method

.method public setLocalVideoAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 419
    iput p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalVideoAlpha:F

    .line 420
    return-void
.end method

.method public setLocalVideoAvailable()V
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalVideoAvailable:Z

    .line 365
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mUnhideLocalVideoIfAvailable:Z

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mShowLocalAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mUnhideLocalVideoIfAvailable:Z

    .line 369
    :cond_0
    return-void
.end method

.method public setLocalVideoPosition(Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 429
    iget v0, p1, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;->x:F

    iput v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalVideoX:F

    .line 430
    iget v0, p1, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;->y:F

    iput v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalVideoY:F

    .line 431
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->updateLocalRect()V

    .line 432
    return-void
.end method

.method public setLocalVideoSize(F)V
    .locals 0
    .parameter "size"

    .prologue
    .line 410
    iput p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalVideoSize:F

    .line 411
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->updateLocalRect()V

    .line 412
    return-void
.end method

.method public setLocalVideoUnavailable()V
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalVideoAvailable:Z

    .line 360
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mHideLocalAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 361
    return-void
.end method

.method public setRemoteVideoAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 415
    iput p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteVideoAlpha:F

    .line 416
    return-void
.end method

.method public setRemoteVideoPosition(Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 423
    iget v0, p1, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;->x:F

    iput v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteVideoX:F

    .line 424
    iget v0, p1, Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;->y:F

    iput v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteVideoY:F

    .line 425
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->updateRemoteRect()V

    .line 426
    return-void
.end method

.method public setRemoteVideoSize(F)V
    .locals 0
    .parameter "size"

    .prologue
    .line 405
    iput p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteVideoSize:F

    .line 406
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->updateRemoteRect()V

    .line 407
    return-void
.end method

.method public setViewportSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 221
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportWidth:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportHeight:I

    if-ne p2, v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iput p1, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportWidth:I

    .line 226
    iput p2, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mViewportHeight:I

    .line 228
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->isFullySpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->onFullySpecified()V

    goto :goto_0
.end method

.method public showDarkBackgroundImage()V
    .locals 1

    .prologue
    .line 352
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setBackgroundImageAlpha(F)V

    .line 355
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setBackgroundColor(I)V

    .line 356
    return-void
.end method

.method public startCameraFlyInAnimation()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalViewFlyInAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 336
    return-void
.end method

.method public startCameraMoveToCornerAnimation()V
    .locals 1

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->isFullySpecified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToAnimateToCorner:Z

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalMoveToCornerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public startFadeInDarkBackgroundImage()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mBackgroundFadeAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 348
    return-void
.end method

.method public startLocalVideoFadeInAnimation()V
    .locals 1

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoAnimator;->isFullySpecified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mNeedToFadeInToCorner:Z

    .line 327
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mLocalViewFadeInInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 324
    iget v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraVideoCornerFinalSizeRatio:F

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setLocalVideoSize(F)V

    .line 325
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mCameraVideoCornerFinalPosition:Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setLocalVideoPosition(Lcom/google/android/talk/videochat/VideoAnimator$FloatPosition;)V

    goto :goto_0
.end method

.method public startRemoteFadeInAnimation()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator;->mRemoteViewFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 331
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteVideoSize(F)V

    .line 332
    return-void
.end method
