.class Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;
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
    name = "SimpleActiveChats"
.end annotation


# instance fields
.field mChatRoot:Landroid/view/ViewGroup;

.field mChatView1:Lcom/google/android/talk/ChatView;

.field mChatView2:Lcom/google/android/talk/ChatView;

.field mGalleryAdapter:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

.field mInitialized1:Z

.field mInitialized2:Z

.field mLayoutTransition:Landroid/animation/LayoutTransition;

.field mSelectedItemPosition:I

.field oneIsTop:Z

.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Landroid/view/ViewGroup;)V
    .locals 8
    .parameter
    .parameter "chatRoot"

    .prologue
    const-wide/16 v6, 0x0

    const/high16 v5, 0x3fc0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 201
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mSelectedItemPosition:I

    .line 202
    iput-object p2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatRoot:Landroid/view/ViewGroup;

    .line 203
    const v0, 0x7f100037

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/ChatView;

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    .line 204
    const v0, 0x7f100038

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/ChatView;

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    .line 205
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    invoke-static {p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/talk/ChatView;->setup(Landroid/view/ViewGroup$LayoutParams;Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;)V

    .line 206
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    invoke-static {p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/talk/ChatView;->setup(Landroid/view/ViewGroup$LayoutParams;Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;)V

    .line 208
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 228
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 229
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 230
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v3, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 231
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v4, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 232
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v3, v6, v7}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 233
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v4, v6, v7}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 235
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mLayoutTransition:Landroid/animation/LayoutTransition;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3, v1}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 237
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mLayoutTransition:Landroid/animation/LayoutTransition;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v4, v1}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 240
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 241
    return-void
.end method


# virtual methods
.method public foreachChatView(Lcom/google/android/common/SwipeySwitcher$ViewRunnable;)V
    .locals 1
    .parameter "vr"

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized1:Z

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    invoke-interface {p1, v0}, Lcom/google/android/common/SwipeySwitcher$ViewRunnable;->run(Landroid/view/View;)Z

    .line 266
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized2:Z

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    invoke-interface {p1, v0}, Lcom/google/android/common/SwipeySwitcher$ViewRunnable;->run(Landroid/view/View;)Z

    .line 269
    :cond_1
    return-void
.end method

.method public getAdapter()Lcom/google/android/common/SwipeySwitcher$Adapter;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mGalleryAdapter:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getSelectedChatView()Lcom/google/android/talk/ChatView;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 284
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->oneIsTop:Z

    if-eqz v0, :cond_1

    .line 285
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized1:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    .line 287
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 285
    goto :goto_0

    .line 287
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized2:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getSelectedChatViewAdjacent(Z)Landroid/view/View;
    .locals 1
    .parameter "b"

    .prologue
    .line 292
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mSelectedItemPosition:I

    return v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .parameter "hidden"

    .prologue
    .line 373
    if-eqz p1, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->stop()V

    .line 376
    :cond_0
    return-void
.end method

.method public selectNext(ZLjava/lang/Runnable;I)V
    .locals 1
    .parameter "moveForward"
    .parameter "onDone"
    .parameter "i"

    .prologue
    .line 296
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAdapter(Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;)V
    .locals 1
    .parameter "galleryAdapter"

    .prologue
    .line 300
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mSelectedItemPosition:I

    .line 301
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mGalleryAdapter:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    .line 302
    return-void
.end method

