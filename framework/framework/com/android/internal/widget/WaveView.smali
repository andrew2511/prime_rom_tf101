.class public Lcom/android/internal/widget/WaveView;
.super Landroid/view/View;
.source "WaveView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/WaveView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DELAY_INCREMENT:J = 0xfL

.field private static final DELAY_INCREMENT2:J = 0xcL

.field private static final DURATION:J = 0x12cL

.field private static final FINAL_DELAY:J = 0xc8L

.field private static final FINAL_DURATION:J = 0xc8L

.field private static final RESET_TIMEOUT:J = 0xbb8L

.field private static final RING_DELAY:J = 0x514L

.field private static final SHORT_DELAY:J = 0x64L

.field private static final STATE_ATTEMPTING:I = 0x3

.field private static final STATE_READY:I = 0x1

.field private static final STATE_RESET_LOCK:I = 0x0

.field private static final STATE_START_ATTEMPT:I = 0x2

.field private static final STATE_UNLOCK_ATTEMPT:I = 0x4

.field private static final STATE_UNLOCK_SUCCESS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "WaveView"

.field private static final VIBRATE_LONG:J = 0x14L

.field private static final VIBRATE_SHORT:J = 0x14L

.field private static final WAVE_COUNT:I = 0x14

.field private static final WAVE_DELAY:J = 0x64L

.field private static final WAVE_DURATION:J = 0x7d0L


# instance fields
.field private final mAddWaveAction:Ljava/lang/Runnable;

.field private mCurrentWave:I

.field private mDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/DrawableHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mFingerDown:Z

.field private mFinishWaves:Z

.field private mGrabbedState:I

.field private mLightWaves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/DrawableHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mLockCenterX:F

.field private mLockCenterY:F

.field private mLockState:I

.field private final mLockTimerActions:Ljava/lang/Runnable;

.field private mMouseX:F

.field private mMouseY:F

.field private mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

.field private mRingRadius:F

.field private mSnapRadius:I

.field private mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

.field private mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

.field private mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveCount:I

.field private mWaveTimerDelay:J

.field private mWavesRunning:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/WaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    .line 71
    iput-boolean v2, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    .line 72
    const/high16 v0, 0x4336

    iput v0, p0, Lcom/android/internal/widget/WaveView;->mRingRadius:F

    .line 73
    const/16 v0, 0x88

    iput v0, p0, Lcom/android/internal/widget/WaveView;->mSnapRadius:I

    .line 74
    iput v3, p0, Lcom/android/internal/widget/WaveView;->mWaveCount:I

    .line 75
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    .line 76
    iput v2, p0, Lcom/android/internal/widget/WaveView;->mCurrentWave:I

    .line 84
    iput v2, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    .line 85
    iput v2, p0, Lcom/android/internal/widget/WaveView;->mGrabbedState:I

    .line 397
    new-instance v0, Lcom/android/internal/widget/WaveView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/WaveView$1;-><init>(Lcom/android/internal/widget/WaveView;)V

    iput-object v0, p0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    .line 414
    new-instance v0, Lcom/android/internal/widget/WaveView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/WaveView$2;-><init>(Lcom/android/internal/widget/WaveView;)V

    iput-object v0, p0, Lcom/android/internal/widget/WaveView;->mAddWaveAction:Ljava/lang/Runnable;

    .line 100
    invoke-direct {p0}, Lcom/android/internal/widget/WaveView;->initDrawables()V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/WaveView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/widget/WaveView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/WaveView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mMouseX:F

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/WaveView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/internal/widget/WaveView;->mFinishWaves:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/widget/WaveView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/internal/widget/WaveView;->mWavesRunning:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/WaveView;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mAddWaveAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/WaveView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/WaveView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mMouseY:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/WaveView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/WaveView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mSnapRadius:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/WaveView;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/internal/widget/WaveView;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    return-wide p1
.end method

.method static synthetic access$614(Lcom/android/internal/widget/WaveView;J)J
    .registers 5
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/WaveView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mCurrentWave:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/widget/WaveView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/internal/widget/WaveView;->mCurrentWave:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/widget/WaveView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/WaveView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mWaveCount:I

    return v0
.end method

.method private dispatchTriggerEvent(I)V
    .registers 4
    .parameter "whichHandle"

    .prologue
    .line 529
    const-wide/16 v0, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/WaveView;->vibrate(J)V

    .line 530
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

    if-eqz v0, :cond_e

    .line 531
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/WaveView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 533
    :cond_e
    return-void
