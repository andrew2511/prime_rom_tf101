.class public Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
.super Landroid/app/Fragment;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    }
.end annotation


# instance fields
.field mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

.field private mAttached:Z

.field private mAutoDiscoverResult:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

.field private mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

.field private mErrorMessage:Ljava/lang/String;

.field private mErrorStringId:I

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    .line 800
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onCheckingDialogCancel()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onErrorDialogEditButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onSecurityRequiredDialogResultOk(Z)V

    return-void
.end method

.method private getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    .locals 3

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 290
    .local v1, target:Landroid/app/Fragment;
    instance-of v2, v1, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    if-eqz v2, :cond_0

    .line 291
    check-cast v1, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    .end local v1           #target:Landroid/app/Fragment;
    move-object v2, v1

    .line 295
    :goto_0
    return-object v2

    .line 293
    .restart local v1       #target:Landroid/app/Fragment;
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 294
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    if-eqz v2, :cond_1

    .line 295
    check-cast v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    .end local v0           #activity:Landroid/app/Activity;
    move-object v2, v0

    goto :goto_0

    .line 297
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method

.method public static newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    .locals 1
    .parameter "mode"
    .parameter "parentFragment"

    .prologue
    .line 128
    new-instance v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;-><init>()V

    .line 129
    .local v0, f:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    invoke-virtual {v0, p1, p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 130
    return-object v0
.end method

.method private onCheckingDialogCancel()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    .line 324
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 325
    return-void
.end method

.method private onErrorDialogEditButton()V
    .locals 4

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v0

    .line 336
    .local v0, callbackTarget:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    iget v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 338
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    .line 344
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 345
    .local v1, fm:Landroid/app/FragmentManager;
    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 348
    :cond_0
    return-void

    .line 341
    .end local v1           #fm:Landroid/app/FragmentManager;
    :cond_1
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(I)V

    goto :goto_0
.end method

.method private onSecurityRequiredDialogResultOk(Z)V
    .locals 3
    .parameter "okPressed"

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v0

    .line 357
    .local v0, callbackTarget:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(I)V

    .line 361
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 362
    .local v1, fm:Landroid/app/FragmentManager;
    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 365
    :cond_0
    return-void

    .line 357
    .end local v1           #fm:Landroid/app/FragmentManager;
    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private recoverAndDismissCheckingDialog()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "CheckProgressDialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->dismissAllowingStateLoss()V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    .line 312
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 154
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    if-nez v2, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getTargetRequestCode()I

    move-result v1

    .line 156
    .local v1, checkMode:I
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 157
    .local v0, checkAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    new-instance v2, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;-><init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    .line 161
    .end local v0           #checkAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v1           #checkMode:I
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->setRetainInstance(Z)V

    .line 141
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 189
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    .line 191
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAttached:Z

    .line 201
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAttached:Z

    .line 180
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAttached:Z

    .line 171
    iget v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    if-eqz v0, :cond_0

    .line 172
    iget v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    iget v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mErrorStringId:I

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mErrorMessage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAutoDiscoverResult:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(IILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    .line 174
    :cond_0
    return-void
.end method

.method public reportProgress(IILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .locals 7
    .parameter "newState"
    .parameter "errorStringId"
    .parameter "errorMessage"
    .parameter "autoDiscoverResult"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 214
    iput p1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    .line 215
    iput p2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mErrorStringId:I

    .line 216
    iput-object p3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mErrorMessage:Ljava/lang/String;

    .line 217
    iput-object p4, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAutoDiscoverResult:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 220
    iget-boolean v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAttached:Z

    if-eqz v3, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 223
    .local v1, fm:Landroid/app/FragmentManager;
    packed-switch p1, :pswitch_data_0

    .line 270
    const-string v3, "CheckProgressDialog"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    .line 272
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    if-nez v3, :cond_2

    .line 273
    iget v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    invoke-static {p0, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->newInstance(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;I)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    .line 274
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    const-string v5, "CheckProgressDialog"

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 283
    .end local v1           #fm:Landroid/app/FragmentManager;
    :cond_0
    :goto_0
    return-void

    .line 227
    .restart local v1       #fm:Landroid/app/FragmentManager;
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 229
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 231
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(I)V

    goto :goto_0

    .line 235
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 237
    const-string v3, "SecurityRequiredDialog"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 238
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mErrorMessage:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;->newInstance(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;Ljava/lang/String;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;

    move-result-object v2

    .line 240
    .local v2, securityRequiredDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const-string v4, "SecurityRequiredDialog"

    invoke-virtual {v3, v2, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 248
    .end local v2           #securityRequiredDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 250
    const-string v3, "ErrorDialog"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 251
    iget v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mErrorStringId:I

    new-array v4, v5, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mErrorMessage:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {p0, v3, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->newInstance(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;I[Ljava/lang/String;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    move-result-object v0

    .line 253
    .local v0, errorDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const-string v4, "ErrorDialog"

    invoke-virtual {v3, v0, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 260
    .end local v0           #errorDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 262
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 264
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAutoDiscoverResult:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v4, :cond_1

    move v4, v6

    :goto_1
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAutoDiscoverResult:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-interface {v3, v4, v5}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    .line 278
    :cond_2
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    iget v4, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->updateProgress(I)V

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
