.class public Lcom/google/android/music/tutorial/TutorialDoneActivity;
.super Landroid/app/Activity;
.source "TutorialDoneActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "tutorial"


# instance fields
.field private mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

.field private mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

.field private mAppState:Lcom/google/android/music/activitymanagement/AppState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public backClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/android/music/tutorial/TutorialDoneActivity;->finish()V

    .line 59
    return-void
.end method

.method public doneClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 51
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setTutorialViewed(Z)V

    .line 54
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialDoneActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->returnToTop()V

    .line 55
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {p0}, Lcom/google/android/music/activitymanagement/AppState;->getAppState(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/tutorial/TutorialDoneActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    .line 34
    iget-object v1, p0, Lcom/google/android/music/tutorial/TutorialDoneActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/AppState;->setBottomBarEnabled(Z)V

    .line 35
    iget-object v1, p0, Lcom/google/android/music/tutorial/TutorialDoneActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/AppState;->hideNoMusicView()V

    .line 36
    iget-object v1, p0, Lcom/google/android/music/tutorial/TutorialDoneActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/AppState;->getActivityManager()Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/tutorial/TutorialDoneActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 37
    iget-object v1, p0, Lcom/google/android/music/tutorial/TutorialDoneActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/tutorial/TutorialDoneActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    .line 38
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/music/tutorial/TutorialDoneActivity;->requestWindowFeature(I)Z

    .line 40
    iget-object v1, p0, Lcom/google/android/music/tutorial/TutorialDoneActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-virtual {v1}, Lcom/google/android/music/TopBar$ActionBarController;->hideAllButTitle()V

    .line 41
    iget-object v1, p0, Lcom/google/android/music/tutorial/TutorialDoneActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    const v2, 0x7f0c00b5

    invoke-virtual {v1, p0, v2}, Lcom/google/android/music/activitymanagement/AppState;->setTitle(Landroid/content/Context;I)V

    .line 42
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    .line 43
    .local v0, pref:Lcom/google/android/music/jumper/MusicPreferences;
    iget-object v1, p0, Lcom/google/android/music/tutorial/TutorialDoneActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-virtual {v1}, Lcom/google/android/music/TopBar$ActionBarController;->hideTopBar()V

    .line 45
    const v1, 0x7f04003a

    invoke-virtual {p0, v1}, Lcom/google/android/music/tutorial/TutorialDoneActivity;->setContentView(I)V

    .line 46
    return-void
.end method
