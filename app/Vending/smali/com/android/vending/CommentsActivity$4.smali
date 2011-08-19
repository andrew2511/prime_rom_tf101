.class Lcom/android/vending/CommentsActivity$4;
.super Ljava/lang/Object;
.source "CommentsActivity.java"

# interfaces
.implements Lcom/android/vending/util/CommentUtil$LifecycleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/CommentsActivity;->registerCommentRatingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/CommentsActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/CommentsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/vending/CommentsActivity$4;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultSelectedPosition()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/vending/CommentsActivity$4;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v0}, Lcom/android/vending/CommentsActivity;->access$200(Lcom/android/vending/CommentsActivity;)I

    move-result v0

    return v0
.end method

.method public onDialogDismissed()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/vending/CommentsActivity$4;->this$0:Lcom/android/vending/CommentsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vending/CommentsActivity;->access$302(Lcom/android/vending/CommentsActivity;Z)Z

    .line 199
    iget-object v0, p0, Lcom/android/vending/CommentsActivity$4;->this$0:Lcom/android/vending/CommentsActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/vending/CommentsActivity;->access$202(Lcom/android/vending/CommentsActivity;I)I

    .line 200
    iget-object v0, p0, Lcom/android/vending/CommentsActivity$4;->this$0:Lcom/android/vending/CommentsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vending/CommentsActivity;->access$402(Lcom/android/vending/CommentsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    return-void
.end method

.method public onItemSelected(I)V
    .locals 1
    .parameter "itemPosition"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/vending/CommentsActivity$4;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v0, p1}, Lcom/android/vending/CommentsActivity;->access$202(Lcom/android/vending/CommentsActivity;I)I

    .line 195
    return-void
.end method
