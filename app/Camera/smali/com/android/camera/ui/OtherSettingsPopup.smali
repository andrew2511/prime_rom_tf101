.class public Lcom/android/camera/ui/OtherSettingsPopup;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "OtherSettingsPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/camera/ui/InLineSettingPicker$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/OtherSettingsPopup$OtherSettingsAdapter;,
        Lcom/android/camera/ui/OtherSettingsPopup$Listener;
    }
.end annotation


# static fields
.field private static final OTHER_SETTING_KEYS:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_camera_recordlocation_key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_camera_focusmode_key"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pref_camera_exposure_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pref_camera_picturesize_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pref_camera_jpegquality_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/ui/OtherSettingsPopup;->OTHER_SETTING_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    .line 109
    iput-object p1, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mContext:Landroid/content/Context;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/OtherSettingsPopup;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/PreferenceGroup;)V
    .locals 11
    .parameter "group"

    .prologue
    const/4 v10, 0x3

    .line 113
    iput-object p1, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 115
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    sget-object v1, Lcom/android/camera/ui/OtherSettingsPopup;->OTHER_SETTING_KEYS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v7, v1, :cond_1

    .line 116
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lcom/android/camera/ui/OtherSettingsPopup;->OTHER_SETTING_KEYS:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {p1, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v9

    .line 118
    .local v9, pref:Lcom/android/camera/ListPreference;
    if-eqz v9, :cond_0

    .line 119
    const-string v1, "key"

    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "text"

    invoke-virtual {v9}, Lcom/android/camera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "value"

    invoke-virtual {v9}, Lcom/android/camera/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 127
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9           #pref:Lcom/android/camera/ListPreference;
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 128
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "reset"

    iget-object v2, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0070

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v0, Lcom/android/camera/ui/OtherSettingsPopup$OtherSettingsAdapter;

    iget-object v2, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    const v4, 0x7f040005

    new-array v5, v10, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "text"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string v6, "value"

    aput-object v6, v5, v1

    const/4 v1, 0x2

    const-string v6, "reset"

    aput-object v6, v5, v1

    new-array v6, v10, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ui/OtherSettingsPopup$OtherSettingsAdapter;-><init>(Lcom/android/camera/ui/OtherSettingsPopup;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 136
    .local v0, mListItemAdapter:Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    iget-object v1, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 138
    iget-object p0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    .end local p0
    check-cast p0, Landroid/widget/ListView;

    const v1, 0x106000d

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 139
    return-void

    .line 131
    nop

    :array_0
    .array-data 0x4
        0x9t 0x0t 0xat 0x7ft
        0x19t 0x0t 0xat 0x7ft
        0x1bt 0x0t 0xat 0x7ft
    .end array-data
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/OtherSettingsPopup$Listener;->onRestorePreferencesClicked()V

    .line 166
    :cond_0
    return-void
.end method

.method public onSettingChanged()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/OtherSettingsPopup$Listener;->onOtherSettingChanged()V

    .line 145
    :cond_0
    return-void
.end method

.method public overrideSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 149
    iget-object v4, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 150
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 151
    iget-object v4, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "key"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ListPreference;

    .line 152
    .local v3, pref:Lcom/android/camera/ListPreference;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 153
    iget-object v4, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/InLineSettingPicker;

    .line 155
    .local v2, picker:Lcom/android/camera/ui/InLineSettingPicker;
    invoke-virtual {v2, p2}, Lcom/android/camera/ui/InLineSettingPicker;->overrideSettings(Ljava/lang/String;)V

    .line 150
    .end local v2           #picker:Lcom/android/camera/ui/InLineSettingPicker;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v3           #pref:Lcom/android/camera/ListPreference;
    :cond_1
    return-void
.end method

.method public reloadPreference()V
    .locals 6

    .prologue
    .line 169
    iget-object v4, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 170
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 171
    iget-object v4, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "key"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ListPreference;

    .line 172
    .local v3, pref:Lcom/android/camera/ListPreference;
    if-eqz v3, :cond_0

    .line 173
    iget-object v4, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/InLineSettingPicker;

    .line 175
    .local v2, picker:Lcom/android/camera/ui/InLineSettingPicker;
    invoke-virtual {v2}, Lcom/android/camera/ui/InLineSettingPicker;->reloadPreference()V

    .line 170
    .end local v2           #picker:Lcom/android/camera/ui/InLineSettingPicker;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v3           #pref:Lcom/android/camera/ListPreference;
    :cond_1
    return-void
.end method

.method public setOtherSettingChangedListener(Lcom/android/camera/ui/OtherSettingsPopup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;

    .line 105
    return-void
.end method
