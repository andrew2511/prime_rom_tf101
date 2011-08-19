.class Lcom/google/android/apps/books/app/ReaderFragment$ReaderSpecialViews;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReaderSpecialViews"
.end annotation


# instance fields
.field mBlankView:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;",
            ">;"
        }
    .end annotation
.end field

.field mEndView:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;",
            ">;"
        }
    .end annotation
.end field

.field mGapView:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;",
            ">;"
        }
    .end annotation
.end field

.field mLoadingView:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter
    .parameter "li"
    .parameter "parent"

    .prologue
    .line 595
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderSpecialViews;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$SimpleViewFactory;

    const v1, 0x7f0e004a

    invoke-direct {v0, p3, v1}, Lcom/google/android/apps/books/app/ReaderFragment$SimpleViewFactory;-><init>(Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderSpecialViews;->mBlankView:Lcom/google/common/base/Supplier;

    .line 597
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewFactory;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/app/ReaderFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderSpecialViews;->mEndView:Lcom/google/common/base/Supplier;

    .line 598
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$SimpleViewFactory;

    const v1, 0x7f0e0048

    invoke-direct {v0, p3, v1}, Lcom/google/android/apps/books/app/ReaderFragment$SimpleViewFactory;-><init>(Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderSpecialViews;->mGapView:Lcom/google/common/base/Supplier;

    .line 599
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$SimpleViewFactory;

    const v1, 0x7f0e0049

    invoke-direct {v0, p3, v1}, Lcom/google/android/apps/books/app/ReaderFragment$SimpleViewFactory;-><init>(Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderSpecialViews;->mLoadingView:Lcom/google/common/base/Supplier;

    .line 600
    return-void
.end method


# virtual methods
.method public getBlankPageView()Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderSpecialViews;->mBlankView:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    return-object p0
.end method

.method public getEndView()Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderSpecialViews;->mEndView:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    return-object p0
.end method

.method public getGapView()Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderSpecialViews;->mGapView:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    return-object p0
.end method

.method public getLoadingView()Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderSpecialViews;->mLoadingView:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    return-object p0
.end method

.method public getStartView()Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderSpecialViews;->getBlankPageView()Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    move-result-object v0

    return-object v0
.end method
