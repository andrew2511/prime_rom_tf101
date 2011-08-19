.class public Lcom/google/android/gsf/login/AccountIntroActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "AccountIntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCommonMessage:Landroid/widget/TextView;

.field private mDelayedResultCode:I

.field private mDelayedResultData:Landroid/content/Intent;

.field private mNextButton:Landroid/widget/Button;

.field private mOptionalMessage:Landroid/widget/TextView;

.field private mSkipButton:Landroid/widget/Button;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 79
    iput v0, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mState:I

    .line 80
    iput v0, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mDelayedResultCode:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mDelayedResultData:Landroid/content/Intent;

    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 139
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->setContentView(I)V

    .line 141
    const v1, 0x7f0c0006

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSkipButton:Landroid/widget/Button;

    .line 142
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->allowSkip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :goto_0
    const v1, 0x7f0c0007

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mNextButton:Landroid/widget/Button;

    .line 148
    iget-object v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v1, 0x7f0c0004

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mCommonMessage:Landroid/widget/TextView;

    .line 151
    const v1, 0x7f0c0003

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mOptionalMessage:Landroid/widget/TextView;

    .line 154
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "optional_message"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 155
    .local v0, message:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mOptionalMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->isFirstRun()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mCommonMessage:Landroid/widget/TextView;

    const v2, 0x7f080098

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 167
    :goto_2
    return-void

    .line 145
    .end local v0           #message:Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 158
    .restart local v0       #message:Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mOptionalMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mOptionalMessage:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mCommonMessage:Landroid/widget/TextView;

    const v2, 0x7f080099

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private startLoginActivity(Z)V
    .locals 2
    .parameter

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->isXLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    :goto_0
    const-string v1, "allowSkip"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 205
    return-void

    .line 200
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ChooseAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private startNextActivity(Z)V
    .locals 2
    .parameter

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->isWifiOnlyBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->getDeviceCountry()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    if-eqz p1, :cond_0

    const/16 v1, 0x3eb

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 193
    :goto_1
    return-void

    .line 187
    :cond_0
    const/16 v1, 0x3ea

    goto :goto_0

    .line 192
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gsf/login/AccountIntroActivity;->startLoginActivity(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 210
    packed-switch p1, :pswitch_data_0

    .line 235
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 236
    return-void

    .line 213
    :pswitch_0
    if-eq p2, v1, :cond_1

    if-nez p2, :cond_0

    :cond_1
    iget v0, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mState:I

    if-nez v0, :cond_0

    .line 215
    iput v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mState:I

    .line 216
    iput p2, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mDelayedResultCode:I

    goto :goto_0

    .line 222
    :pswitch_1
    if-nez p2, :cond_2

    .line 225
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->isFirstRun()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->setResult(I)V

    .line 227
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->finish()V

    goto :goto_0

    .line 230
    :cond_2
    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_3

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/gsf/login/AccountIntroActivity;->startLoginActivity(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountIntroActivity;->setResult(I)V

    .line 241
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onBackPressed()V

    .line 242
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 171
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mSkipButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 172
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->setResult(I)V

    .line 174
    sget-object v0, Lcom/google/android/gsf/login/AccountIntroActivity;->mUserData:Ljava/util/HashMap;

    const-string v1, "firstRun"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->finish()V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 177
    invoke-direct {p0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->startNextActivity(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    sget-object v0, Lcom/google/android/gsf/login/AccountIntroActivity;->mUserData:Ljava/util/HashMap;

    const-string v1, "topActivitiy"

    const-class v2, Lcom/google/android/gsf/login/AccountIntroActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->isFirstRun()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 117
    const-string v0, "GoogleLoginService"

    const-string v1, "This is not the first account creation. Skip introduction screen."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/login/AccountIntroActivity;->startNextActivity(Z)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->initView()V

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->overrideAllowBackHardkey()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/AccountIntroActivity;->setIntent(Landroid/content/Intent;)V

    .line 92
    const-string v2, "completed"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    const-string v2, "completed"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 95
    .local v0, completed:Z
    iget-boolean v2, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->LOCAL_LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "GoogleLoginService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetupWizard completion detected, completed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    const-string v2, "mUserData"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 100
    .local v1, userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x2

    iput v2, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mState:I

    .line 101
    if-eqz v0, :cond_2

    const/4 v2, -0x1

    :goto_0
    iput v2, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mDelayedResultCode:I

    .line 102
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "mUserData"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "authAccount"

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mDelayedResultData:Landroid/content/Intent;

    .line 106
    .end local v0           #completed:Z
    .end local v1           #userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void

    .line 101
    .restart local v0       #completed:Z
    .restart local v1       #userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onResume()V

    .line 129
    iget v0, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 130
    iget v0, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mDelayedResultCode:I

    iget-object v1, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mDelayedResultData:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AccountIntroActivity;->setResult(ILandroid/content/Intent;)V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->finish()V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget v0, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 133
    iget v0, p0, Lcom/google/android/gsf/login/AccountIntroActivity;->mDelayedResultCode:I

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountIntroActivity;->setResult(I)V

    .line 134
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroActivity;->finish()V

    goto :goto_0
.end method
