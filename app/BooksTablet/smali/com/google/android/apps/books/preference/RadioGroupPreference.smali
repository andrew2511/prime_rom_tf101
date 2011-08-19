.class public Lcom/google/android/apps/books/preference/RadioGroupPreference;
.super Landroid/widget/LinearLayout;
.source "RadioGroupPreference.java"

# interfaces
.implements Lcom/google/android/apps/books/preference/LightweightPreference;


# instance fields
.field private mBinding:Z

.field private mGroup:Landroid/widget/RadioGroup;

.field private mGroupListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mKey:Ljava/lang/String;

.field private mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/books/preference/RadioGroupPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/books/preference/RadioGroupPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput-boolean v2, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mBinding:Z

    .line 113
    new-instance v1, Lcom/google/android/apps/books/preference/RadioGroupPreference$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/preference/RadioGroupPreference$1;-><init>(Lcom/google/android/apps/books/preference/RadioGroupPreference;)V

    iput-object v1, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mGroupListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 41
    sget-object v1, Lcom/google/android/apps/books/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mKey:Ljava/lang/String;

    .line 44
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/preference/RadioGroupPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mBinding:Z

    return v0
.end method


# virtual methods
.method public bindPreference()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 87
    iput-boolean v2, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mBinding:Z

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v2, :cond_1

    move-object v1, v3

    .line 90
    .local v1, value:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/preference/RadioGroupPreference;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 92
    .local v0, button:Landroid/widget/RadioButton;
    if-eqz v0, :cond_0

    .line 93
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .end local v0           #button:Landroid/widget/RadioButton;
    :cond_0
    iput-boolean v5, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mBinding:Z

    .line 99
    return-void

    .line 89
    .end local v1           #value:Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mKey:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v2

    iput-boolean v5, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mBinding:Z

    throw v2
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    iget-object v1, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/preference/RadioGroupPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, checked:Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/preference/RadioGroupPreference;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mGroup:Landroid/widget/RadioGroup;

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mGroupListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 53
    return-void
.end method

.method public persistPreference()V
    .locals 5

    .prologue
    .line 103
    iget-object v2, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 104
    .local v0, checkedId:I
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/preference/RadioGroupPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    iget-object v3, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;->onChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 111
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 59
    iget-object v2, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p1}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 60
    iget-object v2, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    .line 61
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 62
    iget-object v2, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 72
    iget-object v1, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p1}, Landroid/widget/RadioGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 76
    :cond_0
    return-void
.end method

.method public setupPreference(Landroid/content/SharedPreferences;Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;)V
    .locals 0
    .parameter "prefs"
    .parameter "listener"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mPrefs:Landroid/content/SharedPreferences;

    .line 81
    iput-object p2, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference;->mListener:Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;

    .line 82
    invoke-virtual {p0}, Lcom/google/android/apps/books/preference/RadioGroupPreference;->bindPreference()V

    .line 83
    return-void
.end method
