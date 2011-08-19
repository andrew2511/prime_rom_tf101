.class public Lcom/google/android/music/PlayPauseButton;
.super Landroid/widget/ImageButton;
.source "PlayPauseButton.java"


# static fields
.field public static final STATE_LOADING:I = 0x1

.field public static final STATE_PAUSED:I = 0x3

.field public static final STATE_PLAYING:I = 0x2


# instance fields
.field private mCurrentPlayState:I

.field private final mPauseImage:Landroid/graphics/drawable/Drawable;

.field private final mPlayImage:Landroid/graphics/drawable/Drawable;

.field private final mStopImage:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/music/PlayPauseButton;->mCurrentPlayState:I

    .line 28
    sget-object v2, Lcom/google/android/music/R$styleable;->PlayPauseImages:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 29
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 31
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/PlayPauseButton;->mPauseImage:Landroid/graphics/drawable/Drawable;

    .line 32
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/PlayPauseButton;->mPlayImage:Landroid/graphics/drawable/Drawable;

    .line 33
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/PlayPauseButton;->mStopImage:Landroid/graphics/drawable/Drawable;

    .line 35
    invoke-direct {p0}, Lcom/google/android/music/PlayPauseButton;->updateDrawable()V

    .line 36
    return-void
.end method

.method private updateDrawable()V
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/music/PlayPauseButton;->mCurrentPlayState:I

    packed-switch v0, :pswitch_data_0

    .line 61
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/music/PlayPauseButton;->postInvalidate()V

    .line 62
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/music/PlayPauseButton;->mStopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlayPauseButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/music/PlayPauseButton;->mPlayImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlayPauseButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 58
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/music/PlayPauseButton;->mPauseImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlayPauseButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCurrentPlayState()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/music/PlayPauseButton;->mCurrentPlayState:I

    return v0
.end method

.method public setCurrentPlayState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/music/PlayPauseButton;->mCurrentPlayState:I

    if-eq p1, v0, :cond_0

    .line 44
    iput p1, p0, Lcom/google/android/music/PlayPauseButton;->mCurrentPlayState:I

    .line 45
    invoke-direct {p0}, Lcom/google/android/music/PlayPauseButton;->updateDrawable()V

    .line 47
    :cond_0
    return-void
.end method
