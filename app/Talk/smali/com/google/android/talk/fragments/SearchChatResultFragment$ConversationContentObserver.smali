.class final Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;
.super Landroid/database/ContentObserver;
.source "SearchChatResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/SearchChatResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConversationContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    .line 523
    invoke-static {p1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$1400(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 524
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 533
    if-nez p1, :cond_1

    .line 534
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$200(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 535
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v1

    .line 536
    .local v1, valid:Z
    if-eqz v1, :cond_2

    .line 539
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$1500(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 540
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$1600(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V

    .line 547
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$1800(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Lcom/google/android/talk/ContactInfoQuery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/talk/ContactInfoQuery;->requeryForContactInfo()V

    .line 549
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #valid:Z
    :cond_1
    :goto_0
    return-void

    .line 544
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v1       #valid:Z
    :cond_2
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$1700(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V

    goto :goto_0
.end method
