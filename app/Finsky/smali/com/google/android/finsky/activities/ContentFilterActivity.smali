.class public Lcom/google/android/finsky/activities/ContentFilterActivity;
.super Landroid/app/Activity;
.source "ContentFilterActivity.java"


# instance fields
.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLevel:I

.field private mListView:Landroid/widget/ListView;

.field private mLock:Z

.field private mLockView:Landroid/widget/ImageView;

.field private mMode:I

.field private mMoreInfoView:Landroid/widget/TextView;

.field private mPasscode:Ljava/lang/String;

.field private mPasscodeView:Landroid/widget/EditText;

.field private mSettings:Landroid/content/SharedPreferences;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/ContentFilterActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->switchMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/ContentFilterActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLock:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/ContentFilterActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:I

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/finsky/activities/ContentFilterActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/ContentFilterActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/ContentFilterActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->performPositiveAction()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/ContentFilterActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMode:I

    return v0
.end method

.method public static getLabel(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "level"

    .prologue
    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 273
    .local v0, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 289
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 277
    :pswitch_0
    const v1, 0x7f0b006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 279
    :pswitch_1
    const v1, 0x7f0b0094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 281
    :pswitch_2
    const v1, 0x7f0b0095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 283
    :pswitch_3
    const v1, 0x7f0b0096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 285
    :pswitch_4
    const v1, 0x7f0b0097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 287
    :pswitch_5
    const v1, 0x7f0b0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private performPositiveAction()V
    .locals 4

    .prologue
    .line 200
    iget v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 232
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "content-filter-level"

    invoke-static {v1}, Lcom/google/android/finsky/utils/Utils;->getPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 204
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/analytics/Analytics$Event;->CONTENT_FILTER:Lcom/google/android/finsky/analytics/Analytics$Event;

    const-string v2, ""

    iget v3, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->reportEvent(Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setResult(I)V

    .line 207
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->finish()V

    goto :goto_0

    .line 210
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLock:Z

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mPasscode:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mPasscodeView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLock:Z

    .line 215
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->switchMode()V

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mPasscodeView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mPasscodeView:Landroid/widget/EditText;

    const v1, 0x7f0b009f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mPasscodeView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mPasscode:Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "content-filter-passcode"

    invoke-static {v1}, Lcom/google/android/finsky/utils/Utils;->getPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mPasscode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLock:Z

    .line 229
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->switchMode()V

    goto/16 :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupViews()V
    .locals 11

    .prologue
    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 102
    iget-object v5, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLockView:Landroid/widget/ImageView;

    iget-boolean v6, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLock:Z

    if-eqz v6, :cond_0

    const v6, 0x7f020028

    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object v5, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLockView:Landroid/widget/ImageView;

    new-instance v6, Lcom/google/android/finsky/activities/ContentFilterActivity$1;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/activities/ContentFilterActivity$1;-><init>(Lcom/google/android/finsky/activities/ContentFilterActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    new-array v1, v7, [Ljava/lang/String;

    .line 112
    .local v1, contentFilters:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_1

    .line 113
    invoke-static {p0, v2}, Lcom/google/android/finsky/activities/ContentFilterActivity;->getLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    .end local v1           #contentFilters:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_0
    const v6, 0x7f020038

    goto :goto_0

    .line 117
    .restart local v1       #contentFilters:[Ljava/lang/String;
    .restart local v2       #i:I
    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mListView:Landroid/widget/ListView;

    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x7f040024

    invoke-direct {v6, p0, v7, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    iget-object v5, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 120
    iget-object v5, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mListView:Landroid/widget/ListView;

    new-instance v6, Lcom/google/android/finsky/activities/ContentFilterActivity$2;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/activities/ContentFilterActivity$2;-><init>(Lcom/google/android/finsky/activities/ContentFilterActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 150
    const/4 v2, 0x0

    :goto_2
    iget v5, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:I

    if-gt v2, v5, :cond_2

    .line 151
    iget-object v5, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v2, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 154
    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 157
    const-string v5, "%s <a href=\'%s\'>%s</a>"

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    const v8, 0x7f0b0099

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/activities/ContentFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    sget-object v7, Lcom/google/android/finsky/config/G;->contentFilterInfoUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v7}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v9

    const v7, 0x7f0b009a

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/ContentFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, moreInfoText:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMoreInfoView:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v5, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMoreInfoView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 164
    const v5, 0x7f0900a9

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/ContentFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 165
    .local v4, okButton:Landroid/view/View;
    new-instance v5, Lcom/google/android/finsky/activities/ContentFilterActivity$3;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/ContentFilterActivity$3;-><init>(Lcom/google/android/finsky/activities/ContentFilterActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v5, 0x7f0900a8

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/ContentFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 174
    .local v0, cancelButton:Landroid/view/View;
    new-instance v5, Lcom/google/android/finsky/activities/ContentFilterActivity$4;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/ContentFilterActivity$4;-><init>(Lcom/google/android/finsky/activities/ContentFilterActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v5, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mPasscodeView:Landroid/widget/EditText;

    new-instance v6, Lcom/google/android/finsky/activities/ContentFilterActivity$5;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/activities/ContentFilterActivity$5;-><init>(Lcom/google/android/finsky/activities/ContentFilterActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 197
    return-void
.end method

.method private switchMode()V
    .locals 6

    .prologue
    const v5, 0x7f020038

    const v4, 0x7f020028

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 236
    iget v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMode:I

    if-nez v0, :cond_0

    .line 237
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMode:I

    .line 243
    :goto_0
    iget v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMode:I

    if-nez v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mPasscodeView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 245
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0b009b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 246
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLockView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLock:Z

    if-eqz v1, :cond_1

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMoreInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mPasscodeView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mPasscodeView:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 263
    :goto_2
    return-void

    .line 239
    :cond_0
    iput v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMode:I

    goto :goto_0

    :cond_1
    move v1, v5

    .line 246
    goto :goto_1

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mTitleView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLock:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0b009c

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 255
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLockView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLock:Z

    if-eqz v1, :cond_4

    move v1, v5

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMoreInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mPasscodeView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mPasscodeView:Landroid/widget/EditText;

    const v1, 0x7f0b009e

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 261
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mPasscodeView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_2

    .line 253
    :cond_3
    const v1, 0x7f0b009d

    goto :goto_3

    :cond_4
    move v1, v4

    .line 255
    goto :goto_4
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x7

    const/4 v3, 0x0

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/ContentFilterActivity;->requestWindowFeature(I)Z

    .line 79
    const v0, 0x7f04000d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f04000e

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 81
    const-string v0, "finsky"

    invoke-virtual {p0, v0, v3}, Lcom/google/android/finsky/activities/ContentFilterActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mSettings:Landroid/content/SharedPreferences;

    .line 82
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 83
    iget-object v1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v0, "content-filter-level"

    invoke-static {v0}, Lcom/google/android/finsky/utils/Utils;->getPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/google/android/finsky/config/G;->defaultContentFilterLevel:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:I

    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "content-filter-passcode"

    invoke-static {v1}, Lcom/google/android/finsky/utils/Utils;->getPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mPasscode:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mPasscode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLock:Z

    .line 90
    :cond_0
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mTitleView:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLockView:Landroid/widget/ImageView;

    .line 92
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mListView:Landroid/widget/ListView;

    .line 93
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMoreInfoView:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mPasscodeView:Landroid/widget/EditText;

    .line 96
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupViews()V

    .line 97
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setResult(I)V

    .line 98
    return-void
.end method
