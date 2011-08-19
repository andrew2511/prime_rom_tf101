.class public Lcom/google/android/gsf/login/SuggestUsernameActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "SuggestUsernameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private mAlternativesButton:Landroid/widget/Button;

.field private mAlternativesLabel:Landroid/view/View;

.field private mBackButton:Landroid/view/View;

.field private mCurrentSuggestion:Ljava/lang/String;

.field private mCurrentSuggestionPosition:I

.field private mDetailMessage:Landroid/widget/TextView;

.field private mNextButton:Landroid/view/View;

.field private mSuggestionsAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mUsernameEdit:Landroid/widget/EditText;

.field private mUsernameError:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/gsf/login/SuggestUsernameActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameError:Z

    return p1
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f030021

    return v0
.end method

.method protected initViews()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 85
    const v7, 0x7f0c0040

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    .line 86
    iget-object v7, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v7, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 87
    iget-object v7, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v7, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 88
    iget-object v7, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    new-array v8, v11, [Landroid/text/InputFilter;

    new-instance v9, Lcom/google/android/gsf/login/SuggestUsernameActivity$1;

    invoke-direct {v9, p0, v11}, Lcom/google/android/gsf/login/SuggestUsernameActivity$1;-><init>(Lcom/google/android/gsf/login/SuggestUsernameActivity;Z)V

    aput-object v9, v8, v10

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 105
    iget-object v7, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 106
    iget-object v7, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v7, v10}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 108
    const v7, 0x7f0c0060

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mAlternativesButton:Landroid/widget/Button;

    .line 109
    iget-object v7, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mAlternativesButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v7, 0x7f0c005f

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mAlternativesLabel:Landroid/view/View;

    .line 113
    const v7, 0x7f0c0007

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mNextButton:Landroid/view/View;

    .line 114
    iget-object v7, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {p0, v7, v11}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 116
    const v7, 0x7f0c000d

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mBackButton:Landroid/view/View;

    .line 117
    iget-object v7, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->setBackButton(Landroid/view/View;)V

    .line 119
    const v7, 0x7f0c006e

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mDetailMessage:Landroid/widget/TextView;

    .line 120
    iget-object v7, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mDetailMessage:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 121
    sget-object v7, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUserData:Ljava/util/HashMap;

    sget-object v8, Lcom/google/android/gsf/login/BackendStub$Key;->DETAIL:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v8}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 122
    .local v5, serverDetail:Ljava/lang/String;
    const/4 v2, 0x0

    .line 125
    .local v2, detailMessage:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 127
    :try_start_0
    invoke-static {v5}, Lcom/google/android/gsf/login/BackendStub$Detail;->valueOf(Ljava/lang/String;)Lcom/google/android/gsf/login/BackendStub$Detail;

    move-result-object v1

    .line 128
    .local v1, detail:Lcom/google/android/gsf/login/BackendStub$Detail;
    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Detail;->getMessageId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, msg:Ljava/lang/String;
    sget-object v7, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUserData:Ljava/util/HashMap;

    sget-object v8, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v8}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gsf/login/BackendStub;->usernameOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, username:Ljava/lang/String;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/CharSequence;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v4, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 138
    .end local v1           #detail:Lcom/google/android/gsf/login/BackendStub$Detail;
    .end local v4           #msg:Ljava/lang/String;
    .end local v6           #username:Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    invoke-static {}, Lcom/google/android/gsf/login/BackendStub$Detail;->defaultMessageId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 139
    :cond_1
    iget-object v7, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mDetailMessage:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .end local v2           #detailMessage:Ljava/lang/String;
    .end local v5           #serverDetail:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->isXLargeScreen()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 144
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_3

    .line 145
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 146
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 149
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_3
    return-void

    .line 132
    .restart local v2       #detailMessage:Ljava/lang/String;
    .restart local v5       #serverDetail:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 134
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "GoogleLoginService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown enum "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 212
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 216
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->finish()V

    .line 217
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSuggestionsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mCurrentSuggestion:Ljava/lang/String;

    .line 266
    iput p2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mCurrentSuggestionPosition:I

    .line 267
    iget-object v0, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mCurrentSuggestion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mAlternativesButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mCurrentSuggestion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 273
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 274
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->updateWidgetState()V

    .line 275
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 253
    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mAlternativesButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 255
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 256
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f08007a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 257
    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSuggestionsAdapter:Landroid/widget/ArrayAdapter;

    iget v2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mCurrentSuggestionPosition:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 258
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 260
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getContentView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->initViews()V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->populateFields()V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->updateWidgetState()V

    .line 75
    iget-object v0, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 76
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 236
    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_0

    .line 237
    iget-boolean v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameError:Z

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v2, 0x7f080026

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, username:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v2, 0x7f080030

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 244
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->validateUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 245
    :cond_3
    iget-object v1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v2, 0x7f080053

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 82
    return-void
.end method

.method protected populateFields()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 153
    sget-object v3, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUserData:Ljava/util/HashMap;

    sget-object v4, Lcom/google/android/gsf/login/BackendStub$Key;->SUGGESTIONS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v4}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 155
    .local v2, suggestions:[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 157
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 158
    aget-object v3, v2, v1

    invoke-static {v3}, Lcom/google/android/gsf/login/BackendStub;->usernameOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mAlternativesLabel:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v3, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mAlternativesButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 163
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    invoke-direct {v3, p0, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSuggestionsAdapter:Landroid/widget/ArrayAdapter;

    .line 165
    iget-object v3, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mAlternativesButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mSuggestionsAdapter:Landroid/widget/ArrayAdapter;

    iget v5, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mCurrentSuggestionPosition:I

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 171
    .end local v1           #i:I
    :goto_1
    return-void

    .line 168
    .restart local p0
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mAlternativesLabel:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v3, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mAlternativesButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public start()V
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const-string v0, "GoogleLoginService"

    const-string v1, "empty username in SuggestUsernameActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v1, 0x7f080030

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 208
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->validateUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    if-nez v1, :cond_1

    .line 186
    const-string v1, "GoogleLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t create a valid email name from \'"

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

    .line 187
    iget-object v0, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    const v1, 0x7f080053

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mCurrentSuggestion:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mCurrentSuggestion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 196
    sget-object v0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUserData:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->EXTERNAL_USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gsf/login/NonGmailCreateActivity;

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 201
    :goto_1
    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/VerifyProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 198
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 202
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 205
    :cond_5
    sget-object v0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUserData:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/CheckAvailTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public updateWidgetState()V
    .locals 4

    .prologue
    .line 224
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->updateWidgetState()V

    .line 225
    iget-object v3, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 227
    .local v1, username:Ljava/lang/CharSequence;
    iget-boolean v3, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mUsernameError:Z

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    move v2, v3

    .line 229
    .local v2, validUsername:Z
    :goto_0
    move v0, v2

    .line 230
    .local v0, enableNext:Z
    iget-object v3, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 231
    iget-object v3, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 232
    return-void

    .line 227
    .end local v0           #enableNext:Z
    .end local v2           #validUsername:Z
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0
.end method
