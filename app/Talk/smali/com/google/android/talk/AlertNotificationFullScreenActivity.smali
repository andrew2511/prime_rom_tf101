.class public Lcom/google/android/talk/AlertNotificationFullScreenActivity;
.super Landroid/app/Activity;
.source "AlertNotificationFullScreenActivity.java"


# instance fields
.field protected mAccountId:J

.field private mAvatar:Landroid/graphics/Bitmap;

.field private mAvatarView:Landroid/widget/ImageView;

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mCancelBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDateFormat:Ljava/text/DateFormat;

.field private mDateFormatStr:Ljava/lang/String;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogRootView:Landroid/view/View;

.field protected mExistingCall:Lcom/google/android/talk/videochat/CallState;

.field protected mExistingCallNickName:Ljava/lang/String;

.field protected mIsGroupChatInvite:Z

.field protected mIsIncomingCall:Z

.field protected mIsVideo:Z

.field protected mMessage:Ljava/lang/String;

.field private mMessage1View:Landroid/widget/TextView;

.field private mMessage2View:Landroid/widget/TextView;

.field private mMessage3View:Landroid/widget/TextView;

.field protected mNickName:Ljava/lang/String;

.field protected mRemoteJid:Ljava/lang/String;

.field protected mShowChatIntent:Landroid/content/Intent;

.field private mShowDialog:Ljava/lang/Boolean;

