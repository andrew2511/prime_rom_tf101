.class public Lcom/android/email/activity/setup/AccountSetupOptions;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundAttachmentsView:Landroid/widget/CheckBox;

.field private mCheckFrequencyView:Landroid/widget/Spinner;

.field private mDefaultView:Landroid/widget/CheckBox;

.field private mDonePressed:Z

.field private mNotifyView:Landroid/widget/CheckBox;

.field private mSyncCalendarView:Landroid/widget/CheckBox;

.field private mSyncContactsView:Landroid/widget/CheckBox;

.field private mSyncEmailView:Landroid/widget/CheckBox;

.field private mSyncWindowView:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDonePressed:Z

    .line 268
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupOptions$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupOptions$2;-><init>(Lcom/android/email/activity/setup/AccountSetupOptions;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupOptions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->optionsComplete()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupOptions;I[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupOptions;->showErrorDialog(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static actionOptions(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method private enableEASSyncWindowSpinner()V
    .locals 10

    .prologue
    .line 376
    const v7, 0x7f0f003c

    invoke-virtual {p0, v7}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 379
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070005

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 381
    .local v6, windowValues:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 385
    .local v3, windowEntries:[Ljava/lang/CharSequence;
    array-length v7, v3

    new-array v4, v7, [Lcom/android/email/activity/setup/SpinnerOption;

    .line 386
    .local v4, windowOptions:[Lcom/android/email/activity/setup/SpinnerOption;
    const/4 v0, -0x1

    .line 387
    .local v0, defaultIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v3

    if-ge v1, v7, :cond_1

    .line 388
    aget-object v7, v6, v1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 389
    .local v2, value:I
    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget-object v9, v3, v1

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v4, v1

    .line 390
    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    .line 391
    move v0, v1

    .line 387
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    .end local v2           #value:I
    :cond_1
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v7, 0x1090008

    invoke-direct {v5, p0, v7, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 397
    .local v5, windowOptionsAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v7, 0x1090009

    invoke-virtual {v5, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 399
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v7, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 401
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 403
    if-ltz v0, :cond_2

    .line 404
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 406
    :cond_2
    return-void
.end method

.method private onDone()V
    .locals 14

    .prologue
    .line 203
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 204
    .local v2, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v0

    and-int/lit16 v9, v0, -0x102

    .line 207
    .local v9, newFlags:I
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    or-int/lit8 v9, v9, 0x1

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mBackgroundAttachmentsView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    or-int/lit16 v9, v9, 0x100

    .line 213
    :cond_1
    invoke-virtual {v2, v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->setFlags(I)V

    .line 214
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v0, v0, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 216
    const v0, 0x7f0f003c

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v0, v0, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 218
    .local v11, window:I
    invoke-virtual {v2, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 220
    .end local v11           #window:I
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 222
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "in AccountSetupOptions with already-saved account"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_3
    iget-object v0, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v0, :cond_4

    .line 226
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "in AccountSetupOptions with null mHostAuthRecv"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_4
    iget v0, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 232
    const/4 v6, 0x0

    .line 233
    .local v6, calendar:Z
    const/4 v7, 0x0

    .line 234
    .local v7, contacts:Z
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncEmailView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    .line 235
    .local v8, email:Z
    iget-object v0, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v1, "eas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 237
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getPolicySet()Lcom/android/emailcommon/service/PolicySet;

    move-result-object v10

    .line 238
    .local v10, policySet:Lcom/android/emailcommon/service/PolicySet;
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lcom/android/emailcommon/service/PolicySet;->getSecurityCode()J

    move-result-wide v0

    const-wide/16 v12, 0x0

    cmp-long v0, v0, v12

    if-eqz v0, :cond_5

    .line 239
    invoke-virtual {v10}, Lcom/android/emailcommon/service/PolicySet;->getSecurityCode()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    .line 240
    iget v0, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 243
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    .line 244
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    .line 251
    .end local v10           #policySet:Lcom/android/emailcommon/service/PolicySet;
    :cond_6
    move v3, v8

    .line 252
    .local v3, email2:Z
    move v4, v6

    .line 253
    .local v4, calendar2:Z
    move v5, v7

    .line 254
    .local v5, contacts2:Z
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupOptions$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/setup/AccountSetupOptions$1;-><init>(Lcom/android/email/activity/setup/AccountSetupOptions;Lcom/android/emailcommon/provider/EmailContent$Account;ZZZ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 263
    return-void
.end method

.method private optionsComplete()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 319
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v1

    .line 321
    .local v1, authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {v1, v3}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 323
    invoke-static {v3}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 327
    :cond_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 328
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    .line 329
    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v2

    .line 330
    .local v2, intent:Landroid/content/Intent;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/email/activity/setup/AccountSetupOptions;->startActivityForResult(Landroid/content/Intent;I)V

    .line 334
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->saveAccountAndFinish()V

    goto :goto_0
.end method

.method private saveAccountAndFinish()V
    .locals 1

    .prologue
    .line 353
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupOptions$4;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupOptions$4;-><init>(Lcom/android/email/activity/setup/AccountSetupOptions;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 369
    return-void
.end method

.method private varargs showErrorDialog(I[Ljava/lang/Object;)V
    .locals 1
    .parameter "msgResId"
    .parameter "args"

    .prologue
    .line 295
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupOptions$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupOptions$3;-><init>(Lcom/android/email/activity/setup/AccountSetupOptions;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupOptions;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 312
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 166
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v0

    .line 168
    .local v0, authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v0, :cond_0

    .line 169
    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 170
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 172
    :cond_0
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->finish()V

    .line 173
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->saveAccountAndFinish()V

    .line 342
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 194
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 185
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDonePressed:Z

    if-nez v0, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->onDone()V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDonePressed:Z

    goto :goto_0

    .line 191
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->onBackPressed()V

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0018
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 81
    const v9, 0x7f040011

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOptions;->setContentView(I)V

    .line 83
    const v9, 0x7f0f0034

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    .line 84
    const v9, 0x7f0f0036

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    .line 85
    const v9, 0x7f0f0020

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    .line 86
    const v9, 0x7f0f0037

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    .line 87
    const v9, 0x7f0f0038

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    .line 88
    const v9, 0x7f0f0039

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    .line 89
    const v9, 0x7f0f003a

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncEmailView:Landroid/widget/CheckBox;

    .line 90
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncEmailView:Landroid/widget/CheckBox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 91
    const v9, 0x7f0f0043

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mBackgroundAttachmentsView:Landroid/widget/CheckBox;

    .line 92
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mBackgroundAttachmentsView:Landroid/widget/CheckBox;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 93
    const v9, 0x7f0f0018

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v9, 0x7f0f001b

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 100
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p0}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v8

    .line 101
    .local v8, info:Lcom/android/email/mail/Store$StoreInfo;
    iget-boolean v9, v8, Lcom/android/email/mail/Store$StoreInfo;->mPushSupported:Z

    if-eqz v9, :cond_0

    .line 102
    const v6, 0x7f070003

    .line 103
    .local v6, frequencyValuesId:I
    const v4, 0x7f070002

    .line 108
    .local v4, frequencyEntriesId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 109
    .local v5, frequencyValues:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 112
    .local v3, frequencyEntries:[Ljava/lang/CharSequence;
    array-length v9, v3

    new-array v1, v9, [Lcom/android/email/activity/setup/SpinnerOption;

    .line 113
    .local v1, checkFrequencies:[Lcom/android/email/activity/setup/SpinnerOption;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v9, v3

    if-ge v7, v9, :cond_1

    .line 114
    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    aget-object v10, v5, v7

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    aget-object v11, v3, v7

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v1, v7

    .line 113
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 105
    .end local v1           #checkFrequencies:[Lcom/android/email/activity/setup/SpinnerOption;
    .end local v3           #frequencyEntries:[Ljava/lang/CharSequence;
    .end local v4           #frequencyEntriesId:I
    .end local v5           #frequencyValues:[Ljava/lang/CharSequence;
    .end local v6           #frequencyValuesId:I
    .end local v7           #i:I
    :cond_0
    const v6, 0x7f070001

    .line 106
    .restart local v6       #frequencyValuesId:I
    const/high16 v4, 0x7f07

    .restart local v4       #frequencyEntriesId:I
    goto :goto_0

    .line 118
    .restart local v1       #checkFrequencies:[Lcom/android/email/activity/setup/SpinnerOption;
    .restart local v3       #frequencyEntries:[Ljava/lang/CharSequence;
    .restart local v5       #frequencyValues:[Ljava/lang/CharSequence;
    .restart local v7       #i:I
    :cond_1
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v9, 0x1090008

    invoke-direct {v2, p0, v9, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 120
    .local v2, checkFrequenciesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v9, 0x1090009

    invoke-virtual {v2, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 122
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    invoke-virtual {v9, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 124
    iget v9, v8, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 125
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->enableEASSyncWindowSpinner()V

    .line 130
    :cond_2
    iget-boolean v9, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    if-nez v9, :cond_3

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isDefault()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 131
    :cond_3
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 133
    :cond_4
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v10

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 135
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncInterval()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 138
    const-string v9, "eas"

    iget-object v10, v8, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 140
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 141
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 142
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 143
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 145
    const v9, 0x7f0f0040

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 146
    const v9, 0x7f0f0041

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :cond_5
    const-string v9, "pop3"

    iget-object v10, v8, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 151
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mBackgroundAttachmentsView:Landroid/widget/CheckBox;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 152
    const v9, 0x7f0f0044

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 156
    :cond_6
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isAutoSetup()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_8

    .line 158
    :cond_7
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->onDone()V

    .line 160
    :cond_8
    return-void

    .line 133
    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method
