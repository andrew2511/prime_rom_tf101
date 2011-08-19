.class Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;
.super Ljava/lang/Object;
.source "DetailsTextViewBinder.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

.field final synthetic val$contentView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/fragments/DetailsTextViewBinder;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    iput-object p2, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->val$contentView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    const v5, 0x7f090027

    const v4, 0x7f090026

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 90
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    invoke-static {v0}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->access$000(Lcom/google/android/finsky/fragments/DetailsTextViewBinder;)I

    move-result v0

    if-gez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->val$contentView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->access$002(Lcom/google/android/finsky/fragments/DetailsTextViewBinder;I)I

    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->val$contentView:Landroid/widget/TextView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    move v0, v2

    .line 129
    :goto_0
    return v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->val$contentView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->access$102(Lcom/google/android/finsky/fragments/DetailsTextViewBinder;I)I

    .line 97
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->val$contentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    invoke-static {v0}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->access$000(Lcom/google/android/finsky/fragments/DetailsTextViewBinder;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    invoke-static {v1}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->access$100(Lcom/google/android/finsky/fragments/DetailsTextViewBinder;)I

    move-result v1

    if-gt v0, v1, :cond_1

    move v0, v2

    .line 101
    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    const v1, 0x7f0b006f

    invoke-virtual {v0, v4, v3, v1}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->setButtonVisibility(III)V

    .line 106
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    new-instance v1, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1$1;-><init>(Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;)V

    invoke-virtual {v0, v4, v1}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->setButtonClickListener(ILandroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    const/16 v1, 0x8

    invoke-virtual {v0, v5, v1, v3}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->setButtonVisibility(III)V

    .line 118
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    new-instance v1, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1$2;-><init>(Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;)V

    invoke-virtual {v0, v5, v1}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->setButtonClickListener(ILandroid/view/View$OnClickListener;)V

    move v0, v2

    .line 129
    goto :goto_0
.end method
