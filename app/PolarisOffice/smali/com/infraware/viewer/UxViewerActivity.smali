.class public Lcom/infraware/viewer/UxViewerActivity;
.super Lcom/infraware/common/UxDocViewerBase;
.source "UxViewerActivity.java"

# interfaces
.implements Lcom/infraware/evengine/E$EV_VIEW_MODE;
.implements Lcom/infraware/common/UDM$USER_DEFINE_MESSAGE;


# static fields
.field private static final LOG_CAT:Ljava/lang/String; = "UiDocViewerBase"


# instance fields
.field private m_bInitialized:Z

.field public m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

.field private m_oMenu:Landroid/view/Menu;

.field m_oViewerCB:Lcom/infraware/common/ICoDocViewerCB;

.field private m_oZoomContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/infraware/common/UxDocViewerBase;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oViewerCB:Lcom/infraware/common/ICoDocViewerCB;

    .line 44
    iput-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oMenu:Landroid/view/Menu;

    .line 46
    iput-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    .line 47
    iput-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oZoomContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_bInitialized:Z

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/viewer/UxViewerActivity;Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/common/CoCoreFunctionInterface;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    return-object v0
.end method

.method static synthetic access$3(Lcom/infraware/viewer/UxViewerActivity;Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    return-void
.end method

.method static synthetic access$4(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/infraware/viewer/UxViewerActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/infraware/viewer/UxViewerActivity;->m_bInitialized:Z

    return-void
.end method

.method static synthetic access$6(Lcom/infraware/viewer/UxViewerActivity;)Landroid/view/Menu;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$7(Lcom/infraware/viewer/UxViewerActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/infraware/viewer/UxViewerActivity;->showToast(II)V

    return-void
.end method


# virtual methods
.method protected ChangeViewMode(I)V
    .locals 5
    .parameter "EV_VIEW_MODE"

    .prologue
    .line 406
    const v1, 0x7f0c015f

    invoke-virtual {p0, v1}, Lcom/infraware/viewer/UxViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 407
    .local v0, docViewLayout:Landroid/widget/RelativeLayout;
    const-string v1, "UiDocViewerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ChangeViewMode width="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/infraware/common/CoCoreFunctionInterface;->changeMode(IIIZ)V

    .line 409
    return-void
.end method

.method protected createHandler()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/infraware/viewer/UxViewerActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/viewer/UxViewerActivity$1;-><init>(Lcom/infraware/viewer/UxViewerActivity;)V

    iput-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oHandler:Landroid/os/Handler;

    .line 252
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 414
    iget-boolean v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_bInitialized:Z

    if-nez v0, :cond_0

    .line 431
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->show(Z)V

    goto :goto_0

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->show(Z)V

    goto :goto_0

    .line 428
    :cond_2
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->closeEngine()V

    .line 429
    invoke-super {p0}, Lcom/infraware/common/UxDocViewerBase;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 289
    invoke-super {p0, p1}, Lcom/infraware/common/UxDocViewerBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 290
    invoke-static {p0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->invalidateOptionsMenuIfPossible(Landroid/app/Activity;)V

    .line 291
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/infraware/common/UxDocViewerBase;->onCreate(Landroid/os/Bundle;)V

    .line 58
    new-instance v0, Lcom/infraware/common/ICoDocViewerCB;

    iget-object v1, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    invoke-direct {v0, v1, p0}, Lcom/infraware/common/ICoDocViewerCB;-><init>(Lcom/infraware/common/UxSurfaceView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oViewerCB:Lcom/infraware/common/ICoDocViewerCB;

    .line 59
    new-instance v0, Lcom/infraware/common/UxGestureDomain;

    iget-object v1, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    iget-object v3, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oEventListener:Lcom/infraware/common/UiCoreEventListener;

    invoke-direct {v0, p0, v1, v3}, Lcom/infraware/common/UxGestureDomain;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/infraware/common/UiCoreEventListener;)V

    iput-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oGestureDomain:Lcom/infraware/common/UxGestureDomain;

    .line 60
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oGestureDomain:Lcom/infraware/common/UxGestureDomain;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/common/UxGestureDomain;->getDetector(I)Lcom/infraware/common/UxGestureDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    .line 61
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    iget-object v1, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    invoke-virtual {v0, v1}, Lcom/infraware/common/UxSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    iget-object v1, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    invoke-virtual {v0, v1}, Lcom/infraware/common/UxSurfaceView;->setGestureHandler(Lcom/infraware/common/UxGestureDetector;)V

    .line 63
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    iget-object v1, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oViewerCB:Lcom/infraware/common/ICoDocViewerCB;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/common/CoCoreFunctionInterface;->setListener(Lcom/infraware/evengine/EvListener$ViewerListener;Lcom/infraware/evengine/EvListener$EditorListener;Lcom/infraware/evengine/EvListener$WordEditorListener;Lcom/infraware/evengine/EvListener$PptEditorListener;Lcom/infraware/evengine/EvListener$SheetEditorListener;)V

    .line 65
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;

    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Slide:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct {v0, p0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;-><init>(Lcom/infraware/common/UxDocViewerBase;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    iput-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oZoomContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;

    .line 66
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oZoomContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;->createView()V

    .line 68
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->setDisplayHomeAsUpEnabledIfPossible(Landroid/app/Activity;Z)V

    .line 69
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const v5, 0x7f0c018b

    const/4 v4, 0x0

    .line 321
    iget-object v1, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v1}, Lcom/infraware/common/UxSurfaceView;->hideSoftInput()V

    .line 323
    invoke-virtual {p0}, Lcom/infraware/viewer/UxViewerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 324
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0b0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 327
    sget v1, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_ALWAYS:I

    sget v2, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_WITH_TEXT:I

    or-int/2addr v1, v2

    .line 326
    invoke-static {p1, v5, v1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->setShowAsActionIfPossible(Landroid/view/Menu;II)V

    .line 328
    const v1, 0x7f0c018d

    .line 329
    sget v2, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_ALWAYS:I

    sget v3, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_WITH_TEXT:I

    or-int/2addr v2, v3

    .line 328
    invoke-static {p1, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->setShowAsActionIfPossible(Landroid/view/Menu;II)V

    .line 330
    invoke-virtual {p0}, Lcom/infraware/viewer/UxViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 331
    const v1, 0x7f0c018e

    .line 332
    sget v2, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_ALWAYS:I

    sget v3, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_WITH_TEXT:I

    or-int/2addr v2, v3

    .line 331
    invoke-static {p1, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->setShowAsActionIfPossible(Landroid/view/Menu;II)V

    .line 334
    :cond_0
    const v1, 0x7f0c0178

    iget-boolean v2, p0, Lcom/infraware/viewer/UxViewerActivity;->m_bLoadComplete:Z

    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 335
    const v1, 0x7f0c018c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 337
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 339
    iput-object p1, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oMenu:Landroid/view/Menu;

    .line 341
    invoke-super {p0, p1}, Lcom/infraware/common/UxDocViewerBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onLocale()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 294
    invoke-static {p0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->invalidateOptionsMenuIfPossible(Landroid/app/Activity;)V

    .line 295
    invoke-static {}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->closeAllDialogs()V

    .line 298
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->show(Z)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->destroy()V

    .line 303
    iput-object v2, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    if-eqz v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->show(Z)V

    .line 309
    :cond_2
    iput-object v2, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    .line 311
    :cond_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 356
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->homeActionId:I

    if-ne v0, v1, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/infraware/viewer/UxViewerActivity;->onBackPressed()V

    move v0, v2

    .line 401
    :goto_0
    return v0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/infraware/common/Utils;->hideIme(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 363
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v0, v2

    .line 401
    goto :goto_0

    .line 365
    :pswitch_1
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->show(Z)V

    .line 367
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->destroy()V

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    .line 370
    :cond_2
    invoke-virtual {p0, v2}, Lcom/infraware/viewer/UxViewerActivity;->ChangeViewMode(I)V

    goto :goto_1

    .line 373
    :pswitch_2
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oZoomContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oZoomContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;->isShow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oZoomContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;->show(Z)V

    goto :goto_1

    .line 377
    :pswitch_3
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    if-eqz v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    invoke-virtual {v0, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->show(Z)V

    .line 380
    :cond_3
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    if-nez v0, :cond_4

    .line 381
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-direct {v0, p0}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;-><init>(Lcom/infraware/common/UxDocViewerBase;)V

    iput-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    .line 382
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->createView()V

    .line 383
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->show(Z)V

    goto :goto_1

    .line 386
    :cond_4
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    iget-object v1, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->show(Z)V

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2

    .line 390
    :pswitch_4
    invoke-virtual {p0}, Lcom/infraware/viewer/UxViewerActivity;->showBookmarkPanel()V

    goto :goto_1

    .line 395
    :pswitch_5
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->setReflowTextMode()V

    goto :goto_1

    .line 398
    :pswitch_6
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_strOpenPath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/infraware/filemanager/FmFileUtil;->onAttachFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 363
    :pswitch_data_0
    .packed-switch 0x7f0c018b
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_bLoadComplete:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 351
    :goto_0
    return v0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->hideSoftInput()V

    .line 351
    invoke-super {p0, p1}, Lcom/infraware/common/UxDocViewerBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public processKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "a_oEvent"

    .prologue
    .line 436
    invoke-static {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->getKeyEventEx(Landroid/view/KeyEvent;)Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;

    move-result-object v1

    .line 438
    .local v1, eventEx:Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;
    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getAction()I

    move-result v2

    .line 439
    .local v2, nAction:I
    const/4 v0, 0x0

    .line 441
    .local v0, bHandled:Z
    if-nez v2, :cond_0

    .line 445
    invoke-virtual {p0, v1}, Lcom/infraware/viewer/UxViewerActivity;->processKeyEvent_View(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;)Z

    move-result v0

    .line 449
    :cond_0
    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 451
    :goto_0
    return v3

    :cond_1
    invoke-super {p0, p1}, Lcom/infraware/common/UxDocViewerBase;->processKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method processKeyEvent_View(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;)Z
    .locals 8
    .parameter "a_oEvent"

    .prologue
    const/4 v1, 0x3

    const/16 v2, 0x28

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 456
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getKeyCode()I

    move-result v6

    .line 458
    .local v6, nKeyCode:I
    packed-switch v6, :pswitch_data_0

    .line 481
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getMoveHomeKeyCode()I

    move-result v0

    if-ne v6, v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0, v3, v3}, Lcom/infraware/common/CoCoreFunctionInterface;->movePage(II)V

    move v0, v7

    .line 504
    :goto_0
    return v0

    .line 461
    :pswitch_0
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/4 v1, 0x2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/common/CoCoreFunctionInterface;->scrollPage(IIIII)V

    move v0, v7

    .line 464
    goto :goto_0

    .line 466
    :pswitch_1
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/common/CoCoreFunctionInterface;->scrollPage(IIIII)V

    move v0, v7

    .line 469
    goto :goto_0

    .line 471
    :pswitch_2
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    move v1, v3

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/common/CoCoreFunctionInterface;->scrollPage(IIIII)V

    move v0, v7

    .line 474
    goto :goto_0

    .line 476
    :pswitch_3
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    move v1, v7

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/common/CoCoreFunctionInterface;->scrollPage(IIIII)V

    move v0, v7

    .line 479
    goto :goto_0

    .line 486
    :cond_0
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getMoveEndKeyCode()I

    move-result v0

    if-ne v6, v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Lcom/infraware/common/CoCoreFunctionInterface;->movePage(II)V

    move v0, v7

    .line 489
    goto :goto_0

    .line 491
    :cond_1
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getPageUpKeyCode()I

    move-result v0

    if-ne v6, v0, :cond_2

    .line 493
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0, v7, v3}, Lcom/infraware/common/CoCoreFunctionInterface;->movePage(II)V

    move v0, v7

    .line 494
    goto :goto_0

    .line 496
    :cond_2
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getPageDownKeyCode()I

    move-result v0

    if-ne v6, v0, :cond_3

    .line 498
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0, v1, v3}, Lcom/infraware/common/CoCoreFunctionInterface;->movePage(II)V

    move v0, v7

    .line 499
    goto :goto_0

    :cond_3
    move v0, v3

    .line 504
    goto :goto_0

    .line 458
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showBookmarkPanel()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 256
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->show(Z)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->show(Z)V

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    if-nez v0, :cond_2

    .line 264
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Bookclip:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct {v0, p0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;-><init>(Lcom/infraware/common/UxDocViewerBase;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    iput-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    .line 265
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->createView()V

    .line 266
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    invoke-virtual {v0, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->show(Z)V

    .line 270
    :goto_0
    return-void

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    iget-object v1, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->show(Z)V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method public showThumbnailPanel()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->show(Z)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    if-nez v0, :cond_1

    .line 279
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Slide:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct {v0, p0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;-><init>(Lcom/infraware/common/UxDocViewerBase;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    iput-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    .line 280
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->createView()V

    .line 281
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v0, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->show(Z)V

    .line 285
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    iget-object v1, p0, Lcom/infraware/viewer/UxViewerActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->show(Z)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1
.end method
