.class public Lcom/google/android/gm/MailIntentService;
.super Landroid/app/IntentService;
.source "MailIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "MailIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private handleAccountList([Landroid/accounts/Account;Z)V
    .locals 5
    .parameter "accounts"
    .parameter "isInitialNotification"

    .prologue
    .line 187
    const/4 v4, 0x0

    invoke-static {p0, v4, p1}, Lcom/google/android/gm/Utils;->cacheGoogleAccountList(Landroid/content/Context;Z[Landroid/accounts/Account;)V

    .line 189
    if-nez p2, :cond_1

    .line 201
    :cond_0
    return-void

    .line 193
    :cond_1
    array-length v3, p1

    .line 194
    .local v3, numAccounts:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 195
    aget-object v0, p1, v2

    .line 198
    .local v0, account:Landroid/accounts/Account;
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/google/android/gm/provider/MailEngine;->getOrMakeMailEngineSync(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v1

    .line 199
    .local v1, engine:Lcom/google/android/gm/provider/MailEngine;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/google/android/gm/provider/MailEngine;->sendNotificationIntents(Z)V

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private handleLocaleChanged(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 162
    invoke-static {p0}, Lcom/google/android/gm/Utils;->cancelAndResendNotifications(Landroid/content/Context;)V

    .line 163
    return-void
.end method

.method private handleProviderChangedIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 166
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v4

    .line 168
    .local v4, persistance:Lcom/google/android/gm/Persistence;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "account"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, account:Ljava/lang/String;
    invoke-virtual {v4, p0, v0}, Lcom/google/android/gm/Persistence;->getEnableNotifications(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 170
    .local v1, enabled:Z
    if-nez v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {v4, p0, v0}, Lcom/google/android/gm/Persistence;->getPriorityInboxDefault(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 174
    .local v3, notifyPriorityInbox:Z
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, label:Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v6, "^iim"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move v5, v6

    .line 179
    .local v5, shouldNotifyForLabel:Z
    :goto_1
    if-eqz v5, :cond_0

    .line 182
    invoke-static {p0, p1}, Lcom/google/android/gm/Utils;->setNewEmailIndicator(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 175
    .end local v5           #shouldNotifyForLabel:Z
    :cond_2
    const-string v6, "^i"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move v5, v6

    goto :goto_1
.end method

.method private postSendErrorNotification(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 113
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, account:Ljava/lang/String;
    const-string v0, "extraMessageSubject"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, subject:Ljava/lang/String;
    const-string v0, "extraConversationId"

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 116
    .local v3, conversationId:I
    invoke-virtual {p0}, Lcom/google/android/gm/MailIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f0f0020

    const v5, 0x7f0d0154

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/Utils;->createErrorNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V

    .line 118
    return-void
.end method

.method private sendAccountsChangedNotification(Z)V
    .locals 11
    .parameter "isInitialNotification"

    .prologue
    const/4 v10, 0x0

    .line 124
    if-eqz p1, :cond_0

    .line 125
    const-string v5, "MIS.sendInitialNotifications"

    invoke-static {v5}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 129
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    const-string v6, "com.google"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "mail"

    invoke-static {v9}, Lcom/google/android/gsf/GoogleLoginServiceConstants;->featureForService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7, v10, v10}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v2

    .line 136
    .local v2, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<[Landroid/accounts/Account;>;"
    :try_start_0
    invoke-interface {v2}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 138
    .local v0, accounts:[Landroid/accounts/Account;
    invoke-direct {p0, v0, p1}, Lcom/google/android/gm/MailIntentService;->handleAccountList([Landroid/accounts/Account;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 152
    if-eqz p1, :cond_1

    .line 153
    const-string v5, "MIS.sendInitialNotifications"

    invoke-static {v5}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/MailIntentService;->stopSelf()V

    .line 157
    .end local v0           #accounts:[Landroid/accounts/Account;
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 141
    .local v4, oce:Landroid/accounts/OperationCanceledException;
    :try_start_1
    const-string v5, "Gmail"

    const-string v6, "Unexpected exception trying to get accounts."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    if-eqz p1, :cond_2

    .line 153
    const-string v5, "MIS.sendInitialNotifications"

    invoke-static {v5}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/MailIntentService;->stopSelf()V

    goto :goto_0

    .line 143
    .end local v4           #oce:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 145
    .local v3, ioe:Ljava/io/IOException;
    :try_start_2
    const-string v5, "Gmail"

    const-string v6, "Unexpected exception trying to get accounts."

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    if-eqz p1, :cond_3

    .line 153
    const-string v5, "MIS.sendInitialNotifications"

    invoke-static {v5}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 155
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gm/MailIntentService;->stopSelf()V

    goto :goto_0

    .line 147
    .end local v3           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 149
    .local v1, ae:Landroid/accounts/AuthenticatorException;
    :try_start_3
    const-string v5, "Gmail"

    const-string v6, "Unexpected exception trying to get accounts."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    if-eqz p1, :cond_4

    .line 153
    const-string v5, "MIS.sendInitialNotifications"

    invoke-static {v5}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 155
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gm/MailIntentService;->stopSelf()V

    goto :goto_0

    .line 152
    .end local v1           #ae:Landroid/accounts/AuthenticatorException;
    :catchall_0
    move-exception v5

    if-eqz p1, :cond_5

    .line 153
    const-string v6, "MIS.sendInitialNotifications"

    invoke-static {v6}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 155
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gm/MailIntentService;->stopSelf()V

    throw v5
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 20
    .parameter "intent"

    .prologue
    .line 44
    :try_start_0
    const-string v16, "Gmail"

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 45
    const-string v16, "Gmail"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Handling intent "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/gm/Utils;->haveGoogleMailActivitiesBeenEnabled(Landroid/content/Context;)Z

    move-result v14

    .line 49
    .local v14, usingGoogleMail:Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, action:Ljava/lang/String;
    const-string v16, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "android.intent.action.DEVICE_STORAGE_OK"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 54
    :cond_1
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/gm/MailIntentService;->sendAccountsChangedNotification(Z)V

    .line 110
    .end local v5           #action:Ljava/lang/String;
    .end local v14           #usingGoogleMail:Z
    .end local p0
    :cond_2
    :goto_0
    return-void

    .line 55
    .restart local v5       #action:Ljava/lang/String;
    .restart local v14       #usingGoogleMail:Z
    .restart local p0
    :cond_3
    const-string v16, "android.intent.action.DOWNLOAD_COMPLETE"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 56
    const-string v16, "extra_download_id"

    const-wide/16 v17, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 57
    .local v10, downloadId:Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/google/android/gm/provider/AttachmentManager;->getAccountFromDownloadId(J)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, account:Ljava/lang/String;
    if-nez v4, :cond_4

    .line 61
    const-string v16, "download"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/gm/MailIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/DownloadManager;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    aput-wide v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    .end local v4           #account:Ljava/lang/String;
    .end local v5           #action:Ljava/lang/String;
    .end local v10           #downloadId:Ljava/lang/Long;
    .end local v14           #usingGoogleMail:Z
    :catch_0
    move-exception v16

    move-object/from16 v11, v16

    .line 108
    .local v11, e:Landroid/database/SQLException;
    const-string v16, "Gmail"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error handling intent "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 67
    .end local v11           #e:Landroid/database/SQLException;
    .restart local v4       #account:Ljava/lang/String;
    .restart local v5       #action:Ljava/lang/String;
    .restart local v10       #downloadId:Ljava/lang/Long;
    .restart local v14       #usingGoogleMail:Z
    .restart local p0
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->getOrMakeMailEngineSync(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v12

    .line 68
    .local v12, engine:Lcom/google/android/gm/provider/MailEngine;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/MailIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 69
    .local v13, res:Landroid/content/res/Resources;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v6, attachmentFrom:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_5

    .line 75
    const v7, 0x7f0d00fc

    .line 76
    .local v7, attachmentFromRes:I
    const v8, 0x7f0d00fd

    .line 81
    .local v8, attachmentFromSenderRes:I
    :goto_1
    invoke-virtual {v13, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v13, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v16, Lcom/google/android/gm/provider/AttachmentManager;->ATTACHMENT_FROM:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 85
    invoke-virtual {v12}, Lcom/google/android/gm/provider/MailEngine;->getAttachmentManager()Lcom/google/android/gm/provider/AttachmentManager;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/AttachmentManager;->handleDownloadManagerIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 78
    .end local v7           #attachmentFromRes:I
    .end local v8           #attachmentFromSenderRes:I
    :cond_5
    const v7, 0x7f0d00fa

    .line 79
    .restart local v7       #attachmentFromRes:I
    const v8, 0x7f0d00fb

    .restart local v8       #attachmentFromSenderRes:I
    goto :goto_1

    .line 87
    .end local v4           #account:Ljava/lang/String;
    .end local v6           #attachmentFrom:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #attachmentFromRes:I
    .end local v8           #attachmentFromSenderRes:I
    .end local v10           #downloadId:Ljava/lang/Long;
    .end local v12           #engine:Lcom/google/android/gm/provider/MailEngine;
    .end local v13           #res:Landroid/content/res/Resources;
    :cond_6
    const-string v16, "com.google.android.gm.intent.CLEAR_ALL_NEW_MAIL_NOTIFICATIONS"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 89
    invoke-static {}, Lcom/google/android/gm/Utils;->clearAllNotfications()V

    goto/16 :goto_0

    .line 90
    :cond_7
    const-string v16, "android.intent.action.PROVIDER_CHANGED"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 91
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gm/MailIntentService;->handleProviderChangedIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 92
    :cond_8
    const-string v16, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 94
    invoke-static/range {p0 .. p0}, Lcom/google/android/gm/Utils;->enableShortcutIntentFilter(Landroid/content/Context;)V

    .line 95
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/gm/MailIntentService;->sendAccountsChangedNotification(Z)V

    goto/16 :goto_0

    .line 96
    :cond_9
    const-string v16, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 97
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gm/MailIntentService;->handleLocaleChanged(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 98
    :cond_a
    const-string v16, "com.google.android.gm.intent.ACTION_POST_SEND_ERROR"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 99
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gm/MailIntentService;->postSendErrorNotification(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 100
    :cond_b
    const-string v16, "com.google.android.gm.intent.ACTION_PROVIDER_CREATED"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/MailIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 103
    .local v9, context:Landroid/content/Context;
    if-eqz v14, :cond_c

    const-string v16, "com.google.android.gm.widget.GoogleMailWidgetProvider"

    move-object/from16 v15, v16

    .line 105
    .local v15, widgetProvider:Ljava/lang/String;
    :goto_2
    invoke-static {v9, v15}, Lcom/google/android/gm/widget/BaseWidgetProvider;->updateAllWidgets(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    .end local v15           #widgetProvider:Ljava/lang/String;
    :cond_c
    const-string v16, "com.google.android.gm.widget.GmailWidgetProvider"
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v15, v16

    goto :goto_2
.end method
