.class Lcom/android/vending/AssetInfoActivity$HeightAnimator;
.super Ljava/lang/Object;
.source "AssetInfoActivity.java"

# interfaces
.implements Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeightAnimator"
.end annotation


# instance fields
.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/AssetInfoActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$HeightAnimator;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1170
    iput-object p2, p0, Lcom/android/vending/AssetInfoActivity$HeightAnimator;->mView:Landroid/view/View;

    .line 1171
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/AssetInfoActivity;Landroid/view/View;Lcom/android/vending/AssetInfoActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1165
    invoke-direct {p0, p1, p2}, Lcom/android/vending/AssetInfoActivity$HeightAnimator;-><init>(Lcom/android/vending/AssetInfoActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/vending/compat/animation/ValueAnimator;)V
    .locals 2
    .parameter "animator"

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$HeightAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/vending/compat/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1175
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$HeightAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1176
    return-void
.end method
