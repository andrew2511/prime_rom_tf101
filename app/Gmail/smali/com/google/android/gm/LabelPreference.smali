.class public Lcom/google/android/gm/LabelPreference;
.super Landroid/preference/ListPreference;
.source "LabelPreference.java"


# instance fields
.field private final mCaller:Lcom/google/android/gm/LabelsSynchronizationSettings;

.field private final mConversationAgeDays:I

.field private final mLabel:Lcom/google/android/gm/provider/Label;

.field private final mSyncSet:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/LabelsSynchronizationSettings;ILcom/google/android/gm/provider/Label;Ljava/lang/CharSequence;I)V
    .locals 10
    .parameter "caller"
    .parameter "conversationAgeDays"
    .parameter "label"
    .parameter "syncSet"
    .parameter "syncSetting"

    .prologue
    const v9, 0x7f0d00fe

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 35
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object p1, p0, Lcom/google/android/gm/LabelPreference;->mCaller:Lcom/google/android/gm/LabelsSynchronizationSettings;

    .line 37
    iput p2, p0, Lcom/google/android/gm/LabelPreference;->mConversationAgeDays:I

    .line 38
    iput-object p3, p0, Lcom/google/android/gm/LabelPreference;->mLabel:Lcom/google/android/gm/provider/Label;

    .line 39
    iput-object p4, p0, Lcom/google/android/gm/LabelPreference;->mSyncSet:Ljava/lang/CharSequence;

    .line 40
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, humanLabelName:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v1, p0, Lcom/google/android/gm/LabelPreference;->mSyncSet:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/google/android/gm/LabelPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Label;->getForceSyncAllOrPartial()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    new-array v1, v7, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/google/android/gm/LabelPreference;->mCaller:Lcom/google/android/gm/LabelsSynchronizationSettings;

    const v3, 0x7f0f0019

    iget v4, p0, Lcom/google/android/gm/LabelPreference;->mConversationAgeDays:I

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1, v9}, Lcom/google/android/gm/LabelsSynchronizationSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lcom/google/android/gm/LabelPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 58
    new-array v1, v7, [Ljava/lang/CharSequence;

    const-string v2, "recent"

    aput-object v2, v1, v5

    const-string v2, "all"

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lcom/google/android/gm/LabelPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    packed-switch p5, :pswitch_data_0

    .line 83
    :goto_1
    return-void

    .line 62
    :cond_0
    new-array v1, v8, [Ljava/lang/CharSequence;

    const v2, 0x7f0d0100

    invoke-virtual {p1, v2}, Lcom/google/android/gm/LabelsSynchronizationSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/google/android/gm/LabelPreference;->mCaller:Lcom/google/android/gm/LabelsSynchronizationSettings;

    const v3, 0x7f0f0019

    iget v4, p0, Lcom/google/android/gm/LabelPreference;->mConversationAgeDays:I

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p1, v9}, Lcom/google/android/gm/LabelsSynchronizationSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p0, v1}, Lcom/google/android/gm/LabelPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 67
    new-array v1, v8, [Ljava/lang/CharSequence;

    const-string v2, "none"

    aput-object v2, v1, v5

    const-string v2, "recent"

    aput-object v2, v1, v6

    const-string v2, "all"

    aput-object v2, v1, v7

    invoke-virtual {p0, v1}, Lcom/google/android/gm/LabelPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 74
    :pswitch_0
    const-string v1, "none"

    invoke-virtual {p0, v1}, Lcom/google/android/gm/LabelPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :pswitch_1
    const-string v1, "recent"

    invoke-virtual {p0, v1}, Lcom/google/android/gm/LabelPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :pswitch_2
    const-string v1, "all"

    invoke-virtual {p0, v1}, Lcom/google/android/gm/LabelPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :pswitch_data_0
    .packed-switch 0x7f0e00c1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 90
    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/android/gm/LabelPreference;->mCaller:Lcom/google/android/gm/LabelsSynchronizationSettings;

    iget-object v1, p0, Lcom/google/android/gm/LabelPreference;->mLabel:Lcom/google/android/gm/provider/Label;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gm/LabelPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/LabelsSynchronizationSettings;->onSyncSettingChanged(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method
