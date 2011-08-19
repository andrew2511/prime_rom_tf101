.class public Lcom/google/android/gsf/login/CreateAccountActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "CreateAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private mAgreementTextView:Landroid/widget/TextView;

.field private mBackButton:Landroid/view/View;

.field private mFirstNameEdit:Landroid/widget/EditText;

.field private mLastNameEdit:Landroid/widget/EditText;

.field private mNextButton:Landroid/view/View;

.field private mUsernameEdit:Landroid/widget/EditText;

.field private mUsernameError:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/gsf/login/CreateAccountActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mUsernameError:Z

    return p1
.end method

.method private initViews()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 77
    const v3, 0x7f0c003e

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/CreateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mFirstNameEdit:Landroid/widget/EditText;

    .line 78
    iget-object v3, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 79
    iget-object v3, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 81
    const v3, 0x7f0c003f

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/CreateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mLastNameEdit:Landroid/widget/EditText;

    .line 82
    iget-object v3, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    iget-object v3, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 85
    const v3, 0x7f0c0040

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/CreateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mUsernameEdit:Landroid/widget/EditText;

    .line 86
    iget-object v3, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 87
    iget-object v3, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 88
    iget-object v3, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mUsernameEdit:Landroid/widget/EditText;

    new-array v4, v7, [Landroid/text/InputFilter;

    new-instance v5, Lcom/google/android/gsf/login/CreateAccountActivity$1;

    invoke-direct {v5, p0, v7}, Lcom/google/android/gsf/login/CreateAccountActivity$1;-><init>(Lcom/google/android/gsf/login/CreateAccountActivity;Z)V

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 101
    invoke-direct {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->requestFocusToFirstRow()V

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->isXLargeScreen()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    iget-object v3, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v3, v6}, Lcom/google/android/gsf/login/CreateAccountActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 108
    :goto_0
    const v3, 0x7f0c0007

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/CreateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mNextButton:Landroid/view/View;

    .line 109
    iget-object v3, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {p0, v3, v7}, Lcom/google/android/gsf/login/CreateAccountActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 111
    const v3, 0x7f0c000d

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/CreateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mBackButton:Landroid/view/View;

    .line 112
    iget-object v3, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/CreateAccountActivity;->setBackButton(Landroid/view/View;)V

    .line 114
    const v3, 0x7f0c0042

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/CreateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mAgreementTextView:Landroid/widget/TextView;

    .line 115
    iget-object v3, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mAgreementTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 116
    const v3, 0x7f08005c

    invoke-static {p0, v3}, Lcom/google/android/gsf/login/BaseActivity$LinkSpan;->linkify(Lcom/google/android/gsf/login/BaseActivity;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 117
    .local v2, msg:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mAgreementTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v3, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mAgreementTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 121
    .end local v2           #msg:Ljava/lang/CharSequence;
    :cond_0
    const v3, 0x7f0c0043

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/CreateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 122
    .local v1, gmailHostname:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/CreateAccountActivity;->getGmailHost(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->isXLargeScreen()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 128
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 130
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 133
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_2
    return-void

    .line 105
    .end local v1           #gmailHostname:Landroid/widget/TextView;
    :cond_3
    iget-object v3, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v3, v6}, Lcom/google/android/gsf/login/CreateAccountActivity;->setDefaultButton(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private populateFields()V
    .locals 5

    .prologue
    .line 137
    iget-object v3, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mFirstNameEdit:Landroid/widget/EditText;

    sget-object v2, Lcom/google/android/gsf/login/CreateAccountActivity;->mUserData:Ljava/util/HashMap;

    sget-object v4, Lcom/google/android/gsf/login/BackendStub$Key;->FIRST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v4}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v3, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mLastNameEdit:Landroid/widget/EditText;

    sget-object v2, Lcom/google/android/gsf/login/CreateAccountActivity;->mUserData:Ljava/util/HashMap;

    sget-object v4, Lcom/google/android/gsf/login/BackendStub$Key;->LAST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v4}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    sget-object v2, Lcom/google/android/gsf/login/CreateAccountActivity;->mUserData:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    .local v1, username:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 144
    .local v0, pos:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 147
    .end local v0           #pos:I
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method

.method private requestFocusToFirstRow()V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->isXLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mUsernameEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mFirstNameEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/CreateAccountActivity;->setContentView(I)V

    .line 55
    invoke-direct {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->initViews()V

    .line 56
    invoke-direct {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->populateFields()V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->updateWidgetState()V

    .line 58
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const v5, 0x7f08002b

    .line 174
    iget-object v4, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mUsernameEdit:Landroid/widget/EditText;

    if-ne p1, v4, :cond_3

    if-nez p2, :cond_3

    .line 175
    iget-object v4, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, username:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mUsernameError:Z

    if-eqz v4, :cond_1

    .line 177
    iget-object v4, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v5, 0x7f080026

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/CreateAccountActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 200
    .end local v3           #username:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 178
    .restart local v3       #username:Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 179
    iget-object v4, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v5, 0x7f080030

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/CreateAccountActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/CreateAccountActivity;->validateUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 183
    iget-object v4, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v5, 0x7f080053

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/CreateAccountActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 185
    .end local v3           #username:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mFirstNameEdit:Landroid/widget/EditText;

    if-ne p1, v4, :cond_5

    if-nez p2, :cond_5

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, error:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 188
    .local v1, firstName:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 189
    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/CreateAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_4
    iget-object v4, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 192
    .end local v0           #error:Ljava/lang/String;
    .end local v1           #firstName:Ljava/lang/CharSequence;
    :cond_5
    iget-object v4, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mLastNameEdit:Landroid/widget/EditText;

    if-ne p1, v4, :cond_0

    if-nez p2, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 194
    .restart local v0       #error:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 195
    .local v2, lastName:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 196
    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/CreateAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    :cond_6
    iget-object v4, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onResume()V

    .line 65
    invoke-direct {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->requestFocusToFirstRow()V

    .line 66
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 152
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->start()V

    .line 154
    sget-object v0, Lcom/google/android/gsf/login/CreateAccountActivity;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->FIRST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/google/android/gsf/login/CreateAccountActivity;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->LAST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/google/android/gsf/login/CreateAccountActivity;->mUserData:Ljava/util/HashMap;

    const-string v1, "EXTRA_ACCOUNT_WAS_NEWLY_CREATED"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GoogleLoginService"

    const-string v2, "username was empty in CreateAccountActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/CreateAccountActivity;->validateUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_1

    .line 163
    sget-object v0, Lcom/google/android/gsf/login/CreateAccountActivity;->mUserData:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/CheckAvailTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 170
    :goto_0
    return-void

    .line 167
    :cond_1
    const-string v1, "GoogleLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t create a valid email from \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v1, 0x7f080053

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateWidgetState()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 207
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->updateWidgetState()V

    .line 208
    iget-object v7, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 209
    .local v1, firstName:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 210
    .local v2, lastName:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 212
    .local v3, username:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v9

    .line 213
    .local v4, validFirstName:Z
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v9

    .line 214
    .local v5, validLastName:Z
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mUsernameError:Z

    if-nez v7, :cond_2

    move v6, v9

    .line 216
    .local v6, validUsername:Z
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    move v0, v9

    .line 217
    .local v0, enableNext:Z
    :goto_3
    iget-object v7, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 218
    iget-object v7, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 219
    return-void

    .end local v0           #enableNext:Z
    .end local v4           #validFirstName:Z
    .end local v5           #validLastName:Z
    .end local v6           #validUsername:Z
    :cond_0
    move v4, v8

    .line 212
    goto :goto_0

    .restart local v4       #validFirstName:Z
    :cond_1
    move v5, v8

    .line 213
    goto :goto_1

    .restart local v5       #validLastName:Z
    :cond_2
    move v6, v8

    .line 214
    goto :goto_2

    .restart local v6       #validUsername:Z
    :cond_3
    move v0, v8

    .line 216
    goto :goto_3
.end method
