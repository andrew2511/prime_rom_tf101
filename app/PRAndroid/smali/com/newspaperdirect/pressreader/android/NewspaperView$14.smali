.class Lcom/newspaperdirect/pressreader/android/NewspaperView$14;
.super Landroid/view/animation/Animation;
.source "NewspaperView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/NewspaperView;->hideToolbar(ZLcom/newspaperdirect/pressreader/android/NewspaperViewCommon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

.field private final synthetic val$permanently:Z

.field private final synthetic val$viewContainer:Lcom/newspaperdirect/pressreader/android/NewspaperViewCommon;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;ZLcom/newspaperdirect/pressreader/android/NewspaperViewCommon;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$14;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    iput-boolean p2, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$14;->val$permanently:Z

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$14;->val$viewContainer:Lcom/newspaperdirect/pressreader/android/NewspaperViewCommon;

    .line 358
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/high16 v3, 0x3f80

    .line 361
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 362
    sub-float v0, v3, p1

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 363
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$14;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$11(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 364
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$14;->val$permanently:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$14;->val$viewContainer:Lcom/newspaperdirect/pressreader/android/NewspaperViewCommon;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$14;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$11(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v2, v3, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/newspaperdirect/pressreader/android/NewspaperViewCommon;->setPaddingTop(I)V

    .line 365
    :cond_0
    return-void
.end method
