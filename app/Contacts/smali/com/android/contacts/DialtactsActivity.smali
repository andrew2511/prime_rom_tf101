.class public Lcom/android/contacts/DialtactsActivity;
.super Landroid/app/TabActivity;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field private mDialUri:Landroid/net/Uri;

.field private mFilterText:Ljava/lang/String;

.field private mLastManuallySelectedTab:I

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private fixIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 125
    const-string v0, "android.intent.action.CALL_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v0, "call_key"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/contacts/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 130
    :cond_0
    return-void
.end method

.method private isDialIntent(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 275
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    .line 285
    :goto_0
    return v2

    .line 279
    :cond_0
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 281
    .local v1, data:Landroid/net/Uri;
    if-eqz v1, :cond_1

    const-string v2, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    .line 282
    goto :goto_0

    .line 285
    .end local v1           #data:Landroid/net/Uri;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSendKeyWhileInCall(Landroid/content/Intent;Z)Z
    .locals 6
    .parameter "intent"
    .parameter "recentCallsRequest"

    .prologue
    const/4 v5, 0x0

    .line 182
    if-eqz p2, :cond_0

    .line 183
    const-string v3, "call_key"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 186
    .local v0, callKey:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 187
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    const/4 v3, 0x1

    .line 195
    .end local v0           #callKey:Z
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v3

    .line 190
    .restart local v0       #callKey:Z
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 191
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "Dailtacts"

    const-string v4, "Failed to handle send while in call"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #callKey:Z
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    move v3, v5

    .line 195
    goto :goto_0
.end method

.method private setCurrentTab(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 205
    const-string v6, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 206
    .local v4, recentCallsRequest:Z
    invoke-direct {p0, p1, v4}, Lcom/android/contacts/DialtactsActivity;->isSendKeyWhileInCall(Landroid/content/Intent;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->finish()V

    .line 258
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 214
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 220
    :cond_1
    const-string v6, "ignore-state"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    iget v5, p0, Lcom/android/contacts/DialtactsActivity;->mLastManuallySelectedTab:I

    .line 227
    .local v5, savedTabIndex:I
    const-string v6, "front_door"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 230
    const-string v6, "dialtacts"

    invoke-virtual {p0, v6, v8}, Lcom/android/contacts/DialtactsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 231
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v6, "favorites_as_contacts"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 233
    .local v2, favoritesAsContacts:Z
    if-eqz v2, :cond_2

    .line 234
    iget-object v6, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 253
    .end local v2           #favoritesAsContacts:Z
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :goto_1
    iput v5, p0, Lcom/android/contacts/DialtactsActivity;->mLastManuallySelectedTab:I

    .line 257
    const-string v6, "ignore-state"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 236
    .restart local v2       #favoritesAsContacts:Z
    .restart local v3       #prefs:Landroid/content/SharedPreferences;
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_1

    .line 240
    .end local v2           #favoritesAsContacts:Z
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, componentName:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 242
    if-eqz v4, :cond_4

    .line 243
    iget-object v6, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6, v9}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_1

    .line 245
    :cond_4
    iget-object v6, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6, v8}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_1

    .line 248
    :cond_5
    iget-object v6, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    iget v7, p0, Lcom/android/contacts/DialtactsActivity;->mLastManuallySelectedTab:I

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_1
.end method

.method private setupCallLogTab()V
    .locals 6

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.action.RECENT_CALLS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    const-class v1, Lcom/android/contacts/RecentCallsListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "call_log"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0c0064

    invoke-virtual {p0, v3}, Lcom/android/contacts/DialtactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02007d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 141
    return-void
.end method

.method private setupContactsTab()V
    .locals 6

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.LIST_DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    const-class v1, Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 157
    iget-object v1, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "contacts"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0c0061

    invoke-virtual {p0, v3}, Lcom/android/contacts/DialtactsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02007b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 161
    return-void
.end method

.method private setupDialUri(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 340
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/DialtactsActivity;->mDialUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private setupDialerTab()V
    .locals 6

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.action.TOUCH_DIALER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    const-class v1, Lcom/android/contacts/TwelveKeyDialer;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "dialer"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0c0063

    invoke-virtual {p0, v3}, Lcom/android/contacts/DialtactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02007c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 151
    return-void
.end method

.method private setupFavoritesTab()V
    .locals 6

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.LIST_STREQUENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    const-class v1, Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "favorites"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0c0062

    invoke-virtual {p0, v3}, Lcom/android/contacts/DialtactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020082

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 171
    return-void
.end method

.method private setupFilterText(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 310
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    const-string v1, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, filter:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 315
    iput-object v0, p0, Lcom/android/contacts/DialtactsActivity;->mFilterText:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAndClearDialUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/contacts/DialtactsActivity;->mDialUri:Landroid/net/Uri;

    .line 328
    .local v0, dialUri:Landroid/net/Uri;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/DialtactsActivity;->mDialUri:Landroid/net/Uri;

    .line 329
    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/DialtactsActivity;->moveTaskToBack(Z)Z

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-super {p0}, Landroid/app/TabActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/contacts/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    .line 81
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/contacts/DialtactsActivity;->requestWindowFeature(I)Z

    .line 82
    const v2, 0x7f04001b

    invoke-virtual {p0, v2}, Lcom/android/contacts/DialtactsActivity;->setContentView(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    .line 85
    iget-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 88
    invoke-direct {p0}, Lcom/android/contacts/DialtactsActivity;->setupDialerTab()V

    .line 89
    invoke-direct {p0}, Lcom/android/contacts/DialtactsActivity;->setupCallLogTab()V

    .line 90
    invoke-direct {p0}, Lcom/android/contacts/DialtactsActivity;->setupContactsTab()V

    .line 91
    invoke-direct {p0}, Lcom/android/contacts/DialtactsActivity;->setupFavoritesTab()V

    .line 94
    const-string v2, "dialtacts"

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/DialtactsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 95
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "last_manually_selected_tab"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/DialtactsActivity;->mLastManuallySelectedTab:I

    .line 98
    invoke-direct {p0, v0}, Lcom/android/contacts/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 100
    const-string v2, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 102
    invoke-direct {p0, v0}, Lcom/android/contacts/DialtactsActivity;->setupFilterText(Landroid/content/Intent;)V

    .line 104
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "newIntent"

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/android/contacts/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 263
    invoke-direct {p0, p1}, Lcom/android/contacts/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    .line 264
    invoke-direct {p0, p1}, Lcom/android/contacts/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 265
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    invoke-direct {p0, p1}, Lcom/android/contacts/DialtactsActivity;->setupFilterText(Landroid/content/Intent;)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/contacts/DialtactsActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    invoke-direct {p0, p1}, Lcom/android/contacts/DialtactsActivity;->setupDialUri(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 108
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 110
    iget-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 111
    .local v0, currentTabIndex:I
    const-string v2, "dialtacts"

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/DialtactsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 113
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-ne v0, v4, :cond_2

    .line 114
    :cond_0
    const-string v2, "favorites_as_contacts"

    if-ne v0, v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 116
    :cond_2
    const-string v2, "last_manually_selected_tab"

    iget v3, p0, Lcom/android/contacts/DialtactsActivity;->mLastManuallySelectedTab:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 119
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tabId"

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 366
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 367
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/DialtactsActivity;->mLastManuallySelectedTab:I

    .line 373
    return-void
.end method
