.class public Lcom/google/android/gm/preference/GmailPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "GmailPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mTextMessageSizeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private initMessageTextSizeMap(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    .line 107
    iget-object v3, p0, Lcom/google/android/gm/preference/GmailPreferenceFragment;->mTextMessageSizeMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 120
    :cond_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 113
    .local v2, textMessageValues:[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 116
    .local v1, textMessageSummaries:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gm/preference/GmailPreferenceFragment;->mTextMessageSizeMap:Ljava/util/HashMap;

    .line 117
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/google/android/gm/preference/GmailPreferenceFragment;->mTextMessageSizeMap:Ljava/util/HashMap;

    aget-object v4, v2, v0

    aget-object v5, v1, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getHumanReadableTextSizeSummary(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "value"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->getHumanReadableTextSizeSummary(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getHumanReadableTextSizeSummary(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "value"
    .parameter "activity"

    .prologue
    .line 98
    invoke-direct {p0, p2}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->initMessageTextSizeMap(Landroid/app/Activity;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/gm/preference/GmailPreferenceFragment;->mTextMessageSizeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected getRingtoneSummary(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .parameter "value"
    .parameter "activity"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 88
    .local v0, tone:Landroid/media/Ringtone;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected initializeCheckBox(Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 36
    .local v0, preference:Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 39
    :cond_0
    return-void
.end method

.method protected initializeCheckBoxAndSummary(Ljava/lang/String;ZLjava/lang/CharSequence;)V
    .locals 2
    .parameter "key"
    .parameter "value"
    .parameter "summary"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 59
    .local v0, preference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 60
    invoke-virtual {v0, p3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method protected initializeEditText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 65
    .local v0, pref:Landroid/preference/EditTextPreference;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method protected initializeListAndSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .parameter "summary"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 50
    .local v0, preference:Landroid/preference/ListPreference;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, p3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    return-void
.end method

.method protected initializePreferenceScreen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "title"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 72
    .local v0, pref:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p2}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    return-void
.end method

.method protected initializeRingtonePreference(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/preference/GmailRingtonePreference;

    .line 79
    .local v0, pref:Lcom/google/android/gm/preference/GmailRingtonePreference;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p2}, Lcom/google/android/gm/preference/GmailRingtonePreference;->setRingtone(Landroid/net/Uri;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->getRingtoneSummary(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/preference/GmailRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method
