.class Lcom/google/android/talk/fragments/ChatScreenFragment$4$1;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment$4;->onComplete(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$4;

.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment$4;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$4$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$4;

    iput-object p2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$4$1;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$4$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    :goto_0
    return-void

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$4$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$4;

    iget-object v0, v0, Lcom/google/android/talk/fragments/ChatScreenFragment$4;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2600(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$4$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$4;

    iget-object v2, v2, Lcom/google/android/talk/fragments/ChatScreenFragment$4;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$4$1;->val$cursor:Landroid/database/Cursor;

    invoke-direct {v1, v2, v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Landroid/database/Cursor;)V

    invoke-interface {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->setAdapter(Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;)V

    .line 1007
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$4$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$4;

    iget-object v0, v0, Lcom/google/android/talk/fragments/ChatScreenFragment$4;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1009
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$4$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$4;

    iget-object v0, v0, Lcom/google/android/talk/fragments/ChatScreenFragment$4;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$4$1;->val$cursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$4$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$4;

    iget-object v2, v2, Lcom/google/android/talk/fragments/ChatScreenFragment$4;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$4$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$4;

    iget-object v3, v3, Lcom/google/android/talk/fragments/ChatScreenFragment$4;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2700(Lcom/google/android/talk/fragments/ChatScreenFragment;)J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2800(Lcom/google/android/talk/fragments/ChatScreenFragment;Landroid/database/Cursor;Ljava/lang/String;J)V

    goto :goto_0
.end method
