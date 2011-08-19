.class Lcom/google/android/talk/fragments/ChatScreenFragment$SwipeySwitcherActiveChats;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwipeySwitcherActiveChats"
.end annotation


# instance fields
.field mSwipeySwitcher:Lcom/google/android/common/SwipeySwitcher;

.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter
    .parameter "root"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SwipeySwitcherActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const v0, 0x7f100036

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/common/SwipeySwitcher;

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SwipeySwitcherActiveChats;->mSwipeySwitcher:Lcom/google/android/common/SwipeySwitcher;

    .line 134
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SwipeySwitcherActiveChats;->mSwipeySwitcher:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$000(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/common/SwipeySwitcher;->setOnTouchCallback(Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SwipeySwitcherActiveChats;->mSwipeySwitcher:Lcom/google/android/common/SwipeySwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/common/SwipeySwitcher;->setVisibility(I)V

    .line 136
    return-void
.end method


# virtual methods
.method public foreachChatView(Lcom/google/android/common/SwipeySwitcher$ViewRunnable;)V
    .locals 1
    .parameter "vr"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SwipeySwitcherActiveChats;->mSwipeySwitcher:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v0, p1}, Lcom/google/android/common/SwipeySwitcher;->foreachView(Lcom/google/android/common/SwipeySwitcher$ViewRunnable;)V

    .line 144
    return-void
.end method

.method public getAdapter()Lcom/google/android/common/SwipeySwitcher$Adapter;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SwipeySwitcherActiveChats;->mSwipeySwitcher:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/android/common/SwipeySwitcher;->getAdapter()Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SwipeySwitcherActiveChats;->mSwipeySwitcher:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/android/common/SwipeySwitcher;->getRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedChatView()Lcom/google/android/talk/ChatView;
    .locals 2

    .prologue
    .line 163
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SwipeySwitcherActiveChats;->mSwipeySwitcher:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v1}, Lcom/google/android/common/SwipeySwitcher;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, v:Landroid/view/View;
    instance-of v1, v0, Lcom/google/android/talk/ChatView;

    if-eqz v1, :cond_0

    .line 165
    check-cast v0, Lcom/google/android/talk/ChatView;

    .end local v0           #v:Landroid/view/View;
    move-object v1, v0

    .line 167
    :goto_0
    return-object v1

    .restart local v0       #v:Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSelectedChatViewAdjacent(Z)Landroid/view/View;
    .locals 1
    .parameter "b"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SwipeySwitcherActiveChats;->mSwipeySwitcher:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v0, p1}, Lcom/google/android/common/SwipeySwitcher;->getSelectedViewAdjacent(Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SwipeySwitcherActiveChats;->mSwipeySwitcher:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/android/common/SwipeySwitcher;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .parameter "hidden"

    .prologue
    .line 176
    return-void
.end method

.method public selectNext(ZLjava/lang/Runnable;I)V
    .locals 1
    .parameter "moveForward"
    .parameter "onDone"
    .parameter "i"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SwipeySwitcherActiveChats;->mSwipeySwitcher:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/common/SwipeySwitcher;->selectNext(ZLjava/lang/Runnable;I)V

    .line 180
    return-void
.end method

.method public setAdapter(Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;)V
    .locals 1
    .parameter "galleryAdapter"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SwipeySwitcherActiveChats;->mSwipeySwitcher:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v0, p1}, Lcom/google/android/common/SwipeySwitcher;->setAdapter(Lcom/google/android/common/SwipeySwitcher$Adapter;)V

    .line 184
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "newPos"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SwipeySwitcherActiveChats;->mSwipeySwitcher:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v0, p1}, Lcom/google/android/common/SwipeySwitcher;->setSelection(I)V

    .line 188
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SwipeySwitcherActiveChats;->mSwipeySwitcher:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/android/common/SwipeySwitcher;->clear()V

    .line 140
    return-void
.end method