.end method

.method private initDrawables()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const v5, 0x3dcccccd

    .line 151
    new-instance v3, Lcom/android/internal/widget/DrawableHolder;

    const v4, 0x108059b

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/WaveView;->createDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/DrawableHolder;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    .line 152
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    .line 153
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    .line 154
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    .line 155
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    .line 156
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 157
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v3, Lcom/android/internal/widget/DrawableHolder;

    const v4, 0x1080599

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/WaveView;->createDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/DrawableHolder;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    .line 160
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    .line 161
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    .line 162
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    .line 163
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    .line 164
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 165
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v3, Lcom/android/internal/widget/DrawableHolder;

    const v4, 0x108059a

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/WaveView;->createDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/DrawableHolder;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    .line 168
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    .line 169
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    .line 170
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    .line 171
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    .line 172
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 173
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    const v3, 0x108059c

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/WaveView;->createDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 176
    .local v2, wave:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a2
    iget v3, p0, Lcom/android/internal/widget/WaveView;->mWaveCount:I

    if-ge v1, v3, :cond_b6

    .line 177
    new-instance v0, Lcom/android/internal/widget/DrawableHolder;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/DrawableHolder;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 178
    .local v0, holder:Lcom/android/internal/widget/DrawableHolder;
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_a2

    .line 181
    .end local v0           #holder:Lcom/android/internal/widget/DrawableHolder;
    :cond_b6
    return-void
.end method

