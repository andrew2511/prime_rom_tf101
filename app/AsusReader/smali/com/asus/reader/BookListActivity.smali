.class public Lcom/asus/reader/BookListActivity;
.super Landroid/app/Activity;
.source "BookListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/asus/reader/book/ReaderDatabase$mountListener;
.implements Lcom/asus/reader/ui/BookGrid$onLayoutListener;
.implements Lcom/asus/reader/ui/DragSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/BookListActivity$GridViewDragListener;,
        Lcom/asus/reader/BookListActivity$backItem;,
        Lcom/asus/reader/BookListActivity$CategoryEntry;,
        Lcom/asus/reader/BookListActivity$CategoryAdapter;,
        Lcom/asus/reader/BookListActivity$BooksAdapter;
    }
.end annotation


# static fields
.field private static mDrmMenuDialog:Landroid/app/Dialog;

.field private static mDrmProgressDialog:Landroid/app/ProgressDialog;

.field private static mShowProcessResultDialog:Landroid/app/Dialog;


# instance fields
.field private final DIALOG_ABOUT:I

.field private final DIALOG_BOOKS_DELETE:I

.field private final DIALOG_BOOK_DELETE:I

.field private final DIALOG_CATEGORY_ADD:I

.field private final DIALOG_CATEGORY_DELETE:I

.field private final DIALOG_CATEGORY_EDIT:I

.field private final DIALOG_CATEGORY_RENAME:I

.field private final DIALOG_DELETE_PROGRESS:I

.field private final DIALOG_LEGAL:I

.field private final DIALOG_LONG_PRESSED_BOOK:I

.field private final DIALOG_STORE_CHOOSE:I

.field private final MENU_ABOUT:I

.field private final MENU_GO_TO_BOOK_STORE:I

.field private final MENU_GO_TO_DRM_SETTING:I

.field private final MENU_MULTIPLE_DELECTATION:I

.field private final MENU_RECENT_READ_LIST:I

.field private final MENU_SWITCH_TO_LIST_VIEW:I

.field private final actionbarBookDelete:I

.field private final actionbarBookEdit:I

.field private final actionbarDefault:I

.field private mActionMode:Landroid/view/ActionMode;

.field private mAnimationEndPosition:I

.field private mAnimationStartPosition:I

.field private mBookBacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/BookListActivity$backItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBookGrid:Lcom/asus/reader/ui/BookGrid;

.field private mBookPosition:I

.field private mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

.field private mCateList:Lcom/asus/reader/ui/CategoryListView;

.field private mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

.field private mColumnCount:I

.field private mColumnWidth:I

.field private mCountObserver:Landroid/database/ContentObserver;

.field private mCustomView:Landroid/view/View;

.field public mDrag:Z

.field private mDragController:Lcom/asus/reader/ui/DragController;

.field mDragListener:Lcom/asus/reader/BookListActivity$GridViewDragListener;

.field private mDragStartPosition:I

.field private mFrame:Lcom/asus/reader/ui/DragFrame;

.field final mHandler:Landroid/os/Handler;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsLandscape:Z

.field private mIsLoading:Z

.field private mLatestRead:Lcom/asus/reader/ui/LastRead;

.field private mLatestReadId:I

.field private mLatestReadMIMEType:Ljava/lang/String;

.field private mLatestReadPath:Ljava/lang/String;

.field private mLatestReadViewFontSize:I

.field private mLatestReadViewPos:Ljava/lang/Double;

.field private mListWidth:I

.field mLongPressedCategory:I

.field private mMenu:Landroid/view/Menu;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReservedCategoryId:J

.field private mSearch:Ljava/lang/String;

.field private mSelectId:I

.field private mSortBy:Lcom/asus/reader/ui/DropDownMenu;

.field private mSortPosition:I

.field private mTempStayPosition:I

.field public mViewReplaceable:Z

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

.field private final stateBookDelete:I

.field private final stateBookEdit:I

.field private final stateBookGrid:I

.field private final stateBookInfo:I

.field private final stateBookList:I

.field private final stateBookSearch:I

.field private final stateRecentRead:I

