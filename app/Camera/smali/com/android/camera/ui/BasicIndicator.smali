.class Lcom/android/camera/ui/BasicIndicator;
.super Lcom/android/camera/ui/AbstractIndicator;
.source "BasicIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/BasicIndicator$MyListener;
    }
.end annotation


# instance fields
.field private final mFontSize:F

.field private final mIcon:[Lcom/android/camera/ui/ResourceTexture;

.field protected mIndex:I

.field private mIsIconListMode:Z

.field private mModel:Lcom/android/camera/ui/PreferenceAdapter;

.field private mOverride:Ljava/lang/String;

.field private mPopupContent:Lcom/android/camera/ui/GLListView;

.field private final mPreference:Lcom/android/camera/ListPreference;

.field private mTitle:Lcom/android/camera/ui/StringTexture;

.field private mTitleIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/ListPreference;)V
    .locals 1
    .parameter "context"
    .parameter "preference"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AbstractIndicator;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcom/android/camera/ui/BasicIndicator;->mPreference:Lcom/android/camera/ListPreference;

    .line 46
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BasicIndicator;->mIndex:I

    .line 47
    instance-of v0, p2, Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/BasicIndicator;->mIsIconListMode:Z

    .line 49
    check-cast p2, Lcom/android/camera/IconListPreference;

    .end local p2
    invoke-virtual {p2}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/android/camera/ui/ResourceTexture;

    iput-object v0, p0, Lcom/android/camera/ui/BasicIndicator;->mIcon:[Lcom/android/camera/ui/ResourceTexture;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/BasicIndicator;->mFontSize:F

    .line 57
    :goto_0
    return-void

    .line 52
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/BasicIndicator;->mIsIconListMode:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/BasicIndicator;->mIcon:[Lcom/android/camera/ui/ResourceTexture;

    .line 54
    const/high16 v0, 0x4190

    invoke-static {p1, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BasicIndicator;->mFontSize:F

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/BasicIndicator;->mTitleIndex:I

    goto :goto_0
.end method

.method private updateContent(Ljava/lang/String;Z)V
    .locals 3
    .parameter "override"
    .parameter "reloadValue"

    .prologue
    .line 61
    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/BasicIndicator;->mOverride:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/android/camera/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/BasicIndicator;->mPreference:Lcom/android/camera/ListPreference;

    .line 63
    .local v1, pref:Lcom/android/camera/ListPreference;
    iput-object p1, p0, Lcom/android/camera/ui/BasicIndicator;->mOverride:Ljava/lang/String;

    .line 64
    if-nez p1, :cond_2

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 66
    .local v0, index:I
    iget v2, p0, Lcom/android/camera/ui/BasicIndicator;->mIndex:I

    if-eq v2, v0, :cond_0

    .line 67
    iput v0, p0, Lcom/android/camera/ui/BasicIndicator;->mIndex:I

    .line 68
    invoke-virtual {p0}, Lcom/android/camera/ui/BasicIndicator;->invalidate()V

    goto :goto_0

    .end local v0           #index:I
    :cond_2
    move-object v2, p1

    .line 64
    goto :goto_1
.end method


# virtual methods
.method protected getIcon()Lcom/android/camera/ui/BitmapTexture;
    .locals 6

    .prologue
    .line 124
    iget-boolean v3, p0, Lcom/android/camera/ui/BasicIndicator;->mIsIconListMode:Z

    if-eqz v3, :cond_1

    .line 125
    iget v1, p0, Lcom/android/camera/ui/BasicIndicator;->mIndex:I

    .line 126
    .local v1, index:I
    iget-object v3, p0, Lcom/android/camera/ui/BasicIndicator;->mIcon:[Lcom/android/camera/ui/ResourceTexture;

    aget-object v3, v3, v1

    if-nez v3, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/android/camera/ui/BasicIndicator;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/GLRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 128
    .local v0, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/android/camera/ui/BasicIndicator;->mIcon:[Lcom/android/camera/ui/ResourceTexture;

    new-instance v5, Lcom/android/camera/ui/ResourceTexture;

    iget-object v3, p0, Lcom/android/camera/ui/BasicIndicator;->mPreference:Lcom/android/camera/ListPreference;

    check-cast v3, Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v3

    aget v3, v3, v1

    invoke-direct {v5, v0, v3}, Lcom/android/camera/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    aput-object v5, v4, v1

    .line 131
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/BasicIndicator;->mIcon:[Lcom/android/camera/ui/ResourceTexture;

    aget-object v3, v3, v1

    .line 139
    .end local v1           #index:I
    :goto_0
    return-object v3

    .line 133
    :cond_1
    iget v3, p0, Lcom/android/camera/ui/BasicIndicator;->mTitleIndex:I

    iget v4, p0, Lcom/android/camera/ui/BasicIndicator;->mIndex:I

    if-eq v3, v4, :cond_3

    .line 134
    iget v3, p0, Lcom/android/camera/ui/BasicIndicator;->mIndex:I

    iput v3, p0, Lcom/android/camera/ui/BasicIndicator;->mTitleIndex:I

    .line 135
    iget-object v3, p0, Lcom/android/camera/ui/BasicIndicator;->mTitle:Lcom/android/camera/ui/StringTexture;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/ui/BasicIndicator;->mTitle:Lcom/android/camera/ui/StringTexture;

    invoke-virtual {v3}, Lcom/android/camera/ui/StringTexture;->deleteFromGL()V

    .line 136
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/BasicIndicator;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, value:Ljava/lang/String;
    iget v3, p0, Lcom/android/camera/ui/BasicIndicator;->mFontSize:F

    const v4, -0x57000001

    invoke-static {v2, v3, v4}, Lcom/android/camera/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/camera/ui/StringTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/BasicIndicator;->mTitle:Lcom/android/camera/ui/StringTexture;

    .line 139
    .end local v2           #value:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/BasicIndicator;->mTitle:Lcom/android/camera/ui/StringTexture;

    goto :goto_0
.end method

.method public getPopupContent()Lcom/android/camera/ui/GLView;
    .locals 4

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/camera/ui/BasicIndicator;->mPopupContent:Lcom/android/camera/ui/GLListView;

    if-nez v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/camera/ui/BasicIndicator;->getGLRootView()Lcom/android/camera/ui/GLRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/android/camera/ui/GLListView;

    invoke-direct {v1, v0}, Lcom/android/camera/ui/GLListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/BasicIndicator;->mPopupContent:Lcom/android/camera/ui/GLListView;

    .line 90
    iget-object v1, p0, Lcom/android/camera/ui/BasicIndicator;->mPopupContent:Lcom/android/camera/ui/GLListView;

    new-instance v2, Lcom/android/camera/ui/ColorTexture;

    const v3, -0xe7e7e8

    invoke-direct {v2, v3}, Lcom/android/camera/ui/ColorTexture;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/GLListView;->setHighLight(Lcom/android/camera/ui/Texture;)V

    .line 92
    iget-object v1, p0, Lcom/android/camera/ui/BasicIndicator;->mPopupContent:Lcom/android/camera/ui/GLListView;

    new-instance v2, Lcom/android/camera/ui/NinePatchTexture;

    const v3, 0x7f020091

    invoke-direct {v2, v0, v3}, Lcom/android/camera/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/GLListView;->setScroller(Lcom/android/camera/ui/NinePatchTexture;)V

    .line 94
    new-instance v1, Lcom/android/camera/ui/PreferenceAdapter;

    iget-object v2, p0, Lcom/android/camera/ui/BasicIndicator;->mPreference:Lcom/android/camera/ListPreference;

    invoke-direct {v1, v0, v2}, Lcom/android/camera/ui/PreferenceAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/ListPreference;)V

    iput-object v1, p0, Lcom/android/camera/ui/BasicIndicator;->mModel:Lcom/android/camera/ui/PreferenceAdapter;

    .line 95
    iget-object v1, p0, Lcom/android/camera/ui/BasicIndicator;->mPopupContent:Lcom/android/camera/ui/GLListView;

    new-instance v2, Lcom/android/camera/ui/BasicIndicator$MyListener;

    iget-object v3, p0, Lcom/android/camera/ui/BasicIndicator;->mModel:Lcom/android/camera/ui/PreferenceAdapter;

    invoke-direct {v2, p0, v3}, Lcom/android/camera/ui/BasicIndicator$MyListener;-><init>(Lcom/android/camera/ui/BasicIndicator;Lcom/android/camera/ui/PreferenceAdapter;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/GLListView;->setOnItemSelectedListener(Lcom/android/camera/ui/GLListView$OnItemSelectedListener;)V

    .line 96
    iget-object v1, p0, Lcom/android/camera/ui/BasicIndicator;->mPopupContent:Lcom/android/camera/ui/GLListView;

    iget-object v2, p0, Lcom/android/camera/ui/BasicIndicator;->mModel:Lcom/android/camera/ui/PreferenceAdapter;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/GLListView;->setDataModel(Lcom/android/camera/ui/GLListView$Model;)V

    .line 98
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/BasicIndicator;->mModel:Lcom/android/camera/ui/PreferenceAdapter;

    iget-object v2, p0, Lcom/android/camera/ui/BasicIndicator;->mOverride:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PreferenceAdapter;->overrideSettings(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/android/camera/ui/BasicIndicator;->mPopupContent:Lcom/android/camera/ui/GLListView;

    return-object v1
.end method

.method protected onPreferenceChanged(I)V
    .locals 1
    .parameter "newIndex"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/camera/ui/BasicIndicator;->mIndex:I

    if-ne p1, v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/BasicIndicator;->mIndex:I

    .line 105
    invoke-virtual {p0}, Lcom/android/camera/ui/BasicIndicator;->invalidate()V

    goto :goto_0
.end method

.method public overrideSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "settings"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/BasicIndicator;->mPreference:Lcom/android/camera/ListPreference;

    .line 75
    .local v0, pref:Lcom/android/camera/ListPreference;
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/camera/ui/BasicIndicator;->updateContent(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public reloadPreferences()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/BasicIndicator;->mModel:Lcom/android/camera/ui/PreferenceAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/BasicIndicator;->mModel:Lcom/android/camera/ui/PreferenceAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreferenceAdapter;->reload()V

    .line 82
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/BasicIndicator;->updateContent(Ljava/lang/String;Z)V

    .line 83
    return-void
.end method
