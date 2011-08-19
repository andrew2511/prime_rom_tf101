.class Lcom/google/android/gm/BaseConversationListActivity$2;
.super Ljava/lang/Object;
.source "BaseConversationListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/BaseConversationListActivity;->setListContext(Lcom/google/android/gm/ConversationListContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/BaseConversationListActivity;

.field final synthetic val$oldLoaderId:I


# direct methods
.method constructor <init>(Lcom/google/android/gm/BaseConversationListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/google/android/gm/BaseConversationListActivity$2;->this$0:Lcom/google/android/gm/BaseConversationListActivity;

    iput p2, p0, Lcom/google/android/gm/BaseConversationListActivity$2;->val$oldLoaderId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 432
    iget v0, p0, Lcom/google/android/gm/BaseConversationListActivity$2;->val$oldLoaderId:I

    iget-object v1, p0, Lcom/google/android/gm/BaseConversationListActivity$2;->this$0:Lcom/google/android/gm/BaseConversationListActivity;

    iget-object v1, v1, Lcom/google/android/gm/BaseConversationListActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 433
    iget-object v0, p0, Lcom/google/android/gm/BaseConversationListActivity$2;->this$0:Lcom/google/android/gm/BaseConversationListActivity;

    invoke-virtual {v0}, Lcom/google/android/gm/BaseConversationListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gm/BaseConversationListActivity$2;->val$oldLoaderId:I

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 435
    :cond_0
    return-void
.end method
