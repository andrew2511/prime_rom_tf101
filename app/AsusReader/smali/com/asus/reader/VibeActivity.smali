.class public Lcom/asus/reader/VibeActivity;
.super Landroid/app/Activity;
.source "VibeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/asus/reader/ui/BookGrid$onLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/VibeActivity$mMyCloudReceiver;,
        Lcom/asus/reader/VibeActivity$backItem;,
        Lcom/asus/reader/VibeActivity$PackageCheckAdapter;,
        Lcom/asus/reader/VibeActivity$CategoryAdapter;,
        Lcom/asus/reader/VibeActivity$BooksAdapter;
    }
.end annotation


# static fields
.field private static mIsTrySecondToMyCloud:Z


# instance fields
.field private final DIALOG_CONNECTION_FAIL:I

.field private final DIALOG_LOGIN_FAIL:I

.field private final DIALOG_VIBE_DELETE:I

.field private final MENU_VIBE_LOGOUT:I

.field private final MENU_VIBE_RECENT_ACTIVITY:I

.field private final MENU_VIBE_SYNC:I

.field private final REQ_MYCLOUD_GETINFO_NOCALLBACK:I

.field private final REQ_MYCLOUD_GETINFO_NOCALLBACK_AND_ACTION:I

.field private final REQ_MYCLOUD_GET_ACCOUNTINFO:I

.field private final REQ_MYCLOUD_GET_ACCOUNTINFO_AND_ACTION:I

.field private final REQ_MYCLOUD_LOGOUT:I

.field private final REQ_MYCLOUD_RENEW_ACCOUNTINFO:I

.field private final actionbarVibe:I

.field private destroyCursor:Z

.field private mBookBacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/VibeActivity$backItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBookGrid:Lcom/asus/reader/ui/BookGrid;

.field private mBookPosition:I

.field private mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

.field private mCateList:Lcom/asus/reader/ui/CategoryListView;

.field private mCategoryAdapter:Lcom/asus/reader/VibeActivity$CategoryAdapter;

.field private mColumnCount:I

.field private mColumnWidth:I

.field private mCustomView:Landroid/view/View;

.field private mFrame:Lcom/asus/reader/ui/DragFrame;

.field final mHandler:Landroid/os/Handler;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsLandscape:Z

.field private mIsLoading:Z

.field private mListWidth:I

.field private final mLoadingLimit:I

.field private mMenu:Landroid/view/Menu;

.field private mReceiver:Lcom/asus/reader/VibeActivity$mMyCloudReceiver;

.field private mSearch:Ljava/lang/String;

.field private mSelectId:I

.field private mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

.field private mViewStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final stateVibeGrid:I

.field private final stateVibeInfo:I

.field private final stateVibeRecentActivities:I

.field private final stateVibeSearch:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1925
    const/4 v0, 0x0

    sput-boolean v0, Lcom/asus/reader/VibeActivity;->mIsTrySecondToMyCloud:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x4

    .line 84
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 135
    iput-boolean v3, p0, Lcom/asus/reader/VibeActivity;->destroyCursor:Z

    .line 137
    const/16 v0, 0x8

    iput v0, p0, Lcom/asus/reader/VibeActivity;->stateVibeGrid:I

    .line 138
    const/16 v0, 0x9

    iput v0, p0, Lcom/asus/reader/VibeActivity;->stateVibeInfo:I

    .line 139
    const/16 v0, 0xa

    iput v0, p0, Lcom/asus/reader/VibeActivity;->stateVibeRecentActivities:I

    .line 140
    const/16 v0, 0xf

    iput v0, p0, Lcom/asus/reader/VibeActivity;->stateVibeSearch:I

    .line 142
    iput v1, p0, Lcom/asus/reader/VibeActivity;->actionbarVibe:I

    .line 144
    iput v4, p0, Lcom/asus/reader/VibeActivity;->DIALOG_LOGIN_FAIL:I

    .line 145
    iput v5, p0, Lcom/asus/reader/VibeActivity;->DIALOG_CONNECTION_FAIL:I

    .line 146
    iput v1, p0, Lcom/asus/reader/VibeActivity;->DIALOG_VIBE_DELETE:I

    .line 150
    iput v3, p0, Lcom/asus/reader/VibeActivity;->REQ_MYCLOUD_GET_ACCOUNTINFO:I

    .line 151
    iput v4, p0, Lcom/asus/reader/VibeActivity;->REQ_MYCLOUD_RENEW_ACCOUNTINFO:I

    .line 152
    iput v5, p0, Lcom/asus/reader/VibeActivity;->REQ_MYCLOUD_GETINFO_NOCALLBACK:I

    .line 153
    iput v1, p0, Lcom/asus/reader/VibeActivity;->REQ_MYCLOUD_LOGOUT:I

    .line 154
    const/4 v0, 0x5

    iput v0, p0, Lcom/asus/reader/VibeActivity;->REQ_MYCLOUD_GET_ACCOUNTINFO_AND_ACTION:I

    .line 155
    const/4 v0, 0x6

    iput v0, p0, Lcom/asus/reader/VibeActivity;->REQ_MYCLOUD_GETINFO_NOCALLBACK_AND_ACTION:I

    .line 165
    iput v2, p0, Lcom/asus/reader/VibeActivity;->mBookPosition:I

    .line 167
    new-instance v0, Lcom/asus/reader/VibeActivity$CategoryAdapter;

    invoke-direct {v0, p0}, Lcom/asus/reader/VibeActivity$CategoryAdapter;-><init>(Lcom/asus/reader/VibeActivity;)V

    iput-object v0, p0, Lcom/asus/reader/VibeActivity;->mCategoryAdapter:Lcom/asus/reader/VibeActivity$CategoryAdapter;

    .line 168
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/VibeActivity;->mSearch:Ljava/lang/String;

    .line 169
    const/16 v0, 0xb

    iput v0, p0, Lcom/asus/reader/VibeActivity;->MENU_VIBE_LOGOUT:I

    .line 170
    const/16 v0, 0xc

    iput v0, p0, Lcom/asus/reader/VibeActivity;->MENU_VIBE_RECENT_ACTIVITY:I

    .line 171
    const/16 v0, 0xd

    iput v0, p0, Lcom/asus/reader/VibeActivity;->MENU_VIBE_SYNC:I

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/reader/VibeActivity;->mIsLoading:Z

    .line 177
    iput v2, p0, Lcom/asus/reader/VibeActivity;->mSelectId:I

    .line 178
    const/4 v0, 0x5

    iput v0, p0, Lcom/asus/reader/VibeActivity;->mLoadingLimit:I

    .line 184
    new-instance v0, Lcom/asus/reader/VibeActivity$1;

    invoke-direct {v0, p0}, Lcom/asus/reader/VibeActivity$1;-><init>(Lcom/asus/reader/VibeActivity;)V

    iput-object v0, p0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    .line 2177
    return-void
.end method

