.class public Lcom/google/android/apps/books/preference/SpinnerPreference;
.super Landroid/widget/LinearLayout;
.source "SpinnerPreference.java"

# interfaces
.implements Lcom/google/android/apps/books/preference/LightweightPreference;


# instance fields
.field private mBinding:Z

.field private mEntries:[Ljava/lang/CharSequence;

.field private mKey:Ljava/lang/String;

.field private mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mValues:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/books/preference/SpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/books/preference/SpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput-boolean v2, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mBinding:Z

    .line 149
    new-instance v1, Lcom/google/android/apps/books/preference/SpinnerPreference$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/preference/SpinnerPreference$1;-><init>(Lcom/google/android/apps/books/preference/SpinnerPreference;)V

    iput-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 48
    sget-object v1, Lcom/google/android/apps/books/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mKey:Ljava/lang/String;

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    sget-object v1, Lcom/google/android/apps/books/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "missing entries"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "missing values"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mValues:[Ljava/lang/CharSequence;

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/preference/SpinnerPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mBinding:Z

    return v0
.end method


# virtual methods
.method public bindPreference()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 118
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mBinding:Z

    .line 120
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mKey:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object v1, v2

    .line 121
    .local v1, value:Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_1

    .line 131
    iput-boolean v5, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mBinding:Z

    .line 133
    :goto_1
    return-void

    .end local v1           #value:Ljava/lang/String;
    :cond_0
    move-object v1, v3

    .line 120
    goto :goto_0

    .line 124
    .restart local v1       #value:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 125
    iget-object v2, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    iget-object v2, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :cond_2
    iput-boolean v5, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mBinding:Z

    goto :goto_1

    .line 124
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 131
    .end local v0           #i:I
    .end local v1           #value:Ljava/lang/String;
    :catchall_0
    move-exception v2

    iput-boolean v5, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mBinding:Z

    throw v2
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    iget-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 102
    .local v0, index:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/preference/SpinnerPreference;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mValues:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/books/preference/SpinnerPreference;->setEntries([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method public persistPreference()V
    .locals 4

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/android/apps/books/preference/SpinnerPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    iget-object v2, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;->onChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 82
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "entries"
    .parameter "values"

    .prologue
    .line 85
    const-string v1, "missing entries"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 86
    const-string v1, "missing values"

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mValues:[Ljava/lang/CharSequence;

    .line 87
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "mismatched entries and values"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 90
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/books/preference/SpinnerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    iget-object v3, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 92
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 93
    iget-object v1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 94
    return-void

    .line 87
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 98
    return-void
.end method

.method public setupPreference(Landroid/content/SharedPreferences;Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;)V
    .locals 0
    .parameter "prefs"
    .parameter "listener"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mPrefs:Landroid/content/SharedPreferences;

    .line 112
    iput-object p2, p0, Lcom/google/android/apps/books/preference/SpinnerPreference;->mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    .line 113
    invoke-virtual {p0}, Lcom/google/android/apps/books/preference/SpinnerPreference;->bindPreference()V

    .line 114
    return-void
.end method
