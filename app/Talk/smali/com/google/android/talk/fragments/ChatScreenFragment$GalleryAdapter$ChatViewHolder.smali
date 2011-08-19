.class Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Lcom/google/android/common/SwipeySwitcher$IViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChatViewHolder"
.end annotation


# instance fields
.field private mChatView:Lcom/google/android/talk/ChatView;

.field mHasFocus:Z

.field mIntent:Landroid/content/Intent;

.field final synthetic this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "intent"

    .prologue
    .line 749
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    iput-object p2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mIntent:Landroid/content/Intent;

    .line 751
    return-void
.end method


# virtual methods
.method public clearScrollingCache()V
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mChatView:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->clearScrollingCache()V

    .line 833
    return-void
.end method

.method public createScrollingCache()V
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mChatView:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->createScrollingCache()V

    .line 829
    return-void
.end method

.method public focus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 776
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mHasFocus:Z

    if-eqz v0, :cond_0

    .line 804
    :goto_0
    return-void

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    iget-object v0, v0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FOCUS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mChatView:Lcom/google/android/talk/ChatView;

    invoke-virtual {v2}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$300(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)V

    .line 782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mHasFocus:Z

    .line 786
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mChatView:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getSession()Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v0

    if-nez v0, :cond_1

    .line 787
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    iget-object v0, v0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mChatView:Lcom/google/android/talk/ChatView;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mChatView:Lcom/google/android/talk/ChatView;

    invoke-virtual {v2}, Lcom/google/android/talk/ChatView;->getAccountId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1800(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mChatView:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0, v4}, Lcom/google/android/talk/ChatView;->initSession(Z)Z

    .line 795
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mChatView:Lcom/google/android/talk/ChatView;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    iget-object v1, v1, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView;->restoreUnsentComposedMessage(Landroid/widget/EditText;)V

    .line 799
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mChatView:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->focus()V

    .line 803
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mChatView:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->updateHost()V

    goto :goto_0
.end method

.method public get()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 754
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mChatView:Lcom/google/android/talk/ChatView;

    if-nez v0, :cond_0

    .line 755
    new-instance v0, Lcom/google/android/talk/ChatView;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    iget-object v1, v1, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$800(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    iget-object v4, v4, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    iget-object v6, v6, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v6}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/ChatView;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup$LayoutParams;Landroid/content/Intent;Landroid/database/Cursor;Landroid/os/Bundle;Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mChatView:Lcom/google/android/talk/ChatView;

    .line 764
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mChatView:Lcom/google/android/talk/ChatView;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    iget-object v1, v1, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$500(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView;->setVideoChatStateAccessor(Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;)V

    .line 768
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    iget-object v0, v0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1700(Lcom/google/android/talk/fragments/ChatScreenFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mChatView:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    iget-object v1, v1, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mChatView:Lcom/google/android/talk/ChatView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView;->setStartVoiceChatOnFirstDisplay(Z)V

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mChatView:Lcom/google/android/talk/ChatView;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public run(Lcom/google/android/common/SwipeySwitcher$ViewRunnable;)Z
    .locals 1
    .parameter "vr"

    .prologue
    .line 836
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mChatView:Lcom/google/android/talk/ChatView;

    invoke-interface {p1, v0}, Lcom/google/android/common/SwipeySwitcher$ViewRunnable;->run(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 807
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    iget-object v0, v0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STOP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mChatView:Lcom/google/android/talk/ChatView;

    invoke-virtual {v2}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$300(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)V

    .line 809
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->unfocus()V

    .line 810
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mChatView:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->onStop()V

    .line 811
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    iget-object v0, v0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->mFreeViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mHasFocus:Z

    .line 813
    return-void
.end method

.method public unfocus()V
    .locals 3

    .prologue
    .line 816
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mHasFocus:Z

    if-nez v0, :cond_0

    .line 825
    :goto_0
    return-void

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    iget-object v0, v0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNFOCUS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mChatView:Lcom/google/android/talk/ChatView;

    invoke-virtual {v2}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$300(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)V

    .line 821
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mHasFocus:Z

    .line 823
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mChatView:Lcom/google/android/talk/ChatView;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    iget-object v1, v1, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView;->saveUnsentComposedMessage(Landroid/widget/TextView;)V

    .line 824
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mChatView:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->unfocus()V

    goto :goto_0
.end method