.method static synthetic access$000(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/VibeActivity$CategoryAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mCategoryAdapter:Lcom/asus/reader/VibeActivity$CategoryAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/ui/CategoryListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/ui/BookGrid;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/asus/reader/VibeActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/asus/reader/VibeActivity;->loadVibeCategory(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/asus/reader/VibeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->hideLoading()V

    return-void
.end method

.method static synthetic access$1300(Lcom/asus/reader/VibeActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/asus/reader/VibeActivity;->tryToGetMyCloudAccountInfo(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/asus/reader/VibeActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/asus/reader/VibeActivity;->tryToGetMyCloudAccountInfoandAction(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/asus/reader/VibeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->reDrawVibeActionBar()V

    return-void
.end method

.method static synthetic access$1600(Lcom/asus/reader/VibeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->refreshVibeInfo()V

    return-void
.end method

.method static synthetic access$1700(Lcom/asus/reader/VibeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->refreshVibeInfoandAction()V

    return-void
.end method

.method static synthetic access$1800(Lcom/asus/reader/VibeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->handleDeleteVibe()V

    return-void
.end method

.method static synthetic access$1900(Lcom/asus/reader/VibeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getPreViewState()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/asus/reader/VibeActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/asus/reader/VibeActivity;->setViewState(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/asus/reader/VibeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/asus/reader/VibeActivity;->mBookPosition:I

    return v0
.end method

.method static synthetic access$2002(Lcom/asus/reader/VibeActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/asus/reader/VibeActivity;->mBookPosition:I

    return p1
.end method

.method static synthetic access$2100(Lcom/asus/reader/VibeActivity;Lcom/asus/reader/vibe2/Content;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/asus/reader/VibeActivity;->handleActionAfterContentReady(Lcom/asus/reader/vibe2/Content;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/asus/reader/VibeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/asus/reader/VibeActivity;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/asus/reader/VibeActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mSearch:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/ui/VibeFunctionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/asus/reader/VibeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->loadVibeBooks()V

    return-void
.end method

.method static synthetic access$500(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/ui/DragFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mFrame:Lcom/asus/reader/ui/DragFrame;

    return-object v0
.end method

.method static synthetic access$600(Lcom/asus/reader/VibeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/asus/reader/VibeActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/asus/reader/VibeActivity;->handleBooksReady(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$800(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/VibeActivity$BooksAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/asus/reader/VibeActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/asus/reader/VibeActivity;->mSelectId:I

    return p1
.end method

.method private blockLoading()V
    .locals 3

    .prologue
    .line 1908
    iget-boolean v0, p0, Lcom/asus/reader/VibeActivity;->mIsLoading:Z

    if-nez v0, :cond_0

    .line 1913
    :goto_0
    return-void

    .line 1910
    :cond_0
    const v0, 0x7f0b004e

    invoke-virtual {p0, v0}, Lcom/asus/reader/VibeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1911
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/reader/VibeActivity;->mIsLoading:Z

    .line 1912
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/asus/reader/book/ReaderDatabase;->setTimeToken(J)V

    goto :goto_0
.end method

.method private getPreViewState()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1698
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mViewStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v3, :cond_0

    move v0, v4

    .line 1702
    .end local p0
    :goto_0
    return v0

    .line 1700
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mViewStack:Ljava/util/List;

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mViewStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1701
    invoke-virtual {p0}, Lcom/asus/reader/VibeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mViewStack:Ljava/util/List;

    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mViewStack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    move v0, v4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1702
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mViewStack:Ljava/util/List;

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mViewStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .restart local p0
    :cond_1
    move v0, v3

    .line 1701
    goto :goto_1
.end method

.method private getViewState()I
    .locals 3

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mViewStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1694
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mViewStack:Ljava/util/List;

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mViewStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private handleActionAfterContentReady(Lcom/asus/reader/vibe2/Content;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f070040

    const/4 v7, 0x0

    .line 868
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/vibe2/VibeAgent;->isLoggedin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4f8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 873
    :cond_1
    invoke-virtual {p1}, Lcom/asus/reader/vibe2/Content;->getPaid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/asus/reader/vibe2/Content;->getIsFree()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 876
    invoke-virtual {p1}, Lcom/asus/reader/vibe2/Content;->getPackages()Ljava/util/List;

    move-result-object v1

    .line 877
    invoke-virtual {p1}, Lcom/asus/reader/vibe2/Content;->getPaymentURI()[Ljava/lang/String;

    move-result-object v2

    .line 878
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/CharSequence;

    .line 879
    invoke-virtual {p1}, Lcom/asus/reader/vibe2/Content;->clone()Lcom/asus/reader/vibe2/SubcategoryContents;

    move-result-object v4

    .line 880
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    move v5, v7

    .line 882
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_2

    .line 883
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/vibe2/Package;

    invoke-virtual {v0}, Lcom/asus/reader/vibe2/Package;->getPackageDesc()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    .line 882
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 884
    :cond_2
    if-eqz v2, :cond_0

    .line 887
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030028

    invoke-virtual {v0, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 888
    const v0, 0x7f0b008a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 891
    new-instance v5, Lcom/asus/reader/VibeActivity$PackageCheckAdapter;

    invoke-direct {v5, p0, v1}, Lcom/asus/reader/VibeActivity$PackageCheckAdapter;-><init>(Lcom/asus/reader/VibeActivity;Ljava/util/List;)V

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 893
    const v1, 0x7f0b0089

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 894
    invoke-virtual {p1}, Lcom/asus/reader/vibe2/Content;->getCoverPicUri()Ljava/lang/String;

    move-result-object v5

    .line 895
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/asus/reader/book/ReaderDatabase;->getCoverCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 896
    if-eqz v5, :cond_3

    .line 898
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 899
    const-string v1, "ASUSREADER"

    const-string v5, "cover found!"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :goto_2
    const v1, 0x7f0b0003

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 905
    invoke-virtual {v4}, Lcom/asus/reader/vibe2/SubcategoryContents;->getContentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    const v1, 0x7f0b008b

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 908
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0700ec

    invoke-virtual {p0, v6}, Lcom/asus/reader/VibeActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSPName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0700ed

    invoke-virtual {p0, v6}, Lcom/asus/reader/VibeActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSPName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0700ee

    invoke-virtual {p0, v6}, Lcom/asus/reader/VibeActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    const v1, 0x7f0b008c

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 911
    const v5, 0x7f0700ef

    invoke-virtual {p0, v5}, Lcom/asus/reader/VibeActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 913
    new-instance v5, Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x2

    invoke-direct {v5, p0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v8}, Lcom/asus/reader/VibeActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v5, Lcom/asus/reader/VibeActivity$2;

    invoke-direct {v5, p0, v1, v2, v4}, Lcom/asus/reader/VibeActivity$2;-><init>(Lcom/asus/reader/VibeActivity;Landroid/widget/CheckBox;[Ljava/lang/String;Lcom/asus/reader/vibe2/SubcategoryContents;)V

    invoke-virtual {v3, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070008

    invoke-virtual {v1, v2, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 953
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 954
    const/4 v1, 0x1

    invoke-virtual {v0, v7, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto/16 :goto_0

    .line 902
    :cond_3
    const-string v1, "ASUSREADER"

    const-string v5, "cover path null!"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private handleBooksReady(Landroid/database/Cursor;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const v1, 0x7f0200ed

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1775
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1822
    :pswitch_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1830
    :goto_0
    return-void

    .line 1778
    :pswitch_1
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->updateVibeActionBar()V

    .line 1779
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setSelector(I)V

    .line 1780
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    iget v1, p0, Lcom/asus/reader/VibeActivity;->mColumnWidth:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setColumnWidth(I)V

    .line 1781
    iget-boolean v0, p0, Lcom/asus/reader/VibeActivity;->mIsLandscape:Z

    if-nez v0, :cond_3

    .line 1782
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    const/16 v1, 0x2e

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/asus/reader/ui/BookGrid;->setPadding(IIII)V

    .line 1785
    :goto_1
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    iget v1, p0, Lcom/asus/reader/VibeActivity;->mColumnCount:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setNumColumns(I)V

    .line 1786
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookGrid;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1787
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1789
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    invoke-virtual {v0, p1}, Lcom/asus/reader/VibeActivity$BooksAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1790
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 1791
    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mSearch:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mSearch:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 1792
    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 1793
    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mSearch:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1825
    :goto_2
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookGrid;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1826
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1827
    :cond_1
    iget v0, p0, Lcom/asus/reader/VibeActivity;->mSelectId:I

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v1}, Lcom/asus/reader/ui/BookGrid;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/asus/reader/VibeActivity;->mSelectId:I

    if-lez v0, :cond_2

    .line 1828
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    iget v1, p0, Lcom/asus/reader/VibeActivity;->mSelectId:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setSelection(I)V

    .line 1829
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/reader/VibeActivity;->mSelectId:I

    goto :goto_0

    .line 1784
    :cond_3
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    const/16 v1, 0x22

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/asus/reader/ui/BookGrid;->setPadding(IIII)V

    goto :goto_1

    .line 1795
    :cond_4
    invoke-virtual {v0, v4}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 1796
    invoke-virtual {v0, v5, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 1800
    :pswitch_2
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->updateVibeActionBar()V

    .line 1801
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setSelector(I)V

    .line 1802
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    iget v1, p0, Lcom/asus/reader/VibeActivity;->mListWidth:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setColumnWidth(I)V

    .line 1803
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/asus/reader/ui/BookGrid;->setPadding(IIII)V

    .line 1804
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v4}, Lcom/asus/reader/ui/BookGrid;->setNumColumns(I)V

    .line 1805
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookGrid;->getCount()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1806
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1808
    :cond_5
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    invoke-virtual {v0, p1}, Lcom/asus/reader/VibeActivity$BooksAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_2

    .line 1811
    :pswitch_3
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->updateVibeActionBar()V

    .line 1812
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v5}, Lcom/asus/reader/ui/BookGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1813
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    const v1, 0x7f020160

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setSelector(I)V

    .line 1814
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/asus/reader/ui/BookGrid;->setPadding(IIII)V

    .line 1815
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    iget v1, p0, Lcom/asus/reader/VibeActivity;->mListWidth:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setColumnWidth(I)V

    .line 1816
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v4}, Lcom/asus/reader/ui/BookGrid;->setNumColumns(I)V

    .line 1817
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    invoke-virtual {v0, p1}, Lcom/asus/reader/VibeActivity$BooksAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1818
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_2

    .line 1775
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleClickVibeActivities(Lcom/asus/reader/ui/BookItem;)V
    .locals 2
    .parameter

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    iget v1, p0, Lcom/asus/reader/VibeActivity;->mBookPosition:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    .line 1842
    const-string v1, "book_path"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1843
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1844
    invoke-direct {p0, v0}, Lcom/asus/reader/VibeActivity;->handleOpenfile(Ljava/lang/String;)V

    .line 1848
    :goto_0
    return-void

    .line 1846
    :cond_0
    invoke-virtual {p1}, Lcom/asus/reader/ui/BookItem;->downloadVibe()V

    goto :goto_0
.end method

.method private handleClickVibeInfo(I)V
    .locals 5
    .parameter "type"

    .prologue
    .line 1850
    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    iget v4, p0, Lcom/asus/reader/VibeActivity;->mBookPosition:I

    invoke-virtual {v3, v4}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    .line 1852
    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v3}, Lcom/asus/reader/ui/BookGrid;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 1875
    :cond_0
    :goto_0
    return-void

    .line 1854
    :cond_1
    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/asus/reader/ui/BookGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1855
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/asus/reader/ui/VibeInfo;

    if-eqz v3, :cond_0

    .line 1856
    move-object v0, v2

    check-cast v0, Lcom/asus/reader/ui/VibeInfo;

    move-object v1, v0

    .line 1860
    .local v1, vibeinfo:Lcom/asus/reader/ui/VibeInfo;
    if-eqz v1, :cond_0

    .line 1863
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1872
    :pswitch_0
    invoke-virtual {v1}, Lcom/asus/reader/ui/VibeInfo;->getBookPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/asus/reader/VibeActivity;->handleOpenfile(Ljava/lang/String;)V

    goto :goto_0

    .line 1865
    :pswitch_1
    invoke-virtual {v1}, Lcom/asus/reader/ui/VibeInfo;->getPreviewUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1866
    invoke-virtual {v1}, Lcom/asus/reader/ui/VibeInfo;->openPreview()V

    goto :goto_0

    .line 1869
    :pswitch_2
    invoke-virtual {v1}, Lcom/asus/reader/ui/VibeInfo;->downloadBook()V

    goto :goto_0

    .line 1863
    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleDeleteVibe()V
    .locals 4

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    iget v1, p0, Lcom/asus/reader/VibeActivity;->mBookPosition:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    iget v2, p0, Lcom/asus/reader/VibeActivity;->mBookPosition:I

    invoke-virtual {v1, v2}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1904
    invoke-virtual {p0}, Lcom/asus/reader/VibeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->Vibe_Activities_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1905
    return-void
.end method

.method private handleExpandSearchView(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1833
    iget-boolean v0, p0, Lcom/asus/reader/VibeActivity;->mIsLandscape:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1838
    :cond_0
    :goto_0
    return-void

    .line 1836
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1837
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_3

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1836
    goto :goto_1

    :cond_3
    move v1, v2

    .line 1837
    goto :goto_2
.end method

.method private handleOpenfile(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1878
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1882
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1883
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1898
    :goto_0
    return-void

    .line 1886
    :cond_0
    const-string v2, ".pdf"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1887
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1894
    :goto_1
    invoke-virtual {p0, v0}, Lcom/asus/reader/VibeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1895
    :catch_0
    move-exception v0

    .line 1896
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1888
    :cond_1
    :try_start_1
    const-string v2, ".epub"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1889
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/epub+zip"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1890
    :cond_2
    const-string v2, ".txt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1891
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1893
    :cond_3
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private hideLoading()V
    .locals 2

    .prologue
    .line 1921
    const v0, 0x7f0b004e

    invoke-virtual {p0, v0}, Lcom/asus/reader/VibeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1922
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/reader/VibeActivity;->mIsLoading:Z

    .line 1923
    return-void
.end method

.method private initActivityState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "State"

    .prologue
    .line 671
    if-nez p1, :cond_0

    .line 688
    :goto_0
    return-void

    .line 676
    :cond_0
    const-string v2, "android:savedDialogs"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 678
    const-string v2, "bundleviewstack"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 679
    .local v1, viewStackArray:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 680
    aget v2, v1, v0

    invoke-direct {p0, v2}, Lcom/asus/reader/VibeActivity;->setViewState(I)V

    .line 679
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 682
    :cond_1
    const-string v2, "bundlecatebookposition"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/asus/reader/VibeActivity;->mBookPosition:I

    .line 683
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    const-string v3, "bundlecategoryposition"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "bundlesubcateposition"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/asus/reader/ui/CategoryListView;->setCategoryPosition(II)V

    .line 684
    const-string v2, "bundlesearch"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/reader/VibeActivity;->mSearch:Ljava/lang/String;

    .line 685
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mSearch:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 686
    const-string v2, ""

    iput-object v2, p0, Lcom/asus/reader/VibeActivity;->mSearch:Ljava/lang/String;

    .line 687
    :cond_2
    const-string v2, "bundleselectid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/asus/reader/VibeActivity;->mSelectId:I

    goto :goto_0
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 625
    const v2, 0x7f03003b

    invoke-virtual {p0, v2}, Lcom/asus/reader/VibeActivity;->setContentView(I)V

    .line 626
    const v2, 0x7f0b0048

    invoke-virtual {p0, v2}, Lcom/asus/reader/VibeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/asus/reader/ui/DragFrame;

    iput-object v2, p0, Lcom/asus/reader/VibeActivity;->mFrame:Lcom/asus/reader/ui/DragFrame;

    .line 627
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mFrame:Lcom/asus/reader/ui/DragFrame;

    new-instance v3, Lcom/asus/reader/ui/DragController;

    invoke-direct {v3, p0}, Lcom/asus/reader/ui/DragController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/asus/reader/ui/DragFrame;->setDragController(Lcom/asus/reader/ui/DragController;)V

    .line 628
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/asus/reader/VibeActivity;->mBookBacks:Ljava/util/List;

    .line 629
    iget-boolean v2, p0, Lcom/asus/reader/VibeActivity;->mIsLandscape:Z

    if-eqz v2, :cond_1

    .line 630
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/VibeActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/VibeActivity$backItem;-><init>(Lcom/asus/reader/VibeActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/VibeActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/VibeActivity$backItem;-><init>(Lcom/asus/reader/VibeActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/VibeActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/VibeActivity$backItem;-><init>(Lcom/asus/reader/VibeActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/VibeActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/VibeActivity$backItem;-><init>(Lcom/asus/reader/VibeActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/VibeActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/VibeActivity$backItem;-><init>(Lcom/asus/reader/VibeActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    :goto_0
    const v2, 0x7f0b004c

    invoke-virtual {p0, v2}, Lcom/asus/reader/VibeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/asus/reader/ui/CategoryListView;

    iput-object v2, p0, Lcom/asus/reader/VibeActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    .line 648
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v2, p0}, Lcom/asus/reader/ui/CategoryListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 649
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v2, p0}, Lcom/asus/reader/ui/CategoryListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 651
    const v2, 0x7f0b004a

    invoke-virtual {p0, v2}, Lcom/asus/reader/VibeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/asus/reader/ui/BookGrid;

    iput-object v2, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    .line 652
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v2, p0}, Lcom/asus/reader/ui/BookGrid;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 653
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v2, p0}, Lcom/asus/reader/ui/BookGrid;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 654
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v2, p0}, Lcom/asus/reader/ui/BookGrid;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 655
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v2, p0}, Lcom/asus/reader/ui/BookGrid;->setOnLayoutListener(Lcom/asus/reader/ui/BookGrid$onLayoutListener;)V

    .line 657
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/asus/reader/VibeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/asus/reader/VibeActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 660
    const v2, 0x7f0b00b1

    invoke-virtual {p0, v2}, Lcom/asus/reader/VibeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/asus/reader/ui/VibeFunctionBar;

    iput-object v2, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    .line 661
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    invoke-virtual {v2, p0}, Lcom/asus/reader/ui/VibeFunctionBar;->initView(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 662
    invoke-virtual {p0}, Lcom/asus/reader/VibeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 663
    .local v0, bar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v2

    or-int/lit8 v1, v2, 0x10

    .line 664
    .local v1, options:I
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 665
    iget-boolean v2, p0, Lcom/asus/reader/VibeActivity;->mIsLandscape:Z

    if-nez v2, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/asus/reader/VibeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 668
    :cond_0
    return-void

    .line 636
    .end local v0           #bar:Landroid/app/ActionBar;
    .end local v1           #options:I
    :cond_1
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/VibeActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/VibeActivity$backItem;-><init>(Lcom/asus/reader/VibeActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/VibeActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/VibeActivity$backItem;-><init>(Lcom/asus/reader/VibeActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/VibeActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/VibeActivity$backItem;-><init>(Lcom/asus/reader/VibeActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/VibeActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/VibeActivity$backItem;-><init>(Lcom/asus/reader/VibeActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/VibeActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/VibeActivity$backItem;-><init>(Lcom/asus/reader/VibeActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/VibeActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/VibeActivity$backItem;-><init>(Lcom/asus/reader/VibeActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/VibeActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/VibeActivity$backItem;-><init>(Lcom/asus/reader/VibeActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/VibeActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/VibeActivity$backItem;-><init>(Lcom/asus/reader/VibeActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private loadRecentActivities()V
    .locals 2

    .prologue
    .line 1487
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->showLoading()V

    .line 1488
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/asus/reader/VibeActivity$7;

    invoke-direct {v1, p0}, Lcom/asus/reader/VibeActivity$7;-><init>(Lcom/asus/reader/VibeActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1511
    return-void
.end method

.method private loadVibeBooks()V
    .locals 3

    .prologue
    .line 1606
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1607
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->loadRecentActivities()V

    .line 1642
    :goto_0
    return-void

    .line 1611
    :cond_0
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_1

    .line 1612
    const-string v1, ""

    iput-object v1, p0, Lcom/asus/reader/VibeActivity;->mSearch:Ljava/lang/String;

    .line 1615
    :cond_1
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->showLoading()V

    .line 1616
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mSearch:Ljava/lang/String;

    .line 1617
    .local v0, searchText:Ljava/lang/String;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/asus/reader/VibeActivity$11;

    invoke-direct {v2, p0, v0}, Lcom/asus/reader/VibeActivity$11;-><init>(Lcom/asus/reader/VibeActivity;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private loadVibeCategory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "password"

    .prologue
    .line 1646
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->showLoading()V

    .line 1647
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/asus/reader/VibeActivity;->tryToGetMyCloudAccountInfoOnly(Z)V

    .line 1648
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/asus/reader/VibeActivity$12;

    invoke-direct {v1, p0}, Lcom/asus/reader/VibeActivity$12;-><init>(Lcom/asus/reader/VibeActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1671
    return-void
.end method

.method private loadVibeContent(Z)V
    .locals 6
    .parameter "checkCache"

    .prologue
    .line 1571
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    iget v3, p0, Lcom/asus/reader/VibeActivity;->mBookPosition:I

    invoke-virtual {v2, v3}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Lcom/asus/reader/vibe2/SubcategoryContents;->fromCursor(Landroid/database/Cursor;)Lcom/asus/reader/vibe2/SubcategoryContents;

    move-result-object v1

    .line 1572
    .local v1, subcontent:Lcom/asus/reader/vibe2/SubcategoryContents;
    iget v0, p0, Lcom/asus/reader/VibeActivity;->mBookPosition:I

    .line 1573
    .local v0, position:I
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/asus/reader/vibe2/VibeAgent;->getTempContent(Lcom/asus/reader/vibe2/SubcategoryContents;)Lcom/asus/reader/vibe2/Content;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 1574
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x4f7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1603
    :goto_0
    return-void

    .line 1577
    :cond_0
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->showLoading()V

    .line 1578
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/asus/reader/VibeActivity$10;

    invoke-direct {v3, p0, v1, v0}, Lcom/asus/reader/VibeActivity$10;-><init>(Lcom/asus/reader/VibeActivity;Lcom/asus/reader/vibe2/SubcategoryContents;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private loadVibeContentandAction()V
    .locals 3

    .prologue
    .line 1550
    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    iget v2, p0, Lcom/asus/reader/VibeActivity;->mBookPosition:I

    invoke-virtual {v1, v2}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->fromCursor(Landroid/database/Cursor;)Lcom/asus/reader/vibe2/SubcategoryContents;

    move-result-object v0

    .line 1551
    .local v0, subcontent:Lcom/asus/reader/vibe2/SubcategoryContents;
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->showLoading()V

    .line 1552
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/asus/reader/VibeActivity$9;

    invoke-direct {v2, p0, v0}, Lcom/asus/reader/VibeActivity$9;-><init>(Lcom/asus/reader/VibeActivity;Lcom/asus/reader/vibe2/SubcategoryContents;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1568
    return-void
.end method

.method private reDrawVibeActionBar()V
    .locals 10

    .prologue
    const v9, 0x7f0b000b

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 595
    iget-object v4, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v7, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    iget-object v4, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    const v5, 0x7f0b0016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 598
    .local v1, loginButton:Landroid/widget/Button;
    iget-object v4, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    const v5, 0x7f0b0014

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 599
    .local v0, book:Landroid/widget/TextView;
    const v4, 0x7f0700e8

    invoke-virtual {p0, v4}, Lcom/asus/reader/VibeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v4, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    const v5, 0x7f0b0015

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 602
    .local v3, wecomText:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 605
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/reader/vibe2/VibeAgent;->isLoggedin()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 606
    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 607
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 608
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/reader/vibe2/VibeAgent;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 609
    .local v2, name:Ljava/lang/String;
    if-nez v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 610
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f070081

    invoke-virtual {p0, v5}, Lcom/asus/reader/VibeActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/reader/vibe2/VibeAgent;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    :cond_3
    iget-object v4, p0, Lcom/asus/reader/VibeActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v4}, Lcom/asus/reader/VibeActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 613
    iget-object v4, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 615
    .end local v2           #name:Ljava/lang/String;
    :cond_4
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 616
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 617
    iget-object v4, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 618
    iget-object v4, p0, Lcom/asus/reader/VibeActivity;->mMenu:Landroid/view/Menu;

    if-eqz v4, :cond_0

    .line 619
    iget-object v4, p0, Lcom/asus/reader/VibeActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v4}, Landroid/view/Menu;->clear()V

    goto/16 :goto_0
.end method

.method private refreshVibeInfo()V
    .locals 2

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookGrid;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 550
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/asus/reader/VibeActivity;->loadVibeContent(Z)V

    .line 552
    :cond_0
    return-void
.end method

.method private refreshVibeInfoandAction()V
    .locals 2

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookGrid;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 556
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->loadVibeContentandAction()V

    .line 558
    :cond_0
    return-void
.end method

.method private registerMyCloudReceiver()V
    .locals 2

    .prologue
    .line 2164
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.asus.webstorage.id"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2166
    new-instance v1, Lcom/asus/reader/VibeActivity$mMyCloudReceiver;

    invoke-direct {v1, p0}, Lcom/asus/reader/VibeActivity$mMyCloudReceiver;-><init>(Lcom/asus/reader/VibeActivity;)V

    iput-object v1, p0, Lcom/asus/reader/VibeActivity;->mReceiver:Lcom/asus/reader/VibeActivity$mMyCloudReceiver;

    .line 2167
    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mReceiver:Lcom/asus/reader/VibeActivity$mMyCloudReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/asus/reader/VibeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2173
    :goto_0
    return-void

    .line 2169
    :catch_0
    move-exception v0

    .line 2171
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method private sendBackKey()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 2213
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/asus/reader/VibeActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2214
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/asus/reader/VibeActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2215
    return-void
.end method

.method private setViewState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 1674
    if-ne p1, v4, :cond_0

    .line 1675
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mViewStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1678
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mViewStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1679
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mViewStack:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1682
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/asus/reader/VibeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mViewStack:Ljava/util/List;

    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mViewStack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1683
    return-void

    .line 1680
    .restart local p0
    :cond_2
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mViewStack:Ljava/util/List;

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mViewStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1681
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mViewStack:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local p0
    :cond_3
    move v1, v3

    .line 1682
    goto :goto_1
.end method

.method private showLoading()V
    .locals 2

    .prologue
    .line 1916
    const v0, 0x7f0b004e

    invoke-virtual {p0, v0}, Lcom/asus/reader/VibeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1917
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/reader/VibeActivity;->mIsLoading:Z

    .line 1918
    return-void
.end method

.method private showVibePaymentDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f070040

    const/4 v7, 0x0

    .line 958
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v7}, Lcom/asus/reader/ui/BookGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/asus/reader/ui/VibeInfo;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v7}, Lcom/asus/reader/ui/BookGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/ui/VibeInfo;

    .line 960
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/reader/vibe2/VibeAgent;->isLoggedin()Z

    move-result v1

    if-nez v1, :cond_1

    .line 961
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4f8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 964
    :cond_1
    invoke-virtual {v0}, Lcom/asus/reader/ui/VibeInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    .line 965
    invoke-virtual {v0}, Lcom/asus/reader/ui/VibeInfo;->getPaymentURI()[Ljava/lang/String;

    move-result-object v4

    .line 966
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/CharSequence;

    .line 967
    invoke-virtual {v0}, Lcom/asus/reader/ui/VibeInfo;->getSubContent()Lcom/asus/reader/vibe2/SubcategoryContents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/reader/vibe2/SubcategoryContents;->clone()Lcom/asus/reader/vibe2/SubcategoryContents;

    move-result-object v5

    .line 968
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    move v6, v7

    .line 970
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_2

    .line 971
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/reader/vibe2/Package;

    invoke-virtual {v1}, Lcom/asus/reader/vibe2/Package;->getPackageDesc()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    .line 970
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    .line 972
    :cond_2
    if-eqz v4, :cond_0

    .line 975
    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030028

    invoke-virtual {v1, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 976
    const v1, 0x7f0b008a

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 979
    new-instance v1, Lcom/asus/reader/VibeActivity$PackageCheckAdapter;

    invoke-direct {v1, p0, v2}, Lcom/asus/reader/VibeActivity$PackageCheckAdapter;-><init>(Lcom/asus/reader/VibeActivity;Ljava/util/List;)V

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 981
    const v1, 0x7f0b0089

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 982
    invoke-virtual {v0}, Lcom/asus/reader/ui/VibeInfo;->getVibeInfoCover()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 983
    if-eqz v0, :cond_3

    .line 985
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 986
    const-string v0, "ASUSREADER"

    const-string v1, "cover found!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :goto_2
    const v0, 0x7f0b0003

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 992
    invoke-virtual {v5}, Lcom/asus/reader/vibe2/SubcategoryContents;->getContentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 994
    const v0, 0x7f0b008b

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0700ec

    invoke-virtual {p0, v2}, Lcom/asus/reader/VibeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSPName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0700ed

    invoke-virtual {p0, v2}, Lcom/asus/reader/VibeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSPName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0700ee

    invoke-virtual {p0, v2}, Lcom/asus/reader/VibeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 997
    const v0, 0x7f0b008c

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 998
    const v0, 0x7f0700ef

    invoke-virtual {p0, v0}, Lcom/asus/reader/VibeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v8}, Lcom/asus/reader/VibeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v0, Lcom/asus/reader/VibeActivity$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/asus/reader/VibeActivity$3;-><init>(Lcom/asus/reader/VibeActivity;Landroid/widget/CheckBox;Landroid/widget/ListView;[Ljava/lang/String;Lcom/asus/reader/vibe2/SubcategoryContents;)V

    invoke-virtual {v6, v8, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070008

    invoke-virtual {v0, v1, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1052
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1054
    const/4 v0, 0x1

    invoke-virtual {v3, v7, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto/16 :goto_0

    .line 989
    :cond_3
    const-string v0, "ASUSREADER"

    const-string v1, "cover path null!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private switchActionbar()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v0, -0x1

    .line 1707
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 1708
    invoke-virtual {p0}, Lcom/asus/reader/VibeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 1709
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1730
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1714
    :pswitch_1
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v5}, Lcom/asus/reader/ui/BookGrid;->setChoiceMode(I)V

    .line 1715
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 1717
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    .line 1718
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1719
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    const v3, 0x7f0b0012

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 1720
    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 1721
    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 1722
    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 1723
    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mSearch:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mSearch:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1724
    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mSearch:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1725
    :cond_2
    const-string v0, ""

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1726
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_0

    .line 1709
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private tryToGetMyCloudAccountInfo(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2071
    const-string v0, "ASUSREADER"

    const-string v1, "get MyCloud account info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2073
    const-string v1, "com.asus.webstorage.id"

    const-string v2, "com.asus.webstorage.id.AuthenticatingActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2075
    const-string v1, "AccountInfo"

    const-string v2, "getInfo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2077
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/VibeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2083
    :goto_0
    return-void

    .line 2078
    :catch_0
    move-exception v0

    .line 2080
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private tryToGetMyCloudAccountInfoOnly(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2116
    const-string v0, "ASUSREADER"

    const-string v1, "get MyCloud account info Only"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2118
    const-string v1, "com.asus.webstorage.id"

    const-string v2, "com.asus.webstorage.id.AuthenticatingActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2120
    const-string v1, "AccountInfo"

    const-string v2, "getInfoNoCallback"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2122
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/VibeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2128
    :goto_0
    return-void

    .line 2123
    :catch_0
    move-exception v0

    .line 2125
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private tryToGetMyCloudAccountInfoOnlyandAction(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2131
    const-string v0, "ASUSREADER"

    const-string v1, "get MyCloud account info Only"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2133
    const-string v1, "com.asus.webstorage.id"

    const-string v2, "com.asus.webstorage.id.AuthenticatingActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2135
    const-string v1, "AccountInfo"

    const-string v2, "getInfoNoCallback"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2137
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/VibeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2143
    :goto_0
    return-void

    .line 2138
    :catch_0
    move-exception v0

    .line 2140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private tryToGetMyCloudAccountInfoandAction(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2086
    const-string v0, "ASUSREADER"

    const-string v1, "get MyCloud account info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2088
    const-string v1, "com.asus.webstorage.id"

    const-string v2, "com.asus.webstorage.id.AuthenticatingActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2090
    const-string v1, "AccountInfo"

    const-string v2, "getInfo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2092
    const/4 v1, 0x5

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/VibeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2098
    :goto_0
    return-void

    .line 2093
    :catch_0
    move-exception v0

    .line 2095
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private tryToLogoutMyCloud(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2146
    const-string v0, "ASUSREADER"

    const-string v1, "logout from MyLibrary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2148
    const-string v1, "com.asus.webstorage.id"

    const-string v2, "com.asus.webstorage.id.AuthenticatingActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2150
    const-string v1, "AccountInfo"

    const-string v2, "logout"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2152
    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/VibeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2158
    :goto_0
    return-void

    .line 2153
    :catch_0
    move-exception v0

    .line 2155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateVibeActionBar()V
    .locals 7

    .prologue
    const/16 v6, 0xf

    const/16 v5, 0x8

    const/4 v4, 0x4

    const v3, 0x7f0b0012

    const/4 v2, 0x0

    .line 562
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    if-eqz v0, :cond_1

    .line 563
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v0

    if-eq v0, v5, :cond_0

    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/VibeFunctionBar;->show(Z)V

    .line 570
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 593
    .end local p0
    :cond_2
    :goto_1
    return-void

    .line 566
    .restart local p0
    :cond_3
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    invoke-virtual {v0, v2}, Lcom/asus/reader/ui/VibeFunctionBar;->show(Z)V

    goto :goto_0

    .line 573
    :cond_4
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v0

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    invoke-virtual {v0}, Lcom/asus/reader/ui/VibeFunctionBar;->getMainPosition()I

    move-result v0

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    invoke-virtual {v0}, Lcom/asus/reader/ui/VibeFunctionBar;->getSPPosition()I

    move-result v0

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    invoke-virtual {v0}, Lcom/asus/reader/ui/VibeFunctionBar;->getSubPosition()I

    move-result v0

    if-ltz v0, :cond_5

    .line 577
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/SearchView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 579
    .restart local p0
    :cond_5
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v0

    if-ne v0, v6, :cond_6

    .line 580
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/SearchView;

    invoke-virtual {p0, v2}, Landroid/widget/SearchView;->setVisibility(I)V

    goto :goto_1

    .line 582
    .restart local p0
    :cond_6
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    invoke-virtual {v0, v4}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/SearchView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_1
.end method

.method private updateVibeBooks(Z)V
    .locals 3
    .parameter "down"

    .prologue
    .line 1514
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1515
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->loadRecentActivities()V

    .line 1547
    :goto_0
    return-void

    .line 1519
    :cond_0
    move v0, p1

    .line 1520
    .local v0, goDown:Z
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->showLoading()V

    .line 1521
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/asus/reader/VibeActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/asus/reader/VibeActivity$8;-><init>(Lcom/asus/reader/VibeActivity;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const v10, 0x7f02015d

    const/16 v5, 0xc8

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 507
    const/4 v8, 0x0

    .line 508
    .local v8, line:I
    iget-boolean v0, p0, Lcom/asus/reader/VibeActivity;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookGrid;->getChildCount()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4014

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v8, v0

    .line 513
    :goto_0
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookGrid;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v4}, Lcom/asus/reader/ui/BookGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-le v0, v5, :cond_2

    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v4}, Lcom/asus/reader/ui/BookGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-ge v0, v5, :cond_2

    .line 515
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookGrid;->getChildCount()I

    move-result v8

    .line 519
    :cond_0
    :goto_1
    const/4 v6, 0x0

    .line 520
    .local v6, bottombase:I
    if-lez v8, :cond_4

    .line 521
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v4}, Lcom/asus/reader/ui/BookGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 522
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookBacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 524
    if-ge v7, v8, :cond_3

    .line 525
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookBacks:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/VibeActivity$backItem;

    const v1, 0x7f020120

    invoke-virtual {v0, v1}, Lcom/asus/reader/VibeActivity$backItem;->setResourceId(I)V

    .line 529
    :goto_3
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookBacks:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/VibeActivity$backItem;

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v1}, Lcom/asus/reader/ui/BookGrid;->getLeft()I

    move-result v1

    sub-int v2, v7, v9

    mul-int/lit16 v2, v2, 0xb0

    add-int/2addr v2, v6

    sub-int/2addr v2, v9

    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v3}, Lcom/asus/reader/ui/BookGrid;->getRight()I

    move-result v3

    mul-int/lit16 v4, v7, 0xb0

    add-int/2addr v4, v6

    sub-int/2addr v4, v9

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/asus/reader/VibeActivity$backItem;->draw(IIIILandroid/graphics/Canvas;)V

    .line 522
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 511
    .end local v6           #bottombase:I
    .end local v7           #i:I
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookGrid;->getChildCount()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4010

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v8, v0

    goto :goto_0

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v4}, Lcom/asus/reader/ui/BookGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-le v0, v5, :cond_0

    .line 517
    const/4 v8, 0x0

    goto :goto_1

    .line 527
    .restart local v6       #bottombase:I
    .restart local v7       #i:I
    :cond_3
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookBacks:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/VibeActivity$backItem;

    invoke-virtual {v0, v10}, Lcom/asus/reader/VibeActivity$backItem;->setResourceId(I)V

    goto :goto_3

    .line 536
    .end local v7           #i:I
    :cond_4
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_4
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookBacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 537
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookBacks:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/VibeActivity$backItem;

    invoke-virtual {v0, v10}, Lcom/asus/reader/VibeActivity$backItem;->setResourceId(I)V

    .line 538
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookBacks:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/VibeActivity$backItem;

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v1}, Lcom/asus/reader/ui/BookGrid;->getLeft()I

    move-result v1

    mul-int/lit16 v2, v7, 0xb0

    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v3}, Lcom/asus/reader/ui/BookGrid;->getRight()I

    move-result v3

    add-int/lit8 v4, v7, 0x1

    mul-int/lit16 v4, v4, 0xb0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/asus/reader/VibeActivity$backItem;->draw(IIIILandroid/graphics/Canvas;)V

    .line 536
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 546
    :cond_5
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xe

    const/4 v2, 0x1

    .line 1928
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1929
    const-string v0, "ASUSREADER"

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    packed-switch p1, :pswitch_data_0

    .line 2068
    :cond_0
    :goto_0
    return-void

    .line 1936
    :pswitch_0
    :try_start_0
    const-string v0, "ASUSREADER"

    const-string v1, "getinfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    const-string v0, "AccountInfo"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 1969
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/asus/reader/VibeActivity;->tryToGetMyCloudAccountInfoOnly(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2061
    :catch_0
    move-exception v0

    .line 2063
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1972
    :pswitch_1
    :try_start_1
    const-string v0, "ASUSREADER"

    const-string v1, "getinfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    const-string v0, "AccountInfo"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 1974
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/asus/reader/VibeActivity;->tryToGetMyCloudAccountInfoOnlyandAction(Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2064
    :catch_1
    move-exception v0

    .line 2066
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1978
    :pswitch_2
    :try_start_2
    const-string v0, "ASUSREADER"

    const-string v1, "renewToken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    const-string v0, "AccountInfo"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 1981
    if-eqz v0, :cond_1

    array-length v1, v0

    if-le v1, v2, :cond_1

    .line 1982
    invoke-static {v0}, Lcom/asus/reader/vibe2/MyCloudUtil;->getAccountInfo([B)[Ljava/lang/String;

    move-result-object v0

    .line 1983
    array-length v1, v0

    if-lt v1, v3, :cond_0

    .line 1984
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-static {p0, v1, v2, v3, v0}, Lcom/asus/reader/vibe2/MyCloudUtil;->setMyLibraryVibeAccount(Landroid/content/Context;Lcom/asus/reader/vibe2/VibeAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/VibeAgent;->setLogin(Z)V

    .line 1986
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4ef

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1996
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4f3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2003
    :pswitch_3
    const-string v0, "ASUSREADER"

    const-string v1, "getinfoNoCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    const-string v0, "AccountInfo"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 2006
    if-eqz v0, :cond_2

    array-length v1, v0

    if-le v1, v2, :cond_2

    .line 2007
    invoke-static {v0}, Lcom/asus/reader/vibe2/MyCloudUtil;->getAccountInfo([B)[Ljava/lang/String;

    move-result-object v0

    .line 2008
    array-length v1, v0

    if-lt v1, v3, :cond_3

    .line 2009
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-static {p0, v1, v2, v3, v0}, Lcom/asus/reader/vibe2/MyCloudUtil;->setMyLibraryVibeAccount(Landroid/content/Context;Lcom/asus/reader/vibe2/VibeAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/VibeAgent;->setLogin(Z)V

    .line 2011
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4ef

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2017
    :cond_2
    if-nez v0, :cond_4

    .line 2019
    const-string v0, "ASUSREADER"

    const-string v1, "AccountInfo NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4f3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2022
    :cond_4
    const-string v0, "ASUSREADER"

    const-string v1, "Not yet Login in MyCloud!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2028
    :pswitch_4
    const-string v0, "ASUSREADER"

    const-string v1, "getinfoNoCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    const-string v0, "AccountInfo"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 2031
    if-eqz v0, :cond_5

    array-length v1, v0

    if-le v1, v2, :cond_5

    .line 2032
    invoke-static {v0}, Lcom/asus/reader/vibe2/MyCloudUtil;->getAccountInfo([B)[Ljava/lang/String;

    move-result-object v0

    .line 2033
    array-length v1, v0

    if-lt v1, v3, :cond_6

    .line 2034
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-static {p0, v1, v2, v3, v0}, Lcom/asus/reader/vibe2/MyCloudUtil;->setMyLibraryVibeAccount(Landroid/content/Context;Lcom/asus/reader/vibe2/VibeAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/asus/reader/vibe2/VibeAgent;->setLogin(Z)V

    .line 2036
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4f9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2042
    :cond_5
    if-nez v0, :cond_7

    .line 2044
    const-string v0, "ASUSREADER"

    const-string v1, "AccountInfo NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4f3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2047
    :cond_7
    const-string v0, "ASUSREADER"

    const-string v1, "Not yet Login in MyCloud!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2053
    :pswitch_5
    const-string v0, "ASUSREADER"

    const-string v1, "logout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4f3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2058
    :pswitch_6
    const-string v0, "ASUSREADER"

    const-string v1, "cancel login"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1933
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 439
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->blockLoading()V

    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 384
    :goto_0
    instance-of v0, p1, Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/asus/reader/VibeActivity;->handleExpandSearchView(Z)V

    .line 387
    :cond_0
    return-void

    .line 366
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/asus/reader/VibeActivity;->handleClickVibeInfo(I)V

    goto :goto_0

    .line 369
    :sswitch_1
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->showVibePaymentDialog()V

    goto :goto_0

    .line 372
    :sswitch_2
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4e7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 375
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/ui/BookItem;

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookItem;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/asus/reader/VibeActivity;->mBookPosition:I

    .line 376
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/ui/BookItem;

    invoke-direct {p0, v0}, Lcom/asus/reader/VibeActivity;->handleClickVibeActivities(Lcom/asus/reader/ui/BookItem;)V

    goto :goto_0

    .line 379
    :sswitch_4
    invoke-virtual {p0}, Lcom/asus/reader/VibeActivity;->finish()V

    goto :goto_0

    .line 364
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0016 -> :sswitch_2
        0x7f0b0017 -> :sswitch_4
        0x7f0b00bb -> :sswitch_0
        0x7f0b00bc -> :sswitch_1
        0x7f0b00bf -> :sswitch_3
    .end sparse-switch
.end method

.method public onClose()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 297
    invoke-direct {p0, v0}, Lcom/asus/reader/VibeActivity;->handleExpandSearchView(Z)V

    .line 298
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0xb5

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 694
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 696
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->checkBrand()Z

    move-result v2

    if-nez v2, :cond_0

    .line 697
    invoke-virtual {p0}, Lcom/asus/reader/VibeActivity;->finish()V

    .line 699
    :cond_0
    invoke-virtual {p0}, Lcom/asus/reader/VibeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 700
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/asus/reader/VibeActivity;->mIsLandscape:Z

    .line 701
    iget-boolean v2, p0, Lcom/asus/reader/VibeActivity;->mIsLandscape:Z

    if-eqz v2, :cond_2

    .line 702
    const/4 v2, 0x5

    iput v2, p0, Lcom/asus/reader/VibeActivity;->mColumnCount:I

    .line 703
    iput v7, p0, Lcom/asus/reader/VibeActivity;->mColumnWidth:I

    .line 704
    const/16 v2, 0x393

    iput v2, p0, Lcom/asus/reader/VibeActivity;->mListWidth:I

    .line 710
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/asus/reader/VibeActivity;->mViewStack:Ljava/util/List;

    .line 712
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->initView()V

    .line 713
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/asus/reader/VibeActivity;->setViewState(I)V

    .line 714
    new-instance v2, Lcom/asus/reader/VibeActivity$BooksAdapter;

    invoke-direct {v2, p0, p0, v6}, Lcom/asus/reader/VibeActivity$BooksAdapter;-><init>(Lcom/asus/reader/VibeActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    .line 715
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    invoke-virtual {v2, v3}, Lcom/asus/reader/ui/BookGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 716
    invoke-direct {p0, p1}, Lcom/asus/reader/VibeActivity;->initActivityState(Landroid/os/Bundle;)V

    .line 717
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->switchActionbar()V

    .line 718
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->reDrawVibeActionBar()V

    .line 719
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v2, v4, v4}, Lcom/asus/reader/ui/CategoryListView;->setCategoryPosition(II)V

    .line 720
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    invoke-virtual {v2, v3}, Lcom/asus/reader/ui/BookGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 721
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mCategoryAdapter:Lcom/asus/reader/VibeActivity$CategoryAdapter;

    invoke-virtual {v2, v3}, Lcom/asus/reader/ui/CategoryListView;->setAdapter(Landroid/widget/BaseExpandableListAdapter;)V

    .line 723
    if-eqz p1, :cond_4

    .line 724
    const-string v2, "bundlecategoryposition"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 725
    .local v1, groupposition:I
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v2, v1, v4}, Lcom/asus/reader/ui/CategoryListView;->setCategoryPosition(II)V

    .line 727
    if-ne v1, v4, :cond_3

    .line 728
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    invoke-virtual {v2}, Lcom/asus/reader/ui/VibeFunctionBar;->reset()V

    .line 729
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v2, v5, v4}, Lcom/asus/reader/ui/CategoryListView;->setCategoryPosition(II)V

    .line 730
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    invoke-virtual {v2, v5}, Lcom/asus/reader/ui/VibeFunctionBar;->setMainPosition(I)Z

    .line 731
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    invoke-virtual {v2, v4}, Lcom/asus/reader/ui/VibeFunctionBar;->setSPPosition(I)Z

    .line 732
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    invoke-virtual {v2, v4}, Lcom/asus/reader/ui/VibeFunctionBar;->setSubPosition(I)Z

    .line 733
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->loadVibeBooks()V

    .line 734
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mFrame:Lcom/asus/reader/ui/DragFrame;

    invoke-virtual {v2}, Lcom/asus/reader/ui/DragFrame;->notifyClickCategoty()V

    .line 749
    .end local v1           #groupposition:I
    :goto_2
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->registerMyCloudReceiver()V

    .line 750
    return-void

    :cond_1
    move v2, v5

    .line 700
    goto :goto_0

    .line 706
    :cond_2
    const/4 v2, 0x4

    iput v2, p0, Lcom/asus/reader/VibeActivity;->mColumnCount:I

    .line 707
    iput v7, p0, Lcom/asus/reader/VibeActivity;->mColumnWidth:I

    .line 708
    const/16 v2, 0x302

    iput v2, p0, Lcom/asus/reader/VibeActivity;->mListWidth:I

    goto :goto_1

    .line 736
    .restart local v1       #groupposition:I
    :cond_3
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    invoke-virtual {v2, v1}, Lcom/asus/reader/ui/VibeFunctionBar;->setMainPosition(I)Z

    .line 737
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    const-string v3, "bundlespposition"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/asus/reader/ui/VibeFunctionBar;->setSPPosition(I)Z

    .line 738
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    const-string v3, "bundlesubposition"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/asus/reader/ui/VibeFunctionBar;->setLoadingPosition(I)Z

    .line 739
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->loadVibeBooks()V

    .line 740
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mFrame:Lcom/asus/reader/ui/DragFrame;

    invoke-virtual {v2}, Lcom/asus/reader/ui/DragFrame;->notifyClickCategoty()V

    goto :goto_2

    .line 743
    .end local v1           #groupposition:I
    :cond_4
    invoke-direct {p0, v6, v6}, Lcom/asus/reader/VibeActivity;->loadVibeCategory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    const v2, 0x104000a

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 1074
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 1099
    :goto_0
    return-object v0

    .line 1076
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0700be

    invoke-virtual {p0, v1}, Lcom/asus/reader/VibeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1081
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0700bf

    invoke-virtual {p0, v1}, Lcom/asus/reader/VibeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1086
    :pswitch_2
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    iget v1, p0, Lcom/asus/reader/VibeActivity;->mBookPosition:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    iget v2, p0, Lcom/asus/reader/VibeActivity;->mBookPosition:I

    invoke-virtual {v1, v2}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "_contentname"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1088
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v2, "Delete Vibe"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070007

    invoke-virtual {p0, v3}, Lcom/asus/reader/VibeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070020

    new-instance v2, Lcom/asus/reader/VibeActivity$4;

    invoke-direct {v2, p0}, Lcom/asus/reader/VibeActivity$4;-><init>(Lcom/asus/reader/VibeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070021

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1074
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    invoke-virtual {v0}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/asus/reader/VibeActivity;->destroyCursor:Z

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    invoke-virtual {v0}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 796
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/book/ReaderDatabase;->clearCoverCache()V

    .line 798
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 799
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mReceiver:Lcom/asus/reader/VibeActivity$mMyCloudReceiver;

    invoke-virtual {p0, v0}, Lcom/asus/reader/VibeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 801
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 7
    .parameter "parent"
    .parameter "view"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 405
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v2

    check-cast p2, Lcom/asus/reader/ui/CategoryItem;

    .end local p2
    invoke-virtual {p2}, Lcom/asus/reader/ui/CategoryItem;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/asus/reader/vibe2/VibeAgent;->getIntent(I)Landroid/content/Intent;

    move-result-object v1

    .line 406
    .local v1, i:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 408
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/asus/reader/VibeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v2, v4

    .line 433
    :goto_1
    return v2

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 414
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    const/4 v3, -0x1

    invoke-virtual {v2, p3, v3}, Lcom/asus/reader/ui/CategoryListView;->setCategoryPosition(II)V

    .line 415
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    if-nez v2, :cond_1

    move v2, v4

    .line 416
    goto :goto_1

    .line 418
    :cond_1
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v2

    if-eq v2, v6, :cond_3

    .line 419
    :cond_2
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getPreViewState()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 423
    :cond_3
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    invoke-virtual {v2, p3}, Lcom/asus/reader/ui/VibeFunctionBar;->setMainPosition(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 424
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    invoke-virtual {v2, v5}, Lcom/asus/reader/ui/VibeFunctionBar;->setSPPosition(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 425
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    invoke-virtual {v2, v5}, Lcom/asus/reader/ui/VibeFunctionBar;->setLoadingPosition(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 426
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/asus/reader/VibeActivity$BooksAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 427
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->loadVibeBooks()V

    .line 428
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mFrame:Lcom/asus/reader/ui/DragFrame;

    invoke-virtual {v2}, Lcom/asus/reader/ui/DragFrame;->notifyClickCategoty()V

    :cond_4
    move v2, v4

    .line 433
    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 401
    .end local p2
    :goto_0
    return-void

    .line 394
    .restart local p2
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 396
    :pswitch_0
    check-cast p2, Lcom/asus/reader/ui/BookItem;

    .end local p2
    invoke-virtual {p2}, Lcom/asus/reader/ui/BookItem;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/asus/reader/VibeActivity;->mBookPosition:I

    .line 397
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/asus/reader/VibeActivity;->loadVibeContent(Z)V

    goto :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x4

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 444
    if-ne p1, v6, :cond_2

    .line 445
    iget-boolean v3, p0, Lcom/asus/reader/VibeActivity;->mIsLoading:Z

    if-eqz v3, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->blockLoading()V

    move v3, v5

    .line 476
    :goto_0
    return v3

    .line 449
    :cond_0
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v2

    .line 450
    .local v2, state:I
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getPreViewState()I

    move-result v0

    .line 451
    .local v0, preState:I
    sparse-switch v2, :sswitch_data_0

    .line 476
    .end local v0           #preState:I
    .end local v2           #state:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 453
    .restart local v0       #preState:I
    .restart local v2       #state:I
    :sswitch_0
    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    invoke-virtual {v3}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iput v3, p0, Lcom/asus/reader/VibeActivity;->mSelectId:I

    .line 454
    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    invoke-virtual {v3}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/asus/reader/VibeActivity;->handleBooksReady(Landroid/database/Cursor;)V

    move v3, v5

    .line 455
    goto :goto_0

    .line 457
    :sswitch_1
    iput v4, p0, Lcom/asus/reader/VibeActivity;->mSelectId:I

    .line 458
    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/asus/reader/VibeActivity$BooksAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 459
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->loadVibeBooks()V

    move v3, v5

    .line 460
    goto :goto_0

    .line 462
    :sswitch_2
    iput v4, p0, Lcom/asus/reader/VibeActivity;->mSelectId:I

    .line 463
    const-string v3, ""

    iput-object v3, p0, Lcom/asus/reader/VibeActivity;->mSearch:Ljava/lang/String;

    .line 464
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->loadVibeBooks()V

    move v3, v5

    .line 465
    goto :goto_0

    .line 469
    .end local v0           #preState:I
    .end local v2           #state:I
    :cond_2
    const/16 v3, 0x54

    if-ne p1, v3, :cond_1

    .line 470
    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 471
    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mCustomView:Landroid/view/View;

    const v4, 0x7f0b0012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    .line 472
    .local v1, searchview:Landroid/widget/SearchView;
    invoke-virtual {v1}, Landroid/widget/SearchView;->isIconified()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v5

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setIconified(Z)V

    move v3, v5

    .line 473
    goto :goto_0

    .line 472
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 451
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_1
        0xf -> :sswitch_2
    .end sparse-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    .line 314
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const/16 v1, 0x457

    if-ne v0, v1, :cond_3

    .line 315
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 316
    :cond_0
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getPreViewState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/VibeFunctionBar;->setSPPosition(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/VibeFunctionBar;->setLoadingPosition(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 321
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->loadVibeBooks()V

    .line 322
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mFrame:Lcom/asus/reader/ui/DragFrame;

    invoke-virtual {v0}, Lcom/asus/reader/ui/DragFrame;->notifyClickCategoty()V

    :cond_2
    move v0, v3

    .line 337
    :goto_0
    return v0

    .line 326
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const/16 v1, 0x8ae

    if-ne v0, v1, :cond_7

    .line 327
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 328
    :cond_4
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getPreViewState()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 331
    :cond_5
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/VibeFunctionBar;->setLoadingPosition(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 332
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->loadVibeBooks()V

    .line 333
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mFrame:Lcom/asus/reader/ui/DragFrame;

    invoke-virtual {v0}, Lcom/asus/reader/ui/DragFrame;->notifyClickCategoty()V

    :cond_6
    move v0, v3

    .line 335
    goto :goto_0

    :cond_7
    move v0, v3

    .line 337
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 840
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 861
    const/4 v0, 0x1

    .line 863
    :goto_0
    return v0

    .line 842
    :sswitch_0
    invoke-direct {p0, v2}, Lcom/asus/reader/VibeActivity;->tryToLogoutMyCloud(Z)V

    :cond_0
    :goto_1
    move v0, v2

    .line 863
    goto :goto_0

    .line 845
    :sswitch_1
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/asus/reader/VibeActivity;->setViewState(I)V

    .line 846
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->loadRecentActivities()V

    .line 847
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mFrame:Lcom/asus/reader/ui/DragFrame;

    invoke-virtual {v0}, Lcom/asus/reader/ui/DragFrame;->notifyClickCategoty()V

    goto :goto_1

    .line 850
    :sswitch_2
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 851
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->sendBackKey()V

    goto :goto_1

    .line 840
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xc -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 773
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 774
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1061
    packed-switch p1, :pswitch_data_0

    .line 1070
    :goto_0
    return-void

    .line 1063
    :pswitch_0
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    iget v1, p0, Lcom/asus/reader/VibeActivity;->mBookPosition:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    iget v2, p0, Lcom/asus/reader/VibeActivity;->mBookPosition:I

    invoke-virtual {v1, v2}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "_contentname"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1065
    check-cast p2, Landroid/app/AlertDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070007

    invoke-virtual {p0, v2}, Lcom/asus/reader/VibeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1061
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 825
    iput-object p1, p0, Lcom/asus/reader/VibeActivity;->mMenu:Landroid/view/Menu;

    .line 826
    if-nez p1, :cond_0

    move v0, v2

    .line 835
    :goto_0
    return v0

    .line 828
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 830
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/vibe2/VibeAgent;->isLoggedin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    const/16 v0, 0xb

    const v1, 0x7f0700bc

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 835
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "newText"

    .prologue
    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4
    .parameter "query"

    .prologue
    const/16 v3, 0xf

    const/4 v2, 0x1

    .line 345
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 346
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/VibeActivity;->mSearch:Ljava/lang/String;

    move v0, v2

    .line 359
    :goto_0
    return v0

    .line 350
    :cond_1
    const-string v0, "\'"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 351
    iput-object p1, p0, Lcom/asus/reader/VibeActivity;->mSearch:Ljava/lang/String;

    .line 353
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 354
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/VibeActivity;->mSearch:Ljava/lang/String;

    move v0, v2

    .line 355
    goto :goto_0

    .line 357
    :cond_2
    invoke-direct {p0, v3}, Lcom/asus/reader/VibeActivity;->setViewState(I)V

    .line 358
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->loadVibeBooks()V

    move v0, v2

    .line 359
    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const v1, 0x7f0b004b

    .line 755
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 756
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v0}, Lcom/asus/reader/ui/CategoryListView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v0}, Lcom/asus/reader/ui/CategoryListView;->drawCategoryBackground()V

    .line 759
    :cond_0
    iget-boolean v0, p0, Lcom/asus/reader/VibeActivity;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 760
    invoke-virtual {p0, v1}, Lcom/asus/reader/VibeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020129

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 761
    const v0, 0x7f0b0049

    invoke-virtual {p0, v0}, Lcom/asus/reader/VibeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020127

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 766
    :goto_0
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->refreshVibeInfo()V

    .line 767
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->reDrawVibeActionBar()V

    .line 769
    return-void

    .line 763
    :cond_1
    invoke-virtual {p0, v1}, Lcom/asus/reader/VibeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02012d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 805
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 806
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/asus/reader/VibeActivity;->destroyCursor:Z

    .line 807
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mViewStack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 808
    .local v1, viewStackArray:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 809
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mViewStack:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 808
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 810
    :cond_0
    const-string v2, "bundleviewstack"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 811
    const-string v2, "bundlecategoryposition"

    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v3}, Lcom/asus/reader/ui/CategoryListView;->getGroupPosition()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 812
    const-string v2, "bundlecatebookposition"

    iget v3, p0, Lcom/asus/reader/VibeActivity;->mBookPosition:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 813
    const-string v2, "bundlesearch"

    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mSearch:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v2, "bundlesubcateposition"

    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v3}, Lcom/asus/reader/ui/CategoryListView;->getChildPosition()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 815
    const-string v2, "bundleselectid"

    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v3}, Lcom/asus/reader/ui/BookGrid;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 816
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    if-nez v2, :cond_1

    .line 820
    :goto_1
    return-void

    .line 818
    :cond_1
    const-string v2, "bundlespposition"

    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    invoke-virtual {v3}, Lcom/asus/reader/ui/VibeFunctionBar;->getSPPosition()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 819
    const-string v2, "bundlesubposition"

    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    invoke-virtual {v3}, Lcom/asus/reader/ui/VibeFunctionBar;->getSubPosition()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    .line 481
    :cond_0
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    invoke-virtual {v2}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 482
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/asus/reader/util/LinkedCursor;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/asus/reader/util/LinkedCursor;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/asus/reader/util/LinkedCursor;->getOffset()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 483
    check-cast v1, Lcom/asus/reader/util/LinkedCursor;

    .end local v1           #c:Landroid/database/Cursor;
    invoke-virtual {v1}, Lcom/asus/reader/util/LinkedCursor;->resetOffset()V

    .line 484
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    invoke-virtual {v2}, Lcom/asus/reader/VibeActivity$BooksAdapter;->notifyDataSetChanged()V

    .line 485
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    invoke-virtual {v2, v3}, Lcom/asus/reader/ui/BookGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 488
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 7
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v6, 0x1

    .line 491
    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    .line 492
    :cond_0
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mBooksAdapter:Lcom/asus/reader/VibeActivity$BooksAdapter;

    invoke-virtual {v2}, Lcom/asus/reader/VibeActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 493
    .local v0, c:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/asus/reader/util/LinkedCursor;

    if-nez v2, :cond_2

    .line 504
    .end local v0           #c:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 495
    .restart local v0       #c:Landroid/database/Cursor;
    :cond_2
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    invoke-virtual {v3}, Lcom/asus/reader/ui/VibeFunctionBar;->getMainPosition()I

    move-result v3

    iget-object v4, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    invoke-virtual {v4}, Lcom/asus/reader/ui/VibeFunctionBar;->getSPPosition()I

    move-result v4

    iget-object v5, p0, Lcom/asus/reader/VibeActivity;->mVibeFunctionBar:Lcom/asus/reader/ui/VibeFunctionBar;

    invoke-virtual {v5}, Lcom/asus/reader/ui/VibeFunctionBar;->getSubPosition()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/asus/reader/vibe2/VibeAgent;->getTotalCount(III)I

    move-result v1

    .line 496
    .local v1, totalCount:I
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v3}, Lcom/asus/reader/ui/BookGrid;->getCount()I

    move-result v3

    sub-int/2addr v3, v6

    if-ne v2, v3, :cond_3

    .line 497
    check-cast v0, Lcom/asus/reader/util/LinkedCursor;

    .end local v0           #c:Landroid/database/Cursor;
    invoke-virtual {v0}, Lcom/asus/reader/util/LinkedCursor;->getEndId()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 498
    invoke-direct {p0, v6}, Lcom/asus/reader/VibeActivity;->updateVibeBooks(Z)V

    goto :goto_0

    .line 499
    .restart local v0       #c:Landroid/database/Cursor;
    :cond_3
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_1

    .line 500
    check-cast v0, Lcom/asus/reader/util/LinkedCursor;

    .end local v0           #c:Landroid/database/Cursor;
    invoke-virtual {v0}, Lcom/asus/reader/util/LinkedCursor;->getStartId()I

    move-result v2

    if-le v2, v6, :cond_1

    .line 501
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/asus/reader/VibeActivity;->updateVibeBooks(Z)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const v3, 0x7f0b004b

    const/4 v2, 0x0

    .line 778
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 779
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v1}, Lcom/asus/reader/ui/CategoryListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/asus/reader/VibeActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v1, v0}, Lcom/asus/reader/ui/CategoryListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 779
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 782
    :cond_0
    invoke-virtual {p0, v3}, Lcom/asus/reader/VibeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 784
    iget-boolean v1, p0, Lcom/asus/reader/VibeActivity;->mIsLandscape:Z

    if-eqz v1, :cond_1

    .line 785
    invoke-virtual {p0, v3}, Lcom/asus/reader/VibeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 786
    const v1, 0x7f0b0049

    invoke-virtual {p0, v1}, Lcom/asus/reader/VibeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 791
    :goto_1
    return-void

    .line 788
    :cond_1
    invoke-virtual {p0, v3}, Lcom/asus/reader/VibeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 302
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookGrid;->getChildCount()I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v1

    .line 309
    .end local p0
    :goto_0
    return v0

    .line 304
    .restart local p0
    :cond_0
    invoke-direct {p0}, Lcom/asus/reader/VibeActivity;->getViewState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 309
    goto :goto_0

    .line 306
    :pswitch_0
    iget-object v0, p0, Lcom/asus/reader/VibeActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v2

    .line 307
    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method
