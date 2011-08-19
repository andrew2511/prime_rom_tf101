.class public Lcom/asus/reader/ui/SearchEditText;
.super Landroid/widget/EditText;
.source "SearchEditText.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/ui/SearchEditText$1;,
        Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;,
        Lcom/asus/reader/ui/SearchEditText$SearchStatusListener;,
        Lcom/asus/reader/ui/SearchEditText$NavigatePageCallback;,
        Lcom/asus/reader/ui/SearchEditText$SearchResultCallback;,
        Lcom/asus/reader/ui/SearchEditText$MyHandler;,
        Lcom/asus/reader/ui/SearchEditText$SearchObserver;,
        Lcom/asus/reader/ui/SearchEditText$SearchThread;,
        Lcom/asus/reader/ui/SearchEditText$MyItemClickListener;,
        Lcom/asus/reader/ui/SearchEditText$MyTextWatcher;
    }
.end annotation


# static fields
.field private static final STYLE_BOLD_ITALIC:Landroid/text/style/StyleSpan;


# instance fields
.field private final MAP_KEY:[Ljava/lang/String;

.field private final SHOW_KEY:[Ljava/lang/String;

.field private mAdapter:Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;

.field private mClientStatusListener:Lcom/asus/reader/ui/SearchEditText$SearchStatusListener;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private final mLock:Ljava/lang/Object;

.field private mNavigateCallback:Lcom/asus/reader/ui/SearchEditText$NavigatePageCallback;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mRandom:I

.field private mResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRunningSearch:Z

.field private mSearchObserver:Lcom/asus/reader/ui/SearchEditText$SearchResultCallback;

.field private mSearchThread:Ljava/lang/Thread;

.field private mShowingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTarget:Ljava/lang/String;

.field private mThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/asus/reader/ui/SearchEditText;->STYLE_BOLD_ITALIC:Landroid/text/style/StyleSpan;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/asus/reader/ui/SearchEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mLock:Ljava/lang/Object;

    .line 48
    iput v2, p0, Lcom/asus/reader/ui/SearchEditText;->mThreshold:I

    .line 66
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "page"

    aput-object v1, v0, v5

    const-string v1, "start"

    aput-object v1, v0, v4

    const-string v1, "end"

    aput-object v1, v0, v6

    const-string v1, "text"

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string v2, "before"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "after"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->MAP_KEY:[Ljava/lang/String;

    .line 67
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "item_title"

    aput-object v1, v0, v5

    const-string v1, "item_text"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->SHOW_KEY:[Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/asus/reader/ui/SearchEditText;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Lcom/asus/reader/ui/SearchEditText$SearchObserver;

    invoke-direct {v0, p0, v3}, Lcom/asus/reader/ui/SearchEditText$SearchObserver;-><init>(Lcom/asus/reader/ui/SearchEditText;Lcom/asus/reader/ui/SearchEditText$1;)V

    iput-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mSearchObserver:Lcom/asus/reader/ui/SearchEditText$SearchResultCallback;

    .line 82
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 83
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 86
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 87
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 88
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 89
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 90
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 91
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 92
    new-instance v0, Lcom/asus/reader/ui/SearchEditText$MyTextWatcher;

    invoke-direct {v0, p0, v3}, Lcom/asus/reader/ui/SearchEditText$MyTextWatcher;-><init>(Lcom/asus/reader/ui/SearchEditText;Lcom/asus/reader/ui/SearchEditText$1;)V

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/SearchEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    new-instance v0, Lcom/asus/reader/ui/SearchEditText$MyHandler;

    invoke-direct {v0, p0, v3}, Lcom/asus/reader/ui/SearchEditText$MyHandler;-><init>(Lcom/asus/reader/ui/SearchEditText;Lcom/asus/reader/ui/SearchEditText$1;)V

    iput-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mHandler:Landroid/os/Handler;

    .line 94
    iput-boolean v5, p0, Lcom/asus/reader/ui/SearchEditText;->mRunningSearch:Z

    .line 95
    new-instance v0, Lcom/asus/reader/ui/SearchEditText$MyItemClickListener;

    invoke-direct {v0, p0, v3}, Lcom/asus/reader/ui/SearchEditText$MyItemClickListener;-><init>(Lcom/asus/reader/ui/SearchEditText;Lcom/asus/reader/ui/SearchEditText$1;)V

    iput-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 96
    iput-object v3, p0, Lcom/asus/reader/ui/SearchEditText;->mNavigateCallback:Lcom/asus/reader/ui/SearchEditText$NavigatePageCallback;

    .line 97
    return-void
.end method

.method static synthetic access$1000(Lcom/asus/reader/ui/SearchEditText;)Lcom/asus/reader/ui/SearchEditText$SearchResultCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mSearchObserver:Lcom/asus/reader/ui/SearchEditText$SearchResultCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/asus/reader/ui/SearchEditText;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/asus/reader/ui/SearchEditText;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/asus/reader/ui/SearchEditText;->showPopupWindow()V

    return-void
.end method

.method static synthetic access$1300(Lcom/asus/reader/ui/SearchEditText;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/asus/reader/ui/SearchEditText;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mShowingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/asus/reader/ui/SearchEditText;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->MAP_KEY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/text/style/StyleSpan;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/asus/reader/ui/SearchEditText;->STYLE_BOLD_ITALIC:Landroid/text/style/StyleSpan;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/asus/reader/ui/SearchEditText;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->SHOW_KEY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/asus/reader/ui/SearchEditText;)Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mAdapter:Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/asus/reader/ui/SearchEditText;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/asus/reader/ui/SearchEditText;->startToSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/asus/reader/ui/SearchEditText;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/asus/reader/ui/SearchEditText;->setRunningState(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/asus/reader/ui/SearchEditText;)Lcom/asus/reader/ui/SearchEditText$SearchStatusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mClientStatusListener:Lcom/asus/reader/ui/SearchEditText$SearchStatusListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/asus/reader/ui/SearchEditText;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/asus/reader/ui/SearchEditText;->doAfterTextChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/asus/reader/ui/SearchEditText;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/asus/reader/ui/SearchEditText;)Lcom/asus/reader/ui/SearchEditText$NavigatePageCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mNavigateCallback:Lcom/asus/reader/ui/SearchEditText$NavigatePageCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/asus/reader/ui/SearchEditText;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mTarget:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/asus/reader/ui/SearchEditText;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/asus/reader/ui/SearchEditText;->getRunningState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/asus/reader/ui/SearchEditText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/asus/reader/ui/SearchEditText;->mRandom:I

    return v0
.end method

.method private doAfterTextChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 150
    iget-object v1, p0, Lcom/asus/reader/ui/SearchEditText;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    invoke-virtual {p0}, Lcom/asus/reader/ui/SearchEditText;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/asus/reader/ui/SearchEditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/asus/reader/ui/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/asus/reader/ui/SearchEditText;->mThreshold:I

    if-lt v1, v2, :cond_0

    .line 153
    iget-object v1, p0, Lcom/asus/reader/ui/SearchEditText;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/asus/reader/ui/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 154
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/asus/reader/ui/SearchEditText;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 156
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private getRandomInt()I
    .locals 4

    .prologue
    .line 100
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    .line 101
    .local v0, random:D
    const-wide v2, 0x40c3880000000000L

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    return v2
.end method

.method private getRunningState()Z
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-boolean v1, p0, Lcom/asus/reader/ui/SearchEditText;->mRunningSearch:Z

    monitor-exit v0

    return v1

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetState()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/asus/reader/ui/SearchEditText;->mAdapter:Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;

    .line 120
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/asus/reader/ui/SearchEditText;->mRunningSearch:Z

    .line 121
    iget-object v1, p0, Lcom/asus/reader/ui/SearchEditText;->mResultList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asus/reader/ui/SearchEditText;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/asus/reader/ui/SearchEditText;->mShowingList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/asus/reader/ui/SearchEditText;->mShowingList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 123
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/asus/reader/ui/SearchEditText;->mRandom:I

    .line 124
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setRunningState(Z)V
    .locals 2
    .parameter "running"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    iput-boolean p1, p0, Lcom/asus/reader/ui/SearchEditText;->mRunningSearch:Z

    .line 177
    monitor-exit v0

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private showPopupWindow()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 327
    :cond_0
    return-void
.end method

.method private startToSearch(Ljava/lang/String;)V
    .locals 10
    .parameter "keyword"

    .prologue
    .line 194
    iget-object v7, p0, Lcom/asus/reader/ui/SearchEditText;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 195
    :try_start_0
    invoke-direct {p0}, Lcom/asus/reader/ui/SearchEditText;->getRunningState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    const-string v0, "SearchEditText"

    const-string v1, "Another search is on going and don\'t start this search"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    monitor-exit v7

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mContentView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 202
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f030031

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mContentView:Landroid/view/View;

    .line 203
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mContentView:Landroid/view/View;

    const v1, 0x7f0b009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mListView:Landroid/widget/ListView;

    .line 204
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/asus/reader/ui/SearchEditText;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 207
    .end local v6           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mResultList:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mResultList:Ljava/util/ArrayList;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mShowingList:Ljava/util/ArrayList;

    .line 216
    :goto_1
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mAdapter:Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;

    if-nez v0, :cond_3

    .line 217
    new-instance v0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;

    iget-object v1, p0, Lcom/asus/reader/ui/SearchEditText;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/asus/reader/ui/SearchEditText;->mShowingList:Ljava/util/ArrayList;

    const v3, 0x7f03002f

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/asus/reader/ui/SearchEditText;->SHOW_KEY:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    aput-object v8, v4, v5

    const/4 v5, 0x1

    iget-object v8, p0, Lcom/asus/reader/ui/SearchEditText;->SHOW_KEY:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    aput-object v8, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mAdapter:Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;

    .line 221
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/asus/reader/ui/SearchEditText;->mAdapter:Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/asus/reader/ui/SearchEditText;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 225
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/asus/reader/ui/SearchEditText;->setRunningState(Z)V

    .line 226
    iput-object p1, p0, Lcom/asus/reader/ui/SearchEditText;->mTarget:Ljava/lang/String;

    .line 227
    invoke-direct {p0}, Lcom/asus/reader/ui/SearchEditText;->getRandomInt()I

    move-result v0

    iput v0, p0, Lcom/asus/reader/ui/SearchEditText;->mRandom:I

    .line 228
    new-instance v0, Lcom/asus/reader/ui/SearchEditText$SearchThread;

    iget v1, p0, Lcom/asus/reader/ui/SearchEditText;->mRandom:I

    invoke-direct {v0, p0, v1}, Lcom/asus/reader/ui/SearchEditText$SearchThread;-><init>(Lcom/asus/reader/ui/SearchEditText;I)V

    iput-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mSearchThread:Ljava/lang/Thread;

    .line 229
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mSearchThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 230
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mSearchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 231
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mClientStatusListener:Lcom/asus/reader/ui/SearchEditText$SearchStatusListener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mClientStatusListener:Lcom/asus/reader/ui/SearchEditText$SearchStatusListener;

    invoke-interface {v0, p1}, Lcom/asus/reader/ui/SearchEditText$SearchStatusListener;->onStartSearch(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 212
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mShowingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 217
    nop

    :array_0
    .array-data 0x4
        0x96t 0x0t 0xbt 0x7ft
        0x97t 0x0t 0xbt 0x7ft
    .end array-data
.end method


# virtual methods
.method public getPopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public onDismiss()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/asus/reader/ui/SearchEditText;->resetState()V

    .line 114
    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 2
    .parameter "keyword"

    .prologue
    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, target:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-direct {p0, v0}, Lcom/asus/reader/ui/SearchEditText;->startToSearch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNavigateCallback(Lcom/asus/reader/ui/SearchEditText$NavigatePageCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/asus/reader/ui/SearchEditText;->mNavigateCallback:Lcom/asus/reader/ui/SearchEditText$NavigatePageCallback;

    .line 106
    return-void
.end method

.method public setSearchStatusListener(Lcom/asus/reader/ui/SearchEditText$SearchStatusListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/asus/reader/ui/SearchEditText;->mClientStatusListener:Lcom/asus/reader/ui/SearchEditText$SearchStatusListener;

    .line 110
    return-void
.end method

.method public stopSearch()V
    .locals 2

    .prologue
    .line 167
    const-string v0, "SearchEditText"

    const-string v1, "Stop the text Search"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 172
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/asus/reader/ui/SearchEditText;->resetState()V

    goto :goto_0
.end method
