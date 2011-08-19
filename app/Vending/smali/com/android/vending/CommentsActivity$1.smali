.class Lcom/android/vending/CommentsActivity$1;
.super Ljava/lang/Object;
.source "CommentsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/CommentsActivity;
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
    .line 122
    iput-object p1, p0, Lcom/android/vending/CommentsActivity$1;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/vending/CommentsActivity$1;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-virtual {v0}, Lcom/android/vending/CommentsActivity;->retryExecutingAction()V

    .line 125
    return-void
.end method
