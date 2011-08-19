.class public Lcom/amazon/kcp/library/ui/SnowView;
.super Landroid/widget/RelativeLayout;
.source "SnowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;
    }
.end annotation


# static fields
.field private static final IDEAL_FLAKES_PER_SQ_INCH:F = 6.0f

.field private static final MAX_FLAKES:I = 0x14


# instance fields
.field private animationInterpolator:Landroid/view/animation/Interpolator;

.field private randGenerator:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/ui/SnowView;)Ljava/util/Random;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/SnowView;->randGenerator:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/ui/SnowView;)Landroid/view/animation/Interpolator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/SnowView;->animationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method


# virtual methods
.method public startSnowing()V
    .locals 8

    .prologue
    .line 58
    new-instance v5, Ljava/util/Random;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Random;-><init>(J)V

    iput-object v5, p0, Lcom/amazon/kcp/library/ui/SnowView;->randGenerator:Ljava/util/Random;

    .line 59
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v5, p0, Lcom/amazon/kcp/library/ui/SnowView;->animationInterpolator:Landroid/view/animation/Interpolator;

    .line 61
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/SnowView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/android/util/UIUtils;->getScreenWidthInInches(Landroid/content/Context;)F

    move-result v4

    .line 62
    .local v4, widthInInches:F
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/SnowView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/android/util/UIUtils;->getScreenHeightInInches(Landroid/content/Context;)F

    move-result v0

    .line 63
    .local v0, heightInInches:F
    const/high16 v5, 0x40c0

    mul-float/2addr v5, v4

    mul-float/2addr v5, v0

    float-to-int v2, v5

    .line 66
    .local v2, numFlakes:I
    const/16 v5, 0x14

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 68
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 70
    new-instance v3, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/SnowView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, p0, v5, p0}, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;-><init>(Lcom/amazon/kcp/library/ui/SnowView;Landroid/content/Context;Lcom/amazon/kcp/library/ui/SnowView;)V

    .line 71
    .local v3, snowFlake:Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/library/ui/SnowView;->addView(Landroid/view/View;)V

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v3           #snowFlake:Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;
    :cond_0
    return-void
.end method
