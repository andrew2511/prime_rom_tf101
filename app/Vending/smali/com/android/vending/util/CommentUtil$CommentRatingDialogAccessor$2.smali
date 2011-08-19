.class Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$2;
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
    .line 112
    iput-object p1, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$2;->this$0:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "position"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$2;->this$0:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    invoke-static {v0}, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->access$400(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$2;->this$0:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    invoke-static {v1}, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->access$500(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$2;->this$0:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    invoke-static {v2}, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->access$000(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;)Lcom/android/vending/model/RateCommentRequest$CommentRating;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/vending/util/CommentUtil;->sendCommentRating(Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/RateCommentRequest$CommentRating;)V

    .line 115
    iget-object v0, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$2;->this$0:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    invoke-static {v0}, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->access$000(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;)Lcom/android/vending/model/RateCommentRequest$CommentRating;

    move-result-object v0

    sget-object v1, Lcom/android/vending/model/RateCommentRequest$CommentRating;->SPAM:Lcom/android/vending/model/RateCommentRequest$CommentRating;

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$2;->this$0:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    invoke-static {v0}, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->access$600(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;)Lcom/android/vending/util/CommentUtil$OnMarkedAsSpamHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$2;->this$0:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    invoke-static {v1}, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->access$400(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$2;->this$0:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    invoke-static {v2}, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->access$500(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/vending/util/CommentUtil$OnMarkedAsSpamHandler;->handleMarkedAsSpam(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method
