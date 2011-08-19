.class public Lcom/google/android/gm/LabelsSynchronizationSettings;
.super Landroid/preference/PreferenceActivity;
.source "LabelsSynchronizationSettings.java"

# interfaces
.implements Lcom/google/android/gm/MenuHandler$HelpCallback;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mGmail:Lcom/google/android/gm/provider/Gmail;

.field private mIncludedLabels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPartialLabels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

.field private mSyncAllString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private buildLabelPreference(Lcom/google/android/gm/provider/Label;)Landroid/preference/Preference;
    .locals 7
    .parameter "label"

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, canonicalName:Ljava/lang/String;
    const-string v0, "^^out"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string v4, ""

    .line 141
    .local v4, syncSet:Ljava/lang/String;
    const v5, 0x7f0e00c1

    .line 154
    .local v5, syncSetting:I
    :goto_0
    new-instance v0, Lcom/google/android/gm/LabelPreference;

    iget-object v1, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    iget-wide v1, v1, Lcom/google/android/gm/provider/Gmail$Settings;->conversationAgeDays:J

    long-to-int v2, v1

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/LabelPreference;-><init>(Lcom/google/android/gm/LabelsSynchronizationSettings;ILcom/google/android/gm/provider/Label;Ljava/lang/CharSequence;I)V

    return-object v0

    .line 142
    .end local v4           #syncSet:Ljava/lang/String;
    .end local v5           #syncSetting:I
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mIncludedLabels:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v4, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mSyncAllString:Ljava/lang/String;

    .line 144
    .restart local v4       #syncSet:Ljava/lang/String;
    const v5, 0x7f0e00c1

    .restart local v5       #syncSetting:I
    goto :goto_0

    .line 145
    .end local v4           #syncSet:Ljava/lang/String;
    .end local v5           #syncSetting:I
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mPartialLabels:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    const v0, 0x7f0f0019

    iget-object v1, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    iget-wide v1, v1, Lcom/google/android/gm/provider/Gmail$Settings;->conversationAgeDays:J

    long-to-int v1, v1

    invoke-static {p0, v0, v1}, Lcom/google/android/gm/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    .line 148
    .restart local v4       #syncSet:Ljava/lang/String;
    const v5, 0x7f0e00c2

    .restart local v5       #syncSetting:I
    goto :goto_0

    .line 150
    .end local v4           #syncSet:Ljava/lang/String;
    .end local v5           #syncSetting:I
    :cond_2
    const-string v4, ""

    .line 151
    .restart local v4       #syncSet:Ljava/lang/String;
    const v5, 0x7f0e00c3

    .restart local v5       #syncSetting:I
    goto :goto_0
.end method

