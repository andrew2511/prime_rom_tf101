.class public abstract Lcom/android/vending/velvet/OverlappingLayout;
.super Landroid/view/ViewGroup;
.source "OverlappingLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/velvet/OverlappingLayout$LayoutParams;
    }
.end annotation


# instance fields
.field protected mCarouselPadder:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method


# virtual methods
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 67
    new-instance v0, Lcom/android/vending/velvet/OverlappingLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/vending/velvet/OverlappingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/vending/velvet/OverlappingLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public setCarouselPadder(Landroid/view/View;)V
    .locals 0
    .parameter "carouselPadder"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/vending/velvet/OverlappingLayout;->mCarouselPadder:Landroid/view/View;

    .line 50
    return-void
.end method

.method public setEmptyListCarouselPadder(Landroid/widget/ListView;)V
    .locals 4
    .parameter "listView"

    .prologue
    const/4 v3, 0x0

    .line 55
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/vending/velvet/OverlappingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, paddingHeaderView:Landroid/widget/ImageView;
    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 57
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/vending/velvet/OverlappingLayout;->setCarouselPadder(Landroid/view/View;)V

    .line 62
    return-void
.end method