.field private whereColumeID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 236
    sput-object v0, Lcom/asus/reader/BookListActivity;->mDrmMenuDialog:Landroid/app/Dialog;

    .line 237
    sput-object v0, Lcom/asus/reader/BookListActivity;->mDrmProgressDialog:Landroid/app/ProgressDialog;

    .line 238
    sput-object v0, Lcom/asus/reader/BookListActivity;->mShowProcessResultDialog:Landroid/app/Dialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 86
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 147
    iput v5, p0, Lcom/asus/reader/BookListActivity;->stateBookGrid:I

    .line 148
    iput v2, p0, Lcom/asus/reader/BookListActivity;->stateBookList:I

    .line 149
    iput v3, p0, Lcom/asus/reader/BookListActivity;->stateBookDelete:I

    .line 150
    const/4 v0, 0x4

    iput v0, p0, Lcom/asus/reader/BookListActivity;->stateRecentRead:I

    .line 151
    const/4 v0, 0x5

    iput v0, p0, Lcom/asus/reader/BookListActivity;->stateBookSearch:I

    .line 152
    const/4 v0, 0x6

    iput v0, p0, Lcom/asus/reader/BookListActivity;->stateBookInfo:I

    .line 153
    const/16 v0, 0xe

    iput v0, p0, Lcom/asus/reader/BookListActivity;->stateBookEdit:I

    .line 155
    iput v5, p0, Lcom/asus/reader/BookListActivity;->actionbarDefault:I

    .line 156
    iput v2, p0, Lcom/asus/reader/BookListActivity;->actionbarBookEdit:I

    .line 157
    iput v3, p0, Lcom/asus/reader/BookListActivity;->actionbarBookDelete:I

    .line 159
    iput v5, p0, Lcom/asus/reader/BookListActivity;->DIALOG_LONG_PRESSED_BOOK:I

    .line 160
    iput v2, p0, Lcom/asus/reader/BookListActivity;->DIALOG_STORE_CHOOSE:I

    .line 161
    iput v3, p0, Lcom/asus/reader/BookListActivity;->DIALOG_BOOK_DELETE:I

    .line 162
    const/4 v0, 0x4

    iput v0, p0, Lcom/asus/reader/BookListActivity;->DIALOG_BOOKS_DELETE:I

    .line 163
    const/4 v0, 0x5

    iput v0, p0, Lcom/asus/reader/BookListActivity;->DIALOG_CATEGORY_RENAME:I

    .line 164
    const/4 v0, 0x6

    iput v0, p0, Lcom/asus/reader/BookListActivity;->DIALOG_CATEGORY_ADD:I

    .line 165
    const/4 v0, 0x7

    iput v0, p0, Lcom/asus/reader/BookListActivity;->DIALOG_CATEGORY_DELETE:I

    .line 166
    const/16 v0, 0x8

    iput v0, p0, Lcom/asus/reader/BookListActivity;->DIALOG_CATEGORY_EDIT:I

    .line 168
    const/16 v0, 0xe

    iput v0, p0, Lcom/asus/reader/BookListActivity;->DIALOG_ABOUT:I

    .line 169
    const/16 v0, 0xf

    iput v0, p0, Lcom/asus/reader/BookListActivity;->DIALOG_DELETE_PROGRESS:I

    .line 170
    const/16 v0, 0x10

    iput v0, p0, Lcom/asus/reader/BookListActivity;->DIALOG_LEGAL:I

    .line 182
    iput v1, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    .line 183
    const v0, 0x7f0b00c6

    iput v0, p0, Lcom/asus/reader/BookListActivity;->mSortPosition:I

    .line 185
    new-instance v0, Lcom/asus/reader/BookListActivity$CategoryAdapter;

    invoke-direct {v0, p0}, Lcom/asus/reader/BookListActivity$CategoryAdapter;-><init>(Lcom/asus/reader/BookListActivity;)V

    iput-object v0, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    .line 187
    iput v4, p0, Lcom/asus/reader/BookListActivity;->mLongPressedCategory:I

    .line 189
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/BookListActivity;->mSearch:Ljava/lang/String;

    .line 204
    iput v4, p0, Lcom/asus/reader/BookListActivity;->MENU_RECENT_READ_LIST:I

    .line 205
    iput v2, p0, Lcom/asus/reader/BookListActivity;->MENU_SWITCH_TO_LIST_VIEW:I

    .line 206
    iput v3, p0, Lcom/asus/reader/BookListActivity;->MENU_GO_TO_BOOK_STORE:I

    .line 207
    const/4 v0, 0x4

    iput v0, p0, Lcom/asus/reader/BookListActivity;->MENU_MULTIPLE_DELECTATION:I

    .line 208
    const/16 v0, 0xa

    iput v0, p0, Lcom/asus/reader/BookListActivity;->MENU_GO_TO_DRM_SETTING:I

    .line 209
    const/16 v0, 0xe

    iput v0, p0, Lcom/asus/reader/BookListActivity;->MENU_ABOUT:I

    .line 214
    iput v1, p0, Lcom/asus/reader/BookListActivity;->mDragStartPosition:I

    .line 216
    iput v1, p0, Lcom/asus/reader/BookListActivity;->mAnimationStartPosition:I

    .line 217
    iput v1, p0, Lcom/asus/reader/BookListActivity;->mAnimationEndPosition:I

    .line 225
    iput-boolean v4, p0, Lcom/asus/reader/BookListActivity;->mIsLoading:Z

    .line 232
    iput v1, p0, Lcom/asus/reader/BookListActivity;->mSelectId:I

    .line 233
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/asus/reader/BookListActivity;->mReservedCategoryId:J

    .line 245
    new-instance v0, Lcom/asus/reader/BookListActivity$1;

    invoke-direct {v0, p0}, Lcom/asus/reader/BookListActivity$1;-><init>(Lcom/asus/reader/BookListActivity;)V

    iput-object v0, p0, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    .line 380
    new-instance v0, Lcom/asus/reader/BookListActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/asus/reader/BookListActivity$2;-><init>(Lcom/asus/reader/BookListActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/asus/reader/BookListActivity;->mCountObserver:Landroid/database/ContentObserver;

    .line 2906
    return-void
.end method

.method static synthetic access$000(Lcom/asus/reader/BookListActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/asus/reader/BookListActivity;->mReservedCategoryId:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/asus/reader/BookListActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/asus/reader/BookListActivity;->mReservedCategoryId:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/asus/reader/BookListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->relocateCategoryPosition()V

    return-void
.end method

.method static synthetic access$1000(Lcom/asus/reader/BookListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->handleDeleteBook()V

    return-void
.end method

.method static synthetic access$1100(Lcom/asus/reader/BookListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->handleDeleteBooks()V

    return-void
.end method

.method static synthetic access$1200(Lcom/asus/reader/BookListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/asus/reader/BookListActivity;->handleOpenfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/asus/reader/BookListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->hideLoading()V

    return-void
.end method

.method static synthetic access$1400(Lcom/asus/reader/BookListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->switchToBookInfo()V

    return-void
.end method

.method static synthetic access$1500()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/asus/reader/BookListActivity;->mDrmMenuDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    sput-object p0, Lcom/asus/reader/BookListActivity;->mDrmMenuDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$1600()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/asus/reader/BookListActivity;->mDrmProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    sput-object p0, Lcom/asus/reader/BookListActivity;->mDrmProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1700()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/asus/reader/BookListActivity;->mShowProcessResultDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    sput-object p0, Lcom/asus/reader/BookListActivity;->mShowProcessResultDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/asus/reader/BookListActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/asus/reader/BookListActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/asus/reader/BookListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/BookGrid;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    return-object v0
.end method

.method static synthetic access$200(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/BookListActivity$CategoryAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/asus/reader/BookListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->reDrawBookDeleteActionBar()V

    return-void
.end method

.method static synthetic access$2100(Lcom/asus/reader/BookListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->refreshCategory()V

    return-void
.end method

.method static synthetic access$2200(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/LastRead;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mLatestRead:Lcom/asus/reader/ui/LastRead;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/asus/reader/BookListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->scanKindleDir()V

    return-void
.end method

.method static synthetic access$2400(Lcom/asus/reader/BookListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/asus/reader/BookListActivity;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/asus/reader/BookListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    return v0
.end method

.method static synthetic access$2502(Lcom/asus/reader/BookListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput p1, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    return p1
.end method

.method static synthetic access$2600(Lcom/asus/reader/BookListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/BookListActivity$BooksAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/asus/reader/BookListActivity;JIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/asus/reader/BookListActivity;->updateBookOrder(JIZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/asus/reader/BookListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/asus/reader/BookListActivity;->mAnimationStartPosition:I

    return v0
.end method

.method static synthetic access$2902(Lcom/asus/reader/BookListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput p1, p0, Lcom/asus/reader/BookListActivity;->mAnimationStartPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/CategoryListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/asus/reader/BookListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/asus/reader/BookListActivity;->mAnimationEndPosition:I

    return v0
.end method

.method static synthetic access$3002(Lcom/asus/reader/BookListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput p1, p0, Lcom/asus/reader/BookListActivity;->mAnimationEndPosition:I

    return p1
.end method

.method static synthetic access$3100(Lcom/asus/reader/BookListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/asus/reader/BookListActivity;->mTempStayPosition:I

    return v0
.end method

.method static synthetic access$3102(Lcom/asus/reader/BookListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput p1, p0, Lcom/asus/reader/BookListActivity;->mTempStayPosition:I

    return p1
.end method

.method static synthetic access$3200(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/DragController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mDragController:Lcom/asus/reader/ui/DragController;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/asus/reader/BookListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/asus/reader/BookListActivity;->mColumnCount:I

    return v0
.end method

.method static synthetic access$3400(Lcom/asus/reader/BookListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/asus/reader/BookListActivity;->mSortPosition:I

    return v0
.end method

.method static synthetic access$3500(Lcom/asus/reader/BookListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mSearch:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/asus/reader/BookListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/asus/reader/BookListActivity;->mSearch:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/asus/reader/BookListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->whereColumeID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/asus/reader/BookListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/asus/reader/BookListActivity;->whereColumeID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/asus/reader/BookListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/asus/reader/BookListActivity;->mLatestReadId:I

    return v0
.end method

.method static synthetic access$400(Lcom/asus/reader/BookListActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/asus/reader/BookListActivity;->handleBooksReady(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$500(Lcom/asus/reader/BookListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->openBook()V

    return-void
.end method

.method static synthetic access$600(Lcom/asus/reader/BookListActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/asus/reader/BookListActivity;->handleLatestReadyReady(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$700(Lcom/asus/reader/BookListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/asus/reader/BookListActivity;->handleAddCategory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/asus/reader/BookListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/asus/reader/BookListActivity;->handleRenameCategory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/asus/reader/BookListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->handleDeleteCategory()V

    return-void
.end method

.method private blockLoading()V
    .locals 3

    .prologue
    .line 3048
    iget-boolean v0, p0, Lcom/asus/reader/BookListActivity;->mIsLoading:Z

    if-nez v0, :cond_0

    .line 3053
    :goto_0
    return-void

    .line 3050
    :cond_0
    const v0, 0x7f0b004e

    invoke-virtual {p0, v0}, Lcom/asus/reader/BookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3051
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/reader/BookListActivity;->mIsLoading:Z

    .line 3052
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/asus/reader/book/ReaderDatabase;->setTimeToken(J)V

    goto :goto_0
.end method

.method private chooseBackground(Lcom/asus/reader/BookListActivity$backItem;I)V
    .locals 3
    .parameter "bookitem"
    .parameter "i"

    .prologue
    const v2, 0x7f020119

    const v1, 0x7f020118

    const v0, 0x7f020117

    .line 757
    packed-switch p2, :pswitch_data_0

    .line 780
    const v0, 0x7f020160

    invoke-virtual {p1, v0}, Lcom/asus/reader/BookListActivity$backItem;->setResourceId(I)V

    .line 782
    :goto_0
    return-void

    .line 759
    :pswitch_0
    invoke-virtual {p1, v0}, Lcom/asus/reader/BookListActivity$backItem;->setResourceId(I)V

    goto :goto_0

    .line 762
    :pswitch_1
    invoke-virtual {p1, v1}, Lcom/asus/reader/BookListActivity$backItem;->setResourceId(I)V

    goto :goto_0

    .line 765
    :pswitch_2
    invoke-virtual {p1, v2}, Lcom/asus/reader/BookListActivity$backItem;->setResourceId(I)V

    goto :goto_0

    .line 768
    :pswitch_3
    const v0, 0x7f02011a

    invoke-virtual {p1, v0}, Lcom/asus/reader/BookListActivity$backItem;->setResourceId(I)V

    goto :goto_0

    .line 771
    :pswitch_4
    invoke-virtual {p1, v0}, Lcom/asus/reader/BookListActivity$backItem;->setResourceId(I)V

    goto :goto_0

    .line 774
    :pswitch_5
    invoke-virtual {p1, v1}, Lcom/asus/reader/BookListActivity$backItem;->setResourceId(I)V

    goto :goto_0

    .line 777
    :pswitch_6
    invoke-virtual {p1, v2}, Lcom/asus/reader/BookListActivity$backItem;->setResourceId(I)V

    goto :goto_0

    .line 757
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private clearLastRead()V
    .locals 1

    .prologue
    .line 3100
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/reader/BookListActivity;->mLatestReadId:I

    .line 3101
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mLatestRead:Lcom/asus/reader/ui/LastRead;

    invoke-virtual {v0}, Lcom/asus/reader/ui/LastRead;->clear()V

    .line 3102
    return-void
.end method

.method private clearReadHistory()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3105
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3106
    const-string v1, "date_access"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3107
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->Book_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3108
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->clearLastRead()V

    .line 3109
    return-void
.end method

.method private dismissDrmDialogs()V
    .locals 2

    .prologue
    .line 1078
    :try_start_0
    sget-object v0, Lcom/asus/reader/BookListActivity;->mDrmMenuDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1079
    sget-object v0, Lcom/asus/reader/BookListActivity;->mDrmMenuDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1080
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/reader/BookListActivity;->mDrmMenuDialog:Landroid/app/Dialog;

    .line 1082
    :cond_0
    const-string v0, "DRM Dialog"

    const-string v1, "dismiss mDrmMenuDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    :goto_0
    :try_start_1
    sget-object v0, Lcom/asus/reader/BookListActivity;->mDrmProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 1088
    sget-object v0, Lcom/asus/reader/BookListActivity;->mDrmProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1089
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/reader/BookListActivity;->mDrmProgressDialog:Landroid/app/ProgressDialog;

    .line 1091
    :cond_1
    const-string v0, "DRM Dialog"

    const-string v1, "dismiss mDrmProgressDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1097
    :goto_1
    :try_start_2
    sget-object v0, Lcom/asus/reader/BookListActivity;->mShowProcessResultDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 1098
    sget-object v0, Lcom/asus/reader/BookListActivity;->mShowProcessResultDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1099
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/reader/BookListActivity;->mShowProcessResultDialog:Landroid/app/Dialog;

    .line 1101
    :cond_2
    const-string v0, "DRM Dialog"

    const-string v1, "dismiss mShowProcessResultDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1105
    :goto_2
    return-void

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1092
    :catch_1
    move-exception v0

    .line 1093
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1102
    :catch_2
    move-exception v0

    .line 1103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private getPrcPaths()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1061
    const-string v0, "content://media/external/file"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1063
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->MEDIA_COLUMNS:[Ljava/lang/String;

    const-string v3, "(_data LIKE \'/mnt/sdcard/kindle/%_EBOK.prc\')"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1067
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1068
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1071
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 1072
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v6

    .line 1070
    goto :goto_1
.end method

.method private getPreViewState()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2379
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mViewStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v2, :cond_0

    .line 2380
    const/4 v0, 0x0

    .line 2382
    .end local p0
    :goto_0
    return v0

    .line 2381
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mViewStack:Ljava/util/List;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mViewStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2382
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mViewStack:Ljava/util/List;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mViewStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private getViewState()I
    .locals 3

    .prologue
    .line 2374
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mViewStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2375
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mViewStack:Ljava/util/List;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mViewStack:Ljava/util/List;

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

.method private handleAddCategory(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2841
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    invoke-virtual {v1}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2842
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    invoke-virtual {v1, v0}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->getItem(I)Lcom/asus/reader/BookListActivity$CategoryEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/reader/BookListActivity$CategoryEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2858
    :goto_1
    return-void

    .line 2841
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2846
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2847
    const-string v1, "category_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v2}, Lcom/asus/reader/ui/CategoryListView;->getGroupPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->getItem(I)Lcom/asus/reader/BookListActivity$CategoryEntry;

    move-result-object v1

    .line 2850
    if-eqz v1, :cond_2

    .line 2851
    invoke-virtual {v1}, Lcom/asus/reader/BookListActivity$CategoryEntry;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/asus/reader/BookListActivity;->mReservedCategoryId:J

    .line 2855
    :goto_2
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->Category_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2856
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->clearCategory()V

    .line 2857
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->loadCategory()V

    goto :goto_1

    .line 2853
    :cond_2
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/asus/reader/BookListActivity;->mReservedCategoryId:J

    goto :goto_2
.end method

.method private handleBooksReady(Landroid/database/Cursor;)V
    .locals 4
    .parameter

    .prologue
    const v1, 0x7f0200ed

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2494
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2534
    :pswitch_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2545
    :goto_0
    return-void

    .line 2496
    :pswitch_1
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->reDrawBookDeleteActionBar()V

    .line 2498
    :pswitch_2
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setSelector(I)V

    .line 2499
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    iget v1, p0, Lcom/asus/reader/BookListActivity;->mColumnWidth:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setColumnWidth(I)V

    .line 2500
    iget-boolean v0, p0, Lcom/asus/reader/BookListActivity;->mIsLandscape:Z

    if-nez v0, :cond_4

    .line 2501
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    const/16 v1, 0x2e

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/asus/reader/ui/BookGrid;->setPadding(IIII)V

    .line 2504
    :goto_1
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    iget v1, p0, Lcom/asus/reader/BookListActivity;->mColumnCount:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setNumColumns(I)V

    .line 2505
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookGrid;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2506
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2508
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v0, p1}, Lcom/asus/reader/BookListActivity$BooksAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2537
    :goto_2
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookGrid;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2538
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2539
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookGrid;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2540
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->reDrawBookDeleteActionBar()V

    .line 2542
    :cond_2
    iget v0, p0, Lcom/asus/reader/BookListActivity;->mSelectId:I

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v1}, Lcom/asus/reader/ui/BookGrid;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/asus/reader/BookListActivity;->mSelectId:I

    if-lez v0, :cond_3

    .line 2543
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    iget v1, p0, Lcom/asus/reader/BookListActivity;->mSelectId:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setSelection(I)V

    .line 2544
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/reader/BookListActivity;->mSelectId:I

    goto :goto_0

    .line 2503
    :cond_4
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    const/16 v1, 0x22

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/asus/reader/ui/BookGrid;->setPadding(IIII)V

    goto :goto_1

    .line 2513
    :pswitch_3
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setSelector(I)V

    .line 2514
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    iget v1, p0, Lcom/asus/reader/BookListActivity;->mListWidth:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setColumnWidth(I)V

    .line 2515
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/asus/reader/ui/BookGrid;->setPadding(IIII)V

    .line 2516
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v2}, Lcom/asus/reader/ui/BookGrid;->setNumColumns(I)V

    .line 2517
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookGrid;->getCount()I

    move-result v0

    if-eqz v0, :cond_5

    .line 2518
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2520
    :cond_5
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v0, p1}, Lcom/asus/reader/BookListActivity$BooksAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_2

    .line 2524
    :pswitch_4
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2525
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    const v1, 0x7f020160

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setSelector(I)V

    .line 2526
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/asus/reader/ui/BookGrid;->setPadding(IIII)V

    .line 2527
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    iget v1, p0, Lcom/asus/reader/BookListActivity;->mListWidth:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setColumnWidth(I)V

    .line 2528
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v2}, Lcom/asus/reader/ui/BookGrid;->setNumColumns(I)V

    .line 2529
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v0, p1}, Lcom/asus/reader/BookListActivity$BooksAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2530
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_2

    .line 2494
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleClickEditButton()V
    .locals 3

    .prologue
    const/16 v1, 0xe

    const/4 v2, 0x1

    .line 2595
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2616
    :pswitch_0
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->rollBacktoInit()V

    .line 2617
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->loadBooks()V

    .line 2618
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->handleClickEditButton()V

    .line 2620
    :goto_0
    return-void

    .line 2598
    :pswitch_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/asus/reader/BookListActivity;->setViewState(I)V

    .line 2599
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->switchActionbar()V

    .line 2600
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    invoke-virtual {v0, v2}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->switchCateAdd(Z)V

    .line 2601
    const v0, 0x7f0b00c9

    iput v0, p0, Lcom/asus/reader/BookListActivity;->mSortPosition:I

    .line 2602
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v0}, Lcom/asus/reader/ui/CategoryListView;->getGroupPosition()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 2603
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/asus/reader/ui/CategoryListView;->setCategoryPosition(II)V

    .line 2604
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v0}, Lcom/asus/reader/ui/CategoryListView;->relocatFocus()V

    .line 2605
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v0}, Lcom/asus/reader/ui/CategoryListView;->drawCategoryBackground()V

    .line 2607
    :cond_0
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->loadBooks()V

    goto :goto_0

    .line 2610
    :pswitch_2
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 2611
    invoke-direct {p0, v1}, Lcom/asus/reader/BookListActivity;->setViewState(I)V

    .line 2612
    :cond_1
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->switchActionbar()V

    .line 2613
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asus/reader/BookListActivity;->handleBooksReady(Landroid/database/Cursor;)V

    goto :goto_0

    .line 2595
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleDeleteBook()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2701
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    iget v1, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    iget v2, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    invoke-virtual {v1, v2}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2703
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    iget v2, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    invoke-virtual {v1, v2}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/reader/book/ReaderDatabase;->deleteOneBook(Landroid/database/Cursor;Landroid/content/Context;)I

    .line 2704
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->ReCount_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2705
    const/4 v1, 0x0

    .line 2706
    iget v2, p0, Lcom/asus/reader/BookListActivity;->mLatestReadId:I

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 2707
    const/4 v0, 0x1

    .line 2708
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 2709
    const-string v2, "filepath"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2710
    const-string v2, "mimetype"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2711
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/asus/reader/book/ReaderDataProvider;->LatestBookPath_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2713
    :goto_0
    if-eqz v0, :cond_0

    .line 2714
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->loadLatestRead()V

    .line 2715
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private handleDeleteBooks()V
    .locals 3

    .prologue
    .line 2718
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v1}, Lcom/asus/reader/ui/BookGrid;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2719
    .local v0, selectedArrays:Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_0

    .line 2720
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2721
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/asus/reader/BookListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 2794
    :goto_0
    return-void

    .line 2724
    :cond_0
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v2}, Lcom/asus/reader/ui/BookGrid;->getCheckedItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 2725
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/asus/reader/BookListActivity$18;

    invoke-direct {v2, p0}, Lcom/asus/reader/BookListActivity$18;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private handleDeleteCategory()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 2797
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    iget v1, p0, Lcom/asus/reader/BookListActivity;->mLongPressedCategory:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->getItem(I)Lcom/asus/reader/BookListActivity$CategoryEntry;

    move-result-object v0

    .line 2798
    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$CategoryEntry;->getId()J

    move-result-wide v0

    .line 2799
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2821
    :goto_0
    return-void

    .line 2801
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2802
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/asus/reader/book/ReaderDatabase;->Category_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2804
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v2}, Lcom/asus/reader/ui/CategoryListView;->getGroupPosition()I

    move-result v2

    iget v3, p0, Lcom/asus/reader/BookListActivity;->mLongPressedCategory:I

    if-ne v2, v3, :cond_1

    .line 2805
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v2, v6, v6}, Lcom/asus/reader/ui/CategoryListView;->setCategoryPosition(II)V

    .line 2815
    :goto_1
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 2816
    const-string v3, "category_id"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2817
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "category_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2818
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/asus/reader/book/ReaderDatabase;->Book_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2, v0, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2819
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->ReCount_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2820
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->loadCategoryandBooks()V

    goto :goto_0

    .line 2807
    :cond_1
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    iget-object v3, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v3}, Lcom/asus/reader/ui/CategoryListView;->getGroupPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->getItem(I)Lcom/asus/reader/BookListActivity$CategoryEntry;

    move-result-object v2

    .line 2808
    if-eqz v2, :cond_2

    .line 2809
    invoke-virtual {v2}, Lcom/asus/reader/BookListActivity$CategoryEntry;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/asus/reader/BookListActivity;->mReservedCategoryId:J

    goto :goto_1

    .line 2811
    :cond_2
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/asus/reader/BookListActivity;->mReservedCategoryId:J

    .line 2812
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v2, v6, v6}, Lcom/asus/reader/ui/CategoryListView;->setCategoryPosition(II)V

    goto :goto_1
.end method

.method private handleExpandSearchView(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2623
    iget-boolean v0, p0, Lcom/asus/reader/BookListActivity;->mIsLandscape:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 2632
    :cond_0
    :goto_0
    return-void

    .line 2626
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2627
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2628
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_3

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2629
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_4

    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2630
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_5

    move v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 2627
    goto :goto_1

    :cond_3
    move v1, v2

    .line 2628
    goto :goto_2

    :cond_4
    move v1, v2

    .line 2629
    goto :goto_3

    :cond_5
    move v1, v2

    .line 2630
    goto :goto_4
.end method

.method private handleLatestReadyReady(Landroid/database/Cursor;)V
    .locals 9
    .parameter

    .prologue
    .line 2549
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2550
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2551
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->clearLastRead()V

    .line 2592
    :goto_0
    return-void

    .line 2554
    :cond_0
    const-string v0, "desc"

    const-string v1, "handleLatestReadyReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    const/4 v0, -0x1

    .line 2556
    const-wide/16 v1, -0x1

    .line 2557
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2558
    const-string v3, "date_access"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2559
    const-string v5, "title"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2560
    const-string v6, "desc"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    const-string v6, "desc"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "title:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    cmp-long v1, v3, v1

    if-lez v1, :cond_1

    .line 2564
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 2578
    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2579
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/asus/reader/BookListActivity;->mLatestReadId:I

    .line 2580
    const-string v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/BookListActivity;->mLatestReadPath:Ljava/lang/String;

    .line 2581
    const-string v0, "mime_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/BookListActivity;->mLatestReadMIMEType:Ljava/lang/String;

    .line 2582
    const-string v0, "last_viewed_pos"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/BookListActivity;->mLatestReadViewPos:Ljava/lang/Double;

    .line 2583
    const-string v0, "last_viewed_font_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/asus/reader/BookListActivity;->mLatestReadViewFontSize:I

    .line 2585
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2586
    if-nez v0, :cond_2

    .line 2587
    const-string v0, "_display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2588
    :cond_2
    const-string v1, "creator"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2589
    const-string v2, "cover_path"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2590
    iget-object v3, p0, Lcom/asus/reader/BookListActivity;->mLatestRead:Lcom/asus/reader/ui/LastRead;

    iget-object v4, p0, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/asus/reader/ui/LastRead;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 2591
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private handleOpenfile(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2678
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2682
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2683
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2698
    :goto_0
    return-void

    .line 2686
    :cond_0
    const-string v2, ".pdf"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2687
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2694
    :goto_1
    invoke-virtual {p0, v0}, Lcom/asus/reader/BookListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2695
    :catch_0
    move-exception v0

    .line 2696
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2688
    :cond_1
    :try_start_1
    const-string v2, ".epub"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2689
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/epub+zip"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 2690
    :cond_2
    const-string v2, ".txt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2691
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 2693
    :cond_3
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private handleRenameCategory(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 2823
    if-nez p1, :cond_1

    .line 2839
    :cond_0
    :goto_0
    return-void

    .line 2825
    :cond_1
    const-string v0, ""

    if-eq p1, v0, :cond_0

    .line 2827
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    invoke-virtual {v1}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2828
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    invoke-virtual {v1, v0}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->getItem(I)Lcom/asus/reader/BookListActivity$CategoryEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/reader/BookListActivity$CategoryEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2827
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2831
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2832
    const-string v1, "category_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2833
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    iget v2, p0, Lcom/asus/reader/BookListActivity;->mLongPressedCategory:I

    invoke-virtual {v1, v2}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->getItem(I)Lcom/asus/reader/BookListActivity$CategoryEntry;

    move-result-object v1

    .line 2834
    invoke-virtual {v1}, Lcom/asus/reader/BookListActivity$CategoryEntry;->getId()J

    move-result-wide v1

    .line 2835
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2836
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/asus/reader/book/ReaderDatabase;->Category_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2837
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->clearCategory()V

    .line 2838
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->loadCategory()V

    goto :goto_0
.end method

.method private handleSearchDB()V
    .locals 1

    .prologue
    .line 2861
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/asus/reader/BookListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2862
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->rollBacktoInit()V

    .line 2863
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/asus/reader/BookListActivity;->setViewState(I)V

    .line 2864
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->loadBooks()V

    .line 2865
    return-void
.end method

.method private hideLoading()V
    .locals 2

    .prologue
    .line 3061
    const v0, 0x7f0b004e

    invoke-virtual {p0, v0}, Lcom/asus/reader/BookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3062
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/reader/BookListActivity;->mIsLoading:Z

    .line 3063
    return-void
.end method

.method private initActivityState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 947
    if-nez p1, :cond_0

    .line 965
    :goto_0
    return-void

    .line 952
    :cond_0
    const-string v0, "android:savedDialogs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 954
    const-string v0, "bundleviewstack"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 955
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 956
    aget v2, v0, v1

    invoke-direct {p0, v2}, Lcom/asus/reader/BookListActivity;->setViewState(I)V

    .line 955
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 958
    :cond_1
    const-string v0, "bundlesortposition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/asus/reader/BookListActivity;->mSortPosition:I

    .line 959
    const-string v0, "bundlecatebookposition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    .line 960
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    const-string v1, "bundlecategoryposition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "bundlesubcateposition"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/asus/reader/ui/CategoryListView;->setCategoryPosition(II)V

    .line 961
    const-string v0, "bundlesearch"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/BookListActivity;->mSearch:Ljava/lang/String;

    .line 962
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mSearch:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 963
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/BookListActivity;->mSearch:Ljava/lang/String;

    .line 964
    :cond_2
    const-string v0, "bundleselectid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/asus/reader/BookListActivity;->mSelectId:I

    goto :goto_0
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 893
    const v2, 0x7f030012

    invoke-virtual {p0, v2}, Lcom/asus/reader/BookListActivity;->setContentView(I)V

    .line 894
    const v2, 0x7f0b0048

    invoke-virtual {p0, v2}, Lcom/asus/reader/BookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/asus/reader/ui/DragFrame;

    iput-object v2, p0, Lcom/asus/reader/BookListActivity;->mFrame:Lcom/asus/reader/ui/DragFrame;

    .line 895
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/asus/reader/BookListActivity;->mBookBacks:Ljava/util/List;

    .line 896
    iget-boolean v2, p0, Lcom/asus/reader/BookListActivity;->mIsLandscape:Z

    if-eqz v2, :cond_1

    .line 897
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/BookListActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/BookListActivity$backItem;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 898
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/BookListActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/BookListActivity$backItem;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 899
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/BookListActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/BookListActivity$backItem;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/BookListActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/BookListActivity$backItem;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/BookListActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/BookListActivity$backItem;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    :goto_0
    const v2, 0x7f0b004d

    invoke-virtual {p0, v2}, Lcom/asus/reader/BookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/asus/reader/ui/LastRead;

    iput-object v2, p0, Lcom/asus/reader/BookListActivity;->mLatestRead:Lcom/asus/reader/ui/LastRead;

    .line 914
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mLatestRead:Lcom/asus/reader/ui/LastRead;

    invoke-virtual {v2, p0}, Lcom/asus/reader/ui/LastRead;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 916
    const v2, 0x7f0b004c

    invoke-virtual {p0, v2}, Lcom/asus/reader/BookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/asus/reader/ui/CategoryListView;

    iput-object v2, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    .line 917
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v2, p0}, Lcom/asus/reader/ui/CategoryListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 918
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v2, p0}, Lcom/asus/reader/ui/CategoryListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 919
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v2, p0}, Lcom/asus/reader/ui/CategoryListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 921
    const v2, 0x7f0b004a

    invoke-virtual {p0, v2}, Lcom/asus/reader/BookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/asus/reader/ui/BookGrid;

    iput-object v2, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    .line 922
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v2, p0}, Lcom/asus/reader/ui/BookGrid;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 923
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v2, p0}, Lcom/asus/reader/ui/BookGrid;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 924
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v2, p0}, Lcom/asus/reader/ui/BookGrid;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 925
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v2, p0}, Lcom/asus/reader/ui/BookGrid;->setOnLayoutListener(Lcom/asus/reader/ui/BookGrid$onLayoutListener;)V

    .line 927
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/asus/reader/BookListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/asus/reader/BookListActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 930
    new-instance v2, Lcom/asus/reader/ui/DragController;

    invoke-direct {v2, p0}, Lcom/asus/reader/ui/DragController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/asus/reader/BookListActivity;->mDragController:Lcom/asus/reader/ui/DragController;

    .line 931
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mFrame:Lcom/asus/reader/ui/DragFrame;

    iget-object v3, p0, Lcom/asus/reader/BookListActivity;->mDragController:Lcom/asus/reader/ui/DragController;

    invoke-virtual {v2, v3}, Lcom/asus/reader/ui/DragFrame;->setDragController(Lcom/asus/reader/ui/DragController;)V

    .line 932
    new-instance v2, Lcom/asus/reader/BookListActivity$GridViewDragListener;

    invoke-direct {v2, p0}, Lcom/asus/reader/BookListActivity$GridViewDragListener;-><init>(Lcom/asus/reader/BookListActivity;)V

    iput-object v2, p0, Lcom/asus/reader/BookListActivity;->mDragListener:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    .line 933
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mFrame:Lcom/asus/reader/ui/DragFrame;

    iget-boolean v3, p0, Lcom/asus/reader/BookListActivity;->mIsLandscape:Z

    invoke-virtual {v2, v3}, Lcom/asus/reader/ui/DragFrame;->setOrientation(Z)V

    .line 935
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 938
    .local v0, bar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v2

    or-int/lit8 v1, v2, 0x10

    .line 940
    .local v1, options:I
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 941
    iget-boolean v2, p0, Lcom/asus/reader/BookListActivity;->mIsLandscape:Z

    if-nez v2, :cond_0

    .line 942
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 944
    :cond_0
    return-void

    .line 903
    .end local v0           #bar:Landroid/app/ActionBar;
    .end local v1           #options:I
    :cond_1
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/BookListActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/BookListActivity$backItem;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 904
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/BookListActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/BookListActivity$backItem;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/BookListActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/BookListActivity$backItem;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 906
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/BookListActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/BookListActivity$backItem;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/BookListActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/BookListActivity$backItem;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/BookListActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/BookListActivity$backItem;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 909
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/BookListActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/BookListActivity$backItem;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mBookBacks:Ljava/util/List;

    new-instance v3, Lcom/asus/reader/BookListActivity$backItem;

    invoke-direct {v3, p0}, Lcom/asus/reader/BookListActivity$backItem;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private loadBooks()V
    .locals 2

    .prologue
    .line 2232
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/book/ReaderDatabase;->clearCoverCache()V

    .line 2233
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/asus/reader/BookListActivity$16;

    invoke-direct {v1, p0}, Lcom/asus/reader/BookListActivity$16;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2283
    return-void
.end method

.method private loadCategory()V
    .locals 2

    .prologue
    .line 2220
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/reader/BookListActivity;->mLongPressedCategory:I

    .line 2221
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/asus/reader/BookListActivity$15;

    invoke-direct {v1, p0}, Lcom/asus/reader/BookListActivity$15;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2229
    return-void
.end method

.method private loadCategoryandBooks()V
    .locals 2

    .prologue
    .line 2146
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/reader/BookListActivity;->mLongPressedCategory:I

    .line 2147
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/book/ReaderDatabase;->clearCoverCache()V

    .line 2148
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/asus/reader/BookListActivity$13;

    invoke-direct {v1, p0}, Lcom/asus/reader/BookListActivity$13;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2205
    return-void
.end method

.method private loadLatestRead()V
    .locals 2

    .prologue
    .line 2341
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/asus/reader/BookListActivity$17;

    invoke-direct {v1, p0}, Lcom/asus/reader/BookListActivity$17;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2353
    return-void
.end method

.method private openBook()V
    .locals 3

    .prologue
    .line 2888
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    iget v2, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    invoke-virtual {v1, v2}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    .line 2889
    .local v0, c:Landroid/database/Cursor;
    invoke-static {p0, v0}, Lcom/asus/reader/book/ReaderDatabase;->openBook(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 2890
    return-void
.end method

.method private openLatestRead()V
    .locals 7

    .prologue
    .line 2893
    iget v0, p0, Lcom/asus/reader/BookListActivity;->mLatestReadId:I

    if-gtz v0, :cond_0

    .line 2897
    :goto_0
    return-void

    .line 2895
    :cond_0
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mLatestReadMIMEType:Ljava/lang/String;

    iget v2, p0, Lcom/asus/reader/BookListActivity;->mLatestReadId:I

    iget-object v3, p0, Lcom/asus/reader/BookListActivity;->mLatestReadPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mLatestReadViewPos:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget v6, p0, Lcom/asus/reader/BookListActivity;->mLatestReadViewFontSize:I

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/book/ReaderDatabase;->openBook(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DI)V

    goto :goto_0
.end method

.method private reBindBookItem(Lcom/asus/reader/ui/BookItem;Landroid/database/Cursor;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1528
    invoke-virtual {p1}, Lcom/asus/reader/ui/BookItem;->getPosition()I

    move-result v0

    .line 1529
    invoke-interface {p2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1530
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1550
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1532
    :pswitch_1
    invoke-virtual {p1, p2, v0}, Lcom/asus/reader/ui/BookItem;->bindBookDelete(Landroid/database/Cursor;I)V

    .line 1533
    invoke-virtual {p1, v4}, Lcom/asus/reader/ui/BookItem;->setVisibility(I)V

    .line 1540
    const-string v1, "local_order"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1541
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v2}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-eq v1, v2, :cond_0

    .line 1542
    invoke-virtual {p1}, Lcom/asus/reader/ui/BookItem;->getBookId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v3}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCount()I

    move-result v3

    sub-int v0, v3, v0

    invoke-direct {p0, v1, v2, v0, v4}, Lcom/asus/reader/BookListActivity;->updateBookOrder(JIZ)V

    goto :goto_0

    .line 1546
    :pswitch_2
    invoke-virtual {p1, p2, v0}, Lcom/asus/reader/ui/BookItem;->bindBookGrid(Landroid/database/Cursor;I)V

    goto :goto_0

    .line 1530
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private reBindBookItems()V
    .locals 4

    .prologue
    .line 1553
    iget-object v3, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v3}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1554
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v3}, Lcom/asus/reader/ui/BookGrid;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1555
    iget-object v3, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v3, v1}, Lcom/asus/reader/ui/BookGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1556
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/asus/reader/ui/BookItem;

    if-eqz v3, :cond_0

    .line 1557
    check-cast v2, Lcom/asus/reader/ui/BookItem;

    .end local v2           #v:Landroid/view/View;
    invoke-direct {p0, v2, v0}, Lcom/asus/reader/BookListActivity;->reBindBookItem(Lcom/asus/reader/ui/BookItem;Landroid/database/Cursor;)V

    .line 1554
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1560
    :cond_1
    return-void
.end method

.method private reDrawBookDeleteActionBar()V
    .locals 7

    .prologue
    const v6, 0x7f0b0008

    const v5, 0x7f0b0007

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 868
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_1

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 873
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 874
    .local v0, deletebutton:Landroid/widget/Button;
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v1}, Lcom/asus/reader/ui/BookGrid;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v2}, Lcom/asus/reader/ui/BookGrid;->getCheckedItemCount()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v1}, Lcom/asus/reader/ui/BookGrid;->getCheckedItemCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 876
    :cond_2
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 877
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 883
    :goto_1
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v1}, Lcom/asus/reader/ui/BookGrid;->getCheckedItemCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 884
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 879
    :cond_3
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 880
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 886
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private reDrawDropDownMenu()V
    .locals 6

    .prologue
    const v5, 0x7f0b00c8

    const v4, 0x7f0b00c7

    const v1, 0x7f0b00c6

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 785
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mSortBy:Lcom/asus/reader/ui/DropDownMenu;

    if-nez v0, :cond_0

    .line 817
    :goto_0
    return-void

    .line 787
    :cond_0
    iget v0, p0, Lcom/asus/reader/BookListActivity;->mSortPosition:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 789
    :pswitch_0
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mSortBy:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 790
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mSortBy:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v0, v4}, Lcom/asus/reader/ui/DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 791
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mSortBy:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v0, v5}, Lcom/asus/reader/ui/DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 792
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mSortBy:Lcom/asus/reader/ui/DropDownMenu;

    const v1, 0x7f0b00c9

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 793
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mSortBy:Lcom/asus/reader/ui/DropDownMenu;

    const v1, 0x7f0700da

    invoke-virtual {p0, v1}, Lcom/asus/reader/BookListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 796
    :pswitch_1
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mSortBy:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 797
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mSortBy:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v0, v4}, Lcom/asus/reader/ui/DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 798
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mSortBy:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v0, v5}, Lcom/asus/reader/ui/DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 799
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mSortBy:Lcom/asus/reader/ui/DropDownMenu;

    const v1, 0x7f0b00c9

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 800
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mSortBy:Lcom/asus/reader/ui/DropDownMenu;

    const v1, 0x7f0700dc

    invoke-virtual {p0, v1}, Lcom/asus/reader/BookListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 803
    :pswitch_2
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mSortBy:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 804
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mSortBy:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v0, v4}, Lcom/asus/reader/ui/DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 805
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mSortBy:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v0, v5}, Lcom/asus/reader/ui/DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 806
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mSortBy:Lcom/asus/reader/ui/DropDownMenu;

    const v1, 0x7f0b00c9

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 807
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mSortBy:Lcom/asus/reader/ui/DropDownMenu;

    const v1, 0x7f0700e9

    invoke-virtual {p0, v1}, Lcom/asus/reader/BookListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 810
    :pswitch_3
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mSortBy:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 811
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mSortBy:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v0, v4}, Lcom/asus/reader/ui/DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 812
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mSortBy:Lcom/asus/reader/ui/DropDownMenu;

    invoke-virtual {v0, v5}, Lcom/asus/reader/ui/DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 813
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mSortBy:Lcom/asus/reader/ui/DropDownMenu;

    const v1, 0x7f0b00c9

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 814
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mSortBy:Lcom/asus/reader/ui/DropDownMenu;

    const v1, 0x7f0700d2

    invoke-virtual {p0, v1}, Lcom/asus/reader/BookListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 787
    :pswitch_data_0
    .packed-switch 0x7f0b00c6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshCategory()V
    .locals 2

    .prologue
    .line 2208
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/reader/BookListActivity;->mLongPressedCategory:I

    .line 2209
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/asus/reader/BookListActivity$14;

    invoke-direct {v1, p0}, Lcom/asus/reader/BookListActivity$14;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2217
    return-void
