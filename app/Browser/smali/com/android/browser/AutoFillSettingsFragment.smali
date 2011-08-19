.class public Lcom/android/browser/AutoFillSettingsFragment;
.super Landroid/app/Fragment;
.source "AutoFillSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/AutoFillSettingsFragment$FieldChangedListener;,
        Lcom/android/browser/AutoFillSettingsFragment$PhoneNumberValidator;
    }
.end annotation


# instance fields
.field private mAddressLine1Edit:Landroid/widget/EditText;

.field private mAddressLine2Edit:Landroid/widget/EditText;

.field private mCityEdit:Landroid/widget/EditText;

.field private mCompanyEdit:Landroid/widget/EditText;

.field private mCountryEdit:Landroid/widget/EditText;

.field private mEmailEdit:Landroid/widget/EditText;

.field private mFieldChangedListener:Landroid/text/TextWatcher;

.field private mFullNameEdit:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneEdit:Landroid/widget/EditText;

.field private mSaveButton:Landroid/widget/Button;

.field private mStateEdit:Landroid/widget/EditText;

.field private mUniqueId:I

.field private mZipEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mUniqueId:I

    .line 109
    new-instance v0, Lcom/android/browser/AutoFillSettingsFragment$FieldChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/browser/AutoFillSettingsFragment$FieldChangedListener;-><init>(Lcom/android/browser/AutoFillSettingsFragment;Lcom/android/browser/AutoFillSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    .line 112
    new-instance v0, Lcom/android/browser/AutoFillSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/browser/AutoFillSettingsFragment$1;-><init>(Lcom/android/browser/AutoFillSettingsFragment;)V

    iput-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mPhoneEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mStateEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mZipEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCountryEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/browser/AutoFillSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/browser/AutoFillSettingsFragment;->closeEditor()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/browser/AutoFillSettingsFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mUniqueId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFullNameEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mEmailEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCompanyEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine1Edit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine2Edit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCityEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method private closeEditor()V
    .locals 3

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/browser/AutoFillSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 259
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/android/browser/AutoFillSettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 260
    invoke-virtual {p0}, Lcom/android/browser/AutoFillSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/browser/AutoFillSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/AutoFillSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedState"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 133
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 138
    const v4, 0x7f040003

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 140
    .local v3, v:Landroid/view/View;
    const v4, 0x7f100004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFullNameEdit:Landroid/widget/EditText;

    .line 141
    const v4, 0x7f10000d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mEmailEdit:Landroid/widget/EditText;

    .line 142
    const v4, 0x7f100005

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCompanyEdit:Landroid/widget/EditText;

    .line 143
    const v4, 0x7f100006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine1Edit:Landroid/widget/EditText;

    .line 145
    const v4, 0x7f100007

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine2Edit:Landroid/widget/EditText;

    .line 147
    const v4, 0x7f100008

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCityEdit:Landroid/widget/EditText;

    .line 148
    const v4, 0x7f100009

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mStateEdit:Landroid/widget/EditText;

    .line 149
    const v4, 0x7f10000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mZipEdit:Landroid/widget/EditText;

    .line 150
    const v4, 0x7f10000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCountryEdit:Landroid/widget/EditText;

    .line 151
    const v4, 0x7f10000c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mPhoneEdit:Landroid/widget/EditText;

    .line 153
    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFullNameEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mEmailEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 155
    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCompanyEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine1Edit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 157
    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine2Edit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCityEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mStateEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 160
    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mZipEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 161
    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCountryEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 162
    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mPhoneEdit:Landroid/widget/EditText;

    new-instance v5, Lcom/android/browser/AutoFillSettingsFragment$PhoneNumberValidator;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/browser/AutoFillSettingsFragment$PhoneNumberValidator;-><init>(Lcom/android/browser/AutoFillSettingsFragment;Lcom/android/browser/AutoFillSettingsFragment$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 164
    const v4, 0x7f10000e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mSaveButton:Landroid/widget/Button;

    .line 165
    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mSaveButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/browser/AutoFillSettingsFragment$2;

    invoke-direct {v5, p0}, Lcom/android/browser/AutoFillSettingsFragment$2;-><init>(Lcom/android/browser/AutoFillSettingsFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v4, 0x7f100010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 187
    .local v2, deleteButton:Landroid/widget/Button;
    new-instance v4, Lcom/android/browser/AutoFillSettingsFragment$3;

    invoke-direct {v4, p0}, Lcom/android/browser/AutoFillSettingsFragment$3;-><init>(Lcom/android/browser/AutoFillSettingsFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v4, 0x7f10000f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 211
    .local v1, cancelButton:Landroid/widget/Button;
    new-instance v4, Lcom/android/browser/AutoFillSettingsFragment$4;

    invoke-direct {v4, p0}, Lcom/android/browser/AutoFillSettingsFragment$4;-><init>(Lcom/android/browser/AutoFillSettingsFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;

    move-result-object v0

    .line 219
    .local v0, activeProfile:Landroid/webkit/WebSettings$AutoFillProfile;
    if-eqz v0, :cond_0

    .line 220
    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFullNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettings$AutoFillProfile;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettings$AutoFillProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCompanyEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettings$AutoFillProfile;->getCompanyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine1Edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettings$AutoFillProfile;->getAddressLine1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine2Edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettings$AutoFillProfile;->getAddressLine2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCityEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettings$AutoFillProfile;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mStateEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettings$AutoFillProfile;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mZipEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettings$AutoFillProfile;->getZipCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCountryEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettings$AutoFillProfile;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mPhoneEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettings$AutoFillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/AutoFillSettingsFragment;->updateButtonState()V

    .line 234
    return-object v3
.end method

.method public updateButtonState()V
    .locals 2

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFullNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCompanyEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine1Edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine2Edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCityEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mStateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mZipEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCountryEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mPhoneEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 252
    .local v0, valid:Z
    :goto_0
    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 253
    return-void

    .line 239
    .end local v0           #valid:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
