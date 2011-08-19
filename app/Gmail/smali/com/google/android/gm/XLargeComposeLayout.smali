.class public Lcom/google/android/gm/XLargeComposeLayout;
.super Lcom/google/android/gm/DefaultComposeLayout;
.source "XLargeComposeLayout.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# instance fields
.field private final LANDSCAPE_LAYOUT:I

.field private final PORTRAIT_LAYOUT:I

.field private mAddBcc:Landroid/widget/Button;

.field private mAddCc:Landroid/widget/Button;

.field private mCurrentMode:I

.field private mForwardTab:Landroid/app/ActionBar$Tab;

.field private mMenu:Landroid/view/Menu;

.field private final mParent:Landroid/app/Activity;

.field private mReplyAllTab:Landroid/app/ActionBar$Tab;

.field private mReplyTab:Landroid/app/ActionBar$Tab;

.field private mSaveEnabled:Z

.field private mSaveItem:Landroid/view/MenuItem;

.field private mSaved:Z

.field private mSendEnabled:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gm/ComposeController;)V
    .locals 2
    .parameter "parentActivity"
    .parameter "controller"

    .prologue
    const/4 v1, 0x1

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/DefaultComposeLayout;-><init>(Landroid/app/Activity;Lcom/google/android/gm/ComposeController;)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mCurrentMode:I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mSaved:Z

    .line 44
    iput-boolean v1, p0, Lcom/google/android/gm/XLargeComposeLayout;->mSendEnabled:Z

    .line 45
    iput-boolean v1, p0, Lcom/google/android/gm/XLargeComposeLayout;->mSaveEnabled:Z

    .line 47
    const v0, 0x7f040008

    iput v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->LANDSCAPE_LAYOUT:I

    .line 48
    const v0, 0x7f040007

    iput v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->PORTRAIT_LAYOUT:I

    .line 52
    iput-object p1, p0, Lcom/google/android/gm/XLargeComposeLayout;->mParent:Landroid/app/Activity;

    .line 53
    return-void
.end method

.method private createTab(Landroid/app/ActionBar;I)Landroid/app/ActionBar$Tab;
    .locals 2
    .parameter "actionBar"
    .parameter "textResource"

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 196
    .local v0, tab:Landroid/app/ActionBar$Tab;
    iget-object v1, p0, Lcom/google/android/gm/XLargeComposeLayout;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 197
    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 198
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 199
    return-object v0
.end method

