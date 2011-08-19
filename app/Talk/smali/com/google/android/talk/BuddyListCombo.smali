.class public Lcom/google/android/talk/BuddyListCombo;
.super Lcom/google/android/talk/GtalkServiceActivity;
.source "BuddyListCombo.java"

# interfaces
.implements Lcom/google/android/talk/TalkApp$AccountListChangeListener;
.implements Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;
.implements Lcom/google/android/talk/fragments/ChatScreenFragment$ChatScreenHost;
.implements Lcom/google/android/talk/fragments/SetStatusFragment$Host;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/BuddyListCombo$10;,
        Lcom/google/android/talk/BuddyListCombo$AccountSpinnerAdapter;,
        Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;,
        Lcom/google/android/talk/BuddyListCombo$Focus;
    }
.end annotation


# static fields
.field private static sInjectedController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;


# instance fields
.field private mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

.field private mAccountSpinner:Landroid/widget/Spinner;

.field private mAccountTextView:Landroid/widget/TextView;

.field private mAccountView:Landroid/view/View;

.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mBuddyListController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

.field mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

.field mChatScreenController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

.field mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

.field private mClientTypeImageView:Landroid/widget/ImageView;

.field private mCurtainsOpen:Z

.field private mCustomTitleContainer:Landroid/view/View;

.field private mExpando:Lcom/google/android/talk/DrawerLayout;

.field private mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

.field private mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/talk/BuddyListCombo$Focus;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftPanelContainer:Landroid/view/View;

.field private mListener:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

.field private mOnResumeRunnable:Ljava/lang/Runnable;

.field private mPresenceImageView:Landroid/widget/ImageView;

.field private mRightPanelContainer:Landroid/view/View;

.field private mRosterLoaded:Z

.field private mSearchView:Landroid/widget/SearchView;

.field mSetStatusController:Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

.field mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