.end method

.method private relocateCategoryPosition()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 3112
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    invoke-virtual {v1}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3113
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    invoke-virtual {v1, v0}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->getItem(I)Lcom/asus/reader/BookListActivity$CategoryEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/reader/BookListActivity$CategoryEntry;->getId()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/asus/reader/BookListActivity;->mReservedCategoryId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 3114
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v1, v0, v5}, Lcom/asus/reader/ui/CategoryListView;->setCategoryPosition(II)V

    .line 3119
    :goto_1
    return-void

    .line 3112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3118
    :cond_1
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v1, v5, v5}, Lcom/asus/reader/ui/CategoryListView;->setCategoryPosition(II)V

    goto :goto_1
.end method

.method private rollBacktoInit()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2386
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 2391
    :cond_0
    return-void

    .line 2388
    :cond_1
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getPreViewState()I

    move-result v0

    .line 2389
    .local v0, prestate:I
    :goto_0
    if-eq v0, v2, :cond_0

    if-eq v0, v3, :cond_0

    .line 2390
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getPreViewState()I

    move-result v0

    goto :goto_0
.end method

.method private scanKindleDir()V
    .locals 6

    .prologue
    .line 1029
    const-string v0, "/mnt/sdcard/kindle/"

    .line 1030
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1032
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1033
    if-nez v0, :cond_1

    .line 1058
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getPrcPaths()Ljava/util/ArrayList;

    move-result-object v1

    .line 1038
    if-eqz v1, :cond_0

    .line 1042
    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 1043
    aget-object v3, v0, v2

    .line 1044
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1045
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_ebok.prc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1046
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1047
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1048
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v4}, Lcom/asus/reader/BookListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1042
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1052
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1053
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    const-string v2, "file:///mnt/sdcard/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/asus/reader/BookListActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1055
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setViewState(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 2356
    if-eq p1, v2, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2357
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mViewStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2360
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mViewStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 2361
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mViewStack:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2364
    :cond_2
    :goto_0
    return-void

    .line 2362
    :cond_3
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mViewStack:Ljava/util/List;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mViewStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 2363
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mViewStack:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private switchActionbar()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 2394
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 2395
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 2396
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2414
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 2415
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->reDrawDropDownMenu()V

    .line 2434
    :cond_0
    :goto_0
    return-void

    .line 2398
    :sswitch_0
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 2400
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v4}, Lcom/asus/reader/ui/BookGrid;->setChoiceMode(I)V

    .line 2401
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030004

    invoke-virtual {v0, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    .line 2402
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2403
    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Lcom/asus/reader/BookListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2404
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_0

    .line 2407
    :sswitch_1
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2410
    :cond_2
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v5}, Lcom/asus/reader/ui/BookGrid;->setChoiceMode(I)V

    .line 2411
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, p0}, Lcom/asus/reader/ui/BookGrid;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_0

    .line 2418
    :cond_3
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v4}, Lcom/asus/reader/ui/BookGrid;->setChoiceMode(I)V

    .line 2419
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030005

    invoke-virtual {v0, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    .line 2420
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2421
    const-string v0, ""

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2422
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 2423
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 2424
    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 2425
    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 2426
    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 2427
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mSearch:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mSearch:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 2428
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mSearch:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 2429
    :cond_4
    new-instance v1, Lcom/asus/reader/ui/DropDownMenu;

    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    const v2, 0x7f0b0010

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f0a0002

    invoke-direct {v1, p0, v0, v2, p0}, Lcom/asus/reader/ui/DropDownMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iput-object v1, p0, Lcom/asus/reader/BookListActivity;->mSortBy:Lcom/asus/reader/ui/DropDownMenu;

    .line 2432
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->reDrawDropDownMenu()V

    goto/16 :goto_0

    .line 2396
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private switchBooksView()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2444
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 2445
    invoke-direct {p0, v2}, Lcom/asus/reader/BookListActivity;->setViewState(I)V

    .line 2446
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/asus/reader/BookListActivity;->mSelectId:I

    .line 2447
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asus/reader/BookListActivity;->handleBooksReady(Landroid/database/Cursor;)V

    .line 2453
    :cond_0
    :goto_0
    return-void

    .line 2448
    :cond_1
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2449
    invoke-direct {p0, v1}, Lcom/asus/reader/BookListActivity;->setViewState(I)V

    .line 2450
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/asus/reader/BookListActivity;->mSelectId:I

    .line 2451
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asus/reader/BookListActivity;->handleBooksReady(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private switchToBookInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 2456
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    iget v1, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    .line 2457
    const-string v1, "mime_type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2460
    const-string v1, "application/pressreader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2461
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->openBook()V

    .line 2468
    :goto_0
    return-void

    .line 2465
    :cond_0
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 2466
    invoke-direct {p0, v2}, Lcom/asus/reader/BookListActivity;->setViewState(I)V

    .line 2467
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asus/reader/BookListActivity;->handleBooksReady(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private switchToRecentRead()V
    .locals 1

    .prologue
    .line 2437
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->rollBacktoInit()V

    .line 2438
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/asus/reader/BookListActivity;->setViewState(I)V

    .line 2439
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->switchActionbar()V

    .line 2440
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->loadBooks()V

    .line 2441
    return-void
.end method

.method private updateBookInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3066
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookGrid;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 3097
    :cond_0
    :goto_0
    return-void

    .line 3068
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v7}, Lcom/asus/reader/ui/BookGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/asus/reader/ui/BookEdit;

    if-eqz v0, :cond_0

    .line 3069
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v7}, Lcom/asus/reader/ui/BookGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/ui/BookEdit;

    .line 3070
    invoke-virtual {v0}, Lcom/asus/reader/ui/BookEdit;->getBookId()J

    move-result-wide v1

    .line 3071
    long-to-int v3, v1

    iget v4, p0, Lcom/asus/reader/BookListActivity;->mLatestReadId:I

    if-ne v3, v4, :cond_2

    .line 3072
    iget-object v3, p0, Lcom/asus/reader/BookListActivity;->mLatestRead:Lcom/asus/reader/ui/LastRead;

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookEdit;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookEdit;->getAuther()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/asus/reader/ui/LastRead;->update(Ljava/lang/String;Ljava/lang/String;)V

    .line 3074
    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 3075
    const-string v4, "title"

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookEdit;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3076
    const-string v4, "creator"

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookEdit;->getAuther()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3077
    const-string v4, "description"

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookEdit;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3079
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/asus/reader/book/ReaderDatabase;->Book_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3081
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 3082
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3085
    :cond_3
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iget-object v3, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v3}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 3087
    cmp-long v0, v3, v1

    if-nez v0, :cond_4

    .line 3088
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    .line 3089
    const/4 v0, 0x1

    .line 3093
    :goto_1
    if-nez v0, :cond_0

    .line 3094
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iget v1, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0

    .line 3092
    :cond_4
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v7

    goto :goto_1
