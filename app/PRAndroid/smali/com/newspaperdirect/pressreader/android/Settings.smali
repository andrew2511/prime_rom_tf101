.class public Lcom/newspaperdirect/pressreader/android/Settings;
.super Landroid/app/ListActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private sendFeedback()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 116
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    .line 117
    const-string v7, "mailto"

    const v8, 0x7f090051

    invoke-virtual {p0, v8}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 116
    invoke-static {v7, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 118
    .local v2, emailIntent:Landroid/content/Intent;
    const-string v5, ""

    .line 120
    .local v5, version:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/Settings;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 121
    .local v3, pi:Landroid/content/pm/PackageInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 125
    const v6, 0x7f09009f

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const v8, 0x7f09004a

    invoke-virtual {p0, v8}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    .line 126
    aput-object v5, v7, v8

    const/4 v8, 0x2

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 125
    invoke-virtual {p0, v6, v7}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, subject:Ljava/lang/String;
    const-string v6, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v6, "android.intent.extra.TEXT"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/Settings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    :goto_0
    return-void

    .line 122
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    .end local v4           #subject:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 123
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Invalid package name"

    invoke-direct {v6, v7, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 132
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #pi:Landroid/content/pm/PackageInfo;
    .restart local v4       #subject:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 133
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    new-instance v6, Lcom/newspaperdirect/pressreader/android/Settings$1;

    invoke-direct {v6, p0}, Lcom/newspaperdirect/pressreader/android/Settings$1;-><init>(Lcom/newspaperdirect/pressreader/android/Settings;)V

    invoke-virtual {p0, v6}, Lcom/newspaperdirect/pressreader/android/Settings;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 37
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/Settings;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 39
    .local v0, parent:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/newspaperdirect/pressreader/android/Main;

    if-eqz v1, :cond_0

    .line 40
    check-cast v0, Lcom/newspaperdirect/pressreader/android/Main;

    .end local v0           #parent:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/Main;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/AppInitHelper;->init(Landroid/app/Activity;)V

    .line 32
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 94
    const v0, 0x7f090083

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 95
    const v1, 0x7f020042

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 96
    const/4 v0, 0x1

    const v1, 0x7f09004e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 97
    const v1, 0x7f02003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 98
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const v5, 0x7f09004a

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 59
    packed-switch p3, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 61
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/newspaperdirect/pressreader/android/Accounts;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/Settings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 64
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/newspaperdirect/pressreader/android/Subscriptions;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/Settings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 67
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/newspaperdirect/pressreader/android/WebViewer;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v0, eulaIntent:Landroid/content/Intent;
    const-string v2, "WEB_RESOURCE_ID"

    const/high16 v3, 0x7f06

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    const-string v2, "WEB_VIEW_TITLE"

    .line 70
    const v3, 0x7f09009a

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/Settings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    .end local v0           #eulaIntent:Landroid/content/Intent;
    :pswitch_3
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/Settings;->sendFeedback()V

    goto :goto_0

    .line 77
    :pswitch_4
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/newspaperdirect/pressreader/android/DataAccess;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/Settings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 80
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/newspaperdirect/pressreader/android/WebViewer;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v1, faqIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->isSmartEdition()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const-string v2, "WEB_RESOURCE_ID"

    const v3, 0x7f060003

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    :goto_1
    const-string v2, "WEB_VIEW_TITLE"

    .line 86
    const v3, 0x7f09009c

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/Settings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    :cond_0
    const-string v2, "WEB_RESOURCE_ID"

    const v3, 0x7f060001

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 103
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/Settings;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/app/TabActivity;

    invoke-virtual {v1}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    .line 104
    .local v0, tabHost:Landroid/widget/TabHost;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 112
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 106
    :pswitch_0
    const-string v1, "mylibrary"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    move v1, v2

    .line 107
    goto :goto_0

    .line 109
    :pswitch_1
    const-string v1, "store"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    move v1, v2

    .line 110
    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 46
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/Settings;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 47
    .local v0, parent:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 48
    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    const v1, 0x7f0c0020

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    const v1, 0x7f0c0022

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/Settings;Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 55
    return-void
.end method
