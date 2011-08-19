.class Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$3;
.super Ljava/lang/Object;
.source "CommentUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 136
    iput-object p1, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$3;->this$0:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor$3;->this$0:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    invoke-static {v0}, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->access$200(Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;)Lcom/android/vending/util/CommentUtil$LifecycleHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/vending/util/CommentUtil$LifecycleHandler;->onDialogDismissed()V

    .line 139
    return-void
.end method
