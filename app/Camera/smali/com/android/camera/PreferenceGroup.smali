.class public Lcom/android/camera/PreferenceGroup;
.super Lcom/android/camera/CameraPreference;
.source "PreferenceGroup.java"


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/CameraPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/camera/CameraPreference;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;
    .locals 5
    .parameter "key"

    .prologue
    .line 67
    iget-object v4, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraPreference;

    .line 68
    .local v3, pref:Lcom/android/camera/CameraPreference;
    instance-of v4, v3, Lcom/android/camera/ListPreference;

    if-eqz v4, :cond_1

    .line 69
    move-object v0, v3

    check-cast v0, Lcom/android/camera/ListPreference;

    move-object v2, v0

    .line 70
    .local v2, listPref:Lcom/android/camera/ListPreference;
    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    .line 77
    .end local v2           #listPref:Lcom/android/camera/ListPreference;
    .end local v3           #pref:Lcom/android/camera/CameraPreference;
    :goto_0
    return-object v4

    .line 71
    .restart local v3       #pref:Lcom/android/camera/CameraPreference;
    :cond_1
    instance-of v4, v3, Lcom/android/camera/PreferenceGroup;

    if-eqz v4, :cond_0

    .line 72
    check-cast v3, Lcom/android/camera/PreferenceGroup;

    .end local v3           #pref:Lcom/android/camera/CameraPreference;
    invoke-virtual {v3, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 74
    .restart local v2       #listPref:Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_0

    move-object v4, v2

    goto :goto_0

    .line 77
    .end local v2           #listPref:Lcom/android/camera/ListPreference;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/android/camera/CameraPreference;
    .locals 1
    .parameter "index"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/camera/CameraPreference;

    return-object p0
.end method

.method public reloadValue()V
    .locals 3

    .prologue
    .line 54
    iget-object v2, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraPreference;

    .line 55
    .local v1, pref:Lcom/android/camera/CameraPreference;
    invoke-virtual {v1}, Lcom/android/camera/CameraPreference;->reloadValue()V

    goto :goto_0

    .line 57
    .end local v1           #pref:Lcom/android/camera/CameraPreference;
    :cond_0
    return-void
.end method

.method public removePreference(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method