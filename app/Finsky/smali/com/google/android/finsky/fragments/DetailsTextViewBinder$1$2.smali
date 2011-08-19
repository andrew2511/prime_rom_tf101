.class Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1$2;
.super Ljava/lang/Object;
.source "DetailsTextViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1$2;->this$1:Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 121
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1$2;->this$1:Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;

    iget-object v1, v1, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    const v2, 0x7f090026

    const v3, 0x7f0b006f

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->setButtonVisibility(III)V

    .line 122
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1$2;->this$1:Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;

    iget-object v1, v1, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    const v2, 0x7f090027

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->setButtonVisibility(III)V

    .line 123
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1$2;->this$1:Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;

    iget-object v1, v1, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->val$contentView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    .line 124
    .local v0, height:I
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1$2;->this$1:Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;

    iget-object v1, v1, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->val$contentView:Landroid/widget/TextView;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 125
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1$2;->this$1:Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;

    iget-object v1, v1, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1$2;->this$1:Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;

    iget-object v2, v2, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->val$contentView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1$2;->this$1:Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;

    iget-object v3, v3, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    invoke-static {v3}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->access$000(Lcom/google/android/finsky/fragments/DetailsTextViewBinder;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1$2;->this$1:Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;

    iget-object v4, v4, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    invoke-static {v4}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->access$100(Lcom/google/android/finsky/fragments/DetailsTextViewBinder;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->access$200(Lcom/google/android/finsky/fragments/DetailsTextViewBinder;Landroid/view/View;II)V

    .line 126
    return-void
.end method