.field private mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTabletMode:Z

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/talk/GtalkServiceActivity;-><init>()V

    .line 86
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    .line 508
    new-instance v0, Lcom/google/android/talk/BuddyListCombo$3;

    invoke-direct {v0, p0}, Lcom/google/android/talk/BuddyListCombo$3;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusController:Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

    .line 518
    new-instance v0, Lcom/google/android/talk/BuddyListCombo$4;

    invoke-direct {v0, p0}, Lcom/google/android/talk/BuddyListCombo$4;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    .line 564
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->None:Lcom/google/android/talk/BuddyListCombo$Focus;

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    .line 1026
    new-instance v0, Lcom/google/android/talk/BuddyListCombo$7;

    invoke-direct {v0, p0}, Lcom/google/android/talk/BuddyListCombo$7;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    .line 1226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mCurtainsOpen:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/DrawerLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/talk/BuddyListCombo;->onShowContactInfo(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/talk/BuddyListCombo;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/talk/BuddyListCombo;->showFragmentBasedOnIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/talk/BuddyListCombo;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/talk/BuddyListCombo;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/talk/BuddyListCombo;->showLoadingView(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/talk/BuddyListCombo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->resetToBaseIntent()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/BuddyListCombo$Focus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/talk/BuddyListCombo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->gotoDefaultExpandoState()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/talk/BuddyListCombo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->onCancelSearch()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/talk/BuddyListCombo;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/talk/BuddyListCombo;->showSearchInActionBar(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/BuddyListCombo$Focus;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/talk/BuddyListCombo;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/talk/BuddyListCombo;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/talk/BuddyListCombo;->addToContacts(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/talk/BuddyListCombo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->startCurtainsAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/talk/BuddyListCombo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/talk/BuddyListCombo;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mClientTypeImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/talk/BuddyListCombo;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mPresenceImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/talk/BuddyListCombo;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/BuddyListCombo;->selectAccountInSpinnerByAccountId(J)V

    return-void
.end method

.method private addToContacts(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1168
    if-eqz p1, :cond_0

    .line 1169
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1175
    const-string v1, "im_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1176
    const-string v1, "im_protocol"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1179
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1181
    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->startActivity(Landroid/content/Intent;)V

    .line 1183
    :cond_0
    return-void
.end method

.method private cleanupAfterCurtainsAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1238
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mRightPanelContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1239
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mLeftPanelContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1240
    iput-boolean v1, p0, Lcom/google/android/talk/BuddyListCombo;->mCurtainsOpen:Z

    .line 1241
    return-void
.end method

.method private gotoDefaultExpandoState()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    invoke-virtual {v0}, Lcom/google/android/talk/DrawerLayout;->gotoDefaultExpandedState()V

    .line 106
    :cond_0
    return-void
.end method

.method private hideLoadingView()V
    .locals 3

    .prologue
    .line 481
    const v2, 0x7f10001f

    invoke-virtual {p0, v2}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 482
    .local v1, v:Landroid/view/View;
    if-nez v1, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    .line 487
    .local v0, container:Landroid/view/View;
    if-nez v0, :cond_2

    .line 488
    const v2, 0x7f10002c

    invoke-virtual {p0, v2}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 492
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 493
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 494
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initAccount(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 6
    .parameter "savedState"
    .parameter "intent"

    .prologue
    const-wide/16 v4, 0x0

    .line 647
    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v3, :cond_1

    .line 649
    const-string v3, "username"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 650
    .local v2, username:Ljava/lang/String;
    const-string v3, "accountId"

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 653
    .local v0, accountId:J
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 655
    const-string v3, "username"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 656
    const-string v3, "accountId"

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 659
    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/talk/BuddyListCombo;->loadAccountInfo(JLjava/lang/String;)V

    .line 660
    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v3, :cond_1

    .line 664
    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v3}, Lcom/google/android/talk/TalkApp;->getActiveAccount()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 667
    .end local v0           #accountId:J
    .end local v2           #username:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v3, :cond_4

    .line 668
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->refreshAccountInfo()V

    .line 669
    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v3, :cond_3

    .line 677
    :cond_2
    :goto_0
    return-void

    .line 672
    :cond_3
    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-static {v3, p0}, Lcom/google/android/talk/AccountLoginUtils;->setActiveAccount(Lcom/google/android/talk/TalkApp$AccountInfo;Landroid/app/Activity;)V

    .line 674
    :cond_4
    iget v3, p0, Lcom/google/android/talk/BuddyListCombo;->mLogLevel:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_2

    .line 675
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initAccount mAccountInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v4}, Lcom/google/android/talk/TalkApp$AccountInfo;->dump()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private initAccountSwitcher()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 863
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-gt v1, v3, :cond_1

    :cond_0
    move v0, v3

    .line 865
    .local v0, singleAccount:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 866
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 867
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 869
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 926
    :goto_1
    return-void

    .end local v0           #singleAccount:Z
    :cond_1
    move v0, v2

    .line 863
    goto :goto_0

    .line 871
    .restart local v0       #singleAccount:Z
    :cond_2
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 872
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 874
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    if-nez v1, :cond_3

    .line 875
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->initializeAccountSwitchUI()V

    .line 878
    :cond_3
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-nez v1, :cond_4

    .line 879
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 883
    :cond_4
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/talk/BuddyListCombo;->selectAccountInSpinnerByUsername(Ljava/lang/String;)V

    .line 885
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/google/android/talk/BuddyListCombo$6;

    invoke-direct {v2, p0}, Lcom/google/android/talk/BuddyListCombo$6;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_1
.end method

.method private initializeAccountSwitchUI()V
    .locals 2

    .prologue
    .line 966
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 967
    if-eqz v0, :cond_2

    .line 968
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 969
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 970
    const v0, 0x7f10002f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountSpinner:Landroid/widget/Spinner;

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 973
    const v0, 0x7f100030

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountTextView:Landroid/widget/TextView;

    .line 975
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_2

    .line 976
    new-instance v0, Lcom/google/android/talk/BuddyListCombo$AccountSpinnerAdapter;

    invoke-direct {v0, p0, p0}, Lcom/google/android/talk/BuddyListCombo$AccountSpinnerAdapter;-><init>(Lcom/google/android/talk/BuddyListCombo;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    .line 979
    :cond_2
    return-void
.end method

.method private loadAccountInfo(JLjava/lang/String;)V
    .locals 2
    .parameter "accountId"
    .parameter "username"

    .prologue
    .line 680
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 681
    :cond_0
    new-instance v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-direct {v0}, Lcom/google/android/talk/TalkApp$AccountInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 682
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iput-wide p1, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    .line 683
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iput-object p3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    .line 685
    :cond_1
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 99
    const/4 v0, 0x3

    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BuddyListCombo] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method private onCancelSearch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1217
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1220
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->setQueryString(Ljava/lang/String;)V

    .line 1221
    invoke-direct {p0, v2}, Lcom/google/android/talk/BuddyListCombo;->showSearchInActionBar(Z)V

    .line 1224
    :cond_0
    return-void
.end method

.method private onShowContactInfo(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V
    .locals 4
    .parameter

    .prologue
    .line 1186
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1188
    const-class v1, Lcom/google/android/talk/BuddyInfo;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1189
    const-string v1, "userId"

    iget-wide v2, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mContactId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1190
    const-string v1, "accountId"

    iget-wide v2, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mAccountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1192
    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->startActivity(Landroid/content/Intent;)V

    .line 1193
    return-void
.end method

.method private registerForAccountListChanged()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0, p0}, Lcom/google/android/talk/TalkApp;->addAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V

    .line 319
    return-void
.end method

.method private registerOnSessionCreatedListeners()V
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    instance-of v0, v0, Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->addOnSessionCreatedListener(Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;)V

    .line 644
    :cond_0
    return-void
.end method

.method private removeItem(Landroid/view/Menu;I)V
    .locals 2
    .parameter "menu"
    .parameter "menuId"

    .prologue
    .line 342
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 343
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 344
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 346
    :cond_0
    return-void
.end method

.method private resetToBaseIntent()V
    .locals 2

    .prologue
    .line 1019
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1020
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->setIntent(Landroid/content/Intent;)V

    .line 1022
    return-void
.end method

.method private selectAccountInSpinnerByAccountId(J)V
    .locals 4
    .parameter "accountId"

    .prologue
    .line 941
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 942
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    .line 943
    .local v1, max:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 944
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 945
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 956
    .end local v0           #i:I
    .end local v1           #max:I
    :goto_1
    return-void

    .line 943
    .restart local v0       #i:I
    .restart local v1       #max:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 955
    .end local v0           #i:I
    .end local v1           #max:I
    :cond_1
    invoke-static {p0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method private selectAccountInSpinnerByUsername(Ljava/lang/String;)V
    .locals 3
    .parameter "username"

    .prologue
    .line 929
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 930
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    .line 931
    .local v1, max:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 932
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 933
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 938
    .end local v0           #i:I
    .end local v1           #max:I
    :cond_0
    return-void

    .line 931
    .restart local v0       #i:I
    .restart local v1       #max:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 577
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;Z)V

    .line 578
    return-void
.end method

.method private setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;Z)V
    .locals 6
    .parameter "f"
    .parameter "allowPushToBackStack"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 581
    iget-boolean v1, p0, Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/talk/BuddyListCombo$Focus;->BuddyList:Lcom/google/android/talk/BuddyListCombo$Focus;

    if-ne p1, v1, :cond_0

    .line 582
    sget-object p1, Lcom/google/android/talk/BuddyListCombo$Focus;->SelfStatus:Lcom/google/android/talk/BuddyListCombo$Focus;

    .line 585
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    if-ne v1, p1, :cond_1

    .line 638
    :goto_0
    return-void

    .line 589
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    .line 590
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    sget-object v2, Lcom/google/android/talk/BuddyListCombo$Focus;->None:Lcom/google/android/talk/BuddyListCombo$Focus;

    if-eq v1, v2, :cond_2

    .line 591
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    :cond_2
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    .line 596
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 598
    .local v0, transaction:Landroid/app/FragmentTransaction;
    sget-object v1, Lcom/google/android/talk/BuddyListCombo$10;->$SwitchMap$com$google$android$talk$BuddyListCombo$Focus:[I

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-virtual {v2}, Lcom/google/android/talk/BuddyListCombo$Focus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 631
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z

    if-eqz v1, :cond_4

    .line 632
    const/high16 v1, 0x10b

    const v2, 0x10b0001

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 637
    :cond_4
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 600
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/talk/BuddyListCombo;->setVisible(Landroid/app/Fragment;Ljava/lang/Boolean;Landroid/app/FragmentTransaction;)V

    .line 601
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/talk/BuddyListCombo;->setVisible(Landroid/app/Fragment;Ljava/lang/Boolean;Landroid/app/FragmentTransaction;)V

    .line 602
    iget-boolean v1, p0, Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z

    if-nez v1, :cond_5

    .line 603
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/talk/BuddyListCombo;->setVisible(Landroid/app/Fragment;Ljava/lang/Boolean;Landroid/app/FragmentTransaction;)V

    .line 604
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mCustomTitleContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 605
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 607
    :cond_5
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 611
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/talk/BuddyListCombo;->setVisible(Landroid/app/Fragment;Ljava/lang/Boolean;Landroid/app/FragmentTransaction;)V

    .line 612
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/talk/BuddyListCombo;->setVisible(Landroid/app/Fragment;Ljava/lang/Boolean;Landroid/app/FragmentTransaction;)V

    .line 613
    iget-boolean v1, p0, Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z

    if-nez v1, :cond_6

    .line 614
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/talk/BuddyListCombo;->setVisible(Landroid/app/Fragment;Ljava/lang/Boolean;Landroid/app/FragmentTransaction;)V

    .line 615
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mCustomTitleContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 616
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 618
    :cond_6
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 622
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/talk/BuddyListCombo;->setVisible(Landroid/app/Fragment;Ljava/lang/Boolean;Landroid/app/FragmentTransaction;)V

    .line 623
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/talk/BuddyListCombo;->setVisible(Landroid/app/Fragment;Ljava/lang/Boolean;Landroid/app/FragmentTransaction;)V

    .line 624
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/talk/BuddyListCombo;->setVisible(Landroid/app/Fragment;Ljava/lang/Boolean;Landroid/app/FragmentTransaction;)V

    .line 625
    iget-boolean v1, p0, Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z

    if-nez v1, :cond_3

    .line 626
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mCustomTitleContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 627
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 598
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setVisible(Landroid/app/Fragment;Ljava/lang/Boolean;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "f"
    .parameter "visible"
    .parameter "t"

    .prologue
    .line 567
    invoke-virtual {p1}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 568
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    invoke-virtual {p3, p1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    invoke-virtual {p3, p1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, -0x1

    .line 370
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 372
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04000d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 374
    .local v1, v:Landroid/view/ViewGroup;
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 379
    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 380
    invoke-virtual {v0, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 384
    new-instance v2, Landroid/animation/LayoutTransition;

    invoke-direct {v2}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 386
    const v2, 0x7f100048

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mCustomTitleContainer:Landroid/view/View;

    .line 387
    const v2, 0x7f100049

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mTitle:Landroid/widget/TextView;

    .line 388
    const v2, 0x7f10000b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mPresenceImageView:Landroid/widget/ImageView;

    .line 389
    const v2, 0x7f10004a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mClientTypeImageView:Landroid/widget/ImageView;

    .line 390
    return-void
.end method

.method private setupExpando()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 397
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    invoke-static {p0}, Lcom/google/android/talk/ActivityUtils;->isXLargeTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v2, v10

    .line 399
    .local v2, expandoOpen:Z
    :goto_0
    iget-object v7, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v7}, Landroid/widget/SearchView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    move v5, v10

    .line 400
    .local v5, searchOpen:Z
    :goto_1
    iget-object v7, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    invoke-virtual {v7, v2}, Lcom/google/android/talk/DrawerLayout;->setDefaultToExpanded(Z)V

    .line 401
    iget-object v7, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    or-int v8, v2, v5

    invoke-virtual {v7, v8, v9}, Lcom/google/android/talk/DrawerLayout;->setExpandedState(ZZ)V

    .line 402
    iget-object v7, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    invoke-virtual {v7}, Lcom/google/android/talk/DrawerLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 403
    .local v6, vg:Landroid/view/ViewGroup;
    iget-object v7, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    const v8, 0x7f100024

    invoke-virtual {v7, v8}, Lcom/google/android/talk/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 404
    .local v3, expandoOpenClose:Landroid/view/ViewGroup;
    const v7, 0x7f100027

    invoke-virtual {p0, v7}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/talk/DrawerLayout$LayoutParams;

    .line 406
    .local v4, lp:Lcom/google/android/talk/DrawerLayout$LayoutParams;
    if-eqz v2, :cond_3

    .line 407
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 408
    const/high16 v7, 0x4120

    iput v7, v4, Lcom/google/android/talk/DrawerLayout$LayoutParams;->weight:F

    .line 412
    :goto_2
    const v7, 0x7f10002b

    invoke-virtual {p0, v7}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 413
    .local v0, expandedRightView:Landroid/view/View;
    const v7, 0x7f100025

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 414
    .local v1, expandoButton:Landroid/widget/ImageView;
    if-eqz v2, :cond_4

    move v7, v11

    :goto_3
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 415
    iget-object v7, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    new-instance v8, Lcom/google/android/talk/BuddyListCombo$1;

    invoke-direct {v8, p0, v1, v0, v2}, Lcom/google/android/talk/BuddyListCombo$1;-><init>(Lcom/google/android/talk/BuddyListCombo;Landroid/widget/ImageView;Landroid/view/View;Z)V

    invoke-virtual {v7, v8}, Lcom/google/android/talk/DrawerLayout;->setOnExpandStateChangedListener(Lcom/google/android/talk/DrawerLayout$ExpandStateChangedListener;)V

    .line 449
    if-eqz v0, :cond_0

    .line 450
    new-instance v7, Lcom/google/android/talk/BuddyListCombo$2;

    invoke-direct {v7, p0}, Lcom/google/android/talk/BuddyListCombo$2;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    :cond_0
    iget-object v7, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    invoke-virtual {v7}, Lcom/google/android/talk/DrawerLayout;->requestLayout()V

    .line 457
    return-void

    .end local v0           #expandedRightView:Landroid/view/View;
    .end local v1           #expandoButton:Landroid/widget/ImageView;
    .end local v2           #expandoOpen:Z
    .end local v3           #expandoOpenClose:Landroid/view/ViewGroup;
    .end local v4           #lp:Lcom/google/android/talk/DrawerLayout$LayoutParams;
    .end local v5           #searchOpen:Z
    .end local v6           #vg:Landroid/view/ViewGroup;
    :cond_1
    move v2, v9

    .line 397
    goto :goto_0

    .restart local v2       #expandoOpen:Z
    :cond_2
    move v5, v9

    .line 399
    goto :goto_1

    .line 410
    .restart local v3       #expandoOpenClose:Landroid/view/ViewGroup;
    .restart local v4       #lp:Lcom/google/android/talk/DrawerLayout$LayoutParams;
    .restart local v5       #searchOpen:Z
    .restart local v6       #vg:Landroid/view/ViewGroup;
    :cond_3
    const/high16 v7, 0x40a0

    iput v7, v4, Lcom/google/android/talk/DrawerLayout$LayoutParams;->weight:F

    goto :goto_2

    .restart local v0       #expandedRightView:Landroid/view/View;
    .restart local v1       #expandoButton:Landroid/widget/ImageView;
    :cond_4
    move v7, v9

    .line 414
    goto :goto_3
.end method

.method private setupSearchUI()V
    .locals 3

    .prologue
    .line 1244
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1245
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 1246
    const v0, 0x7f100031

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    .line 1247
    const v0, 0x7f10002e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountView:Landroid/view/View;

    .line 1250
    new-instance v0, Lcom/google/android/talk/BuddyListCombo$8;

    invoke-direct {v0, p0}, Lcom/google/android/talk/BuddyListCombo$8;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1276
    new-instance v1, Lcom/google/android/talk/BuddyListCombo$9;

    invoke-direct {v1, p0}, Lcom/google/android/talk/BuddyListCombo$9;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1286
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 1287
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 1288
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    const v1, 0x7f0c00cb

    invoke-virtual {p0, v1}, Lcom/google/android/talk/BuddyListCombo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1289
    return-void
.end method

.method private showFragmentBasedOnIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 501
    invoke-static {p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->isChatScreenIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->ChatScreen:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-direct {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;)V

    .line 506
    :goto_0
    return-void

    .line 504
    :cond_0
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->BuddyList:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-direct {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;)V

    goto :goto_0
.end method

.method private showLoadingView(Z)V
    .locals 8
    .parameter "onlyShowSpinner"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 460
    const v5, 0x7f10001f

    invoke-virtual {p0, v5}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 461
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_0

    .line 478
    :goto_0
    return-void

    .line 465
    :cond_0
    const v5, 0x7f100020

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 466
    .local v2, statusMsgTitle:Landroid/widget/TextView;
    const v5, 0x7f100021

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 468
    .local v1, statusMsg:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    .line 469
    .local v0, container:Landroid/view/View;
    if-nez v0, :cond_1

    .line 470
    const v5, 0x7f10002c

    invoke-virtual {p0, v5}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 472
    :cond_1
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 473
    if-eqz p1, :cond_2

    move v4, v7

    .line 474
    .local v4, visible:I
    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v4           #visible:I
    :cond_2
    move v4, v6

    .line 473
    goto :goto_1
.end method

.method private showSearchInActionBar(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 998
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 999
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1001
    if-eqz p1, :cond_0

    .line 1002
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1004
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->requestFocus()Z

    .line 1007
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 1008
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1010
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/DrawerLayout;->setExpanded(Z)V

    .line 1014
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->invalidateOptionsMenu()V

    .line 1015
    return-void

    :cond_1
    move v1, v3

    .line 998
    goto :goto_0

    :cond_2
    move v1, v2

    .line 999
    goto :goto_1
.end method

.method private startCurtainsAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1228
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mRightPanelContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1229
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mRightPanelContainer:Landroid/view/View;

    const v1, 0x7f050009

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1231
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mLeftPanelContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1232
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mLeftPanelContainer:Landroid/view/View;

    const v1, 0x7f050008

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mCurtainsOpen:Z

    .line 1235
    return-void
.end method

.method private unregisterForAccountListChanged()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0, p0}, Lcom/google/android/talk/TalkApp;->removeAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V

    .line 323
    return-void
.end method


# virtual methods
.method protected createImSession(Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IImSession;
    .locals 5
    .parameter "service"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-interface {p1, v1, v2}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 116
    :goto_0
    return-object v1

    .line 112
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 113
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSession: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public finishedLoading()V
    .locals 1

    .prologue
    .line 1353
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->hideLoadingView()V

    .line 1354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mRosterLoaded:Z

    .line 1355
    return-void
.end method

.method public getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 1

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    return-object v0
.end method

.method public getBuddyListController()Lcom/google/android/talk/fragments/BuddyListFragment$Controller;
    .locals 1

    .prologue
    .line 1292
    sget-object v0, Lcom/google/android/talk/BuddyListCombo;->sInjectedController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    if-eqz v0, :cond_0

    .line 1293
    sget-object v0, Lcom/google/android/talk/BuddyListCombo;->sInjectedController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    .line 1296
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    goto :goto_0
.end method

.method public getChatScreenController()Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    return-object v0
.end method

.method public getSetStatusController()Lcom/google/android/talk/fragments/SetStatusFragment$Controller;
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusController:Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

    return-object v0
.end method

.method public loginToAccount(Lcom/google/android/talk/TalkApp$AccountInfo;)V
    .locals 5
    .parameter "accountInfo"

    .prologue
    .line 763
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mListener:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    if-nez v1, :cond_0

    .line 764
    new-instance v1, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;-><init>(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/BuddyListCombo$1;)V

    iput-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mListener:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    .line 769
    :cond_0
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 771
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 772
    .local v0, service:Lcom/google/android/gtalkservice/IGTalkService;
    if-eqz v0, :cond_1

    .line 773
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mListener:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    invoke-static {v1, v0, v2}, Lcom/google/android/talk/AccountLoginUtils;->signIn(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;)Z

    .line 778
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "accountId"

    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 780
    return-void
.end method

.method public onAccountListChanged()V
    .locals 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->initializeAccountSwitchUI()V

    .line 331
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getAccountList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 334
    .local v0, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 335
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 337
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->initAccountSwitcher()V

    goto :goto_0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 737
    sparse-switch p1, :sswitch_data_0

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 740
    :sswitch_0
    if-ne p2, v0, :cond_0

    const-string v0, "approval"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->ChatScreen:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-direct {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;)V

    .line 742
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0, p3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 747
    :sswitch_1
    if-ne p2, v0, :cond_0

    const-string v0, "logout"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    invoke-static {p0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 755
    :sswitch_2
    if-eq p2, v0, :cond_0

    .line 756
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->finish()V

    goto :goto_0

    .line 737
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_2
        0x12c -> :sswitch_1
    .end sparse-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 307
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 308
    instance-of v0, p1, Lcom/google/android/talk/fragments/BuddyListFragment;

    if-eqz v0, :cond_1

    .line 309
    check-cast p1, Lcom/google/android/talk/fragments/BuddyListFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 310
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/google/android/talk/fragments/SetStatusFragment;

    if-eqz v0, :cond_2

    .line 311
    check-cast p1, Lcom/google/android/talk/fragments/SetStatusFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    goto :goto_0

    .line 312
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/google/android/talk/fragments/ChatScreenFragment;

    if-eqz v0, :cond_0

    .line 313
    check-cast p1, Lcom/google/android/talk/fragments/ChatScreenFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/BuddyListCombo$Focus;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;Z)V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-super {p0}, Lcom/google/android/talk/GtalkServiceActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    .line 227
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    if-nez v4, :cond_1

    .line 230
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 237
    .local v2, transaction:Landroid/app/FragmentTransaction;
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/SetStatusFragment;->isHidden()Z

    move-result v0

    .line 238
    .local v0, hidden:Z
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v2, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 239
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    .line 240
    new-instance v1, Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {v1}, Lcom/google/android/talk/fragments/SetStatusFragment;-><init>()V

    .line 241
    .local v1, newStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;
    const v4, 0x7f10002a

    invoke-virtual {v2, v4, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 242
    if-eqz v0, :cond_2

    .line 243
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 248
    :cond_2
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 251
    const v4, 0x7f10000e

    invoke-virtual {p0, v4}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 252
    .local v3, vg:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 258
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 260
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    if-eqz v4, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->setupExpando()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 145
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/google/android/talk/BuddyListCombo;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f090026

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 149
    if-eqz p1, :cond_0

    .line 153
    const-string v4, "from"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, from:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "from"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    .end local v0           #from:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z

    .line 160
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    .line 161
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/google/android/talk/BuddyListCombo;->initAccount(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 164
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v4, :cond_1

    .line 167
    invoke-static {p0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    .line 223
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->createListeners()V

    .line 173
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v4}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v1

    .line 174
    .local v1, service:Lcom/google/android/gtalkservice/IGTalkService;
    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v4, v4, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/google/android/talk/AccountLoginUtils;->isSignedIn(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkService;)Z

    move-result v4

    if-nez v4, :cond_6

    move v2, v7

    .line 176
    .local v2, showSigningInProgress:Z
    :goto_1
    iget-boolean v4, p0, Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z

    if-nez v4, :cond_7

    .line 177
    const v4, 0x7f04000c

    invoke-virtual {p0, v4}, Lcom/google/android/talk/BuddyListCombo;->setContentView(I)V

    .line 181
    :goto_2
    const v4, 0x7f100022

    invoke-virtual {p0, v4}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/talk/DrawerLayout;

    iput-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    .line 183
    if-nez v2, :cond_8

    move v4, v7

    :goto_3
    invoke-direct {p0, v4}, Lcom/google/android/talk/BuddyListCombo;->showLoadingView(Z)V

    .line 184
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->setupActionBar()V

    .line 185
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->initializeAccountSwitchUI()V

    .line 186
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->initAccountSwitcher()V

    .line 187
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->setupSearchUI()V

    .line 189
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 190
    .local v3, transaction:Landroid/app/FragmentTransaction;
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-nez v4, :cond_2

    .line 191
    new-instance v4, Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {v4}, Lcom/google/android/talk/fragments/BuddyListFragment;-><init>()V

    iput-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 192
    const v4, 0x7f100026

    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 194
    :cond_2
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    if-nez v4, :cond_3

    .line 195
    new-instance v4, Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;-><init>()V

    iput-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    .line 196
    const v4, 0x7f100029

    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 198
    :cond_3
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    if-nez v4, :cond_4

    .line 199
    new-instance v4, Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {v4}, Lcom/google/android/talk/fragments/SetStatusFragment;-><init>()V

    iput-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    .line 200
    const v4, 0x7f10002a

    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 202
    :cond_4
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 203
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/talk/BuddyListCombo;->showFragmentBasedOnIntent(Landroid/content/Intent;)V

    .line 205
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->registerOnSessionCreatedListeners()V

    .line 206
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->requestServiceStateUpdate()V

    .line 208
    const v4, 0x7f100027

    invoke-virtual {p0, v4}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mRightPanelContainer:Landroid/view/View;

    .line 209
    const v4, 0x7f100023

    invoke-virtual {p0, v4}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mLeftPanelContainer:Landroid/view/View;

    .line 211
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    if-eqz v4, :cond_5

    .line 214
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->setupExpando()V

    .line 215
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    invoke-virtual {v4}, Lcom/google/android/talk/DrawerLayout;->requestFocus()Z

    .line 219
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "accountId"

    iget-object v6, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v6, v6, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 222
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->registerForAccountListChanged()V

    goto/16 :goto_0

    .end local v2           #showSigningInProgress:Z
    .end local v3           #transaction:Landroid/app/FragmentTransaction;
    :cond_6
    move v2, v6

    .line 174
    goto/16 :goto_1

    .line 179
    .restart local v2       #showSigningInProgress:Z
    :cond_7
    const v4, 0x7f04000b

    invoke-virtual {p0, v4}, Lcom/google/android/talk/BuddyListCombo;->setContentView(I)V

    goto/16 :goto_2

    :cond_8
    move v4, v6

    .line 183
    goto/16 :goto_3
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    .line 691
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 693
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->isFinishing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 733
    :goto_0
    return-void

    .line 700
    :cond_0
    iget-object v8, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v8, v8, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    move-wide v5, v8

    .line 701
    .local v5, oldAccountId:J
    :goto_1
    move-wide v3, v5

    .line 703
    .local v3, newAccountId:J
    const-string v8, "username"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 704
    .local v7, username:Ljava/lang/String;
    const-string v8, "accountId"

    invoke-virtual {p1, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 706
    .local v0, accountId:J
    cmp-long v8, v0, v10

    if-nez v8, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 708
    :cond_1
    iput-object v12, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 709
    invoke-direct {p0, v12, p1}, Lcom/google/android/talk/BuddyListCombo;->initAccount(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 710
    iget-object v8, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v8, v8, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    move-wide v3, v8

    .line 712
    :cond_2
    :goto_2
    cmp-long v8, v5, v3

    if-eqz v8, :cond_6

    move v2, v13

    .line 714
    .local v2, changedAccounts:Z
    :goto_3
    iget v8, p0, Lcom/google/android/talk/BuddyListCombo;->mLogLevel:I

    if-lt v8, v13, :cond_3

    .line 715
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onNewIntent mAccountInfo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v9}, Lcom/google/android/talk/TalkApp$AccountInfo;->dump()Ljava/lang/String;

    move-result-object v9

    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    .line 718
    :cond_3
    new-instance v8, Lcom/google/android/talk/BuddyListCombo$5;

    invoke-direct {v8, p0, v2, p1}, Lcom/google/android/talk/BuddyListCombo$5;-><init>(Lcom/google/android/talk/BuddyListCombo;ZLandroid/content/Intent;)V

    iput-object v8, p0, Lcom/google/android/talk/BuddyListCombo;->mOnResumeRunnable:Ljava/lang/Runnable;

    .line 732
    invoke-virtual {p0, p1}, Lcom/google/android/talk/BuddyListCombo;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0           #accountId:J
    .end local v2           #changedAccounts:Z
    .end local v3           #newAccountId:J
    .end local v5           #oldAccountId:J
    .end local v7           #username:Ljava/lang/String;
    :cond_4
    move-wide v5, v10

    .line 700
    goto :goto_1

    .restart local v0       #accountId:J
    .restart local v3       #newAccountId:J
    .restart local v5       #oldAccountId:J
    .restart local v7       #username:Ljava/lang/String;
    :cond_5
    move-wide v3, v10

    .line 710
    goto :goto_2

    .line 712
    :cond_6
    const/4 v8, 0x0

    move v2, v8

    goto :goto_3

    .restart local v2       #changedAccounts:Z
    :cond_7
    move-object v9, v12

    .line 715
    goto :goto_4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 983
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 994
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 987
    :sswitch_0
    invoke-static {p0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    move v0, v1

    .line 988
    goto :goto_0

    .line 991
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/google/android/talk/BuddyListCombo;->showSearchInActionBar(Z)V

    move v0, v1

    .line 992
    goto :goto_0

    .line 983
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f10007a -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const v2, 0x7f1000b9

    const/4 v3, 0x1

    .line 350
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 356
    invoke-direct {p0, p1, v2}, Lcom/google/android/talk/BuddyListCombo;->removeItem(Landroid/view/Menu;I)V

    .line 357
    const v1, 0x7f1000ba

    invoke-direct {p0, p1, v1}, Lcom/google/android/talk/BuddyListCombo;->removeItem(Landroid/view/Menu;I)V

    .line 358
    const v1, 0x7f1000bc

    invoke-direct {p0, p1, v1}, Lcom/google/android/talk/BuddyListCombo;->removeItem(Landroid/view/Menu;I)V

    .line 359
    invoke-direct {p0, p1, v2}, Lcom/google/android/talk/BuddyListCombo;->removeItem(Landroid/view/Menu;I)V

    .line 361
    const v1, 0x7f10007a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 362
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 363
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    move v1, v3

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 366
    :cond_0
    return v3

    .line 363
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 284
    invoke-super {p0}, Lcom/google/android/talk/GtalkServiceActivity;->onRestart()V

    .line 285
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->registerForAccountListChanged()V

    .line 286
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 268
    invoke-super {p0}, Lcom/google/android/talk/GtalkServiceActivity;->onResume()V

    .line 270
    iget-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mCurtainsOpen:Z

    if-eqz v0, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->cleanupAfterCurtainsAnimation()V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mOnResumeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mOnResumeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mOnResumeRunnable:Ljava/lang/Runnable;

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-static {v0, p0}, Lcom/google/android/talk/AccountLoginUtils;->checkForDataAccess(Lcom/google/android/talk/TalkApp;Landroid/app/Activity;)V

    .line 280
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 290
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 291
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->currentChatUser()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, currentChat:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 294
    const-string v1, "from"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .end local v0           #currentChat:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Lcom/google/android/talk/GtalkServiceActivity;->onStart()V

    .line 132
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->onCancelSearch()V

    .line 140
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 141
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 301
    invoke-super {p0}, Lcom/google/android/talk/GtalkServiceActivity;->onStop()V

    .line 302
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->unregisterForAccountListChanged()V

    .line 303
    return-void
.end method

.method public refreshAccountInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    .line 1308
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v0, :cond_1

    .line 1309
    const-string v0, "refreshAccountInfo: mAccountInfo to start with is null!!!"

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    .line 1346
    :cond_0
    :goto_0
    return-void

    .line 1312
    :cond_1
    iget v0, p0, Lcom/google/android/talk/BuddyListCombo;->mLogLevel:I

    if-lt v0, v6, :cond_2

    .line 1313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshAccountInfo: old mAccountInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp$AccountInfo;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    .line 1316
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    :cond_3
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 1318
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_6

    .line 1319
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/talk/TalkApp;->getAccountInfo(J)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 1323
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v1, :cond_5

    .line 1328
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getActiveAccount()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    .line 1329
    if-eqz v1, :cond_7

    iget-wide v2, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    iget-wide v2, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iget-wide v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    .line 1332
    iput-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 1342
    :cond_5
    iget v0, p0, Lcom/google/android/talk/BuddyListCombo;->mLogLevel:I

    if-lt v0, v6, :cond_0

    .line 1343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshAccountInfo: new mAccountInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp$AccountInfo;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1320
    :cond_6
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1321
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/talk/TalkApp;->getAccountInfo(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    goto :goto_1

    .line 1334
    :cond_7
    const-string v1, "refreshAccountInfo: mAccountInfo still null, starting AccountSelectionActivity"

    invoke-static {v1}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    .line 1337
    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 1338
    invoke-static {p0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method protected serviceStateChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1359
    invoke-super {p0}, Lcom/google/android/talk/GtalkServiceActivity;->serviceStateChanged()V

    .line 1361
    iget-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mRosterLoaded:Z

    if-nez v0, :cond_0

    .line 1362
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getApp()Lcom/google/android/talk/TalkApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 1363
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/talk/AccountLoginUtils;->isSignedIn(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkService;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1367
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceStateChanged: isSignedIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    .line 1369
    if-nez v0, :cond_0

    .line 1370
    invoke-direct {p0, v3}, Lcom/google/android/talk/BuddyListCombo;->showLoadingView(Z)V

    .line 1373
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 1363
    goto :goto_0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1207
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->setIntent(Landroid/content/Intent;)V

    .line 1208
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/fragments/BuddyListFragment;->setFocus(Landroid/content/Intent;)V

    .line 1211
    :cond_0
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1198
    if-eqz p4, :cond_0

    .line 1199
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/talk/GtalkServiceActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1203
    :goto_0
    return-void

    .line 1201
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public switchAccounts()V
    .locals 3

    .prologue
    .line 832
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    iget v0, p0, Lcom/google/android/talk/BuddyListCombo;->mLogLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchAccounts mAccountInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp$AccountInfo;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    .line 839
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->refreshAccountInfo()V

    .line 840
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v0, :cond_0

    .line 845
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->softUiReset()V

    .line 846
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->switchAccounts(Lcom/google/android/talk/TalkApp$AccountInfo;)V

    .line 847
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->switchAccounts(Lcom/google/android/talk/TalkApp$AccountInfo;)V

    .line 848
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->switchAccounts()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 851
    :catch_0
    move-exception v0

    .line 852
    const-string v1, "talk"

    const-string v2, "NPE switching accounts: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 853
    throw v0
.end method
