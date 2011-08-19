.class Lcom/android/camera/ui/OtherSettingsPopup$OtherSettingsAdapter;
.super Landroid/widget/SimpleAdapter;
.source "OtherSettingsPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/OtherSettingsPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OtherSettingsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/OtherSettingsPopup;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/OtherSettingsPopup;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter
    .parameter "resource"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p3, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object p1, p0, Lcom/android/camera/ui/OtherSettingsPopup$OtherSettingsAdapter;->this$0:Lcom/android/camera/ui/OtherSettingsPopup;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 71
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 72
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 76
    if-eqz p2, :cond_0

    move-object v6, p2

    .line 99
    :goto_0
    return-object v6

    .line 78
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/InLineSettingPicker;

    .line 80
    .local v5, view:Lcom/android/camera/ui/InLineSettingPicker;
    const v6, 0x7f0a001b

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/InLineSettingPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 82
    .local v3, restoreSettings:Landroid/widget/TextView;
    const v6, 0x7f0a0017

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/InLineSettingPicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 87
    .local v4, settingItem:Landroid/view/View;
    iget-object v6, p0, Lcom/android/camera/ui/OtherSettingsPopup$OtherSettingsAdapter;->this$0:Lcom/android/camera/ui/OtherSettingsPopup;

    invoke-static {v6}, Lcom/android/camera/ui/OtherSettingsPopup;->access$000(Lcom/android/camera/ui/OtherSettingsPopup;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v8

    if-ne p1, v6, :cond_2

    move v0, v8

    .line 88
    .local v0, isRestoreItem:Z
    :goto_1
    if-eqz v0, :cond_3

    move v6, v9

    :goto_2
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 90
    if-eqz v0, :cond_4

    move v6, v7

    :goto_3
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    if-nez v0, :cond_1

    .line 94
    iget-object v6, p0, Lcom/android/camera/ui/OtherSettingsPopup$OtherSettingsAdapter;->this$0:Lcom/android/camera/ui/OtherSettingsPopup;

    invoke-static {v6}, Lcom/android/camera/ui/OtherSettingsPopup;->access$000(Lcom/android/camera/ui/OtherSettingsPopup;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 95
    .local v1, map:Ljava/util/HashMap;
    const-string v6, "key"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ListPreference;

    .line 96
    .local v2, pref:Lcom/android/camera/ListPreference;
    invoke-virtual {v5, v2}, Lcom/android/camera/ui/InLineSettingPicker;->initialize(Lcom/android/camera/ListPreference;)V

    .line 97
    iget-object v6, p0, Lcom/android/camera/ui/OtherSettingsPopup$OtherSettingsAdapter;->this$0:Lcom/android/camera/ui/OtherSettingsPopup;

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/InLineSettingPicker;->setSettingChangedListener(Lcom/android/camera/ui/InLineSettingPicker$Listener;)V

    .end local v1           #map:Ljava/util/HashMap;
    .end local v2           #pref:Lcom/android/camera/ListPreference;
    :cond_1
    move-object v6, v5

    .line 99
    goto :goto_0

    .end local v0           #isRestoreItem:Z
    :cond_2
    move v0, v7

    .line 87
    goto :goto_1

    .restart local v0       #isRestoreItem:Z
    :cond_3
    move v6, v7

    .line 88
    goto :goto_2

    :cond_4
    move v6, v9

    .line 90
    goto :goto_3
.end method
