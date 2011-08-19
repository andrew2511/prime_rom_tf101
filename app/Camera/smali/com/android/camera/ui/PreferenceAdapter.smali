.class Lcom/android/camera/ui/PreferenceAdapter;
.super Ljava/lang/Object;
.source "PreferenceAdapter.java"

# interfaces
.implements Lcom/android/camera/ui/GLListView$Model;
.implements Lcom/android/camera/ui/GLListView$OnItemSelectedListener;


# instance fields
.field private final mContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/GLView;",
            ">;"
        }
    .end annotation
.end field

.field private mOverride:Ljava/lang/String;

.field private final mPreference:Lcom/android/camera/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/ListPreference;)V
    .locals 1
    .parameter "context"
    .parameter "preference"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PreferenceAdapter;->mContent:Ljava/util/ArrayList;

    .line 37
    iput-object p2, p0, Lcom/android/camera/ui/PreferenceAdapter;->mPreference:Lcom/android/camera/ListPreference;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/PreferenceAdapter;->generateContent(Landroid/content/Context;Lcom/android/camera/ListPreference;)V

    .line 39
    return-void
.end method

.method private generateContent(Landroid/content/Context;Lcom/android/camera/ListPreference;)V
    .locals 12
    .parameter "context"
    .parameter "preference"

    .prologue
    .line 72
    new-instance v2, Lcom/android/camera/ui/GLOptionHeader;

    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, p1, v10}, Lcom/android/camera/ui/GLOptionHeader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    .local v2, header:Lcom/android/camera/ui/GLOptionHeader;
    iget-object v10, p0, Lcom/android/camera/ui/PreferenceAdapter;->mContent:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 76
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 77
    .local v9, values:[Ljava/lang/CharSequence;
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, value:Ljava/lang/String;
    const/4 v5, 0x0

    .line 79
    .local v5, icons:[I
    instance-of v10, p2, Lcom/android/camera/IconListPreference;

    if-eqz v10, :cond_0

    .line 80
    move-object v0, p2

    check-cast v0, Lcom/android/camera/IconListPreference;

    move-object v4, v0

    .line 81
    .local v4, iPref:Lcom/android/camera/IconListPreference;
    invoke-virtual {v4}, Lcom/android/camera/IconListPreference;->getIconIds()[I

    move-result-object v5

    .line 83
    .end local v4           #iPref:Lcom/android/camera/IconListPreference;
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    array-length v7, v1

    .local v7, n:I
    :goto_0
    if-ge v3, v7, :cond_2

    .line 84
    new-instance v6, Lcom/android/camera/ui/GLOptionItem;

    if-nez v5, :cond_1

    const/4 v10, 0x0

    :goto_1
    aget-object v11, v1, v3

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, p1, v10, v11}, Lcom/android/camera/ui/GLOptionItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 87
    .local v6, item:Lcom/android/camera/ui/GLOptionItem;
    aget-object v10, v9, v3

    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v6, v10}, Lcom/android/camera/ui/GLOptionItem;->setChecked(Z)V

    .line 88
    iget-object v10, p0, Lcom/android/camera/ui/PreferenceAdapter;->mContent:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    .end local v6           #item:Lcom/android/camera/ui/GLOptionItem;
    :cond_1
    aget v10, v5, v3

    goto :goto_1

    .line 90
    :cond_2
    return-void
.end method

.method private updateContent(Ljava/lang/String;Z)V
    .locals 8
    .parameter "settings"
    .parameter "reloadValues"

    .prologue
    const/4 v7, 0x1

    .line 50
    if-nez p2, :cond_1

    iget-object v6, p0, Lcom/android/camera/ui/PreferenceAdapter;->mOverride:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/android/camera/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 69
    :cond_0
    return-void

    .line 51
    :cond_1
    iput-object p1, p0, Lcom/android/camera/ui/PreferenceAdapter;->mOverride:Ljava/lang/String;

    .line 53
    iget-object v6, p0, Lcom/android/camera/ui/PreferenceAdapter;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v6}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 54
    .local v5, values:[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/camera/ui/PreferenceAdapter;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v6}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, value:Ljava/lang/String;
    if-nez p1, :cond_2

    .line 56
    const/4 v1, 0x1

    .local v1, i:I
    iget-object v6, p0, Lcom/android/camera/ui/PreferenceAdapter;->mContent:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 57
    iget-object v6, p0, Lcom/android/camera/ui/PreferenceAdapter;->mContent:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/GLOptionItem;

    .line 58
    .local v2, item:Lcom/android/camera/ui/GLOptionItem;
    sub-int v6, v1, v7

    aget-object v6, v5, v6

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/camera/ui/GLOptionItem;->setChecked(Z)V

    .line 59
    invoke-virtual {v2, v7}, Lcom/android/camera/ui/GLOptionItem;->setEnabled(Z)V

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v1           #i:I
    .end local v2           #item:Lcom/android/camera/ui/GLOptionItem;
    .end local v3           #n:I
    :cond_2
    const/4 v1, 0x1

    .restart local v1       #i:I
    iget-object v6, p0, Lcom/android/camera/ui/PreferenceAdapter;->mContent:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .restart local v3       #n:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 63
    iget-object v6, p0, Lcom/android/camera/ui/PreferenceAdapter;->mContent:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/GLOptionItem;

    .line 64
    .restart local v2       #item:Lcom/android/camera/ui/GLOptionItem;
    sub-int v6, v1, v7

    aget-object v6, v5, v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 65
    .local v0, checked:Z
    invoke-virtual {v2, v0}, Lcom/android/camera/ui/GLOptionItem;->setChecked(Z)V

    .line 66
    invoke-virtual {v2, v0}, Lcom/android/camera/ui/GLOptionItem;->setEnabled(Z)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getView(I)Lcom/android/camera/ui/GLView;
    .locals 1
    .parameter "index"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/ui/PreferenceAdapter;->mContent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/camera/ui/GLView;

    return-object p0
