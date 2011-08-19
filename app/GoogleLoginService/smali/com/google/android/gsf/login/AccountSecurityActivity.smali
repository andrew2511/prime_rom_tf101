.class public Lcom/google/android/gsf/login/AccountSecurityActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "AccountSecurityActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private mAnswerEdit:Landroid/widget/EditText;

.field private mBackButton:Landroid/view/View;

.field private mNextButton:Landroid/view/View;

.field private mSecondaryEmail:Landroid/widget/EditText;

.field private mSecondaryEmailError:Z

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmailError:Z

    return-void
.end method

.method private initViews()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 63
    const v4, 0x7f0c000c

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/AccountSecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    .line 64
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 67
    const v4, 0x7f0c000b

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/AccountSecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mAnswerEdit:Landroid/widget/EditText;

    .line 68
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mAnswerEdit:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mAnswerEdit:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 70
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    invoke-virtual {p0, v4, v10}, Lcom/google/android/gsf/login/AccountSecurityActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 72
    const v4, 0x7f0c0009

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/AccountSecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSpinner:Landroid/widget/Spinner;

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->isXLargeScreen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSpinner:Landroid/widget/Spinner;

    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x7f03000d

    const v7, 0x1020014

    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f05

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, p0, v6, v7, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 80
    :cond_0
    const v4, 0x7f0c0007

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/AccountSecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mNextButton:Landroid/view/View;

    .line 81
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mNextButton:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gsf/login/AccountSecurityActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 83
    const v4, 0x7f0c000d

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/AccountSecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mBackButton:Landroid/view/View;

    .line 84
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/AccountSecurityActivity;->setBackButton(Landroid/view/View;)V

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->isXLargeScreen()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 88
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 90
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 94
    :cond_1
    const v4, 0x7f0c0008

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/AccountSecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 95
    .local v3, securityQuestionLabel:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v4, 0x7f0c000a

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/AccountSecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 97
    .local v1, answerLabel:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v4, 0x7f0c0012

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/AccountSecurityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 99
    .local v2, secondaryEmailLabel:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #answerLabel:Landroid/widget/TextView;
    .end local v2           #secondaryEmailLabel:Landroid/widget/TextView;
    .end local v3           #securityQuestionLabel:Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method private populateFields()V
    .locals 8

    .prologue
    .line 104
    sget-object v6, Lcom/google/android/gsf/login/AccountSecurityActivity;->mUserData:Ljava/util/HashMap;

    sget-object v7, Lcom/google/android/gsf/login/BackendStub$Key;->SECONDARY_EMAIL:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v7}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 105
    .local v5, secondaryEmail:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    sget-object v6, Lcom/google/android/gsf/login/AccountSecurityActivity;->mUserData:Ljava/util/HashMap;

    sget-object v7, Lcom/google/android/gsf/login/BackendStub$Key;->SECURITY_ANSWER:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v7}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    .local v0, answer:Ljava/lang/String;
    sget-object v6, Lcom/google/android/gsf/login/AccountSecurityActivity;->mUserData:Ljava/util/HashMap;

    sget-object v7, Lcom/google/android/gsf/login/BackendStub$Key;->SECURITY_QUESTION:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v7}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 110
    .local v4, question:Ljava/lang/String;
    const/4 v1, -0x1

    .line 111
    .local v1, found:I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 112
    iget-object v6, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    .line 113
    .local v2, max:I
    const/4 v3, 0x0

    .local v3, position:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 114
    iget-object v6, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 115
    move v1, v3

    .line 120
    .end local v2           #max:I
    .end local v3           #position:I
    :cond_0
    if-ltz v1, :cond_2

    .line 121
    iget-object v6, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 122
    iget-object v6, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mAnswerEdit:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :goto_1
    return-void

    .line 113
    .restart local v2       #max:I
    .restart local v3       #position:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    .end local v2           #max:I
    .end local v3           #position:I
    :cond_2
    iget-object v6, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSpinner:Landroid/widget/Spinner;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 126
    iget-object v6, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mAnswerEdit:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private validAnswer()Z
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mAnswerEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 146
    .local v0, answer:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->setContentView(I)V

    .line 50
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->initViews()V

    .line 51
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->populateFields()V

    .line 52
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 169
    iget-object v2, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mAnswerEdit:Landroid/widget/EditText;

    if-ne p1, v2, :cond_1

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->validAnswer()Z

    move-result v2

    if-nez v2, :cond_1

    .line 170
    iget-object v2, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mAnswerEdit:Landroid/widget/EditText;

    const v3, 0x7f080030

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/AccountSecurityActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    if-ne p1, v2, :cond_0

    if-nez p2, :cond_0

    .line 172
    iget-boolean v2, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmailError:Z

    if-eqz v2, :cond_2

    .line 173
    iget-object v2, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    const v3, 0x7f080026

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/AccountSecurityActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v2, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, secondaryEmail:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    invoke-static {v0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->isUsernameValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 178
    iget-object v2, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    const v3, 0x7f0800a1

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/AccountSecurityActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 180
    :cond_3
    sget-object v2, Lcom/google/android/gsf/login/AccountSecurityActivity;->mUserData:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 181
    .local v1, username:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    const v3, 0x7f0800a2

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/AccountSecurityActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onResume()V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->updateWidgetState()V

    .line 60
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 133
    sget-object v0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->SECURITY_ANSWER:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mAnswerEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->SECURITY_QUESTION:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->SECONDARY_EMAIL:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->startActivity(Landroid/content/Intent;)V

    .line 139
    return-void
.end method

.method public updateWidgetState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 154
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->updateWidgetState()V

    .line 157
    iget-object v3, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mSecondaryEmail:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, secondaryEmail:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Lcom/google/android/gsf/login/AccountSecurityActivity;->isUsernameValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v5

    .line 162
    .local v2, validEmail:Z
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountSecurityActivity;->validAnswer()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    move v0, v5

    .line 163
    .local v0, enableNext:Z
    :goto_1
    iget-object v3, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 164
    iget-object v3, p0, Lcom/google/android/gsf/login/AccountSecurityActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 165
    return-void

    .end local v0           #enableNext:Z
    .end local v2           #validEmail:Z
    :cond_1
    move v2, v4

    .line 159
    goto :goto_0

    .restart local v2       #validEmail:Z
    :cond_2
    move v0, v4

    .line 162
    goto :goto_1
.end method
