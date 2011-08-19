.class public Lcom/google/android/gsf/login/ChoosePasswordActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "ChoosePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/ChoosePasswordActivity$GaiaPasswordFilter;
    }
.end annotation


# instance fields
.field private mBackButton:Landroid/view/View;

.field private mDefaultColor:I

.field private mDetailColors:[I

.field private mDetails:[Ljava/lang/CharSequence;

.field private mHandler:Landroid/os/Handler;

.field private mNextButton:Landroid/view/View;

.field private mPasswordChecker:Landroid/text/TextWatcher;

.field private mPasswordCheckerThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

.field private mPasswordConfirmEdit:Landroid/widget/EditText;

.field private mPasswordConfirmError:Z

.field private mPasswordDetail:Landroid/widget/TextView;

.field private mPasswordEdit:Landroid/widget/EditText;

.field private mPasswordError:Z

.field private mPasswordNeedsRating:Z

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 61
    new-instance v0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;-><init>(Lcom/google/android/gsf/login/ChoosePasswordActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Lcom/google/android/gsf/login/ChoosePasswordActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity$2;-><init>(Lcom/google/android/gsf/login/ChoosePasswordActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordChecker:Landroid/text/TextWatcher;

    .line 186
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/gsf/login/ChoosePasswordActivity;Lcom/google/android/gsf/login/CancelableCallbackThread;)Lcom/google/android/gsf/login/CancelableCallbackThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordCheckerThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/gsf/login/ChoosePasswordActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/login/ChoosePasswordActivity;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mDetails:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/login/ChoosePasswordActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordDetail:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gsf/login/ChoosePasswordActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mDetailColors:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gsf/login/ChoosePasswordActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordNeedsRating:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/gsf/login/ChoosePasswordActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->ratePassword()V

    return-void
.end method

.method static synthetic access$702(Lcom/google/android/gsf/login/ChoosePasswordActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordError:Z

    return p1
.end method

.method static synthetic access$802(Lcom/google/android/gsf/login/ChoosePasswordActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmError:Z

    return p1
.end method

.method private initViews()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 200
    const v1, 0x7f0c0033

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    .line 201
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 202
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordChecker:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 203
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 204
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    new-array v2, v5, [Landroid/text/InputFilter;

    new-instance v3, Lcom/google/android/gsf/login/ChoosePasswordActivity$3;

    invoke-direct {v3, p0, v5}, Lcom/google/android/gsf/login/ChoosePasswordActivity$3;-><init>(Lcom/google/android/gsf/login/ChoosePasswordActivity;Z)V

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 217
    const v1, 0x7f0c0038

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    .line 218
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 219
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 220
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    new-array v2, v5, [Landroid/text/InputFilter;

    new-instance v3, Lcom/google/android/gsf/login/ChoosePasswordActivity$4;

    invoke-direct {v3, p0, v5}, Lcom/google/android/gsf/login/ChoosePasswordActivity$4;-><init>(Lcom/google/android/gsf/login/ChoosePasswordActivity;Z)V

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 233
    const v1, 0x7f0c0035

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordDetail:Landroid/widget/TextView;

    .line 234
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v1, v4}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 236
    const v1, 0x7f0c0036

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 238
    const v1, 0x7f0c0007

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mNextButton:Landroid/view/View;

    .line 239
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {p0, v1, v5}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 241
    const v1, 0x7f0c000d

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mBackButton:Landroid/view/View;

    .line 242
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->setBackButton(Landroid/view/View;)V

    .line 244
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->isXLargeScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 246
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 248
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 251
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_0
    return-void
.end method

.method private populateFields()V
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    sget-object v1, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mUserData:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Key;->PASSWORD:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 256
    return-void
.end method

.method private ratePassword()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 103
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordCheckerThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    if-nez v1, :cond_4

    .line 104
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, password:Ljava/lang/String;
    sget-object v1, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mUserData:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Key;->PASSWORD:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iput-boolean v3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordNeedsRating:Z

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_3

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordDetail:Landroid/widget/TextView;

    const v2, 0x7f08007e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->isXLargeScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordDetail:Landroid/widget/TextView;

    iget v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mDefaultColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    .end local v0           #password:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 116
    .restart local v0       #password:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordDetail:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mBackendStub:Lcom/google/android/gsf/login/BackendStub;

    sget-object v2, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mUserData:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/google/android/gsf/login/BackendStub;->ratePassword(Landroid/content/Context;Ljava/util/HashMap;Landroid/os/Message;)Lcom/google/android/gsf/login/CancelableCallbackThread;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordCheckerThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    goto :goto_0

    .line 122
    .end local v0           #password:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordNeedsRating:Z

    goto :goto_0
.end method

.method private resetPasswordEntry()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 158
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 160
    iput-boolean v4, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordError:Z

    .line 162
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 164
    iput-boolean v4, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmError:Z

    .line 166
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordDetail:Landroid/widget/TextView;

    const v3, 0x7f08007e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 167
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 169
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->isXLargeScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordDetail:Landroid/widget/TextView;

    iget v3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mDefaultColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    const v2, 0x7f0c0032

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 177
    .local v0, choosePasswordLabel:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    const v2, 0x7f0c0037

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 179
    .local v1, confirmPasswordLabel:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .end local v0           #choosePasswordLabel:Landroid/widget/TextView;
    .end local v1           #confirmPasswordLabel:Landroid/widget/TextView;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const v4, 0x7f030009

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->setContentView(I)V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 132
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f050002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mDetails:[Ljava/lang/CharSequence;

    .line 133
    const v4, 0x7f06000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mDefaultColor:I

    .line 134
    const v4, 0x7f050001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 135
    .local v0, colors:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 136
    .local v2, length:I
    new-array v4, v2, [I

    iput-object v4, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mDetailColors:[I

    .line 137
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 138
    iget-object v4, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mDetailColors:[I

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    aput v5, v4, v1

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->initViews()V

    .line 141
    invoke-direct {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->populateFields()V

    .line 142
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->updateWidgetState()V

    .line 143
    iget-object v4, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 144
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const v1, 0x7f080027

    .line 301
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordError:Z

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmError:Z

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onResume()V

    .line 150
    invoke-direct {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->resetPasswordEntry()V

    .line 153
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->updateWidgetState()V

    .line 154
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const v2, 0x7f080082

    .line 261
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->isXLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->updateWidgetState()V

    .line 280
    :goto_0
    return-void

    .line 268
    :cond_0
    const v0, 0x7f08008e

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 270
    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gsf/login/ShowErrorActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 276
    :cond_1
    sget-object v0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->PASSWORD:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/AccountSecurityActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public updateWidgetState()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 287
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->updateWidgetState()V

    .line 288
    iget-object v5, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 289
    .local v2, password:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 291
    .local v0, confirm:Ljava/lang/CharSequence;
    iget-boolean v5, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordError:Z

    if-nez v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v7

    .line 292
    .local v4, validPassword:Z
    :goto_0
    iget-boolean v5, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmError:Z

    if-nez v5, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v7

    .line 294
    .local v3, validConfirm:Z
    :goto_1
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    move v1, v7

    .line 295
    .local v1, enableNext:Z
    :goto_2
    iget-object v5, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 296
    iget-object v5, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 297
    return-void

    .end local v1           #enableNext:Z
    .end local v3           #validConfirm:Z
    .end local v4           #validPassword:Z
    :cond_0
    move v4, v6

    .line 291
    goto :goto_0

    .restart local v4       #validPassword:Z
    :cond_1
    move v3, v6

    .line 292
    goto :goto_1

    .restart local v3       #validConfirm:Z
    :cond_2
    move v1, v6

    .line 294
    goto :goto_2
.end method
