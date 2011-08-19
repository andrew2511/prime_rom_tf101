.class public Lcom/google/android/voicesearch/ui/ProgressSpinner;
.super Landroid/widget/ImageView;
.source "ProgressSpinner.java"


# static fields
.field private static final ANIMATION_START_DELAY:I = 0x64


# instance fields
.field private mBackground:Landroid/graphics/drawable/AnimationDrawable;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mHandler:Landroid/os/Handler;

.field private final mStartAnimation:Ljava/lang/Runnable;

.field private final mStopAnimation:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Lcom/google/android/voicesearch/ui/ProgressSpinner$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/ui/ProgressSpinner$1;-><init>(Lcom/google/android/voicesearch/ui/ProgressSpinner;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mStartAnimation:Ljava/lang/Runnable;

    .line 47
    new-instance v0, Lcom/google/android/voicesearch/ui/ProgressSpinner$2;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/ui/ProgressSpinner$2;-><init>(Lcom/google/android/voicesearch/ui/ProgressSpinner;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mStopAnimation:Ljava/lang/Runnable;

    .line 55
    invoke-direct {p0}, Lcom/google/android/voicesearch/ui/ProgressSpinner;->init()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Lcom/google/android/voicesearch/ui/ProgressSpinner$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/ui/ProgressSpinner$1;-><init>(Lcom/google/android/voicesearch/ui/ProgressSpinner;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mStartAnimation:Ljava/lang/Runnable;

    .line 47
    new-instance v0, Lcom/google/android/voicesearch/ui/ProgressSpinner$2;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/ui/ProgressSpinner$2;-><init>(Lcom/google/android/voicesearch/ui/ProgressSpinner;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mStopAnimation:Ljava/lang/Runnable;

    .line 64
    invoke-direct {p0}, Lcom/google/android/voicesearch/ui/ProgressSpinner;->init()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Lcom/google/android/voicesearch/ui/ProgressSpinner$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/ui/ProgressSpinner$1;-><init>(Lcom/google/android/voicesearch/ui/ProgressSpinner;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mStartAnimation:Ljava/lang/Runnable;

    .line 47
    new-instance v0, Lcom/google/android/voicesearch/ui/ProgressSpinner$2;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/ui/ProgressSpinner$2;-><init>(Lcom/google/android/voicesearch/ui/ProgressSpinner;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mStopAnimation:Ljava/lang/Runnable;

    .line 69
    invoke-direct {p0}, Lcom/google/android/voicesearch/ui/ProgressSpinner;->init()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/ui/ProgressSpinner;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ui/ProgressSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    .line 75
    iget-object v0, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/ui/ProgressSpinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 93
    if-lez p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mStartAnimation:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mStopAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 84
    iput-object p1, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 85
    iget-object v0, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/AnimationDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 88
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 4
    .parameter

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    if-nez p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mStartAnimation:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/voicesearch/ui/ProgressSpinner;->mStopAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
