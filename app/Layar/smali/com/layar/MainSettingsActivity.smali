.class public Lcom/layar/MainSettingsActivity;
.super Lcom/layar/TabListActivity;
.source "MainSettingsActivity.java"


# static fields
.field private static final ABOUT_TAG:Ljava/lang/String; = "About"

.field private static final ACCOUNT_TAG:Ljava/lang/String; = "Account"

.field private static final HELP_TAG:Ljava/lang/String; = "Help"

.field private static final INTRO_TAG:Ljava/lang/String; = "Intro"

.field private static final MENU_ADD_RECENT:I = 0x3e8

.field private static final MENU_ADD_TO_FAVORITE:I = 0x320

.field private static final MENU_CLEAR_CACHE:I = 0x1f4

.field private static final MENU_CLEAR_FAVORITE:I = 0x384

.field private static final MENU_PROFILE_OUTPUT:I = 0x258

.field private static final MENU_URL_CALLS_OUTPUT:I = 0x2bc

.field private static final SETTING_TAG:Ljava/lang/String; = "Settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/layar/TabListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 18
    .parameter "item"

    .prologue
    .line 80
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    .line 81
    .local v6, itemId:I
    sparse-switch v6, :sswitch_data_0

    .line 172
    invoke-super/range {p0 .. p1}, Lcom/layar/TabListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v14

    .end local p1
    :goto_0
    return v14

    .line 83
    .restart local p1
    :sswitch_0
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    const-string v15, "Are you sure you want to clear all the images cache for Layar World application?"

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 85
    const-string v15, "Clear cache"

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 86
    const-string v15, "No"

    new-instance v16, Lcom/layar/MainSettingsActivity$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/layar/MainSettingsActivity$1;-><init>(Lcom/layar/MainSettingsActivity;)V

    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 92
    const-string v15, "Yes, clear cache"

    new-instance v16, Lcom/layar/MainSettingsActivity$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/layar/MainSettingsActivity$2;-><init>(Lcom/layar/MainSettingsActivity;)V

    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 99
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 100
    const/4 v14, 0x1

    goto :goto_0

    .line 102
    :sswitch_1
    invoke-static {}, Lcom/layar/App;->getProfiler()Lcom/layar/util/Profiler;

    move-result-object v14

    const-string v15, "profile.log"

    invoke-virtual {v14, v15}, Lcom/layar/util/Profiler;->output(Ljava/lang/String;)V

    .line 103
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    const-string v15, "Profiling"

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 105
    const-string v15, "You can find profiling output file at path:\n/sdcard/layar/profile.log\n\nFor quick uploading it to PC use command:\nadb pull /sdcard/layar/profile.log <PATH AT PC>/profile.log"

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 106
    const-string v15, "Close"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 107
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 108
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 109
    const/4 v14, 0x1

    goto :goto_0

    .line 111
    :sswitch_2
    const-string v4, "httpcalls.log"

    .line 112
    .local v4, filename:Ljava/lang/String;
    invoke-static {}, Lcom/layar/App;->getRequestsCounter()Lcom/layar/util/HttpRequestsCounter;

    move-result-object v14

    move-object v0, v14

    move-object v1, v4

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/layar/util/HttpRequestsCounter;->output(Ljava/lang/String;Landroid/content/Context;)V

    .line 113
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    const-string v15, "Http calls"

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 115
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Retrieve file with \"adb pull /sdcard/"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 116
    const-string v15, "Close"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 117
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 118
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 119
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 121
    .end local v4           #filename:Ljava/lang/String;
    :sswitch_3
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 122
    .local v10, prefs:Landroid/content/SharedPreferences;
    const-string v14, "test.add.favorites"

    const/4 v15, 0x0

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 123
    .local v13, stringCount:Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 124
    .local v9, neededCount:I
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v7

    .line 125
    .local v7, layerManager:Lcom/layar/data/layer/LayerManager;
    const/4 v8, 0x0

    .line 126
    .end local p1
    .local v8, loaded:I
    :goto_1
    if-lt v8, v9, :cond_0

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/layar/MainSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " layers were added to favorites!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 143
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 128
    :cond_0
    const-string v14, "intl"

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Lcom/layar/data/layer/LayerManager;->getPopularLayers(Ljava/lang/String;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v11

    .line 129
    .local v11, response:Lcom/layar/data/layer/LayerManager$LayersResponse;
    iget v14, v11, Lcom/layar/data/layer/LayerManager$LayersResponse;->responseCode:I

    if-eqz v14, :cond_1

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/layar/MainSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "Operation failed!"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 131
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 133
    :cond_1
    iget-object v14, v11, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 134
    .local v12, size:I
    add-int v14, v8, v12

    if-le v14, v9, :cond_2

    .line 136
    iget-object v14, v11, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    const/4 v15, 0x0

    sub-int v16, v9, v8

    const/16 v17, 0x1

    sub-int v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 135
    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object v1, v11

    iput-object v0, v1, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    .line 138
    :cond_2
    iget-object v14, v11, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    invoke-virtual {v7, v14}, Lcom/layar/data/layer/LayerManager;->addFavorites(Ljava/util/ArrayList;)V

    .line 139
    iget-object v14, v11, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/2addr v8, v14

    goto :goto_1

    .line 145
    .end local v7           #layerManager:Lcom/layar/data/layer/LayerManager;
    .end local v8           #loaded:I
    .end local v9           #neededCount:I
    .end local v10           #prefs:Landroid/content/SharedPreferences;
    .end local v11           #response:Lcom/layar/data/layer/LayerManager$LayersResponse;
    .end local v12           #size:I
    .end local v13           #stringCount:Ljava/lang/String;
    .restart local p1
    :sswitch_4
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/layar/data/layer/LayerManager;->clearBookmarks()V

    .line 146
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 148
    :sswitch_5
    const/16 v9, 0x32

    .line 149
    .restart local v9       #neededCount:I
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v7

    .line 150
    .restart local v7       #layerManager:Lcom/layar/data/layer/LayerManager;
    const/4 v8, 0x0

    .line 151
    .end local p1
    .restart local v8       #loaded:I
    :goto_2
    const/16 v14, 0x32

    if-lt v8, v14, :cond_3

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/layar/MainSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "50 layers were added to recent!"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 170
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 153
    :cond_3
    const-string v14, "intl"

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Lcom/layar/data/layer/LayerManager;->getPopularLayers(Ljava/lang/String;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v11

    .line 154
    .restart local v11       #response:Lcom/layar/data/layer/LayerManager$LayersResponse;
    iget v14, v11, Lcom/layar/data/layer/LayerManager$LayersResponse;->responseCode:I

    if-eqz v14, :cond_4

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/layar/MainSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "Operation failed!"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 156
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 158
    :cond_4
    iget-object v14, v11, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 159
    .restart local v12       #size:I
    add-int v14, v8, v12

    const/16 v15, 0x32

    if-le v14, v15, :cond_5

    .line 161
    iget-object v14, v11, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    const/4 v15, 0x0

    const/16 v16, 0x32

    sub-int v16, v16, v8

    const/16 v17, 0x1

    sub-int v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 160
    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object v1, v11

    iput-object v0, v1, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    .line 163
    :cond_5
    iget-object v14, v11, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 164
    .local v3, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    if-lt v5, v3, :cond_6

    .line 166
    iget-object v14, v11, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/2addr v8, v14

    goto :goto_2

    .line 165
    :cond_6
    iget-object v14, v11, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/layar/data/layer/Layer20;

    invoke-static/range {p0 .. p1}, Lcom/layar/data/layer/LayerHelper;->saveToRecent(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V

    .line 164
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        0x1f4 -> :sswitch_0
        0x258 -> :sswitch_1
        0x2bc -> :sswitch_2
        0x320 -> :sswitch_3
        0x384 -> :sswitch_4
        0x3e8 -> :sswitch_5
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/layar/MainSettingsActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v0}, Lcom/layar/ActivityHelper;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/data/user/UserManager;->isStaff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 65
    const/16 v0, 0x1f4

    const-string v1, "Clear cache"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 70
    const/16 v0, 0x320

    const-string v1, "Add to favorite"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 71
    const/16 v0, 0x384

    const-string v1, "Remove all favorites"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 72
    const/16 v0, 0x3e8

    const-string v1, "Add to recent"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 73
    invoke-super {p0, p1}, Lcom/layar/TabListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected onPrepareTabList()V
    .locals 4

    .prologue
    .line 39
    const-string v0, "Settings"

    const v1, 0x7f0200a7

    const v2, 0x7f090058

    .line 40
    const-class v3, Lcom/layar/SettingsActivity;

    .line 39
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/layar/MainSettingsActivity;->add(Ljava/lang/String;IILjava/lang/Class;)V

    .line 41
    const-string v0, "Account"

    const v1, 0x7f0200a3

    const v2, 0x7f09004d

    .line 42
    const-class v3, Lcom/layar/UserWelcomeActivity;

    .line 41
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/layar/MainSettingsActivity;->add(Ljava/lang/String;IILjava/lang/Class;)V

    .line 43
    const-string v0, "About"

    const v1, 0x7f0200a2

    const v2, 0x7f09004c

    .line 44
    const-class v3, Lcom/layar/DetailsViewActivity;

    .line 43
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/layar/MainSettingsActivity;->add(Ljava/lang/String;IILjava/lang/Class;)V

    .line 49
    const-string v0, "Intro"

    const v1, 0x7f0200ab

    const v2, 0x7f09002c

    .line 50
    const-class v3, Lcom/layar/WelcomeSequenceActivity;

    .line 49
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/layar/MainSettingsActivity;->add(Ljava/lang/String;IILjava/lang/Class;)V

    .line 51
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 55
    invoke-super {p0}, Lcom/layar/TabListActivity;->onResume()V

    .line 56
    const-string v0, "Account"

    const v1, 0x7f0200a3

    const v2, 0x7f09004d

    .line 57
    iget-object v3, p0, Lcom/layar/MainSettingsActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v3}, Lcom/layar/ActivityHelper;->isLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_0

    const-class v3, Lcom/layar/UserSettingsActivity;

    .line 56
    :goto_0
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/layar/MainSettingsActivity;->update(Ljava/lang/String;IILjava/lang/Class;)V

    .line 59
    return-void

    .line 58
    :cond_0
    const-class v3, Lcom/layar/UserWelcomeActivity;

    goto :goto_0
.end method
