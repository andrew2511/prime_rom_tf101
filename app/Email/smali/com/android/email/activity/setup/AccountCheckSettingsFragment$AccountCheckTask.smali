.class Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;
.super Landroid/os/AsyncTask;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/android/emailcommon/mail/MessagingException;",
        ">;"
    }
.end annotation


# instance fields
.field final mCheckEmail:Ljava/lang/String;

.field final mCheckPassword:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field final mMode:I

.field final mSenderUri:Ljava/lang/String;

.field final mStoreHost:Ljava/lang/String;

.field final mStoreUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 1
    .parameter
    .parameter "mode"
    .parameter "checkAccount"

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 410
    invoke-virtual {p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    .line 411
    iput p2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    .line 412
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreUri:Ljava/lang/String;

    .line 413
    iget-object v0, p3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreHost:Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mSenderUri:Ljava/lang/String;

    .line 415
    iget-object v0, p3, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    .line 416
    iget-object v0, p3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckPassword:Ljava/lang/String;

    .line 417
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/mail/MessagingException;
    .locals 12
    .parameter "params"

    .prologue
    .line 426
    :try_start_0
    iget v9, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_4

    .line 427
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    .line 494
    .end local p1
    :goto_0
    return-object v9

    .line 428
    .restart local p1
    :cond_0
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Integer;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->publishProgress([Ljava/lang/Object;)V

    .line 429
    const-string v9, "Email"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Begin auto-discover for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreUri:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v8

    .line 431
    .local v8, store:Lcom/android/email/mail/Store;
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckPassword:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/email/mail/Store;->autoDiscover(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 437
    .local v4, result:Landroid/os/Bundle;
    if-nez v4, :cond_1

    .line 438
    new-instance v9, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0

    .line 491
    .end local v4           #result:Landroid/os/Bundle;
    .end local v8           #store:Lcom/android/email/mail/Store;
    .end local p1
    :catch_0
    move-exception v9

    move-object v3, v9

    .local v3, me:Lcom/android/emailcommon/mail/MessagingException;
    move-object v9, v3

    .line 494
    goto :goto_0

    .line 440
    .end local v3           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v4       #result:Landroid/os/Bundle;
    .restart local v8       #store:Lcom/android/email/mail/Store;
    .restart local p1
    :cond_1
    const-string v9, "autodiscover_error_code"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 442
    .local v1, errorCode:I
    const/4 v9, 0x5

    if-ne v1, v9, :cond_2

    .line 443
    new-instance v9, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0

    .line 444
    :cond_2
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 445
    new-instance v9, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0

    .line 447
    :cond_3
    const-string v9, "autodiscover_host_auth"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 449
    .local v7, serverInfo:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    new-instance v9, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v10, 0x0

    invoke-direct {v9, v10, v7}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0

    .line 454
    .end local v1           #errorCode:I
    .end local v4           #result:Landroid/os/Bundle;
    .end local v7           #serverInfo:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .end local v8           #store:Lcom/android/email/mail/Store;
    :cond_4
    iget v9, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_8

    .line 455
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 456
    :cond_5
    const-string v9, "Email"

    const-string v10, "Begin check of incoming email settings"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Integer;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->publishProgress([Ljava/lang/Object;)V

    .line 458
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreUri:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v8

    .line 459
    .restart local v8       #store:Lcom/android/email/mail/Store;
    invoke-virtual {v8}, Lcom/android/email/mail/Store;->checkSettings()Landroid/os/Bundle;

    move-result-object v0

    .line 460
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 461
    .local v5, resultCode:I
    if-eqz v0, :cond_6

    .line 462
    const-string v9, "validate_result_code"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 465
    :cond_6
    const/4 v9, 0x7

    if-ne v5, v9, :cond_7

    .line 466
    const-string v9, "validate_policy_set"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/emailcommon/service/PolicySet;

    invoke-static {p1}, Lcom/android/email/activity/setup/SetupData;->setPolicySet(Lcom/android/emailcommon/service/PolicySet;)V

    .line 468
    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v10, 0x7

    iget-object v11, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreHost:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 471
    .restart local p1
    :cond_7
    const/4 v9, -0x1

    if-eq v5, v9, :cond_8

    .line 472
    const-string v9, "validate_error_message"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, errorMessage:Ljava/lang/String;
    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v9, v5, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 479
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #errorMessage:Ljava/lang/String;
    .end local v5           #resultCode:I
    .end local v8           #store:Lcom/android/email/mail/Store;
    :cond_8
    iget v9, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_a

    .line 480
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 481
    :cond_9
    const-string v9, "Email"

    const-string v10, "Begin check of outgoing email settings"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Integer;

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->publishProgress([Ljava/lang/Object;)V

    .line 483
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mSenderUri:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v6

    .line 484
    .local v6, sender:Lcom/android/email/mail/Sender;
    invoke-virtual {v6}, Lcom/android/email/mail/Sender;->close()V

    .line 485
    invoke-virtual {v6}, Lcom/android/email/mail/Sender;->open()V

    .line 486
    invoke-virtual {v6}, Lcom/android/email/mail/Sender;->close()V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    .end local v6           #sender:Lcom/android/email/mail/Sender;
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 394
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/emailcommon/mail/MessagingException;)V
    .locals 9
    .parameter "result"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f08010b

    const v6, 0x7f08010a

    .line 567
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 638
    .end local p1
    :goto_0
    return-void

    .line 568
    .restart local p1
    :cond_0
    if-nez p1, :cond_1

    .line 569
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v8, v8}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(IILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0

    .line 571
    :cond_1
    const/4 v4, 0x6

    .line 572
    .local v4, progressState:I
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v0

    .line 573
    .local v0, exceptionType:I
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 574
    .local v3, message:Ljava/lang/String;
    const/4 v1, 0x0

    .line 575
    .local v1, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    const/4 v2, 0x0

    .line 577
    .local v2, id:I
    packed-switch v0, :pswitch_data_0

    .line 631
    :pswitch_0
    if-nez v3, :cond_5

    const v5, 0x7f08010f

    move v2, v5

    .line 636
    .end local p1
    :goto_1
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-virtual {v5, v4, v2, v3, v1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(IILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0

    .line 581
    .restart local p1
    :pswitch_1
    if-nez v3, :cond_2

    move v2, v6

    .line 584
    :goto_2
    const/4 v4, 0x7

    .line 585
    goto :goto_1

    :cond_2
    move v2, v7

    .line 581
    goto :goto_2

    .line 587
    :pswitch_2
    check-cast p1, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    .end local p1
    iget-object v1, p1, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 588
    const/16 v4, 0x8

    .line 589
    goto :goto_1

    .line 594
    .restart local p1
    :pswitch_3
    const/4 v4, 0x5

    .line 595
    goto :goto_1

    .line 600
    :pswitch_4
    if-nez v3, :cond_3

    const v5, 0x7f08010c

    move v2, v5

    .line 603
    :goto_3
    goto :goto_1

    .line 600
    :cond_3
    const v5, 0x7f08010d

    move v2, v5

    goto :goto_3

    .line 605
    :pswitch_5
    if-nez v3, :cond_4

    move v2, v6

    .line 608
    :goto_4
    goto :goto_1

    :cond_4
    move v2, v7

    .line 605
    goto :goto_4

    .line 610
    :pswitch_6
    const v2, 0x7f08010e

    .line 611
    goto :goto_1

    .line 613
    :pswitch_7
    const v2, 0x7f080114

    .line 614
    goto :goto_1

    .line 616
    :pswitch_8
    const v2, 0x7f080111

    .line 617
    goto :goto_1

    .line 619
    :pswitch_9
    const v2, 0x7f080112

    .line 620
    goto :goto_1

    .line 622
    :pswitch_a
    const v2, 0x7f080118

    .line 623
    goto :goto_1

    .line 625
    :pswitch_b
    const v2, 0x7f080115

    .line 626
    goto :goto_1

    .line 628
    :pswitch_c
    const v2, 0x7f080113

    .line 629
    goto :goto_1

    .line 631
    :cond_5
    const v5, 0x7f080110

    move v2, v5

    goto :goto_1

    .line 577
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_a
        :pswitch_b
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 394
    check-cast p1, Lcom/android/emailcommon/mail/MessagingException;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->onPostExecute(Lcom/android/emailcommon/mail/MessagingException;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4
    .parameter "progress"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 552
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    :goto_0
    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(IILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 394
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
