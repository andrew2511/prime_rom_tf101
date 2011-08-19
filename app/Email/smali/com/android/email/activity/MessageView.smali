.class public Lcom/android/email/activity/MessageView;
.super Lcom/android/email/activity/MessageViewBase;
.source "MessageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/MessageOrderManager$Callback;
.implements Lcom/android/email/activity/MessageViewFragment$Callback;


# instance fields
.field private mFragment:Lcom/android/email/activity/MessageViewFragment;

.field private mMailboxId:J

.field private mMessageId:J

.field private mMoveToNewer:Landroid/view/View;

.field private mMoveToOlder:Landroid/view/View;

.field private mOrderManager:Lcom/android/email/activity/MessageOrderManager;

.field private mReplyAndForwardEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewBase;-><init>()V

    return-void
.end method

.method public static actionView(Landroid/content/Context;JJ)V
    .locals 1
    .parameter "context"
    .parameter "messageId"
    .parameter "mailboxId"

    .prologue
    .line 66
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageView;->getActionViewIntent(Landroid/content/Context;JJ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method private enableForwardReply(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/android/email/activity/MessageView;->mReplyAndForwardEnabled:Z

    .line 268
    const v0, 0x7f0f008a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 269
    const v0, 0x7f0f008b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 270
    return-void
.end method

.method public static getActionViewIntent(Landroid/content/Context;JJ)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageView invalid messageId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    const-string v1, "com.android.email.MessageView_message_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 75
    const-string v1, "com.android.email.MessageView_mailbox_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 76
    return-object v0
.end method

.method private initFromIntent()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    .line 110
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 111
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.email.MessageView_message_id"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 112
    const-string v1, "com.android.email.MessageView_mailbox_id"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    .line 113
    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 114
    :cond_0
    const-string v1, "Email"

    const-string v2, "Insufficient intent parameter.  Closing..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageView;->enableForwardReply(Z)V

    goto :goto_0
.end method

.method private messageChanged()V
    .locals 3

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragment;->openMessage(J)V

    .line 294
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageOrderManager;->moveTo(J)V

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->updateNavigationArrows()V

    .line 298
    return-void
.end method

.method private moveToNewer()Z
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->moveToNewer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 196
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->messageChanged()V

    .line 197
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToOlder()Z
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->moveToOlder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 187
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->messageChanged()V

    .line 188
    const/4 v0, 0x1

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDeleteMessage()V
    .locals 4

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 174
    .local v0, messageIdToDelete:J
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->moveToOlder()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->moveToNewer()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v3, 0x1

    move v2, v3

    .line 175
    .local v2, moved:Z
    :goto_0
    invoke-static {p0, v0, v1}, Lcom/android/email/activity/ActivityHelper;->deleteMessage(Landroid/app/Activity;J)V

    .line 176
    if-nez v2, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 182
    :cond_1
    return-void

    .line 174
    .end local v2           #moved:Z
    :cond_2
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0
.end method

.method private updateNavigationArrows()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 304
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMoveToNewer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->canMoveToNewer()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 305
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMoveToOlder:Landroid/view/View;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->canMoveToOlder()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 306
    return-void

    :cond_0
    move v1, v2

    .line 304
    goto :goto_0

    :cond_1
    move v1, v2

    .line 305
    goto :goto_1
.end method


# virtual methods
.method protected getAccountId()J
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getAccountId()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getFragment()Lcom/android/email/activity/MessageViewFragment;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mFragment:Lcom/android/email/activity/MessageViewFragment;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 81
    const v0, 0x7f040029

    return v0
.end method

.method handleMenuItem(I)Z
    .locals 2
    .parameter "menuItemId"

    .prologue
    const/4 v1, 0x0

    .line 239
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 258
    :goto_0
    return v0

    .line 241
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onDeleteMessage()V

    .line 258
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 244
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->onReply()V

    goto :goto_1

    .line 247
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->onReplyAll()V

    goto :goto_1

    .line 250
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->onForward()V

    goto :goto_1

    .line 253
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragment;->onMarkMessageAsRead(Z)V

    goto :goto_1

    .line 239
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f008a -> :sswitch_1
        0x7f0f008b -> :sswitch_2
        0x7f0f008c -> :sswitch_0
        0x7f0f00a0 -> :sswitch_3
        0x7f0f00e6 -> :sswitch_4
    .end sparse-switch
.end method

.method public onBeforeMessageDelete()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public onCalendarLinkClicked(J)V
    .locals 0
    .parameter "epochEventStartTime"

    .prologue
    .line 332
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/ActivityHelper;->openCalendar(Landroid/app/Activity;J)V

    .line 333
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 220
    :goto_0
    return-void

    .line 205
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->onReply()V

    goto :goto_0

    .line 208
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->onReplyAll()V

    goto :goto_0

    .line 211
    :pswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onDeleteMessage()V

    goto :goto_0

    .line 214
    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->moveToOlder()Z

    goto :goto_0

    .line 217
    :pswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->moveToNewer()Z

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x7f0f008a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewBase;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0f0088

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragment;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mFragment:Lcom/android/email/activity/MessageViewFragment;

    .line 90
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/MessageViewFragment;->setCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V

    .line 94
    const v0, 0x7f0f008d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMoveToNewer:Landroid/view/View;

    .line 95
    const v0, 0x7f0f008e

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMoveToOlder:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMoveToNewer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMoveToOlder:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, 0x7f0f008a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v0, 0x7f0f008b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v0, 0x7f0f008c

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->initFromIntent()V

    .line 104
    if-eqz p1, :cond_0

    .line 105
    const-string v0, "messageId"

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 107
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 275
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0014

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public onForward()V
    .locals 2

    .prologue
    .line 349
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 350
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 351
    return-void
.end method

.method public onMessageNotFound()V
    .locals 0

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 313
    return-void
.end method

.method public onMessageSetUnread()V
    .locals 0

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 264
    return-void
.end method

.method public onMessageViewShown(I)V
    .locals 1
    .parameter "mailboxType"

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewBase;->onMessageViewShown(I)V

    .line 167
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageView;->enableForwardReply(Z)V

    .line 168
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMessagesChanged()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->updateNavigationArrows()V

    .line 320
    return-void
.end method

.method public onMoveMessage()V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 224
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageView;->handleMenuItem(I)Z

    move-result v0

    .line 225
    .local v0, handled:Z
    if-nez v0, :cond_0

    .line 226
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 228
    :cond_0
    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->close()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    .line 150
    :cond_0
    invoke-super {p0}, Lcom/android/email/activity/MessageViewBase;->onPause()V

    .line 151
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 281
    const v0, 0x7f0f00a0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/activity/MessageView;->mReplyAndForwardEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 282
    const v0, 0x7f0f008a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/activity/MessageView;->mReplyAndForwardEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 283
    const v0, 0x7f0f008b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/activity/MessageView;->mReplyAndForwardEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 284
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onReply()V
    .locals 3

    .prologue
    .line 337
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 338
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 339
    return-void
.end method

.method public onReplyAll()V
    .locals 3

    .prologue
    .line 343
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 344
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 345
    return-void
.end method

.method public onRespondedToInvite(I)V
    .locals 1
    .parameter "response"

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->moveToOlder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 328
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/email/activity/MessageViewBase;->onResume()V

    .line 135
    invoke-static {}, Lcom/android/email/Email;->getNotifyUiAccountsChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    new-instance v0, Lcom/android/email/activity/MessageOrderManager;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/android/email/activity/MessageOrderManager;-><init>(Landroid/content/Context;JLcom/android/email/activity/MessageOrderManager$Callback;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    .line 141
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->messageChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "messageId"

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 128
    :cond_0
    return-void
.end method