.method private setGrabbedState(I)V
    .registers 4
    .parameter "newState"

    .prologue
    .line 540
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mGrabbedState:I

    if-eq p1, v0, :cond_11

    .line 541
    iput p1, p0, Lcom/android/internal/widget/WaveView;->mGrabbedState:I

    .line 542
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

    if-eqz v0, :cond_11

    .line 543
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

    iget v1, p0, Lcom/android/internal/widget/WaveView;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/WaveView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 546
    :cond_11
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .registers 5
    .parameter "duration"

    .prologue
    .line 508
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_14

    .line 509
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/widget/WaveView;->mVibrator:Landroid/os/Vibrator;

    .line 512
    :cond_14
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 513
    monitor-exit p0

    return-void

    .line 508
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private waveUpdateFrame(FFZ)V
    .registers 40
    .parameter "mouseX"
    .parameter "mouseY"
    .parameter "fingerDown"

    .prologue
    .line 184
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    move v6, v0

    sub-float v6, p1, v6

    move v0, v6

    float-to-double v0, v0

    move-wide/from16 v27, v0

    .line 185
    .local v27, distX:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    move v6, v0

    sub-float v6, p2, v6

    move v0, v6

    float-to-double v0, v0

    move-wide/from16 v29, v0

    .line 186
    .local v29, distY:D
    invoke-static/range {v27 .. v30}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    move-wide v0, v6

    double-to-int v0, v0

    move/from16 v31, v0

    .line 187
    .local v31, dragDistance:I
    invoke-static/range {v27 .. v30}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v34

    .line 188
    .local v34, touchA:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    move v6, v0

    float-to-double v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/WaveView;->mRingRadius:F

    move v8, v0

    float-to-double v8, v8

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v11, v6

    .line 189
    .local v11, ringX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    move v6, v0

    float-to-double v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/WaveView;->mRingRadius:F

    move v8, v0

    float-to-double v8, v8

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v8, v12

    add-double/2addr v6, v8

    move-wide v0, v6

    double-to-float v0, v0

    move/from16 v18, v0

    .line 191
    .local v18, ringY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/WaveView;->mLockState:I

    move v6, v0

    packed-switch v6, :pswitch_data_766

    .line 375
    .end local v11           #ringX:F
    .end local p1
    :goto_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DrawableHolder;->startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DrawableHolder;->startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DrawableHolder;->startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 378
    return-void

    .line 194
    .restart local v11       #ringX:F
    .restart local p1
    :pswitch_79
    const-wide/16 v6, 0x64

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    .line 195
    const/16 v32, 0x0

    .end local v11           #ringX:F
    .local v32, i:I
    :goto_82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v32

    move v1, v6

    if-ge v0, v1, :cond_ac

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/DrawableHolder;

    .line 197
    .local v4, holder:Lcom/android/internal/widget/DrawableHolder;
    const-wide/16 v5, 0x12c

    const-wide/16 v7, 0x0

    const-string v9, "alpha"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 195
    add-int/lit8 v32, v32, 0x1

    goto :goto_82

    .line 199
    .end local v4           #holder:Lcom/android/internal/widget/DrawableHolder;
    :cond_ac
    const/16 v32, 0x0

    .end local p1
    :goto_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v32

    move v1, v6

    if-ge v0, v1, :cond_d4

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DrawableHolder;->startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 199
    add-int/lit8 v32, v32, 0x1

    goto :goto_ae

    .line 203
    :cond_d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object v5, v0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string/jumbo v10, "x"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    move v11, v0

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object v5, v0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string/jumbo v10, "y"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    move v11, v0

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object v5, v0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string/jumbo v10, "scaleX"

    const v11, 0x3dcccccd

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object v5, v0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string/jumbo v10, "scaleY"

    const v11, 0x3dcccccd

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object v5, v0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string v10, "alpha"

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const-string/jumbo v7, "y"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const-string/jumbo v7, "scaleX"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const-string/jumbo v7, "scaleY"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const-string v7, "alpha"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    move v7, v0

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    move v7, v0

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const v7, 0x3dcccccd

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const v7, 0x3dcccccd

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v5, v0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string/jumbo v10, "scaleX"

    const/high16 v11, 0x3f80

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v5, v0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string/jumbo v10, "scaleY"

    const/high16 v11, 0x3f80

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v5, v0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string v10, "alpha"

    const/high16 v11, 0x3f80

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const-string/jumbo v7, "y"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const-string/jumbo v7, "scaleX"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const-string/jumbo v7, "scaleY"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const-string v7, "alpha"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    move v7, v0

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    move v7, v0

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const v7, 0x3dcccccd

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const v7, 0x3dcccccd

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object v5, v0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string/jumbo v10, "x"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    move v11, v0

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object v5, v0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string/jumbo v10, "y"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    move v11, v0

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object v5, v0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string/jumbo v10, "scaleX"

    const/high16 v11, 0x3f80

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object v5, v0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string/jumbo v10, "scaleY"

    const/high16 v11, 0x3f80

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object v5, v0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string v10, "alpha"

    const/high16 v11, 0x3f80

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/WaveView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 241
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/WaveView;->mLockState:I

    goto/16 :goto_57

    .line 246
    .end local v32           #i:I
    .restart local v11       #ringX:F
    .restart local p1
    :pswitch_2b9
    const-wide/16 v6, 0x64

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    goto/16 :goto_57

    .line 251
    :pswitch_2c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const-string/jumbo v7, "y"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const-string/jumbo v7, "scaleX"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const-string/jumbo v7, "scaleY"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const-string v7, "alpha"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    move v7, v0

    const/high16 v8, 0x4336

    add-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    move v7, v0

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const v7, 0x3dcccccd

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const v7, 0x3dcccccd

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v5, v0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string/jumbo v10, "scaleX"

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 263
    .end local v11           #ringX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v5, v0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string/jumbo v10, "scaleY"

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v5, v0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    const-string v10, "alpha"

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object v5, v0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string/jumbo v10, "scaleX"

    const/high16 v11, 0x3f80

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object v5, v0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string/jumbo v10, "scaleY"

    const/high16 v11, 0x3f80

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object v5, v0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const-string v10, "alpha"

    const/high16 v11, 0x3f80

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 270
    const/4 v6, 0x3

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/WaveView;->mLockState:I

    goto/16 :goto_57

    .line 275
    .restart local v11       #ringX:F
    :pswitch_3a6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/WaveView;->mSnapRadius:I

    move v6, v0

    move/from16 v0, v31

    move v1, v6

    if-le v0, v1, :cond_41e

    .line 276
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/WaveView;->mFinishWaves:Z

    .line 277
    if-eqz p3, :cond_416

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object v5, v0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-string/jumbo v10, "x"

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object v12, v0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-string/jumbo v17, "y"

    const/16 v19, 0x1

    invoke-virtual/range {v12 .. v19}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-string/jumbo v24, "scaleX"

    const/high16 v25, 0x3f80

    const/16 v26, 0x1

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-string/jumbo v24, "scaleY"

    const/high16 v25, 0x3f80

    const/16 v26, 0x1

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-string v24, "alpha"

    const/high16 v25, 0x3f80

    const/16 v26, 0x1

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    goto/16 :goto_57

    .line 285
    :cond_416
    const/4 v6, 0x4

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/WaveView;->mLockState:I

    goto/16 :goto_57

    .line 289
    :cond_41e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/WaveView;->mWavesRunning:Z

    move v6, v0

    if-nez v6, :cond_442

    .line 290
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/WaveView;->mWavesRunning:Z

    .line 291
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/WaveView;->mFinishWaves:Z

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mAddWaveAction:Ljava/lang/Runnable;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    move-wide v7, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/WaveView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    :cond_442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-string/jumbo v24, "x"

    const/16 v26, 0x1

    move/from16 v25, p1

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-string/jumbo v24, "y"

    const/16 v26, 0x1

    move/from16 v25, p2

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-string/jumbo v24, "scaleX"

    const/high16 v25, 0x3f80

    const/16 v26, 0x1

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-string/jumbo v24, "scaleY"

    const/high16 v25, 0x3f80

    const/16 v26, 0x1

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-string v24, "alpha"

    const/high16 v25, 0x3f80

    const/16 v26, 0x1

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    goto/16 :goto_57

    .line 305
    :pswitch_4a7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/WaveView;->mSnapRadius:I

    move v6, v0

    move/from16 v0, v31

    move v1, v6

    if-le v0, v1, :cond_751

    .line 306
    const/16 v33, 0x0

    .local v33, n:I
    :goto_4b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v33

    move v1, v6

    if-ge v0, v1, :cond_528

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/DrawableHolder;

    .line 308
    .local v5, wave:Lcom/android/internal/widget/DrawableHolder;
    const-wide/16 v6, 0x3e8

    add-int/lit8 v8, v33, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/WaveView;->mCurrentWave:I

    move v9, v0

    sub-int/2addr v8, v9

    int-to-long v8, v8

    mul-long/2addr v6, v8

    const-wide/16 v8, 0xa

    div-long v8, v6, v8

    .line 309
    .local v8, delay:J
    const-wide/16 v6, 0xc8

    const-string/jumbo v10, "x"

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 310
    const-wide/16 v13, 0xc8

    const-string/jumbo v17, "y"

    const/16 v19, 0x1

    move-object v12, v5

    move-wide v15, v8

    invoke-virtual/range {v12 .. v19}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 311
    const-wide/16 v20, 0xc8

    const-string/jumbo v24, "scaleX"

    const v25, 0x3dcccccd

    const/16 v26, 0x1

    move-object/from16 v19, v5

    move-wide/from16 v22, v8

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 312
    const-wide/16 v20, 0xc8

    const-string/jumbo v24, "scaleY"

    const v25, 0x3dcccccd

    const/16 v26, 0x1

    move-object/from16 v19, v5

    move-wide/from16 v22, v8

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 313
    const-wide/16 v20, 0xc8

    const-string v24, "alpha"

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v19, v5

    move-wide/from16 v22, v8

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 306
    add-int/lit8 v33, v33, 0x1

    goto :goto_4b3

    .line 315
    .end local v5           #wave:Lcom/android/internal/widget/DrawableHolder;
    .end local v8           #delay:J
    :cond_528
    const/16 v32, 0x0

    .end local p1
    .restart local v32       #i:I
    :goto_52a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v32

    move v1, v6

    if-ge v0, v1, :cond_550

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DrawableHolder;->startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 315
    add-int/lit8 v32, v32, 0x1

    goto :goto_52a

    .line 319
    :cond_550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0xc8

    const-wide/16 v22, 0x0

    const-string/jumbo v24, "x"

    const/16 v26, 0x0

    move/from16 v25, v11

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object v12, v0

    const-wide/16 v13, 0xc8

    const-wide/16 v15, 0x0

    const-string/jumbo v17, "y"

    const/16 v19, 0x0

    invoke-virtual/range {v12 .. v19}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0xc8

    const-wide/16 v22, 0x0

    const-string/jumbo v24, "scaleX"

    const v25, 0x3dcccccd

    const/16 v26, 0x0

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0xc8

    const-wide/16 v22, 0x0

    const-string/jumbo v24, "scaleY"

    const v25, 0x3dcccccd

    const/16 v26, 0x0

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0xc8

    const-wide/16 v22, 0x0

    const-string v24, "alpha"

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0xc8

    const-wide/16 v22, 0xc8

    const-string v24, "alpha"

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const-string/jumbo v7, "y"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const-string/jumbo v7, "scaleX"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const-string/jumbo v7, "scaleY"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const-string v7, "alpha"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    invoke-virtual {v6, v11}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const v7, 0x3dcccccd

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const v7, 0x3dcccccd

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0xc8

    const-wide/16 v22, 0x0

    const-string/jumbo v24, "x"

    const/16 v26, 0x1

    move/from16 v25, v11

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object v12, v0

    const-wide/16 v13, 0xc8

    const-wide/16 v15, 0x0

    const-string/jumbo v17, "y"

    const/16 v19, 0x1

    invoke-virtual/range {v12 .. v19}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0xc8

    const-wide/16 v22, 0x0

    const-string/jumbo v24, "scaleX"

    const/high16 v25, 0x3f80

    const/16 v26, 0x1

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0xc8

    const-wide/16 v22, 0x0

    const-string/jumbo v24, "scaleY"

    const/high16 v25, 0x3f80

    const/16 v26, 0x1

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0xc8

    const-wide/16 v22, 0x0

    const-string v24, "alpha"

    const/high16 v25, 0x3f80

    const/16 v26, 0x1

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0xc8

    const-wide/16 v22, 0xc8

    const-string/jumbo v24, "scaleX"

    const/high16 v25, 0x4040

    const/16 v26, 0x0

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0xc8

    const-wide/16 v22, 0xc8

    const-string/jumbo v24, "scaleY"

    const/high16 v25, 0x4040

    const/16 v26, 0x0

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0xc8

    const-wide/16 v22, 0xc8

    const-string v24, "alpha"

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0xc8

    const-wide/16 v22, 0x0

    const-string/jumbo v24, "x"

    const/16 v26, 0x0

    move/from16 v25, v11

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object v12, v0

    const-wide/16 v13, 0xc8

    const-wide/16 v15, 0x0

    const-string/jumbo v17, "y"

    const/16 v19, 0x0

    invoke-virtual/range {v12 .. v19}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0xc8

    const-wide/16 v22, 0xc8

    const-string/jumbo v24, "scaleX"

    const/high16 v25, 0x4040

    const/16 v26, 0x0

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0xc8

    const-wide/16 v22, 0xc8

    const-string/jumbo v24, "scaleY"

    const/high16 v25, 0x4040

    const/16 v26, 0x0

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v19, v0

    const-wide/16 v20, 0xc8

    const-wide/16 v22, 0xc8

    const-string v24, "alpha"

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/WaveView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    move-object v6, v0

    const-wide/16 v7, 0xbb8

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/WaveView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 359
    const/16 v6, 0xa

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/android/internal/widget/WaveView;->dispatchTriggerEvent(I)V

    .line 360
    const/4 v6, 0x5

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/WaveView;->mLockState:I

    goto/16 :goto_57

    .line 362
    .end local v32           #i:I
    .end local v33           #n:I
    .restart local p1
    :cond_751
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/WaveView;->mLockState:I

    goto/16 :goto_57

    .line 368
    :pswitch_759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mAddWaveAction:Ljava/lang/Runnable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/WaveView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_57

    .line 191
    :pswitch_data_766
    .packed-switch 0x0
        :pswitch_79
        :pswitch_2b9
        :pswitch_2c2
        :pswitch_3a6
        :pswitch_4a7
        :pswitch_759
    .end packed-switch