.method private getLayout(Landroid/content/res/Configuration;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 66
    invoke-static {p1}, Lcom/google/android/gm/Utils;->isLandscape(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const v0, 0x7f040008

    .line 69
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f040007

    goto :goto_0
.end method

.method private setCcBccVisibility()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gm/XLargeComposeLayout;->getComposeArea()Lcom/google/android/gm/ComposeAreaController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/ComposeAreaController;->currentlyShowingCc()Z

    move-result v1

    .line 83
    .local v1, showingCc:Z
    invoke-virtual {p0}, Lcom/google/android/gm/XLargeComposeLayout;->getComposeArea()Lcom/google/android/gm/ComposeAreaController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/ComposeAreaController;->currentlyShowingBcc()Z

    move-result v0

    .line 84
    .local v0, showingBcc:Z
    const v2, 0x7f0e002a

    invoke-virtual {p0, v2}, Lcom/google/android/gm/XLargeComposeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddCc:Landroid/widget/Button;

    .line 85
    const v2, 0x7f0e002b

    invoke-virtual {p0, v2}, Lcom/google/android/gm/XLargeComposeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddBcc:Landroid/widget/Button;

    .line 86
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 87
    iget-object v2, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddCc:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    iget-object v2, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddBcc:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 90
    iget-object v2, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddCc:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    iget-object v2, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddBcc:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 92
    :cond_2
    if-nez v1, :cond_0

    .line 93
    iget-object v2, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddCc:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 94
    iget-object v2, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddBcc:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupView(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "config"

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    iget-object v4, p0, Lcom/google/android/gm/XLargeComposeLayout;->mParent:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 155
    :cond_0
    iget-object v4, p0, Lcom/google/android/gm/XLargeComposeLayout;->mParent:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/google/android/gm/XLargeComposeLayout;->getLayout(Landroid/content/res/Configuration;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 157
    invoke-virtual {p0}, Lcom/google/android/gm/XLargeComposeLayout;->getComposeArea()Lcom/google/android/gm/ComposeAreaController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gm/ComposeAreaController;->getView()Landroid/view/View;

    move-result-object v2

    .line 158
    .local v2, composeAreaView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 159
    .local v1, composeAreaParent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 160
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 163
    :cond_1
    const v4, 0x7f0e0017

    invoke-virtual {p0, v4}, Lcom/google/android/gm/XLargeComposeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 164
    .local v3, scrollArea:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/google/android/gm/XLargeComposeLayout;->getComposeArea()Lcom/google/android/gm/ComposeAreaController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gm/ComposeAreaController;->getView()Landroid/view/View;

    move-result-object v0

    .line 165
    .local v0, composeArea:Landroid/view/View;
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, -0x1

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 167
    invoke-virtual {p0}, Lcom/google/android/gm/XLargeComposeLayout;->setupButtons()V

    .line 168
    return-void
.end method


# virtual methods
.method public enableSave(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e0033

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mSaveItem:Landroid/view/MenuItem;

    .line 135
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mSaved:Z

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mSaveItem:Landroid/view/MenuItem;

    const v1, 0x7f0d0054

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mSaveItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 142
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gm/XLargeComposeLayout;->mSaveEnabled:Z

    .line 143
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mSaveItem:Landroid/view/MenuItem;

    const v1, 0x7f0d0053

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public enableSend(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e0032

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 128
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gm/XLargeComposeLayout;->mSendEnabled:Z

    .line 129
    return-void
.end method

.method public hideOrShowBcc(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddBcc:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 226
    invoke-virtual {p0}, Lcom/google/android/gm/XLargeComposeLayout;->getComposeArea()Lcom/google/android/gm/ComposeAreaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeAreaController;->hideOrShowBcc(Z)V

    .line 227
    return-void

    .line 225
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideOrShowCcBcc(ZZ)V
    .locals 3
    .parameter "show"
    .parameter "updateFields"

    .prologue
    const/16 v2, 0x8

    .line 215
    if-eqz p2, :cond_1

    .line 216
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddCc:Landroid/widget/Button;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddBcc:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 218
    invoke-virtual {p0}, Lcom/google/android/gm/XLargeComposeLayout;->getComposeArea()Lcom/google/android/gm/ComposeAreaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeAreaController;->hideOrShowCcBcc(Z)V

    .line 222
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 216
    goto :goto_0

    .line 220
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gm/XLargeComposeLayout;->setCcBccVisibility()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 118
    invoke-super {p0, p1}, Lcom/google/android/gm/DefaultComposeLayout;->onClick(Landroid/view/View;)V

    .line 121
    :goto_0
    return-void

    .line 102
    :sswitch_0
    invoke-virtual {p0, v1, v1}, Lcom/google/android/gm/XLargeComposeLayout;->hideOrShowCcBcc(ZZ)V

    goto :goto_0

    .line 106
    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/google/android/gm/XLargeComposeLayout;->hideOrShowBcc(Z)V

    goto :goto_0

    .line 110
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mController:Lcom/google/android/gm/ComposeController;

    invoke-interface {v0}, Lcom/google/android/gm/ComposeController;->doAttach()V

    goto :goto_0

    .line 114
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mController:Lcom/google/android/gm/ComposeController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gm/ComposeController;->doSave(Z)V

    goto :goto_0

    .line 100
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e002a -> :sswitch_0
        0x7f0e002b -> :sswitch_1
        0x7f0e002c -> :sswitch_2
        0x7f0e0033 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Z)Z
    .locals 3
    .parameter "menu"
    .parameter "messageIsForwardOrReply"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/android/gm/XLargeComposeLayout;->mMenu:Landroid/view/Menu;

    .line 173
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/XLargeComposeLayout;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/google/android/gm/XLargeComposeLayout;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 175
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 176
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 177
    const v1, 0x7f0d0034

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/XLargeComposeLayout;->createTab(Landroid/app/ActionBar;I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/XLargeComposeLayout;->mReplyTab:Landroid/app/ActionBar$Tab;

    .line 178
    const v1, 0x7f0d0035

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/XLargeComposeLayout;->createTab(Landroid/app/ActionBar;I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/XLargeComposeLayout;->mReplyAllTab:Landroid/app/ActionBar$Tab;

    .line 179
    const v1, 0x7f0d0037

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/XLargeComposeLayout;->createTab(Landroid/app/ActionBar;I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/XLargeComposeLayout;->mForwardTab:Landroid/app/ActionBar$Tab;

    .line 180
    iget v1, p0, Lcom/google/android/gm/XLargeComposeLayout;->mCurrentMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 181
    iget v1, p0, Lcom/google/android/gm/XLargeComposeLayout;->mCurrentMode:I

    invoke-virtual {p0, v1}, Lcom/google/android/gm/XLargeComposeLayout;->updateComposeMode(I)V

    .line 184
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gm/DefaultComposeLayout;->onCreateOptionsMenu(Landroid/view/Menu;Z)Z

    move-result v1

    return v1
.end method

.method public onOrientationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/google/android/gm/XLargeComposeLayout;->setupView(Landroid/content/res/Configuration;)V

    .line 211
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mSaveEnabled:Z

    invoke-virtual {p0, v0}, Lcom/google/android/gm/XLargeComposeLayout;->enableSave(Z)V

    .line 190
    iget-boolean v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mSendEnabled:Z

    invoke-virtual {p0, v0}, Lcom/google/android/gm/XLargeComposeLayout;->enableSend(Z)V

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 248
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mReplyTab:Landroid/app/ActionBar$Tab;

    if-ne p1, v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mController:Lcom/google/android/gm/ComposeController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gm/ComposeController;->setComposeMode(I)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mReplyAllTab:Landroid/app/ActionBar$Tab;

    if-ne p1, v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mController:Lcom/google/android/gm/ComposeController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gm/ComposeController;->setComposeMode(I)V

    goto :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mForwardTab:Landroid/app/ActionBar$Tab;

    if-ne p1, v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mController:Lcom/google/android/gm/ComposeController;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/gm/ComposeController;->setComposeMode(I)V

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 243
    return-void
.end method

.method public setSaved()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mSaved:Z

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/XLargeComposeLayout;->enableSave(Z)V

    .line 149
    return-void
.end method

.method public setupButtons()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/google/android/gm/XLargeComposeLayout;->setCcBccVisibility()V

    .line 76
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddCc:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mAddBcc:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v0, 0x7f0e002c

    invoke-virtual {p0, v0}, Lcom/google/android/gm/XLargeComposeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method public setupLayout()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/XLargeComposeLayout;->setupView(Landroid/content/res/Configuration;)V

    .line 62
    return-void
.end method

.method public shouldShowToast(I)Z
    .locals 1
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 276
    packed-switch p1, :pswitch_data_0

    .line 282
    :goto_0
    :pswitch_0
    return v0

    .line 280
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0032
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateComposeMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 254
    iput p1, p0, Lcom/google/android/gm/XLargeComposeLayout;->mCurrentMode:I

    .line 257
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mReplyTab:Landroid/app/ActionBar$Tab;

    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 261
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 263
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mReplyTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    goto :goto_0

    .line 266
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mReplyAllTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    goto :goto_0

    .line 269
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gm/XLargeComposeLayout;->mForwardTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