.end method

.method private updateBookOrder(JIZ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3037
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3041
    const-string v1, "local_order"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3043
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3044
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/asus/reader/book/ReaderDatabase;->Book_NoNotify_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3045
    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/16 v10, 0xc8

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 820
    const/4 v8, 0x0

    .line 821
    .local v8, line:I
    iget-boolean v0, p0, Lcom/asus/reader/BookListActivity;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 822
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookGrid;->getChildCount()I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x4014

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v8, v2

    .line 826
    :goto_0
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookGrid;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-le v0, v10, :cond_2

    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-ge v0, v10, :cond_2

    .line 828
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookGrid;->getChildCount()I

    move-result v8

    .line 832
    :cond_0
    :goto_1
    const/4 v6, 0x0

    .line 833
    .local v6, bottombase:I
    if-lez v8, :cond_4

    .line 834
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 835
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookBacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 841
    if-ge v7, v8, :cond_3

    .line 842
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookBacks:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/BookListActivity$backItem;

    const v2, 0x7f02011f

    invoke-virtual {v0, v2}, Lcom/asus/reader/BookListActivity$backItem;->setResourceId(I)V

    .line 846
    :goto_3
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookBacks:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/BookListActivity$backItem;

    sub-int v2, v7, v9

    mul-int/lit16 v2, v2, 0xb0

    add-int/2addr v2, v6

    sub-int/2addr v2, v9

    iget-object v3, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v3}, Lcom/asus/reader/ui/BookGrid;->getWidth()I

    move-result v3

    mul-int/lit16 v4, v7, 0xb0

    add-int/2addr v4, v6

    sub-int/2addr v4, v9

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/asus/reader/BookListActivity$backItem;->draw(IIIILandroid/graphics/Canvas;)V

    .line 835
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 824
    .end local v6           #bottombase:I
    .end local v7           #i:I
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookGrid;->getChildCount()I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x4010

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v8, v2

    goto :goto_0

    .line 829
    :cond_2
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-le v0, v10, :cond_0

    .line 830
    const/4 v8, 0x0

    goto :goto_1

    .line 844
    .restart local v6       #bottombase:I
    .restart local v7       #i:I
    :cond_3
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookBacks:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/BookListActivity$backItem;

    add-int/lit8 v2, v7, 0x1

    invoke-direct {p0, v0, v2}, Lcom/asus/reader/BookListActivity;->chooseBackground(Lcom/asus/reader/BookListActivity$backItem;I)V

    goto :goto_3

    .line 853
    .end local v7           #i:I
    :cond_4
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_4
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookBacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 854
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookBacks:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/BookListActivity$backItem;

    add-int/lit8 v2, v7, 0x1

    invoke-direct {p0, v0, v2}, Lcom/asus/reader/BookListActivity;->chooseBackground(Lcom/asus/reader/BookListActivity$backItem;I)V

    .line 855
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookBacks:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/BookListActivity$backItem;

    mul-int/lit16 v2, v7, 0xb0

    iget-object v3, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v3}, Lcom/asus/reader/ui/BookGrid;->getWidth()I

    move-result v3

    add-int/lit8 v4, v7, 0x1

    mul-int/lit16 v4, v4, 0xb0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/asus/reader/BookListActivity$backItem;->draw(IIIILandroid/graphics/Canvas;)V

    .line 853
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 863
    :cond_5
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 425
    const/4 v0, 0x1

    return v0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 652
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 514
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->blockLoading()V

    .line 515
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 592
    :cond_0
    :goto_0
    instance-of v1, p1, Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    .line 593
    invoke-direct {p0, v4}, Lcom/asus/reader/BookListActivity;->handleExpandSearchView(Z)V

    .line 595
    :cond_1
    return-void

    .line 517
    :sswitch_0
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->handleClickEditButton()V

    goto :goto_0

    .line 520
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/asus/reader/ui/BookItem;

    invoke-virtual {v1}, Lcom/asus/reader/ui/BookItem;->getPosition()I

    move-result v1

    iput v1, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    .line 521
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->switchToBookInfo()V

    goto :goto_0

    .line 524
    :sswitch_2
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->clearReadHistory()V

    .line 525
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v1, v2}, Lcom/asus/reader/ui/BookGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 526
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getPreViewState()I

    .line 527
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->loadBooks()V

    goto :goto_0

    .line 531
    :sswitch_3
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->rollBacktoInit()V

    .line 532
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v1, v2, v2}, Lcom/asus/reader/ui/CategoryListView;->setCategoryPosition(II)V

    .line 533
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v1}, Lcom/asus/reader/ui/CategoryListView;->relocatFocus()V

    .line 534
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v1}, Lcom/asus/reader/ui/CategoryListView;->drawCategoryBackground()V

    .line 535
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->loadBooks()V

    .line 536
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mFrame:Lcom/asus/reader/ui/DragFrame;

    invoke-virtual {v1}, Lcom/asus/reader/ui/DragFrame;->notifyClickCategoty()V

    goto :goto_0

    .line 539
    :sswitch_4
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/asus/reader/BookListActivity;->showDialog(I)V

    goto :goto_0

    .line 542
    :sswitch_5
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->openBook()V

    goto :goto_0

    .line 545
    :sswitch_6
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->isUser()Z

    move-result v1

    if-nez v1, :cond_2

    .line 546
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/asus/reader/BookListActivity;->showDialog(I)V

    goto :goto_0

    .line 548
    :cond_2
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x4d9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 551
    :sswitch_7
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->updateBookInfo()V

    .line 552
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getPreViewState()I

    .line 553
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v1}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/asus/reader/BookListActivity;->handleBooksReady(Landroid/database/Cursor;)V

    .line 554
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->switchActionbar()V

    goto :goto_0

    .line 557
    :sswitch_8
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getPreViewState()I

    .line 558
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v1}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/asus/reader/BookListActivity;->handleBooksReady(Landroid/database/Cursor;)V

    .line 559
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->switchActionbar()V

    goto/16 :goto_0

    .line 562
    :sswitch_9
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v1}, Lcom/asus/reader/ui/BookGrid;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 563
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v1, v0, v4}, Lcom/asus/reader/ui/BookGrid;->setItemChecked(IZ)V

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 565
    :cond_3
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 567
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->reDrawBookDeleteActionBar()V

    .line 568
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->reBindBookItems()V

    goto/16 :goto_0

    .line 571
    .end local v0           #i:I
    :sswitch_a
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 573
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->reDrawBookDeleteActionBar()V

    .line 574
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v1}, Lcom/asus/reader/ui/BookGrid;->clearChoices()V

    .line 575
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 576
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    const v2, 0x7f0b0008

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 577
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 578
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->reBindBookItems()V

    goto/16 :goto_0

    .line 581
    :sswitch_b
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/asus/reader/BookListActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 584
    :sswitch_c
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->openLatestRead()V

    goto/16 :goto_0

    .line 587
    :sswitch_d
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/asus/reader/BookListActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 515
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0001 -> :sswitch_d
        0x7f0b0007 -> :sswitch_9
        0x7f0b0008 -> :sswitch_a
        0x7f0b0009 -> :sswitch_b
        0x7f0b000a -> :sswitch_8
        0x7f0b000c -> :sswitch_7
        0x7f0b000d -> :sswitch_6
        0x7f0b000e -> :sswitch_0
        0x7f0b000f -> :sswitch_3
        0x7f0b003e -> :sswitch_5
        0x7f0b0047 -> :sswitch_1
        0x7f0b004d -> :sswitch_c
        0x7f0b0055 -> :sswitch_4
        0x7f0b0079 -> :sswitch_2
    .end sparse-switch
