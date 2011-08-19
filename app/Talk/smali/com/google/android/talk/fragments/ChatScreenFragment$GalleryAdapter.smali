.class Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Lcom/google/android/common/SwipeySwitcher$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GalleryAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;
    }
.end annotation


# instance fields
.field mCursor:Landroid/database/Cursor;

.field mFreeViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 697
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->mFreeViews:Ljava/util/ArrayList;

    .line 699
    iput-object p2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->mCursor:Landroid/database/Cursor;

    .line 700
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getIntent(I)Landroid/content/Intent;
    .locals 2
    .parameter "position"

    .prologue
    .line 711
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 713
    :cond_0
    const/4 v1, 0x0

    .line 717
    :goto_0
    return-object v1

    .line 716
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1600(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/util/ChatSwitcher;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/talk/util/ChatSwitcher;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    .local v0, intent:Landroid/content/Intent;
    move-object v1, v0

    .line 717
    goto :goto_0
.end method

.method public getView(ILandroid/view/ViewGroup;)Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    .locals 6
    .parameter "position"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 721
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$800(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v5

    .line 741
    :goto_0
    return-object v2

    .line 726
    :cond_1
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1600(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/util/ChatSwitcher;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/talk/util/ChatSwitcher;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    .line 727
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_2

    move-object v2, v5

    .line 729
    goto :goto_0

    .line 733
    :cond_2
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->mFreeViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 734
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->mFreeViews:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;

    .line 735
    .local v1, result:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;
    iput-object v0, v1, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->mIntent:Landroid/content/Intent;

    .line 736
    invoke-virtual {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;->get()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/talk/ChatView;

    check-cast v2, Lcom/google/android/talk/ChatView;

    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$800(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v5, v4}, Lcom/google/android/talk/ChatView;->initialize(Landroid/content/Intent;Landroid/database/Cursor;Landroid/os/Bundle;Landroid/content/Context;)V

    :goto_1
    move-object v2, v1

    .line 741
    goto :goto_0

    .line 739
    .end local v1           #result:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;
    :cond_3
    new-instance v1, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;Landroid/content/Intent;)V

    .restart local v1       #result:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter$ChatViewHolder;
    goto :goto_1
.end method