.end method

.method public isSelectable(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/ui/PreferenceAdapter;->mContent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/ui/GLOptionItem;

    return v0
.end method

.method public onItemSelected(Lcom/android/camera/ui/GLView;I)V
    .locals 7
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v6, 0x1

    .line 93
    iget-object v4, p0, Lcom/android/camera/ui/PreferenceAdapter;->mOverride:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 108
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 94
    .restart local p0
    .restart local p1
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/PreferenceAdapter;->mPreference:Lcom/android/camera/ListPreference;

    .line 95
    .local v2, pref:Lcom/android/camera/ListPreference;
    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 96
    .local v3, values:[Ljava/lang/CharSequence;
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    if-ge p2, v4, :cond_0

    .line 97
    sub-int v0, p2, v6

    .line 98
    .local v0, index:I
    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 99
    .local v1, oldIndex:I
    if-eq v1, v0, :cond_0

    .line 100
    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    monitor-enter v4

    .line 101
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 102
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v4, p0, Lcom/android/camera/ui/PreferenceAdapter;->mContent:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/camera/ui/GLOptionItem;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/GLOptionItem;->setChecked(Z)V

    .line 104
    check-cast p1, Lcom/android/camera/ui/GLOptionItem;

    .end local p1
    invoke-virtual {p1, v6}, Lcom/android/camera/ui/GLOptionItem;->setChecked(Z)V

    goto :goto_0

    .line 102
    .restart local p0
    .restart local p1
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public overrideSettings(Ljava/lang/String;)V
    .locals 1
    .parameter "settings"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/PreferenceAdapter;->updateContent(Ljava/lang/String;Z)V

    .line 47
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/PreferenceAdapter;->updateContent(Ljava/lang/String;Z)V

    .line 43
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/PreferenceAdapter;->mContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