.method private rebuildList()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 102
    const-string v6, "number-picker"

    invoke-virtual {p0, v6}, Lcom/google/android/gm/LabelsSynchronizationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 103
    .local v5, parentPicker:Landroid/preference/PreferenceGroup;
    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 104
    new-instance v6, Lcom/google/android/gm/IntegerPickerPreference;

    iget-object v7, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    iget-wide v7, v7, Lcom/google/android/gm/provider/Gmail$Settings;->conversationAgeDays:J

    long-to-int v7, v7

    invoke-direct {v6, p0, v9, v7}, Lcom/google/android/gm/IntegerPickerPreference;-><init>(Lcom/google/android/gm/LabelsSynchronizationSettings;Landroid/util/AttributeSet;I)V

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 108
    const-string v6, "label-list"

    invoke-virtual {p0, v6}, Lcom/google/android/gm/LabelsSynchronizationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 109
    .local v4, parent:Landroid/preference/PreferenceGroup;
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 110
    const v6, 0x7f0d00fe

    invoke-virtual {p0, v6}, Lcom/google/android/gm/LabelsSynchronizationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mSyncAllString:Ljava/lang/String;

    .line 112
    iget-object v6, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    iget-object v6, v6, Lcom/google/android/gm/provider/Gmail$Settings;->labelsIncluded:[Ljava/lang/String;

    invoke-static {v6}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mIncludedLabels:Ljava/util/Set;

    .line 113
    iget-object v6, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    iget-object v6, v6, Lcom/google/android/gm/provider/Gmail$Settings;->labelsPartial:[Ljava/lang/String;

    invoke-static {v6}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mPartialLabels:Ljava/util/Set;

    .line 115
    iget-object v6, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mAccount:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p0, v6, v9, v7}, Lcom/google/android/gm/provider/LabelManager;->getLabelList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)Lcom/google/android/gm/provider/LabelList;

    move-result-object v2

    .line 118
    .local v2, labels:Lcom/google/android/gm/provider/LabelList;
    invoke-virtual {v2}, Lcom/google/android/gm/provider/LabelList;->size()I

    move-result v3

    .line 119
    .local v3, numLabels:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 120
    invoke-virtual {v2, v0}, Lcom/google/android/gm/provider/LabelList;->get(I)Lcom/google/android/gm/provider/Label;

    move-result-object v1

    .line 121
    .local v1, label:Lcom/google/android/gm/provider/Label;
    invoke-direct {p0, v1}, Lcom/google/android/gm/LabelsSynchronizationSettings;->shouldShowLabel(Lcom/google/android/gm/provider/Label;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 122
    invoke-direct {p0, v1}, Lcom/google/android/gm/LabelsSynchronizationSettings;->buildLabelPreference(Lcom/google/android/gm/provider/Label;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 119
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    :cond_1
    return-void
.end method

.method private shouldShowLabel(Lcom/google/android/gm/provider/Label;)Z
    .locals 1
    .parameter "label"

    .prologue
    .line 128
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getForceSyncAll()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getForceSyncNone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getHelpContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    const-string v0, "gm_lsa"

    return-object v0
.end method

.method public onConversationAgeDaysChanged(I)V
    .locals 3
    .parameter "conversationAgeDays"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    int-to-long v1, p1

    iput-wide v1, v0, Lcom/google/android/gm/provider/Gmail$Settings;->conversationAgeDays:J

    .line 163
    invoke-direct {p0}, Lcom/google/android/gm/LabelsSynchronizationSettings;->rebuildList()V

    .line 164
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x4

    .line 53
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-static {p0}, Lcom/google/android/gm/Utils;->useTabletUI(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    invoke-virtual {p0, v4}, Lcom/google/android/gm/LabelsSynchronizationSettings;->requestWindowFeature(I)Z

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gm/LabelsSynchronizationSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f040013

    invoke-virtual {v1, v4, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 59
    const v1, 0x7f0e004a

    invoke-virtual {p0, v1}, Lcom/google/android/gm/LabelsSynchronizationSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    const v1, 0x7f0d00c9

    invoke-virtual {p0, v1}, Lcom/google/android/gm/LabelsSynchronizationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gm/Persistence;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/google/android/gm/Utils;->setTitleWithAccount(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 65
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/google/android/gm/WaitActivity;->waitIfNeededAndGetAccount(Landroid/app/Activity;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mAccount:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mAccount:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 80
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/LabelsSynchronizationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mGmail:Lcom/google/android/gm/provider/Gmail;

    .line 71
    iget-object v1, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v2, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gm/provider/Gmail;->getSettings(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    .line 72
    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Lcom/google/android/gm/LabelsSynchronizationSettings;->addPreferencesFromResource(I)V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gm/LabelsSynchronizationSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 75
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 76
    iget-object v1, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 79
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gm/LabelsSynchronizationSettings;->rebuildList()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/android/gm/LabelsSynchronizationSettings;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 85
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f110009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 86
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 97
    invoke-static {p1, p0, p0}, Lcom/google/android/gm/ApplicationMenuHandler;->handleApplicationMenu(Landroid/view/MenuItem;Landroid/content/Context;Lcom/google/android/gm/MenuHandler$HelpCallback;)Z

    move-result v0

    :goto_0
    return v0

    .line 94
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gm/LabelsSynchronizationSettings;->finish()V

    .line 95
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 204
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 205
    iget-object v0, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v1, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/Gmail;->setSettings(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;)V

    .line 206
    return-void
.end method

.method onSyncSettingChanged(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 8
    .parameter "systemLabel"
    .parameter "newValue"

    .prologue
    .line 170
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    .line 171
    .local v4, labelsPartial:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 174
    .local v3, labelsIncluded:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    iget-object v6, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    iget-object v0, v6, Lcom/google/android/gm/provider/Gmail$Settings;->labelsIncluded:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v5, :cond_2

    aget-object v2, v0, v1

    .line 175
    .local v2, label:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "all"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 177
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v2           #label:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    iget-object v0, v6, Lcom/google/android/gm/provider/Gmail$Settings;->labelsPartial:[Ljava/lang/String;

    array-length v5, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_5

    aget-object v2, v0, v1

    .line 182
    .restart local v2       #label:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "recent"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 184
    :cond_3
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 190
    .end local v2           #label:Ljava/lang/String;
    :cond_5
    const-string v6, "recent"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 191
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, v7, Lcom/google/android/gm/provider/Gmail$Settings;->labelsIncluded:[Ljava/lang/String;

    .line 197
    iget-object v7, p0, Lcom/google/android/gm/LabelsSynchronizationSettings;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, v7, Lcom/google/android/gm/provider/Gmail$Settings;->labelsPartial:[Ljava/lang/String;

    .line 199
    invoke-direct {p0}, Lcom/google/android/gm/LabelsSynchronizationSettings;->rebuildList()V

    .line 200
    return-void

    .line 192
    :cond_7
    const-string v6, "all"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 193
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
