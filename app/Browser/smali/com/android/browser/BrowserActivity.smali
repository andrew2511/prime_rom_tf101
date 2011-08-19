.class public Lcom/android/browser/BrowserActivity;
.super Landroid/app/Activity;
.source "BrowserActivity.java"


# instance fields
.field private mController:Lcom/android/browser/Controller;

.field private mUi:Lcom/android/browser/UI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method getController()Lcom/android/browser/Controller;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    return-object v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 276
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 277
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 278
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 271
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 272
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/Controller;->onActivityResult(IILandroid/content/Intent;)V

    .line 284
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 210
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onConfgurationChanged(Landroid/content/res/Configuration;)V

    .line 211
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 168
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 170
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x100

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    .line 68
    .local v0, settings:Lcom/android/browser/BrowserSettings;
    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->waitForLoadFromDbToComplete()V

    .line 71
    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 88
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/browser/IntentHandler;->handleWebSearchIntent(Landroid/app/Activity;Lcom/android/browser/Controller;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    .line 114
    :goto_1
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 93
    :cond_1
    const-string v3, "accessibility"

    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    invoke-virtual {p0, v5}, Lcom/android/browser/BrowserActivity;->setDefaultKeyMode(I)V

    .line 98
    :cond_2
    new-instance v3, Lcom/android/browser/Controller;

    invoke-direct {v3, p0}, Lcom/android/browser/Controller;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    .line 99
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v2

    .line 100
    .local v2, xlarge:Z
    if-eqz v2, :cond_4

    .line 101
    new-instance v3, Lcom/android/browser/XLargeUi;

    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-direct {v3, p0, v4}, Lcom/android/browser/XLargeUi;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V

    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mUi:Lcom/android/browser/UI;

    .line 105
    :goto_2
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mUi:Lcom/android/browser/UI;

    invoke-virtual {v3, v4}, Lcom/android/browser/Controller;->setUi(Lcom/android/browser/UI;)V

    .line 106
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mUi:Lcom/android/browser/UI;

    check-cast v3, Lcom/android/browser/BaseUi;

    invoke-virtual {v4, v3}, Lcom/android/browser/Controller;->setWebViewFactory(Lcom/android/browser/WebViewFactory;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "state"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 109
    .local v1, state:Landroid/os/Bundle;
    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    .line 110
    move-object p1, v1

    .line 113
    :cond_3
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/browser/Controller;->start(Landroid/os/Bundle;Landroid/content/Intent;)V

    goto :goto_1

    .line 103
    .end local v1           #state:Landroid/os/Bundle;
    :cond_4
    new-instance v3, Lcom/android/browser/PhoneUi;

    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-direct {v3, p0, v4}, Lcom/android/browser/PhoneUi;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V

    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mUi:Lcom/android/browser/UI;

    goto :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/Controller;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 243
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 222
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 200
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->onDestroy()V

    .line 203
    :cond_0
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mUi:Lcom/android/browser/UI;

    .line 204
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    .line 205
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/Controller;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/Controller;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/Controller;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 216
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->onLowMemory()V

    .line 217
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/Controller;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 156
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    .line 127
    const-string v0, "--restart--"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1, v0}, Lcom/android/browser/Controller;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    .line 131
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/browser/BrowserActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->handleNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 163
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->onPause()V

    .line 191
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 192
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 228
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 146
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->onResume()V

    .line 149
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 184
    :cond_0
    return-void
.end method