.end method


# virtual methods
.method createDrawable(I)Landroid/graphics/drawable/BitmapDrawable;
    .registers 5
    .parameter "resId"

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 382
    .local v1, res:Landroid/content/res/Resources;
    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 383
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method protected getSuggestedMinimumHeight()I
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v0}, Lcom/android/internal/widget/DrawableHolder;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v1}, Lcom/android/internal/widget/DrawableHolder;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v0}, Lcom/android/internal/widget/DrawableHolder;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v1}, Lcom/android/internal/widget/DrawableHolder;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->invalidate()V

    .line 576
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 388
    iget v1, p0, Lcom/android/internal/widget/WaveView;->mMouseX:F

    iget v2, p0, Lcom/android/internal/widget/WaveView;->mMouseY:F

    iget-boolean v3, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/WaveView;->waveUpdateFrame(FFZ)V

    .line 389
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 390
    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/DrawableHolder;->draw(Landroid/graphics/Canvas;)V

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 392
    :cond_20
    const/4 v0, 0x0

    :goto_21
    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 393
    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/DrawableHolder;->draw(Landroid/graphics/Canvas;)V

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 395
    :cond_37
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v8, 0x4000

    const/high16 v7, -0x8000

    .line 124
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 125
    .local v4, widthSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 126
    .local v1, heightSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 127
    .local v5, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 131
    .local v2, heightSpecSize:I
    if-ne v4, v7, :cond_2c

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 139
    .local v3, width:I
    :goto_1e
    if-ne v1, v7, :cond_35

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 147
    .local v0, height:I
    :goto_28
    invoke-virtual {p0, v3, v0}, Lcom/android/internal/widget/WaveView;->setMeasuredDimension(II)V

    .line 148
    return-void

    .line 133
    .end local v0           #height:I
    .end local v3           #width:I
    :cond_2c
    if-ne v4, v8, :cond_30

    .line 134
    move v3, v5

    .restart local v3       #width:I
    goto :goto_1e

    .line 136
    .end local v3           #width:I
    :cond_30
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getSuggestedMinimumWidth()I

    move-result v3

    .restart local v3       #width:I
    goto :goto_1e

    .line 141
    :cond_35
    if-ne v1, v8, :cond_39

    .line 142
    move v0, v2

    .restart local v0       #height:I
    goto :goto_28

    .line 144
    .end local v0           #height:I
    :cond_39
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getSuggestedMinimumHeight()I

    move-result v0

    .restart local v0       #height:I
    goto :goto_28
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/high16 v1, 0x3f00

    .line 105
    int-to-float v0, p1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    .line 106
    int-to-float v0, p2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 108
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 456
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/android/internal/widget/WaveView;->mMouseX:F

    .line 457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/android/internal/widget/WaveView;->mMouseY:F

    .line 458
    const/4 v2, 0x0

    .line 459
    .local v2, handled:Z
    packed-switch v0, :pswitch_data_7e

    .line 500
    :goto_16
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->invalidate()V

    .line 501
    if-eqz v2, :cond_78

    move v5, v9

    :goto_1c
    return v5

    .line 461
    :pswitch_1d
    iget-object v5, p0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/WaveView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 462
    iput-boolean v9, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    .line 463
    const/16 v5, 0xa

    invoke-direct {p0, v5}, Lcom/android/internal/widget/WaveView;->setGrabbedState(I)V

    .line 465
    iget v5, p0, Lcom/android/internal/widget/WaveView;->mMouseX:F

    iget-object v6, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v6}, Lcom/android/internal/widget/DrawableHolder;->getX()F

    move-result v6

    sub-float v3, v5, v6

    .line 466
    .local v3, x:F
    iget v5, p0, Lcom/android/internal/widget/WaveView;->mMouseY:F

    iget-object v6, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v6}, Lcom/android/internal/widget/DrawableHolder;->getY()F

    move-result v6

    sub-float v4, v5, v6

    .line 467
    .local v4, y:F
    float-to-double v5, v3

    float-to-double v7, v4

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v1, v5

    .line 468
    .local v1, dist:F
    iget-object v5, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v5}, Lcom/android/internal/widget/DrawableHolder;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    cmpg-float v5, v1, v5

    if-gez v5, :cond_59

    .line 469
    iget v5, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    if-ne v5, v9, :cond_59

    .line 470
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    .line 474
    :cond_59
    const/4 v2, 0x1

    .line 475
    goto :goto_16

    .line 478
    .end local v1           #dist:F
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_5b
    const/4 v2, 0x1

    .line 479
    goto :goto_16

    .line 483
    :pswitch_5d
    iput-boolean v8, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    .line 484
    iget-object v5, p0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/internal/widget/WaveView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 485
    invoke-direct {p0, v8}, Lcom/android/internal/widget/WaveView;->setGrabbedState(I)V

    .line 491
    iget v5, p0, Lcom/android/internal/widget/WaveView;->mMouseX:F

    iget v6, p0, Lcom/android/internal/widget/WaveView;->mMouseY:F

    iget-boolean v7, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/widget/WaveView;->waveUpdateFrame(FFZ)V

    .line 492
    const/4 v2, 0x1

    .line 493
    goto :goto_16

    .line 496
    :pswitch_74
    iput-boolean v8, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    .line 497
    const/4 v2, 0x1

    goto :goto_16

    .line 501
    :cond_78
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_1c

    .line 459
    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_5d
        :pswitch_5b
        :pswitch_74
    .end packed-switch
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 580
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    .line 581
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->invalidate()V

    .line 582
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/WaveView$OnTriggerListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/internal/widget/WaveView;->mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

    .line 522
    return-void
.end method
