.class public Lcom/android/email/activity/setup/AccountSetupNames;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupNames.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;
    }
.end annotation


# instance fields
.field private mDescription:Landroid/widget/EditText;

.field private mEasAccount:Z

.field private mName:Landroid/widget/EditText;

.field private mNextButton:Landroid/widget/Button;

.field private mNextPressed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    .line 51
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextPressed:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupNames;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->validateFields()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupNames;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finishActivity()V

    return-void
.end method

.method public static actionSetNames(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 56
    return-void
.end method

.method private finishActivity()V
    .locals 3

    .prologue
    .line 160
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinishedAccountFlow(Landroid/app/Activity;)V

    .line 172
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finish()V

    .line 173
    return-void

    .line 163
    :cond_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 164
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_1

    .line 165
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinished(Landroid/app/Activity;J)V

    goto :goto_0

    .line 169
    :cond_1
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private onNext()V
    .locals 4

    .prologue
    .line 181
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 182
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, description:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 189
    new-instance v2, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;-><init>(Lcom/android/email/activity/setup/AccountSetupNames;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 190
    return-void
.end method

.method private validateFields()V
    .locals 4

    .prologue
    .line 137
    const/4 v0, 0x1

    .line 139
    .local v0, newEnabled:Z
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    if-nez v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, userName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .line 142
    :goto_0
    if-nez v0, :cond_0

    .line 143
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    const v3, 0x7f0800ca

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupNames;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 146
    .end local v1           #userName:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 147
    return-void

    .line 141
    .restart local v1       #userName:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 252
    packed-switch p1, :pswitch_data_0

    .line 256
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 257
    return-void

    .line 254
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finishActivity()V

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextPressed:Z

    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finishActivity()V

    .line 157
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 125
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextPressed:Z

    if-nez v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->onNext()V

    .line 128
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextPressed:Z

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f001b
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x8

    .line 60
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 62
    const v2, 0x7f04000f

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupNames;->setContentView(I)V

    .line 63
    const v2, 0x7f0f0030

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    .line 64
    const v2, 0x7f0f0032

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    .line 65
    const v2, 0x7f0f001b

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    .line 66
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v1, Lcom/android/email/activity/setup/AccountSetupNames$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSetupNames$1;-><init>(Lcom/android/email/activity/setup/AccountSetupNames;)V

    .line 79
    .local v1, validationTextWatcher:Landroid/text/TextWatcher;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    const/4 v3, 0x0

    sget-object v4, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v3, v4}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 82
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 83
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_0

    .line 84
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "unexpected null account"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_0
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v2, :cond_1

    .line 87
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "unexpected null hostauth"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_1
    const-string v2, "eas"

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    .line 92
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    if-eqz v2, :cond_2

    .line 93
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 94
    const v2, 0x7f0f0031

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 103
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->validateFields()V

    .line 110
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 111
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->onNext()V

    .line 113
    :cond_4
    return-void
.end method
