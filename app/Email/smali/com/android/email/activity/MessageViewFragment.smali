.class public Lcom/android/email/activity/MessageViewFragment;
.super Lcom/android/email/activity/MessageViewFragmentBase;
.source "MessageViewFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageViewFragment$EmptyCallback;,
        Lcom/android/email/activity/MessageViewFragment$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

.field private mCurrentMessageId:J

.field private mFavoriteIcon:Landroid/widget/ImageView;

.field private mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

.field private mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

.field private mForwardButton:Landroid/view/View;

.field private mInviteSection:Landroid/view/View;

.field private final mLock:Ljava/lang/Object;

.field private mMeetingMaybe:Landroid/widget/CheckBox;

.field private mMeetingNo:Landroid/widget/CheckBox;

.field private mMeetingYes:Landroid/widget/CheckBox;

.field private mMessageIdToOpen:J

.field private mPreviousMeetingResponse:I

.field private mReplyAllButton:Landroid/view/View;

.field private mReplyButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 52
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;-><init>()V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponse:I

    .line 73
    iput-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mLock:Ljava/lang/Object;

    .line 79
    iput-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    .line 137
    sget-object v0, Lcom/android/email/activity/MessageViewFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    return-void
.end method

.method private enableReplyForwardButtons(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 191
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 192
    .local v0, visibility:I
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mForwardButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 195
    return-void

    .line 191
    .end local v0           #visibility:I
    :cond_0
    const/16 v1, 0x8

    move v0, v1

    goto :goto_0
.end method

.method private onClickFavorite()V
    .locals 5

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 280
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    .line 281
    .local v1, newFavorite:Z
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    iput-boolean v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 285
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/email/Controller;->setMessageFavorite(JZ)Landroid/os/AsyncTask;

    .line 286
    return-void

    .line 280
    .end local v1           #newFavorite:Z
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 281
    .restart local v1       #newFavorite:Z
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method private onDelete()V
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onBeforeMessageDelete()V

    .line 395
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/ActivityHelper;->deleteMessage(Landroid/app/Activity;J)V

    .line 396
    return-void
.end method

.method private onInviteLinkClicked()V
    .locals 6

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    .line 318
    .local v2, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    new-instance v4, Lcom/android/emailcommon/mail/PackedString;

    iget-object v5, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    const-string v5, "DTSTART"

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, startTime:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 320
    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v0

    .line 321
    .local v0, epochTimeMillis:J
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onCalendarLinkClicked(J)V

    .line 325
    .end local v0           #epochTimeMillis:J
    :goto_0
    return-void

    .line 323
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "meetingInfo without DTSTART "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onMarkAsUnread()V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragment;->onMarkMessageAsRead(Z)V

    .line 400
    return-void
.end method

.method private onMove()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onMoveMessage()V

    .line 391
    return-void
.end method

.method private onRespondToInvite(II)V
    .locals 4
    .parameter "response"
    .parameter "toastResId"

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 308
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget v1, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponse:I

    if-eq v1, p1, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/email/Controller;->sendMeetingResponse(JI)V

    .line 310
    iput p1, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponse:I

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/app/Activity;I)V

    .line 313
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v1, p1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onRespondedToInvite(I)V

    .line 314
    return-void
.end method