.field protected mTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mShowDialog:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->dismissDialogAndFinish()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/AlertNotificationFullScreenActivity;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->dumpIntent(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/talk/AlertNotificationFullScreenActivity;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->declineCall(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->dismissNotificationAndFinish()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->showDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAvatar:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/talk/AlertNotificationFullScreenActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAvatar:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAvatarView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private declineCall(JLjava/lang/String;)V
    .locals 2
    .parameter "accountId"
    .parameter "remoteJid"

    .prologue
    .line 435
    new-instance v0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 438
    .local v0, videoChatAccessor:Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;
    new-instance v1, Lcom/google/android/talk/AlertNotificationFullScreenActivity$6;

    invoke-direct {v1, p0, p3}, Lcom/google/android/talk/AlertNotificationFullScreenActivity$6;-><init>(Lcom/google/android/talk/AlertNotificationFullScreenActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->postVideoChatTask(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$VideoChatTask;)V

    .line 443
    return-void
.end method

.method private dismissDialog()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mShowDialog:Ljava/lang/Boolean;

    monitor-enter v0

    .line 419
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 421
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mShowDialog:Ljava/lang/Boolean;

    .line 423
    :cond_0
    monitor-exit v0

    .line 424
    return-void

    .line 423
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dismissDialogAndFinish()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mCancelBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mCancelBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mCancelBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 430
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->dismissDialog()V

    .line 431
    invoke-virtual {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->finish()V

    .line 432
    return-void
.end method

.method private dismissNotificationAndFinish()V
    .locals 6

    .prologue
    .line 336
    iget-boolean v4, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-eqz v4, :cond_0

    .line 338
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.google.android.talk.CANCEL_NOTIFICATION"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 355
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    const-string v4, "talk"

    const-string v5, "##### [AlertNotificationFullScreen] dismissNotificationAndFinish: dismiss dialog"

    invoke-static {v4, v5}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->dismissDialogAndFinish()V

    .line 358
    return-void

    .line 342
    :cond_0
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v3

    .line 343
    .local v3, service:Lcom/google/android/gtalkservice/IGTalkService;
    if-nez v3, :cond_1

    .line 344
    const-string v4, "talk"

    const-string v5, "dismissNotificationAndFinish: no GTalkService object found!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 347
    :cond_1
    iget-object v4, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mRemoteJid:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, contact:Ljava/lang/String;
    const-wide/16 v4, 0x1

    :try_start_0
    invoke-interface {v3, v0, v4, v5}, Lcom/google/android/gtalkservice/IGTalkService;->dismissNotificationFor(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v1

    .line 351
    .local v1, ex:Landroid/os/RemoteException;
    const-string v4, "talk"

    const-string v5, "dismissNotificationAndFinish: caught "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private dumpIntent(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 5
    .parameter "title"
    .parameter "intent"

    .prologue
    .line 319
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EXTRA_INTENT_FROM_ADDRESS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "from"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EXTRA_INTENT_ACCOUNT_ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "accountId"

    const-wide/16 v3, 0x0

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EXTRA_INTENT_USERNAME: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method private loadContactInfoAndShowDialog()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 363
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mRemoteJid:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 366
    .local v10, bareJid:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mExistingCall:Lcom/google/android/talk/videochat/CallState;

    if-eqz v1, :cond_0

    .line 367
    new-instance v0, Lcom/google/android/talk/ContactInfoQuery;

    iget-wide v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAccountId:J

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mExistingCall:Lcom/google/android/talk/videochat/CallState;

    iget-object v4, v1, Lcom/google/android/talk/videochat/CallState;->remoteBareJid:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/ContactInfoQuery;-><init>(Landroid/content/Context;JLjava/lang/String;Landroid/database/ContentObserver;Z)V

    .line 369
    .local v0, existingCallNickQuery:Lcom/google/android/talk/ContactInfoQuery;
    new-instance v1, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;-><init>(Lcom/google/android/talk/AlertNotificationFullScreenActivity;Lcom/google/android/talk/ContactInfoQuery;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ContactInfoQuery;->setContactInfoCallback(Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;)V

    .line 379
    :goto_0
    new-instance v6, Lcom/google/android/talk/ContactInfoQuery;

    iget-wide v8, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAccountId:J

    const/4 v12, 0x1

    move-object v7, p0

    move-object v11, v5

    invoke-direct/range {v6 .. v12}, Lcom/google/android/talk/ContactInfoQuery;-><init>(Landroid/content/Context;JLjava/lang/String;Landroid/database/ContentObserver;Z)V

    .line 381
    .local v6, contactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;
    new-instance v1, Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;

    invoke-direct {v1, p0, v6, v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;-><init>(Lcom/google/android/talk/AlertNotificationFullScreenActivity;Lcom/google/android/talk/ContactInfoQuery;Lcom/google/android/talk/ContactInfoQuery;)V

    invoke-virtual {v6, v1}, Lcom/google/android/talk/ContactInfoQuery;->setContactInfoCallback(Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;)V

    .line 398
    invoke-virtual {v6}, Lcom/google/android/talk/ContactInfoQuery;->startQueryForContactInfo()V

    .line 399
    return-void

    .line 376
    .end local v0           #existingCallNickQuery:Lcom/google/android/talk/ContactInfoQuery;
    .end local v6           #contactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #existingCallNickQuery:Lcom/google/android/talk/ContactInfoQuery;
    goto :goto_0
.end method

.method private makeDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 143
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 144
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDialogRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 146
    invoke-virtual {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->getOnClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 147
    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0, v1, v2}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->setPositiveButtonString(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 148
    invoke-virtual {p0, v1, v2}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->setNegativeButtonString(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 150
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 151
    invoke-virtual {p0, v1}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->setCancelCallbackListener(Landroid/app/AlertDialog$Builder;)V

    .line 153
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 154
    .local v0, ad:Landroid/app/AlertDialog;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 155
    return-object v0
.end method

.method private resolveIntent()V
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 332
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->parseIntent(Landroid/content/Intent;)V

    .line 333
    return-void
.end method

.method private showDialog()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mShowDialog:Ljava/lang/Boolean;

    monitor-enter v0

    .line 403
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mShowDialog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v1}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->setTitle(Landroid/app/AlertDialog$Builder;)V

    .line 405
    invoke-virtual {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->setMessageLine1()V

    .line 406
    invoke-virtual {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->setMessageLine2()V

    .line 407
    invoke-virtual {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->setMessageLine3()V

    .line 409
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDialog:Landroid/app/Dialog;

    if-nez v1, :cond_0

    .line 410
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->makeDialog()Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDialog:Landroid/app/Dialog;

    .line 411
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 414
    :cond_0
    monitor-exit v0

    .line 415
    return-void

    .line 414
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startVideochatActivity()V
    .locals 3

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsVideo:Z

    if-eqz v0, :cond_0

    .line 475
    iget-wide v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAccountId:J

    iget-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mRemoteJid:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->startActivityCallInProgress(Landroid/content/Context;JLjava/lang/String;)V

    .line 480
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-wide v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAccountId:J

    iget-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mRemoteJid:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/talk/ChatScreen;->startChatScreenActivity(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method acceptCall(JLjava/lang/String;)V
    .locals 4
    .parameter "accountId"
    .parameter "remoteJid"

    .prologue
    .line 446
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Incoming call alert] acceptCall for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance v0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 451
    .local v0, videoChatAccessor:Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;
    new-instance v1, Lcom/google/android/talk/AlertNotificationFullScreenActivity$7;

    invoke-direct {v1, p0, p3}, Lcom/google/android/talk/AlertNotificationFullScreenActivity$7;-><init>(Lcom/google/android/talk/AlertNotificationFullScreenActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->postVideoChatTask(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$VideoChatTask;)V

    .line 457
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->startVideochatActivity()V

    .line 458
    return-void
.end method

.method protected getOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity$2;-><init>(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V

    .line 184
    .local v0, listener:Landroid/content/DialogInterface$OnClickListener;
    return-object v0
.end method

.method protected handleNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 268
    const-string v4, "incoming_call"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 269
    .local v2, incomingCall:Z
    if-eqz v2, :cond_1

    .line 270
    const-string v4, "from"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, jid:Ljava/lang/String;
    const-string v4, "accountId"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 273
    .local v0, accountId:J
    const-string v4, "talk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[AlertNotificationFullScreen] handleNewIntent: jid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", account="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", incomingCall="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v4, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mRemoteJid:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAccountId:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_1

    .line 280
    :cond_0
    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->declineCall(JLjava/lang/String;)V

    .line 284
    .end local v0           #accountId:J
    .end local v3           #jid:Ljava/lang/String;
    :cond_1
    iget-boolean v4, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsVideo:Z

    if-nez v4, :cond_2

    .line 287
    invoke-virtual {p0, p1}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->parseIntent(Landroid/content/Intent;)V

    .line 289
    const-string v4, "talk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "incomingCall: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    if-nez v2, :cond_2

    .line 293
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->loadContactInfoAndShowDialog()V

    .line 296
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->resolveIntent()V

    .line 96
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->requestWindowFeature(I)Z

    .line 98
    iget-boolean v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 100
    .local v1, win:Landroid/view/Window;
    const/high16 v2, 0x48

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "screen_off"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    const v2, 0x200081

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 111
    .end local v1           #win:Landroid/view/Window;
    :cond_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDateFormat:Ljava/text/DateFormat;

    .line 112
    const v2, 0x7f0c005e

    invoke-virtual {p0, v2}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDateFormatStr:Ljava/lang/String;

    .line 115
    new-instance v2, Lcom/google/android/talk/AlertNotificationFullScreenActivity$1;

    invoke-direct {v2, p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity$1;-><init>(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V

    iput-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mCancelBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    iget-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mCancelBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.google.android.talk.CANCEL_NOTIFICATION"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 129
    iget-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 131
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040019

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDialogRootView:Landroid/view/View;

    .line 133
    iget-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDialogRootView:Landroid/view/View;

    const v3, 0x7f100009

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAvatarView:Landroid/widget/ImageView;

    .line 135
    iget-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDialogRootView:Landroid/view/View;

    const v3, 0x7f10004f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mMessage1View:Landroid/widget/TextView;

    .line 136
    iget-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDialogRootView:Landroid/view/View;

    const v3, 0x7f100050

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mMessage2View:Landroid/widget/TextView;

    .line 137
    iget-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDialogRootView:Landroid/view/View;

    const v3, 0x7f100051

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mMessage3View:Landroid/widget/TextView;

    .line 139
    invoke-direct {p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->loadContactInfoAndShowDialog()V

    .line 140
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 247
    invoke-virtual {p0, p1}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->handleNewIntent(Landroid/content/Intent;)V

    .line 248
    return-void
.end method

.method protected parseIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 299
    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mRemoteJid:Ljava/lang/String;

    .line 300
    const-string v0, "accountId"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAccountId:J

    .line 301
    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mMessage:Ljava/lang/String;

    .line 302
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mShowChatIntent:Landroid/content/Intent;

    .line 303
    const-string v0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mTimestamp:J

    .line 305
    const-string v0, "incoming_call"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    .line 306
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mShowChatIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mShowChatIntent:Landroid/content/Intent;

    const-string v1, "is_muc"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsGroupChatInvite:Z

    .line 310
    const-string v0, "parseIntent"

    invoke-direct {p0, v0, p1}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->dumpIntent(Ljava/lang/String;Landroid/content/Intent;)V

    .line 314
    :goto_0
    const-string v0, "isvideo"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsVideo:Z

    .line 315
    const-string v0, "iscollision"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/videochat/CallState;

    iput-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mExistingCall:Lcom/google/android/talk/videochat/CallState;

    .line 316
    return-void

    .line 312
    :cond_0
    iput-boolean v3, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsGroupChatInvite:Z

    goto :goto_0
.end method

.method protected setCancelCallbackListener(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 188
    new-instance v0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity$3;-><init>(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    return-void
.end method

.method protected setMessageLine1()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mMessage1View:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mNickName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mRemoteJid:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    return-void

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mNickName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected setMessageLine2()V
    .locals 2

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mMessage2View:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mMessage2View:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setMessageLine3()V
    .locals 7

    .prologue
    .line 225
    new-instance v0, Ljava/util/Date;

    iget-wide v4, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mTimestamp:J

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 226
    .local v0, date2:Ljava/util/Date;
    iget-object v4, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, timeStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mDateFormatStr:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 228
    .local v1, dateStr:Ljava/lang/CharSequence;
    const v4, 0x7f0c005c

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, timeStampStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mMessage3View:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    return-void
.end method

.method protected setNegativeButtonString(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "builder"
    .parameter "listener"

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c010b

    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    return-void

    .line 240
    :cond_0
    const v0, 0x7f0c0122

    goto :goto_0
.end method

.method protected setPositiveButtonString(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "builder"
    .parameter "listener"

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c0088

    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    return-void

    .line 234
    :cond_0
    const v0, 0x7f0c0123

    goto :goto_0
.end method

.method protected setTitle(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-eqz v0, :cond_1

    .line 201
    iget-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsVideo:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c0103

    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 209
    :goto_1
    return-void

    .line 201
    :cond_0
    const v0, 0x7f0c0106

    goto :goto_0

    .line 204
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsGroupChatInvite:Z

    if-eqz v0, :cond_2

    .line 205
    const v0, 0x7f0c0124

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 207
    :cond_2
    const v0, 0x7f0c0121

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method
