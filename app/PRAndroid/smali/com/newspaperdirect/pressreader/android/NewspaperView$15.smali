.class Lcom/newspaperdirect/pressreader/android/NewspaperView$15;
.super Ljava/lang/Object;
.source "NewspaperView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$15;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    iput-boolean p2, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$15;->val$permanently:Z

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$15;->val$viewContainer:Lcom/newspaperdirect/pressreader/android/NewspaperViewCommon;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 371
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$15;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$11(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$15;->val$permanently:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$15;->val$viewContainer:Lcom/newspaperdirect/pressreader/android/NewspaperViewCommon;

    invoke-interface {v0, v2, v2, v2, v2}, Lcom/newspaperdirect/pressreader/android/NewspaperViewCommon;->setPadding(IIII)V

    .line 375
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 369
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 368
    return-void
.end method