# virtual methods
.method public clearContent()V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_0
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->clearContent()V

    .line 220
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    .line 226
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragment;->setHasOptionsMenu(Z)V

    .line 227
    monitor-exit v0

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isMessageSpecified()Z
    .locals 5

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "view"
    .parameter "isChecked"

    .prologue
    .line 356
    if-nez p2, :cond_0

    .line 371
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 359
    :pswitch_0
    const/4 v0, 0x1

    const v1, 0x7f080096

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragment;->onRespondToInvite(II)V

    goto :goto_0

    .line 363
    :pswitch_1
    const/4 v0, 0x2

    const v1, 0x7f080097

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragment;->onRespondToInvite(II)V

    goto :goto_0

    .line 367
    :pswitch_2
    const/4 v0, 0x3

    const v1, 0x7f080098

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragment;->onRespondToInvite(II)V

    goto :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f00b5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->isMessageOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 351
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 334
    :sswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onReply()V

    goto :goto_0

    .line 337
    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onReplyAll()V

    goto :goto_0

    .line 340
    :sswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onForward()V

    goto :goto_0

    .line 344
    :sswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onClickFavorite()V

    goto :goto_0

    .line 348
    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onInviteLinkClicked()V

    goto :goto_0

    .line 332
    :sswitch_data_0
    .sparse-switch
        0x7f0f0080 -> :sswitch_3
        0x7f0f008a -> :sswitch_0
        0x7f0f008b -> :sswitch_1
        0x7f0f00a0 -> :sswitch_2
        0x7f0f00b3 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 144
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    .line 145
    const v1, 0x7f02001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    .line 146
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 186
    const v0, 0x7f0e0013

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 187
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f0f0080

    const/4 v2, 0x0

    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIcon:Landroid/widget/ImageView;

    .line 154
    const v1, 0x7f0f00b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mInviteSection:Landroid/view/View;

    .line 155
    const v1, 0x7f0f008a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyButton:Landroid/view/View;

    .line 156
    const v1, 0x7f0f008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllButton:Landroid/view/View;

    .line 157
    const v1, 0x7f0f00a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mForwardButton:Landroid/view/View;

    .line 158
    const v1, 0x7f0f00b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMeetingYes:Landroid/widget/CheckBox;

    .line 159
    const v1, 0x7f0f00b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMeetingMaybe:Landroid/widget/CheckBox;

    .line 160
    const v1, 0x7f0f00b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMeetingNo:Landroid/widget/CheckBox;

    .line 163
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mForwardButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMeetingYes:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 170
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMeetingMaybe:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 171
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMeetingNo:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 172
    const v1, 0x7f0f00b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageViewFragment;->enableReplyForwardButtons(Z)V

    .line 176
    return-object v0
.end method

.method public onMarkMessageAsRead(Z)V
    .locals 4
    .parameter "isRead"

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 293
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-boolean v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eq v1, p1, :cond_0

    .line 294
    iput-boolean p1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 295
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/email/Controller;->setMessageRead(JZ)Landroid/os/AsyncTask;

    .line 296
    if-nez p1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onMessageSetUnread()V

    .line 300
    :cond_0
    return-void
.end method

.method protected onMessageShown(JI)V
    .locals 1
    .parameter "messageId"
    .parameter "mailboxType"

    .prologue
    .line 261
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->onMessageShown(JI)V

    .line 264
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    .line 267
    invoke-static {p3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->isMailboxTypeReplyAndForwardable(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragment;->enableReplyForwardButtons(Z)V

    .line 270
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragment;->setHasOptionsMenu(Z)V

    .line 271
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 375
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 386
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 377
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onMove()V

    move v0, v1

    .line 378
    goto :goto_0

    .line 380
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onDelete()V

    move v0, v1

    .line 381
    goto :goto_0

    .line 383
    :sswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onMarkAsUnread()V

    move v0, v1

    .line 384
    goto :goto_0

    .line 375
    :sswitch_data_0
    .sparse-switch
        0x7f0f008c -> :sswitch_1
        0x7f0f00e1 -> :sswitch_0
        0x7f0f00e6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPostLoadBody()V
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragment;->onMarkMessageAsRead(Z)V

    .line 410
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onResume()V

    .line 182
    return-void
.end method

.method public openMessage(J)V
    .locals 2
    .parameter "messageId"

    .prologue
    .line 207
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    .line 212
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->loadMessageIfResumed()V

    .line 214
    return-void

    .line 212
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 5
    .parameter "activity"

    .prologue
    .line 250
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 251
    :try_start_0
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    .line 252
    .local v0, messageId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 253
    const/4 v3, 0x0

    monitor-exit v2

    move-object v2, v3

    .line 255
    :goto_0
    return-object v2

    :cond_0
    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    monitor-exit v2

    move-object v2, v3

    goto :goto_0

    .line 256
    .end local v0           #messageId:J
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected resetView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    .line 233
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mMeetingYes:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 234
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mMeetingNo:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mMeetingMaybe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 236
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 198
    if-nez p1, :cond_0

    sget-object v0, Lcom/android/email/activity/MessageViewFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragment$Callback;

    :goto_0
    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    .line 199
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-super {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCallback(Lcom/android/email/activity/MessageViewFragmentBase$Callback;)V

    .line 200
    return-void

    :cond_0
    move-object v0, p1

    .line 198
    goto :goto_0
.end method

.method protected updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 414
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 416
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 419
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 420
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragment;->addTabFlags(I)V

    .line 422
    :cond_0
    return-void

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
