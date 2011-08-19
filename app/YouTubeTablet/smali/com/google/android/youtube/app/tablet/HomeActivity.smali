.class public Lcom/google/android/youtube/app/tablet/HomeActivity;
.super Lcom/google/android/youtube/core/tablet/TabbedControllersActivity;
.source "HomeActivity.java"


# instance fields
.field private application:Lcom/google/android/youtube/app/YouTubeApplication;

.field private browseController:Lcom/google/android/youtube/app/tablet/BrowseController;

.field private homeController:Lcom/google/android/youtube/app/tablet/HomeController;

.field private myChannelController:Lcom/google/android/youtube/app/tablet/MyChannelController;

.field private navigation:Lcom/google/android/youtube/app/Navigation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/youtube/core/tablet/TabbedControllersActivity;-><init>()V

    return-void
.end method

.method public static createBrowseIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter "context"

    .prologue
    .line 62
    invoke-static {p0}, Lcom/google/android/youtube/app/tablet/HomeActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selected_controller_index"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createHomeIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter "context"

    .prologue
    .line 47
    invoke-static {p0}, Lcom/google/android/youtube/app/tablet/HomeActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selected_controller_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/tablet/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createMyChannelIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter "context"

    .prologue
    .line 69
    invoke-static {p0}, Lcom/google/android/youtube/app/tablet/HomeActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selected_controller_index"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createSearchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    invoke-static {p0}, Lcom/google/android/youtube/app/tablet/HomeActivity;->createHomeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.youtube.action.search"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 75
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/tablet/TabbedControllersActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/YouTubeApplication;

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 79
    new-instance v1, Lcom/google/android/youtube/app/tablet/TabletNavigation;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/tablet/TabletNavigation;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->navigation:Lcom/google/android/youtube/app/Navigation;

    .line 80
    new-instance v1, Lcom/google/android/youtube/app/tablet/HomeController;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    iget-object v3, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->navigation:Lcom/google/android/youtube/app/Navigation;

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/google/android/youtube/app/tablet/HomeController;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->homeController:Lcom/google/android/youtube/app/tablet/HomeController;

    .line 81
    new-instance v1, Lcom/google/android/youtube/app/tablet/BrowseController;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    iget-object v3, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->navigation:Lcom/google/android/youtube/app/Navigation;

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/google/android/youtube/app/tablet/BrowseController;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->browseController:Lcom/google/android/youtube/app/tablet/BrowseController;

    .line 82
    new-instance v1, Lcom/google/android/youtube/app/tablet/MyChannelController;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    iget-object v3, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->navigation:Lcom/google/android/youtube/app/Navigation;

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/google/android/youtube/app/tablet/MyChannelController;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->myChannelController:Lcom/google/android/youtube/app/tablet/MyChannelController;

    .line 84
    const v1, 0x7f0d0020

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->homeController:Lcom/google/android/youtube/app/tablet/HomeController;

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/youtube/app/tablet/HomeActivity;->addController(ILcom/google/android/youtube/core/tablet/Controller;Landroid/os/Bundle;)V

    .line 85
    const v1, 0x7f0d0021

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->browseController:Lcom/google/android/youtube/app/tablet/BrowseController;

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/youtube/app/tablet/HomeActivity;->addController(ILcom/google/android/youtube/core/tablet/Controller;Landroid/os/Bundle;)V

    .line 86
    const v1, 0x7f0d0022

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->myChannelController:Lcom/google/android/youtube/app/tablet/MyChannelController;

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/youtube/app/tablet/HomeActivity;->addController(ILcom/google/android/youtube/core/tablet/Controller;Landroid/os/Bundle;)V

    .line 88
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->browseController:Lcom/google/android/youtube/app/tablet/BrowseController;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/tablet/HomeActivity;->addPaddingForActionBar(Lcom/google/android/youtube/core/tablet/Controller;)V

    .line 89
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->myChannelController:Lcom/google/android/youtube/app/tablet/MyChannelController;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/tablet/HomeActivity;->addPaddingForActionBar(Lcom/google/android/youtube/core/tablet/Controller;)V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 92
    .local v0, intent:Landroid/content/Intent;
    if-nez p1, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/tablet/HomeActivity;->selectControllerFromExtras(Landroid/os/Bundle;)V

    .line 95
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "com.google.android.youtube.action.search"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/HomeActivity;->onSearchRequested()Z

    .line 98
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/HomeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 108
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/tablet/TabbedControllersActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/tablet/HomeActivity;->selectControllerFromExtras(Landroid/os/Bundle;)V

    .line 103
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 139
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/tablet/TabbedControllersActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->signOut()V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/HomeActivity;->closeOptionsMenu()V

    .line 125
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/HomeActivity;->invalidateOptionsMenu()V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/HomeActivity;->getSelectedController()Lcom/google/android/youtube/core/tablet/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->homeController:Lcom/google/android/youtube/app/tablet/HomeController;

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->homeController:Lcom/google/android/youtube/app/tablet/HomeController;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->peek(Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/HomeActivity;->getSelectedController()Lcom/google/android/youtube/core/tablet/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->myChannelController:Lcom/google/android/youtube/app/tablet/MyChannelController;

    if-ne v0, v1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->navigation:Lcom/google/android/youtube/app/Navigation;

    invoke-interface {v0}, Lcom/google/android/youtube/app/Navigation;->toHome()V

    :cond_1
    move v0, v2

    .line 132
    goto :goto_0

    .line 134
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/HomeActivity;->closeOptionsMenu()V

    .line 135
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/HomeActivity;->invalidateOptionsMenu()V

    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->navigation:Lcom/google/android/youtube/app/Navigation;

    invoke-interface {v0}, Lcom/google/android/youtube/app/Navigation;->toMyChannel()V

    move v0, v2

    .line 137
    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x7f080083
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 113
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/HomeActivity;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->isSignedIn()Z

    move-result v0

    .line 114
    .local v0, signedIn:Z
    const v1, 0x7f080084

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 115
    const v1, 0x7f080083

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v0, :cond_0

    move v2, v4

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v0, :cond_1

    move v2, v4

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 116
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/tablet/TabbedControllersActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    :cond_0
    move v2, v3

    .line 115
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method
