.class Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$1;
.super Ljava/lang/Object;
.source "CommentUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->create()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;


# direct methods
.method constructor <init>(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$1;->this$0:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "position"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$1;->this$0:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    iget-object v2, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$1;->this$0:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    invoke-static {v2}, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->access$100(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;)[Lcom/android/vending/model/RateCommentRequest$CommentRating;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-static {v1, v2}, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->access$002(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;Lcom/android/vending/model/RateCommentRequest$CommentRating;)Lcom/android/vending/model/RateCommentRequest$CommentRating;

    .line 101
    iget-object v1, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$1;->this$0:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    invoke-static {v1}, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->access$200(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;)Lcom/android/vending/util/CommentUtil$LifecycleHandler;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/vending/util/CommentUtil$LifecycleHandler;->onItemSelected(I)V

    .line 105
    iget-object v1, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$1;->this$0:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    invoke-static {v1}, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->access$300(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 106
    .local v0, ok:Landroid/widget/Button;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 107
    return-void
.end method
