.class Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1$1;
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
    .line 106
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1$1;->this$1:Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 109
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1$1;->this$1:Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    const v1, 0x7f090026

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->setButtonVisibility(III)V

    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1$1;->this$1:Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    const v1, 0x7f090027

    const v2, 0x7f0b0070

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->setButtonVisibility(III)V

    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1$1;->this$1:Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->val$contentView:Landroid/widget/TextView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1$1;->this$1:Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1$1;->this$1:Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;

    iget-object v1, v1, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->val$contentView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1$1;->this$1:Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;

    iget-object v2, v2, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    invoke-static {v2}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->access$100(Lcom/google/android/finsky/fragments/DetailsTextViewBinder;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1$1;->this$1:Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;

    iget-object v3, v3, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsTextViewBinder;

    invoke-static {v3}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->access$000(Lcom/google/android/finsky/fragments/DetailsTextViewBinder;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->access$200(Lcom/google/android/finsky/fragments/DetailsTextViewBinder;Landroid/view/View;II)V

    .line 113
    return-void
.end method
