.class Lcom/newspaperdirect/pressreader/android/NewspaperView$16;
.super Landroid/view/animation/Animation;
.source "NewspaperView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/NewspaperView;->showToolbar(ZLcom/newspaperdirect/pressreader/android/NewspaperViewCommon;)V
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$16;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    iput-boolean p2, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$16;->val$permanently:Z

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$16;->val$viewContainer:Lcom/newspaperdirect/pressreader/android/NewspaperViewCommon;

    .line 385
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 388
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 389
    invoke-virtual {p2, p1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 390
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$16;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$11(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 391
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$16;->val$permanently:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$16;->val$viewContainer:Lcom/newspaperdirect/pressreader/android/NewspaperViewCommon;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$16;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$11(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/newspaperdirect/pressreader/android/NewspaperViewCommon;->setPaddingTop(I)V

    .line 392
    :cond_0
    return-void
.end method
