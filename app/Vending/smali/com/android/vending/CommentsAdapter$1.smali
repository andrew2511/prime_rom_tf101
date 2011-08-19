.class Lcom/android/vending/CommentsAdapter$1;
.super Ljava/lang/Object;
.source "CommentsAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/CommentsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/CommentsAdapter;

.field final synthetic val$commentRatingIcon:Landroid/widget/ImageView;

.field final synthetic val$finalCommentsView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/vending/CommentsAdapter;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/vending/CommentsAdapter$1;->this$0:Lcom/android/vending/CommentsAdapter;

    iput-object p2, p0, Lcom/android/vending/CommentsAdapter$1;->val$commentRatingIcon:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/vending/CommentsAdapter$1;->val$finalCommentsView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/vending/CommentsAdapter$1;->val$commentRatingIcon:Landroid/widget/ImageView;

    const v1, 0x7f0a0001

    invoke-static {v0, v1}, Lcom/android/vending/BaseActivity;->addTouchDelegate(Landroid/view/View;I)V

    .line 133
    iget-object v0, p0, Lcom/android/vending/CommentsAdapter$1;->val$finalCommentsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 134
    const/4 v0, 0x1

    return v0
.end method
