.class public final Lcom/google/android/gm/preference/GeneralPrefsFragment;
.super Lcom/google/android/gm/preference/GmailPreferenceFragment;
.source "GeneralPrefsFragment.java"


# instance fields
.field private mHumanReadableModes:[Ljava/lang/String;

.field private mModes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/gm/preference/GmailPreferenceFragment;-><init>()V

    return-void
.end method

.method private convertAutoAdvanceModeToHumanReadable(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->convertAutoAdvanceModeToHumanReadable(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initAutoAdvanceModes(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 175
    .local v0, resources:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/google/android/gm/preference/GeneralPrefsFragment;->mHumanReadableModes:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 181
    :goto_0
    return-void

    .line 178
    :cond_0
    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/preference/GeneralPrefsFragment;->mHumanReadableModes:[Ljava/lang/String;

    .line 179
    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/preference/GeneralPrefsFragment;->mModes:[Ljava/lang/String;

    goto :goto_0
.end method

.method private initializeConfirmActions(Lcom/google/android/gm/Persistence;Landroid/app/Activity;)V
    .locals 3
    .parameter "persistence"
    .parameter "activity"

    .prologue
    .line 201
    invoke-virtual {p1, p2}, Lcom/google/android/gm/Persistence;->getConfirmActions(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, confirmActions:Ljava/lang/String;
    const-string v1, "confirm-actions-delete"

    const-string v2, "delete"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->initializeCheckBox(Ljava/lang/String;Z)V

    .line 204
    const-string v1, "confirm-actions-archive"

    const-string v2, "archive"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->initializeCheckBox(Ljava/lang/String;Z)V

    .line 205
    const-string v1, "confirm-actions-send"

    const-string v2, "send"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->initializeCheckBox(Ljava/lang/String;Z)V

    .line 206
    return-void
.end method

.method private updateConfirmActions(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 210
    .local v0, activity:Landroid/app/Activity;
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v5

    .line 211
    .local v5, persistence:Lcom/google/android/gm/Persistence;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Lcom/google/android/gm/Persistence;->getConfirmActions(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 214
    .local v1, currentConfirmActions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 215
    const/4 v2, 0x0

    .line 217
    .local v2, hasAction:Z
    const/4 v3, 0x0

    .end local p0
    .local v3, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 218
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 219
    const/4 v2, 0x1

    .line 225
    :cond_0
    if-nez v2, :cond_1

    .line 226
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v2           #hasAction:Z
    :cond_1
    :goto_1
    const-string v4, ""

    .line 244
    .local v4, persistConfirmActions:Ljava/lang/String;
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_8

    .line 245
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 246
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v3, v6, :cond_2

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 244
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 221
    .end local v4           #persistConfirmActions:Ljava/lang/String;
    .restart local v2       #hasAction:Z
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v6, "none"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 222
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 217
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 232
    .end local v2           #hasAction:Z
    .end local v3           #i:I
    .restart local p0
    :cond_5
    const/4 v3, 0x0

    .end local p0
    .restart local v3       #i:I
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 233
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 234
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 238
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 239
    const-string v6, "none"

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 232
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 250
    .restart local v4       #persistConfirmActions:Ljava/lang/String;
    :cond_8
    invoke-virtual {v5, v0, v4}, Lcom/google/android/gm/Persistence;->setConfirmActions(Landroid/content/Context;Ljava/lang/String;)V

    .line 251
    return-void
.end method


# virtual methods
.method protected convertAutoAdvanceModeToHumanReadable(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "activity"
    .parameter "mode"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->initAutoAdvanceModes(Landroid/app/Activity;)V

    .line 191
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/gm/preference/GeneralPrefsFragment;->mModes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/google/android/gm/preference/GeneralPrefsFragment;->mModes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/google/android/gm/preference/GeneralPrefsFragment;->mHumanReadableModes:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 196
    :goto_1
    return-object v1

    .line 191
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v1, p2

    .line 196
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->addPreferencesFromResource(I)V

    .line 67
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_0

    .line 74
    const/4 v6, 0x0

    .line 102
    .end local p2
    :goto_0
    return v6

    .line 77
    .restart local p2
    :cond_0
    const/4 v4, 0x1

    .line 78
    .local v4, result:Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 79
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v3

    .line 80
    .local v3, persistence:Lcom/google/android/gm/Persistence;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, key:Ljava/lang/String;
    const-string v6, "confirm-actions-delete"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 83
    const-string v6, "delete"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-direct {p0, v6, p2}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->updateConfirmActions(Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_1
    move v6, v4

    .line 102
    goto :goto_0

    .line 84
    .restart local p2
    :cond_1
    const-string v6, "confirm-actions-archive"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 85
    const-string v6, "archive"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-direct {p0, v6, p2}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->updateConfirmActions(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 86
    .restart local p2
    :cond_2
    const-string v6, "confirm-actions-send"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 87
    const-string v6, "send"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-direct {p0, v6, p2}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->updateConfirmActions(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 88
    .restart local p2
    :cond_3
    const-string v6, "auto-advance"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 89
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, mode:Ljava/lang/String;
    invoke-virtual {v3, v0, v2}, Lcom/google/android/gm/Persistence;->setAutoAdvanceMode(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    const-string v6, "auto-advance"

    invoke-direct {p0, v2}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->convertAutoAdvanceModeToHumanReadable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v2, v7}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->initializeListAndSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 93
    .end local v2           #mode:Ljava/lang/String;
    :cond_4
    const-string v6, "message-text"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 94
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, size:Ljava/lang/String;
    invoke-virtual {v3, v0, v5}, Lcom/google/android/gm/Persistence;->setMessageTextSize(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    const-string v6, "message-text"

    invoke-virtual {p0, v5}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->getHumanReadableTextSizeSummary(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0, v6, v5, v7}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->initializeListAndSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 99
    .end local v5           #size:Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v8, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_0

    move v5, v8

    .line 145
    :goto_0
    return v5

    .line 113
    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, key:Ljava/lang/String;
    if-nez v1, :cond_1

    move v5, v8

    .line 115
    goto :goto_0

    .line 118
    :cond_1
    const/4 v3, 0x1

    .line 120
    .local v3, result:Z
    const-string v5, "clear-search-history"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/google/android/gm/GmailApplication;

    invoke-virtual {v5}, Lcom/google/android/gm/GmailApplication;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v4

    .line 123
    .local v4, suggestions:Landroid/provider/SearchRecentSuggestions;
    if-eqz v4, :cond_2

    .line 125
    new-instance v5, Lcom/google/android/gm/preference/GeneralPrefsFragment$1;

    invoke-direct {v5, p0, v4}, Lcom/google/android/gm/preference/GeneralPrefsFragment$1;-><init>(Lcom/google/android/gm/preference/GeneralPrefsFragment;Landroid/provider/SearchRecentSuggestions;)V

    new-array v6, v8, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/google/android/gm/preference/GeneralPrefsFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0d015b

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .end local v4           #suggestions:Landroid/provider/SearchRecentSuggestions;
    :goto_1
    move v5, v3

    .line 145
    goto :goto_0

    .line 135
    :cond_3
    const-string v5, "clear-display-images-whitelist"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 136
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v2

    .line 137
    .local v2, persistence:Lcom/google/android/gm/Persistence;
    invoke-virtual {p2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 138
    .local v0, context:Landroid/content/Context;
    const/4 v5, 0x0

    const-string v6, "display_images"

    const-string v7, ""

    invoke-virtual {v2, v0, v5, v6, v7}, Lcom/google/android/gm/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0d015c

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 142
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #persistence:Lcom/google/android/gm/Persistence;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 150
    invoke-super {p0}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->onResume()V

    .line 151
    invoke-virtual {p0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 156
    .local v0, activity:Landroid/app/Activity;
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v1

    .line 157
    .local v1, persistence:Lcom/google/android/gm/Persistence;
    invoke-direct {p0, v1, v0}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->initializeConfirmActions(Lcom/google/android/gm/Persistence;Landroid/app/Activity;)V

    .line 158
    const-string v2, "auto-advance"

    invoke-virtual {v1, v0}, Lcom/google/android/gm/Persistence;->getAutoAdvanceMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/google/android/gm/Persistence;->getAutoAdvanceMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->convertAutoAdvanceModeToHumanReadable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->initializeListAndSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 161
    const-string v2, "message-text"

    invoke-virtual {v1, v0}, Lcom/google/android/gm/Persistence;->getMessageTextSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/google/android/gm/Persistence;->getMessageTextSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->getHumanReadableTextSizeSummary(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->initializeListAndSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 166
    const-string v2, "auto-advance"

    invoke-virtual {p0, v2}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    const-string v2, "message-text"

    invoke-virtual {p0, v2}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 168
    const-string v2, "confirm-actions-delete"

    invoke-virtual {p0, v2}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    const-string v2, "confirm-actions-archive"

    invoke-virtual {p0, v2}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 170
    const-string v2, "confirm-actions-send"

    invoke-virtual {p0, v2}, Lcom/google/android/gm/preference/GeneralPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    return-void
.end method