.method public setSelection(I)V
    .locals 8
    .parameter "newPos"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 305
    iget v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mSelectedItemPosition:I

    if-ne p1, v3, :cond_0

    .line 366
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mGalleryAdapter:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    invoke-virtual {v3, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->getIntent(I)Landroid/content/Intent;

    move-result-object v1

    .line 311
    .local v1, intent:Landroid/content/Intent;
    iget-boolean v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->oneIsTop:Z

    if-eqz v3, :cond_1

    .line 312
    iget-boolean v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized1:Z

    if-eqz v3, :cond_2

    .line 313
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    invoke-virtual {v3, v1}, Lcom/google/android/talk/ChatView;->matchBuddy(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSelection(pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") mChatView1, same contact"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$400(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)V

    .line 315
    iput p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mSelectedItemPosition:I

    goto :goto_0

    .line 320
    :cond_1
    iget-boolean v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized2:Z

    if-eqz v3, :cond_2

    .line 321
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    invoke-virtual {v3, v1}, Lcom/google/android/talk/ChatView;->matchBuddy(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 322
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSelection(pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") mChatView2, same contact"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$400(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)V

    .line 323
    iput p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mSelectedItemPosition:I

    goto :goto_0

    .line 329
    :cond_2
    iput p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mSelectedItemPosition:I

    .line 330
    iget-boolean v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized1:Z

    if-eqz v3, :cond_3

    .line 331
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/talk/ChatView;->saveUnsentComposedMessage(Landroid/widget/TextView;)V

    .line 332
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    invoke-virtual {v3}, Lcom/google/android/talk/ChatView;->onStop()V

    .line 333
    iput-boolean v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized1:Z

    .line 335
    :cond_3
    iget-boolean v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized2:Z

    if-eqz v3, :cond_4

    .line 336
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/talk/ChatView;->saveUnsentComposedMessage(Landroid/widget/TextView;)V

    .line 337
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    invoke-virtual {v3}, Lcom/google/android/talk/ChatView;->onStop()V

    .line 338
    iput-boolean v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized2:Z

    .line 341
    :cond_4
    iget-boolean v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->oneIsTop:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    move-object v2, v3

    .line 342
    .local v2, previous:Lcom/google/android/talk/ChatView;
    :goto_1
    iget-boolean v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->oneIsTop:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    move-object v0, v3

    .line 344
    .local v0, current:Lcom/google/android/talk/ChatView;
    :goto_2
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mGalleryAdapter:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    invoke-virtual {v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v5}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/google/android/talk/ChatView;->initialize(Landroid/content/Intent;Landroid/database/Cursor;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 350
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/talk/ChatView;->restoreUnsentComposedMessage(Landroid/widget/EditText;)V

    .line 351
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->focus()V

    .line 353
    invoke-virtual {v0, v6}, Lcom/google/android/talk/ChatView;->setVisibility(I)V

    .line 354
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/talk/ChatView;->setVisibility(I)V

    .line 356
    iget-boolean v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->oneIsTop:Z

    if-nez v3, :cond_7

    move v3, v7

    :goto_3
    iput-boolean v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->oneIsTop:Z

    .line 357
    iget-boolean v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->oneIsTop:Z

    if-eqz v3, :cond_8

    .line 358
    iput-boolean v7, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized1:Z

    .line 362
    :goto_4
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSelection: pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oneIsTop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->oneIsTop:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", v1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized1:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", v2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized2:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$300(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)V

    .line 365
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$500(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->requestCallStateUpdate()V

    goto/16 :goto_0

    .line 341
    .end local v0           #current:Lcom/google/android/talk/ChatView;
    .end local v2           #previous:Lcom/google/android/talk/ChatView;
    :cond_5
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    move-object v2, v3

    goto/16 :goto_1

    .line 342
    .restart local v2       #previous:Lcom/google/android/talk/ChatView;
    :cond_6
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    move-object v0, v3

    goto :goto_2

    .restart local v0       #current:Lcom/google/android/talk/ChatView;
    :cond_7
    move v3, v6

    .line 356
    goto :goto_3

    .line 360
    :cond_8
    iput-boolean v7, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized2:Z

    goto :goto_4
.end method

.method public stop()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 244
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mSelectedItemPosition:I

    .line 246
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized1:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView;->saveUnsentComposedMessage(Landroid/widget/TextView;)V

    .line 248
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->onStop()V

    .line 249
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView1:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0, v3}, Lcom/google/android/talk/ChatView;->setVisibility(I)V

    .line 250
    iput-boolean v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized1:Z

    .line 252
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized2:Z

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView;->saveUnsentComposedMessage(Landroid/widget/TextView;)V

    .line 254
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->onStop()V

    .line 255
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mChatView2:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0, v3}, Lcom/google/android/talk/ChatView;->setVisibility(I)V

    .line 256
    iput-boolean v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized2:Z

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop: mInitialized1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized1:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mInitialized2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;->mInitialized2:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$300(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)V

    .line 260
    return-void
.end method