.end method

.method public onClose()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 388
    invoke-direct {p0, v0}, Lcom/asus/reader/BookListActivity;->handleExpandSearchView(Z)V

    .line 389
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0xb5

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 971
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 973
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->checkBrand()Z

    move-result v0

    if-nez v0, :cond_0

    .line 974
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->finish()V

    .line 976
    :cond_0
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 977
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/asus/reader/BookListActivity;->mIsLandscape:Z

    .line 978
    iget-boolean v0, p0, Lcom/asus/reader/BookListActivity;->mIsLandscape:Z

    if-eqz v0, :cond_3

    .line 979
    const/4 v0, 0x5

    iput v0, p0, Lcom/asus/reader/BookListActivity;->mColumnCount:I

    .line 980
    iput v4, p0, Lcom/asus/reader/BookListActivity;->mColumnWidth:I

    .line 981
    const/16 v0, 0x393

    iput v0, p0, Lcom/asus/reader/BookListActivity;->mListWidth:I

    .line 987
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/BookListActivity;->mViewStack:Ljava/util/List;

    .line 989
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->initView()V

    .line 990
    invoke-direct {p0, v3}, Lcom/asus/reader/BookListActivity;->setViewState(I)V

    .line 992
    new-instance v0, Lcom/asus/reader/BookListActivity$BooksAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/asus/reader/BookListActivity$BooksAdapter;-><init>(Lcom/asus/reader/BookListActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    .line 993
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 995
    invoke-direct {p0, p1}, Lcom/asus/reader/BookListActivity;->initActivityState(Landroid/os/Bundle;)V

    .line 996
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->switchActionbar()V

    .line 997
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->reDrawDropDownMenu()V

    .line 998
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->loadCategoryandBooks()V

    .line 1002
    :try_start_0
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showDrmMenu"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1003
    if-lez v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    :cond_1
    :goto_2
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/asus/reader/book/ReaderDatabase;->setMountListener(Lcom/asus/reader/book/ReaderDatabase$mountListener;)V

    .line 1010
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDataProvider;->BookCount_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mCountObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1011
    return-void

    :cond_2
    move v0, v2

    .line 977
    goto :goto_0

    .line 983
    :cond_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/asus/reader/BookListActivity;->mColumnCount:I

    .line 984
    iput v4, p0, Lcom/asus/reader/BookListActivity;->mColumnWidth:I

    .line 985
    const/16 v0, 0x302

    iput v0, p0, Lcom/asus/reader/BookListActivity;->mListWidth:I

    goto :goto_1

    .line 1005
    :catch_0
    move-exception v0

    .line 1006
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 405
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter

    .prologue
    const v6, 0x7f070021

    const/4 v4, 0x1

    const v8, 0x7f070020

    const/4 v7, 0x2

    const/4 v5, 0x0

    .line 1325
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object v0, v5

    .line 1524
    :goto_0
    return-object v0

    .line 1327
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v1, "abc"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x7f070031

    invoke-virtual {p0, v3}, Lcom/asus/reader/BookListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const v2, 0x7f070030

    invoke-virtual {p0, v2}, Lcom/asus/reader/BookListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Lcom/asus/reader/BookListActivity$5;

    invoke-direct {v2, p0}, Lcom/asus/reader/BookListActivity$5;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1347
    :pswitch_2
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03003c

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1348
    const v0, 0x7f0b00c1

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1349
    const v1, 0x7f0b00c2

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1350
    const v2, 0x7f0b00c3

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1352
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/reader/vibe2/VibeAgent;->getApplicationInfo()Lcom/asus/reader/vibe2/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/reader/vibe2/ApplicationInfo;->getLocale()Ljava/lang/String;

    move-result-object v4

    .line 1353
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/reader/vibe2/VibeAgent;->getApplicationInfo()Lcom/asus/reader/vibe2/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/reader/vibe2/ApplicationInfo;->getRegion()Ljava/lang/String;

    move-result-object v5

    .line 1354
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/reader/vibe2/VibeAgent;->getApplicationInfo()Lcom/asus/reader/vibe2/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/reader/vibe2/ApplicationInfo;->getCMSurl()Ljava/lang/String;

    move-result-object v6

    .line 1356
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1357
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1358
    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1360
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v5, "vibe setting"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/asus/reader/BookListActivity$6;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/asus/reader/BookListActivity$6;-><init>(Lcom/asus/reader/BookListActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1379
    :pswitch_3
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    iget v1, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    iget v2, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    invoke-virtual {v1, v2}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1381
    if-nez v0, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    iget v1, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    iget v2, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    invoke-virtual {v1, v2}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "_display_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1384
    :cond_0
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070007

    invoke-virtual {p0, v2}, Lcom/asus/reader/BookListActivity;->getString(I)Ljava/lang/String;

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

    .line 1386
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f070030

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/asus/reader/BookListActivity$7;

    invoke-direct {v1, p0}, Lcom/asus/reader/BookListActivity$7;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1384
    :cond_1
    const v0, 0x7f0700fa

    invoke-virtual {p0, v0}, Lcom/asus/reader/BookListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1397
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f070030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07001d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/asus/reader/BookListActivity$8;

    invoke-direct {v1, p0}, Lcom/asus/reader/BookListActivity$8;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1408
    :pswitch_5
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030020

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1409
    const v0, 0x7f0b0070

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1410
    iget-object v2, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    iget v3, p0, Lcom/asus/reader/BookListActivity;->mLongPressedCategory:I

    invoke-virtual {v2, v3}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->getItem(I)Lcom/asus/reader/BookListActivity$CategoryEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/BookListActivity$CategoryEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1411
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1412
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f070027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/asus/reader/BookListActivity$9;

    invoke-direct {v2, p0, v0}, Lcom/asus/reader/BookListActivity$9;-><init>(Lcom/asus/reader/BookListActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1424
    :pswitch_6
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030020

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1425
    const v0, 0x7f0b0070

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1426
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1427
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f07001e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/asus/reader/BookListActivity$10;

    invoke-direct {v2, p0, v0}, Lcom/asus/reader/BookListActivity$10;-><init>(Lcom/asus/reader/BookListActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1443
    :pswitch_7
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    iget v1, p0, Lcom/asus/reader/BookListActivity;->mLongPressedCategory:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->getItem(I)Lcom/asus/reader/BookListActivity$CategoryEntry;

    move-result-object v0

    .line 1444
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f070024

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070025

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$CategoryEntry;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/asus/reader/BookListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/asus/reader/BookListActivity$11;

    invoke-direct {v1, p0}, Lcom/asus/reader/BookListActivity$11;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1455
    :pswitch_8
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    iget v1, p0, Lcom/asus/reader/BookListActivity;->mLongPressedCategory:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->getItem(I)Lcom/asus/reader/BookListActivity$CategoryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$CategoryEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1456
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x7f07001b

    invoke-virtual {p0, v3}, Lcom/asus/reader/BookListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const v2, 0x7f07001c

    invoke-virtual {p0, v2}, Lcom/asus/reader/BookListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Lcom/asus/reader/BookListActivity$12;

    invoke-direct {v2, p0}, Lcom/asus/reader/BookListActivity$12;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1475
    :pswitch_9
    const-string v0, ""

    .line 1476
    const v0, 0x7f0700c4

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/asus/reader/BookListActivity;->getString(I)Ljava/lang/String;

    .line 1477
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "AboutLicense"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1478
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 1479
    new-array v1, v1, [B

    .line 1480
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 1481
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1484
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 1489
    :goto_2
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030001

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1490
    const v0, 0x7f0b0003

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1491
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1492
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0700c4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1485
    :catch_0
    move-exception v0

    .line 1486
    const-string v0, ""

    move-object v1, v0

    goto :goto_2

    .line 1498
    :pswitch_a
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1499
    const v0, 0x7f0b0001

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1500
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 1502
    const v0, 0x7f0700d0

    invoke-virtual {p0, v0}, Lcom/asus/reader/BookListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1504
    :try_start_1
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.asus.reader"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1506
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v2, v0

    .line 1509
    :goto_3
    const/high16 v0, 0x7f0b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1511
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0700cc

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1507
    :catch_1
    move-exception v2

    move-object v2, v0

    goto :goto_3

    .line 1517
    :pswitch_b
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/asus/reader/BookListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1518
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1519
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1520
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1521
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 1325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_9
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1174
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCountObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1175
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1176
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 429
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v1}, Lcom/asus/reader/ui/BookGrid;->clearChoices()V

    .line 430
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v1, v2}, Lcom/asus/reader/ui/BookGrid;->setChoiceMode(I)V

    .line 431
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 446
    :goto_0
    return-void

    .line 433
    :pswitch_0
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getPreViewState()I

    move-result v0

    .line 434
    .local v0, preState:I
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    invoke-virtual {v1, v2}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->switchCateAdd(Z)V

    .line 435
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 436
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->reBindBookItems()V

    .line 443
    :goto_1
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->switchActionbar()V

    goto :goto_0

    .line 437
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v1}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    iput v1, p0, Lcom/asus/reader/BookListActivity;->mSelectId:I

    .line 439
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v1}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/asus/reader/BookListActivity;->handleBooksReady(Landroid/database/Cursor;)V

    goto :goto_1

    .line 441
    :cond_1
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->loadBooks()V

    goto :goto_1

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter "parent"
    .parameter "view"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 626
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 643
    const/4 v1, 0x0

    .end local p2
    :goto_0
    return v1

    .line 628
    .restart local p2
    :pswitch_0
    check-cast p2, Lcom/asus/reader/ui/CategoryItem;

    .end local p2
    invoke-virtual {p2}, Lcom/asus/reader/ui/CategoryItem;->getPosition()I

    move-result v0

    .line 629
    .local v0, dbposition:I
    if-nez v0, :cond_0

    move v1, v3

    .line 630
    goto :goto_0

    .line 631
    :cond_0
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 632
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v1}, Lcom/asus/reader/ui/BookGrid;->clearChoices()V

    .line 633
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->reDrawBookDeleteActionBar()V

    .line 637
    :goto_1
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/asus/reader/ui/CategoryListView;->setCategoryPosition(II)V

    .line 638
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mFrame:Lcom/asus/reader/ui/DragFrame;

    invoke-virtual {v1}, Lcom/asus/reader/ui/DragFrame;->notifyClickCategoty()V

    .line 639
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->loadBooks()V

    .line 640
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->switchActionbar()V

    move v1, v3

    .line 641
    goto :goto_0

    .line 635
    :cond_1
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->rollBacktoInit()V

    goto :goto_1

    .line 626
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 2
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 450
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v1}, Lcom/asus/reader/ui/BookGrid;->getCheckedItemCount()I

    move-result v0

    .line 451
    .local v0, selectCount:I
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 600
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 622
    .end local p2
    :goto_0
    :pswitch_0
    return-void

    .line 602
    .restart local p2
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/asus/reader/ui/BookItem;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/asus/reader/ui/BookItem;->getPosition()I

    move-result v1

    iput v1, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    .line 603
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    iget v2, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    invoke-virtual {v1, v2}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    .line 604
    check-cast p2, Lcom/asus/reader/ui/BookItem;

    .end local p2
    invoke-virtual {p2}, Lcom/asus/reader/ui/BookItem;->getAccessTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 605
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->openBook()V

    goto :goto_0

    .line 607
    :cond_0
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->switchToBookInfo()V

    goto :goto_0

    .line 610
    .restart local p2
    :pswitch_2
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->reDrawBookDeleteActionBar()V

    goto :goto_0

    .line 613
    :pswitch_3
    check-cast p2, Lcom/asus/reader/ui/BookItem;

    .end local p2
    invoke-virtual {p2}, Lcom/asus/reader/ui/BookItem;->getPosition()I

    move-result v1

    iput v1, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    .line 614
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    iget v2, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    invoke-virtual {v1, v2}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    .line 615
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->openBook()V

    goto :goto_0

    .line 618
    .restart local p2
    :pswitch_4
    check-cast p2, Lcom/asus/reader/ui/HeaderView;

    .end local p2
    invoke-virtual {p2}, Lcom/asus/reader/ui/HeaderView;->clickButton()V

    goto :goto_0

    .line 600
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 657
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-nez v4, :cond_0

    move v4, v5

    .line 701
    .end local p2
    :goto_0
    return v4

    .line 659
    .restart local p2
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    move v4, v5

    .line 701
    goto :goto_0

    .line 661
    :sswitch_0
    check-cast p2, Lcom/asus/reader/ui/BookItem;

    .end local p2
    invoke-virtual {p2}, Lcom/asus/reader/ui/BookItem;->getPosition()I

    move-result v4

    iput v4, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    .line 662
    invoke-virtual {p0, v8}, Lcom/asus/reader/BookListActivity;->showDialog(I)V

    move v4, v8

    .line 663
    goto :goto_0

    .line 666
    .restart local p2
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    .line 667
    goto :goto_0

    .line 668
    :cond_1
    iget-object v4, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v4}, Lcom/asus/reader/ui/BookGrid;->clearChoices()V

    .line 669
    iput-boolean v8, p0, Lcom/asus/reader/BookListActivity;->mDrag:Z

    .line 671
    move-object v0, p2

    check-cast v0, Lcom/asus/reader/ui/BookItem;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/asus/reader/ui/BookItem;->getPosition()I

    move-result v4

    iput v4, p0, Lcom/asus/reader/BookListActivity;->mDragStartPosition:I

    .line 672
    iget v4, p0, Lcom/asus/reader/BookListActivity;->mDragStartPosition:I

    iput v4, p0, Lcom/asus/reader/BookListActivity;->mTempStayPosition:I

    .line 673
    iput v6, p0, Lcom/asus/reader/BookListActivity;->mAnimationStartPosition:I

    .line 674
    iput v6, p0, Lcom/asus/reader/BookListActivity;->mAnimationEndPosition:I

    .line 676
    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 678
    iget-object v4, p0, Lcom/asus/reader/BookListActivity;->mDragController:Lcom/asus/reader/ui/DragController;

    iget-object v5, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v4, v5}, Lcom/asus/reader/ui/DragController;->addDropTarget(Lcom/asus/reader/ui/DropTarget;)V

    .line 679
    iget-object v4, p0, Lcom/asus/reader/BookListActivity;->mDragController:Lcom/asus/reader/ui/DragController;

    iget-object v5, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v4, v5}, Lcom/asus/reader/ui/DragController;->setMoveTarget(Landroid/widget/GridView;)V

    .line 680
    iget-object v4, p0, Lcom/asus/reader/BookListActivity;->mDragController:Lcom/asus/reader/ui/DragController;

    iget-object v5, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v4, v5}, Lcom/asus/reader/ui/DragController;->setCategoryList(Lcom/asus/reader/ui/CategoryListView;)V

    .line 681
    iget-object v4, p0, Lcom/asus/reader/BookListActivity;->mDragController:Lcom/asus/reader/ui/DragController;

    iget-object v5, p0, Lcom/asus/reader/BookListActivity;->mDragListener:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    invoke-virtual {v4, v5}, Lcom/asus/reader/ui/DragController;->setDragListener(Lcom/asus/reader/ui/DragController$DragListener;)V

    .line 682
    iget-object v4, p0, Lcom/asus/reader/BookListActivity;->mDragController:Lcom/asus/reader/ui/DragController;

    iget-object v5, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v5}, Lcom/asus/reader/ui/BookGrid;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v6}, Lcom/asus/reader/ui/BookGrid;->getTop()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/asus/reader/ui/DragController;->setGridoffset(II)V

    .line 684
    iget-boolean v4, p0, Lcom/asus/reader/BookListActivity;->mIsLandscape:Z

    if-eqz v4, :cond_2

    .line 685
    iget-object v4, p0, Lcom/asus/reader/BookListActivity;->mDragController:Lcom/asus/reader/ui/DragController;

    iget-object v5, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v5}, Lcom/asus/reader/ui/CategoryListView;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v6}, Lcom/asus/reader/ui/CategoryListView;->getTop()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/asus/reader/ui/DragController;->setCateoffset(II)V

    .line 689
    :goto_1
    iget-object v4, p0, Lcom/asus/reader/BookListActivity;->mDragController:Lcom/asus/reader/ui/DragController;

    sget v5, Lcom/asus/reader/ui/DragController;->DRAG_ACTION_COPY:I

    invoke-virtual {v4, p2, p0, v5}, Lcom/asus/reader/ui/DragController;->startDrag(Landroid/view/View;Lcom/asus/reader/ui/DragSource;I)V

    move v4, v8

    .line 690
    goto/16 :goto_0

    .line 687
    :cond_2
    iget-object v4, p0, Lcom/asus/reader/BookListActivity;->mDragController:Lcom/asus/reader/ui/DragController;

    iget-object v5, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v5}, Lcom/asus/reader/ui/CategoryListView;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v6}, Lcom/asus/reader/ui/CategoryListView;->getTop()I

    move-result v6

    const v7, 0x7f0b0050

    invoke-virtual {p0, v7}, Lcom/asus/reader/BookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/asus/reader/ui/DragController;->setCateoffset(II)V

    goto :goto_1

    .line 692
    :sswitch_2
    check-cast p2, Lcom/asus/reader/ui/CategoryItem;

    .end local p2
    invoke-virtual {p2}, Lcom/asus/reader/ui/CategoryItem;->getPosition()I

    move-result v4

    iput v4, p0, Lcom/asus/reader/BookListActivity;->mLongPressedCategory:I

    .line 693
    iget-object v4, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    iget v5, p0, Lcom/asus/reader/BookListActivity;->mLongPressedCategory:I

    invoke-virtual {v4, v5}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->getItem(I)Lcom/asus/reader/BookListActivity$CategoryEntry;

    move-result-object v3

    .line 694
    .local v3, entry:Lcom/asus/reader/BookListActivity$CategoryEntry;
    invoke-virtual {v3}, Lcom/asus/reader/BookListActivity$CategoryEntry;->getId()J

    move-result-wide v1

    .line 695
    .local v1, dbid:J
    iget v4, p0, Lcom/asus/reader/BookListActivity;->mLongPressedCategory:I

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/asus/reader/BookListActivity;->mLongPressedCategory:I

    if-eq v4, v8, :cond_3

    iget v4, p0, Lcom/asus/reader/BookListActivity;->mLongPressedCategory:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    :cond_3
    move v4, v8

    .line 697
    goto/16 :goto_0

    .line 698
    :cond_4
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/asus/reader/BookListActivity;->showDialog(I)V

    move v4, v8

    .line 699
    goto/16 :goto_0

    .line 659
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 707
    const/4 v3, 0x4

    if-ne p1, v3, :cond_4

    .line 708
    iget-boolean v3, p0, Lcom/asus/reader/BookListActivity;->mIsLoading:Z

    if-eqz v3, :cond_0

    .line 709
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->blockLoading()V

    move v3, v5

    .line 753
    :goto_0
    return v3

    .line 712
    :cond_0
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v2

    .line 713
    .local v2, state:I
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getPreViewState()I

    move-result v0

    .line 714
    .local v0, preState:I
    sparse-switch v2, :sswitch_data_0

    .line 753
    .end local v0           #preState:I
    .end local v2           #state:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 716
    .restart local v0       #preState:I
    .restart local v2       #state:I
    :sswitch_0
    iget-object v3, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    invoke-virtual {v3, v6}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->switchCateAdd(Z)V

    .line 717
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->switchActionbar()V

    .line 718
    if-ne v0, v5, :cond_2

    .line 719
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->reBindBookItems()V

    move v3, v5

    .line 720
    goto :goto_0

    .line 721
    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 722
    iget-object v3, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v3}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iput v3, p0, Lcom/asus/reader/BookListActivity;->mSelectId:I

    .line 723
    iget-object v3, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v3}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/asus/reader/BookListActivity;->handleBooksReady(Landroid/database/Cursor;)V

    move v3, v5

    .line 724
    goto :goto_0

    .line 726
    :cond_3
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->loadBooks()V

    move v3, v5

    .line 727
    goto :goto_0

    .line 729
    :sswitch_1
    iget-object v3, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v3}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iput v3, p0, Lcom/asus/reader/BookListActivity;->mSelectId:I

    .line 730
    iget-object v3, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v3}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/asus/reader/BookListActivity;->handleBooksReady(Landroid/database/Cursor;)V

    move v3, v5

    .line 731
    goto :goto_0

    .line 733
    :sswitch_2
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->switchActionbar()V

    .line 734
    iget-object v3, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    invoke-virtual {v3}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/asus/reader/BookListActivity;->handleBooksReady(Landroid/database/Cursor;)V

    move v3, v5

    .line 735
    goto :goto_0

    .line 737
    :sswitch_3
    const-string v3, ""

    iput-object v3, p0, Lcom/asus/reader/BookListActivity;->mSearch:Ljava/lang/String;

    .line 738
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->loadBooks()V

    move v3, v5

    .line 739
    goto :goto_0

    .line 741
    :sswitch_4
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->loadBooks()V

    move v3, v5

    .line 742
    goto :goto_0

    .line 746
    .end local v0           #preState:I
    .end local v2           #state:I
    :cond_4
    const/16 v3, 0x54

    if-ne p1, v3, :cond_1

    .line 747
    iget-object v3, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 748
    iget-object v3, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    const v4, 0x7f0b0012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    .line 749
    .local v1, searchview:Landroid/widget/SearchView;
    invoke-virtual {v1}, Landroid/widget/SearchView;->isIconified()Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v5

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setIconified(Z)V

    move v3, v5

    .line 750
    goto/16 :goto_0

    :cond_5
    move v3, v6

    .line 749
    goto :goto_1

    .line 714
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_4
        0x5 -> :sswitch_3
        0x6 -> :sswitch_1
        0xe -> :sswitch_2
    .end sparse-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x5

    .line 463
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mSortBy:Lcom/asus/reader/ui/DropDownMenu;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/asus/reader/ui/DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 464
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 465
    .local v0, id:I
    iget v1, p0, Lcom/asus/reader/BookListActivity;->mSortPosition:I

    if-ne v1, v0, :cond_0

    move v1, v4

    .line 490
    :goto_0
    return v1

    .line 467
    :cond_0
    iput v0, p0, Lcom/asus/reader/BookListActivity;->mSortPosition:I

    .line 468
    iget v1, p0, Lcom/asus/reader/BookListActivity;->mSortPosition:I

    packed-switch v1, :pswitch_data_0

    .line 489
    :goto_1
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->reDrawDropDownMenu()V

    move v1, v4

    .line 490
    goto :goto_0

    .line 470
    :pswitch_0
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 471
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->rollBacktoInit()V

    .line 472
    :cond_1
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->loadBooks()V

    goto :goto_1

    .line 475
    :pswitch_1
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 476
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->rollBacktoInit()V

    .line 477
    :cond_2
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->loadBooks()V

    goto :goto_1

    .line 480
    :pswitch_2
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 481
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->rollBacktoInit()V

    .line 482
    :cond_3
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->loadBooks()V

    .line 484
    :pswitch_3
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 485
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->rollBacktoInit()V

    .line 486
    :cond_4
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->loadBooks()V

    goto :goto_1

    .line 468
    :pswitch_data_0
    .packed-switch 0x7f0b00c6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onMountChange(Ljava/lang/String;)V
    .locals 1
    .parameter "where"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->whereColumeID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->rollBacktoInit()V

    .line 456
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->loadBooks()V

    .line 457
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->loadLatestRead()V

    .line 459
    :cond_0
    iput-object p1, p0, Lcom/asus/reader/BookListActivity;->whereColumeID:Ljava/lang/String;

    .line 460
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 1240
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 1269
    :goto_0
    return v0

    .line 1242
    :sswitch_0
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->switchBooksView()V

    .line 1269
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1245
    :sswitch_1
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->switchToRecentRead()V

    goto :goto_1

    .line 1248
    :sswitch_2
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1251
    :sswitch_3
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->isUser()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1252
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/asus/reader/BookListActivity;->showDialog(I)V

    goto :goto_1

    .line 1254
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4d9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1257
    :sswitch_4
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/asus/reader/BookListActivity;->showDialog(I)V

    goto :goto_1

    .line 1260
    :sswitch_5
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1262
    invoke-direct {p0, v1}, Lcom/asus/reader/BookListActivity;->setViewState(I)V

    .line 1263
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->loadBooks()V

    .line 1264
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->switchActionbar()V

    goto :goto_1

    .line 1240
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_3
        0xa -> :sswitch_2
        0xe -> :sswitch_4
        0x102002c -> :sswitch_5
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 1152
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1153
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 409
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 418
    iput-object v2, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    .line 419
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 421
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 411
    :pswitch_0
    iput-object p1, p0, Lcom/asus/reader/BookListActivity;->mActionMode:Landroid/view/ActionMode;

    .line 412
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030003

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    .line 413
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 414
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 415
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->reDrawBookDeleteActionBar()V

    goto :goto_0

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0b0070

    .line 1274
    packed-switch p1, :pswitch_data_0

    .line 1321
    :goto_0
    :pswitch_0
    return-void

    .line 1276
    :pswitch_1
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    iget v1, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    iget v2, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    invoke-virtual {v1, v2}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1278
    if-nez v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    iget v1, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    iget v2, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    invoke-virtual {v1, v2}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "_display_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1281
    :cond_0
    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1286
    :pswitch_2
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    iget v1, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    iget v2, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    invoke-virtual {v1, v2}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1288
    if-nez v0, :cond_1

    .line 1289
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    iget v1, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBooksAdapter:Lcom/asus/reader/BookListActivity$BooksAdapter;

    iget v2, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    invoke-virtual {v1, v2}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "_display_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1291
    :cond_1
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070007

    invoke-virtual {p0, v2}, Lcom/asus/reader/BookListActivity;->getString(I)Ljava/lang/String;

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

    .line 1293
    :goto_1
    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1291
    :cond_2
    const v0, 0x7f0700fa

    invoke-virtual {p0, v0}, Lcom/asus/reader/BookListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1298
    :pswitch_3
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    iget v1, p0, Lcom/asus/reader/BookListActivity;->mLongPressedCategory:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->getItem(I)Lcom/asus/reader/BookListActivity$CategoryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$CategoryEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1299
    invoke-virtual {p2, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    .line 1300
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1303
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    .line 1304
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1307
    :pswitch_5
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    iget v1, p0, Lcom/asus/reader/BookListActivity;->mLongPressedCategory:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->getItem(I)Lcom/asus/reader/BookListActivity$CategoryEntry;

    move-result-object v0

    .line 1308
    check-cast p2, Landroid/app/AlertDialog;

    const v1, 0x7f070025

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$CategoryEntry;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/asus/reader/BookListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1311
    :pswitch_6
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCategoryAdapter:Lcom/asus/reader/BookListActivity$CategoryAdapter;

    iget v1, p0, Lcom/asus/reader/BookListActivity;->mLongPressedCategory:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->getItem(I)Lcom/asus/reader/BookListActivity$CategoryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity$CategoryEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1312
    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1315
    :pswitch_7
    check-cast p2, Landroid/app/ProgressDialog;

    iput-object p2, p0, Lcom/asus/reader/BookListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1316
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4d6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f07001a

    const/16 v5, 0xa

    const/16 v4, 0xe

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 1196
    iput-object p1, p0, Lcom/asus/reader/BookListActivity;->mMenu:Landroid/view/Menu;

    .line 1197
    if-nez p1, :cond_0

    move v0, v2

    .line 1235
    :goto_0
    return v0

    .line 1199
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1201
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1202
    const v0, 0x7f070015

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1203
    const/4 v0, 0x2

    const v1, 0x7f070017

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1204
    invoke-interface {p1, v2, v3, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1205
    const v0, 0x7f070044

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1206
    const v0, 0x7f0700c3

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1235
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1207
    :cond_2
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1208
    const v0, 0x7f070015

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1209
    const/4 v0, 0x2

    const v1, 0x7f070018

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1210
    invoke-interface {p1, v2, v3, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1211
    const v0, 0x7f070044

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1212
    const v0, 0x7f0700c3

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 1213
    :cond_3
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 1214
    const/4 v0, 0x4

    const v1, 0x7f070019

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 1215
    :cond_4
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 1216
    const v0, 0x7f070015

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1217
    invoke-interface {p1, v2, v3, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1218
    const v0, 0x7f070044

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1219
    const v0, 0x7f0700c3

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 1220
    :cond_5
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 1221
    invoke-interface {p1, v2, v3, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1222
    const v0, 0x7f070044

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1223
    const v0, 0x7f0700c3

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 1224
    :cond_6
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 1225
    const v0, 0x7f070015

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1226
    invoke-interface {p1, v2, v3, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1227
    const v0, 0x7f070044

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1228
    const v0, 0x7f0700c3

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1229
    :cond_7
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 1230
    const v0, 0x7f070015

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1231
    invoke-interface {p1, v2, v3, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1232
    const v0, 0x7f070044

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1233
    const v0, 0x7f0700c3

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "newText"

    .prologue
    .line 494
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4
    .parameter "query"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 498
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 499
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/BookListActivity;->mSearch:Ljava/lang/String;

    move v0, v3

    .line 510
    :goto_0
    return v0

    .line 503
    :cond_1
    const-string v0, "\'"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 504
    iput-object p1, p0, Lcom/asus/reader/BookListActivity;->mSearch:Ljava/lang/String;

    .line 506
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v0, v2, v2}, Lcom/asus/reader/ui/CategoryListView;->setCategoryPosition(II)V

    .line 507
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v0}, Lcom/asus/reader/ui/CategoryListView;->relocatFocus()V

    .line 508
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v0}, Lcom/asus/reader/ui/CategoryListView;->drawCategoryBackground()V

    .line 509
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->handleSearchDB()V

    move v0, v3

    .line 510
    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const v1, 0x7f0b004b

    .line 1109
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1112
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v0}, Lcom/asus/reader/ui/CategoryListView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v0}, Lcom/asus/reader/ui/CategoryListView;->drawCategoryBackground()V

    .line 1115
    :cond_0
    iget-boolean v0, p0, Lcom/asus/reader/BookListActivity;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 1116
    invoke-virtual {p0, v1}, Lcom/asus/reader/BookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020123

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1117
    const v0, 0x7f0b0049

    invoke-virtual {p0, v0}, Lcom/asus/reader/BookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020125

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1122
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/asus/reader/BookListActivity$3;

    invoke-direct {v1, p0}, Lcom/asus/reader/BookListActivity$3;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1142
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/asus/reader/BookListActivity$4;

    invoke-direct {v1, p0}, Lcom/asus/reader/BookListActivity$4;-><init>(Lcom/asus/reader/BookListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1148
    return-void

    .line 1119
    :cond_1
    invoke-virtual {p0, v1}, Lcom/asus/reader/BookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02012b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 1180
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1181
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mViewStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 1182
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v0, v1

    if-ge v2, v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mViewStack:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2

    .line 1182
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1184
    :cond_0
    const-string v0, "bundleviewstack"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1185
    const-string v0, "bundlesortposition"

    iget v1, p0, Lcom/asus/reader/BookListActivity;->mSortPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1186
    const-string v0, "bundlecategoryposition"

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v1}, Lcom/asus/reader/ui/CategoryListView;->getGroupPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1187
    const-string v0, "bundlecatebookposition"

    iget v1, p0, Lcom/asus/reader/BookListActivity;->mBookPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1188
    const-string v0, "bundlesearch"

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mSearch:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    const-string v0, "bundlesubcateposition"

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v1}, Lcom/asus/reader/ui/CategoryListView;->getChildPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1190
    const-string v0, "bundleselectid"

    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v1}, Lcom/asus/reader/ui/BookGrid;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1191
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const v3, 0x7f0b004b

    const/4 v2, 0x0

    .line 1157
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1158
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v1}, Lcom/asus/reader/ui/CategoryListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1159
    iget-object v1, p0, Lcom/asus/reader/BookListActivity;->mCateList:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v1, v0}, Lcom/asus/reader/ui/CategoryListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1161
    :cond_0
    invoke-virtual {p0, v3}, Lcom/asus/reader/BookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1162
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->dismissDrmDialogs()V

    .line 1164
    iget-boolean v0, p0, Lcom/asus/reader/BookListActivity;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 1165
    invoke-virtual {p0, v3}, Lcom/asus/reader/BookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1166
    const v0, 0x7f0b0049

    invoke-virtual {p0, v0}, Lcom/asus/reader/BookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1171
    :goto_1
    return-void

    .line 1168
    :cond_1
    invoke-virtual {p0, v3}, Lcom/asus/reader/BookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 393
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0}, Lcom/asus/reader/ui/BookGrid;->getChildCount()I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v1

    .line 401
    .end local p0
    :goto_0
    return v0

    .line 395
    .restart local p0
    :cond_0
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity;->getViewState()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 401
    goto :goto_0

    .line 398
    :sswitch_0
    iget-object v0, p0, Lcom/asus/reader/BookListActivity;->mBookGrid:Lcom/asus/reader/ui/BookGrid;

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v2

    .line 399
    goto :goto_0

    .line 395
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch
.end method
