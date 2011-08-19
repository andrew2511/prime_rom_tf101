.class Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$ScrollAnimation;
.super Landroid/view/animation/Animation;
.source "SinglePageNewspaperView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollAnimation"
.end annotation


# instance fields
.field private lastInterpolatedTime:F

.field private mdx:F

.field private mdy:F

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;FF)V
    .locals 1
    .parameter
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 552
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$ScrollAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    .line 548
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 546
    const/4 v0, 0x0

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$ScrollAnimation;->lastInterpolatedTime:F

    .line 549
    iput p2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$ScrollAnimation;->mdx:F

    .line 550
    iput p3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$ScrollAnimation;->mdy:F

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->processOnTouchEvents:Z

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 556
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$ScrollAnimation;->lastInterpolatedTime:F

    sub-float v0, p1, v1

    .line 557
    .local v0, delta:F
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$ScrollAnimation;->lastInterpolatedTime:F

    .line 558
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$ScrollAnimation;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    iget v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$ScrollAnimation;->mdx:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$ScrollAnimation;->mdy:F

    mul-float/2addr v3, v0

    invoke-static {v1, v2, v3}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$13(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;FF)Z

    .line 559
    return-void
.end method
