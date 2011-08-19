.class Lcom/android/vending/CommentsActivity$3;
.super Ljava/lang/Object;
.source "CommentsActivity.java"

# interfaces
.implements Lcom/android/vending/util/CommentUtil$OnMarkedAsSpamHandler;


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
    .line 187
    iput-object p1, p0, Lcom/android/vending/CommentsActivity$3;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMarkedAsSpam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "assetId"
    .parameter "creatorId"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/vending/CommentsActivity$3;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v0, p2}, Lcom/android/vending/CommentsActivity;->access$100(Lcom/android/vending/CommentsActivity;Ljava/lang/String;)V

    .line 190
    return-void
.end method
