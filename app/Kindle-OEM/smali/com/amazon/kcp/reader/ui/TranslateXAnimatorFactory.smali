.class Lcom/amazon/kcp/reader/ui/TranslateXAnimatorFactory;
.super Ljava/lang/Object;
.source "ReaderLayout.java"


# static fields
.field static final useNewStyleAnimations:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1496
    :try_start_0
    const-string v0, "android.animation.ObjectAnimator"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    const/4 v0, 0x1

    .line 1503
    :goto_0
    sput-boolean v0, Lcom/amazon/kcp/reader/ui/TranslateXAnimatorFactory;->useNewStyleAnimations:Z

    .line 1504
    return-void

    .line 1501
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAnimation(Landroid/view/View;IJLandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)Lcom/amazon/kcp/reader/ui/TranslateXAnimator;
    .locals 7
    .parameter "v"
    .parameter "offsetX"
    .parameter "duration"
    .parameter "interpolator"
    .parameter "callbacks"

    .prologue
    .line 1509
    sget-boolean v0, Lcom/amazon/kcp/reader/ui/TranslateXAnimatorFactory;->useNewStyleAnimations:Z

    if-eqz v0, :cond_0

    .line 1511
    new-instance v0, Lcom/amazon/kcp/reader/ui/AnimatorTranslateX;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/reader/ui/AnimatorTranslateX;-><init>(Landroid/view/View;IJLandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)V

    .line 1515
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amazon/kcp/reader/ui/AnimationTranslateX;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/reader/ui/AnimationTranslateX;-><init>(Landroid/view/View;IJLandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method
