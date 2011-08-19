.class public Lcom/android/contacts/quickcontact/QuickContactWindow;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/Window$Callback;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/contacts/quickcontact/QuickContactRootLayout$Listener;
.implements Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/QuickContactWindow$DataQuery;,
        Lcom/android/contacts/quickcontact/QuickContactWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final FOLLOWING_MIMETYPES:[Ljava/lang/String;

.field private static final PRECEDING_MIMETYPES:[Ljava/lang/String;

.field private static final VIRTUAL_MIMETYPES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/quickcontact/CheckableImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mActionRecycled:I

.field private mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

.field private mAnchor:Landroid/graphics/Rect;

.field private mBackground:Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;

.field private mClearDefaultsButton:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private mDecor:Landroid/view/View;

.field private mDefaultsListView:Landroid/widget/ListView;

.field private mDefaultsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/quickcontact/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mDismissListener:Lcom/android/contacts/quickcontact/QuickContactWindow$OnDismissListener;

.field private mDismissed:Z

.field private mExcludeMimes:[Ljava/lang/String;

.field private mFooter:Landroid/widget/FrameLayout;

.field private mFooterClearDefaults:Landroid/widget/LinearLayout;

.field private mFooterDisambig:Landroid/widget/LinearLayout;

.field private mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

.field private mHasValidSocial:Z

.field private mHeader:Landroid/view/View;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLastAction:Lcom/android/contacts/quickcontact/CheckableImageView;

.field private mLookupUri:Landroid/net/Uri;

.field private mMode:I

.field private mQuerying:Z

.field private final mRect:Landroid/graphics/Rect;

.field private mRequestedY:I

.field private mResolveList:Landroid/widget/ListView;

.field private mRootView:Lcom/android/contacts/quickcontact/QuickContactRootLayout;

.field private mScreenWidth:I

.field private mSetPrimaryCheckBox:Landroid/widget/CheckBox;

.field private mShowing:Z

.field private mTrack:Landroid/view/ViewGroup;

.field private mTrackScroll:Landroid/widget/HorizontalScrollView;

.field private mUseableScreenHeight:I

.field private mWindow:Landroid/view/Window;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private mWindowRecycled:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 198
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/sip_address"

    aput-object v1, v0, v4

    const-string v1, "vnd.android.cursor.item/contact"

    aput-object v1, v0, v5

    const-string v1, "vnd.android.cursor.item/sms-address"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "vnd.android.cursor.item/email_v2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->PRECEDING_MIMETYPES:[Ljava/lang/String;

    .line 209
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/website"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->FOLLOWING_MIMETYPES:[Ljava/lang/String;

    .line 218
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/im"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/sms-address"

    aput-object v1, v0, v4

    const-string v1, "vnd.android.cursor.item/video-chat-address"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->VIRTUAL_MIMETYPES:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mRect:Landroid/graphics/Rect;

    .line 132
    iput-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDismissed:Z

    .line 133
    iput-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mQuerying:Z

    .line 134
    iput-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mShowing:Z

    .line 146
    iput-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mHasValidSocial:Z

    .line 167
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDefaultsMap:Ljava/util/HashMap;

    .line 169
    iput v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindowRecycled:I

    .line 170
    iput v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mActionRecycled:I

    .line 177
    new-instance v1, Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-direct {v1}, Lcom/android/contacts/quickcontact/ActionMultiMap;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    .line 183
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mActionPool:Ljava/util/LinkedList;

    .line 232
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f0f0007

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mContext:Landroid/content/Context;

    .line 233
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mInflater:Landroid/view/LayoutInflater;

    .line 234
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 236
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    .line 237
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 238
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v1, v2, v4, v4}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 241
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f040035

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(I)V

    .line 243
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f070091

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/quickcontact/QuickContactRootLayout;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mRootView:Lcom/android/contacts/quickcontact/QuickContactRootLayout;

    .line 244
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mRootView:Lcom/android/contacts/quickcontact/QuickContactRootLayout;

    invoke-virtual {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactRootLayout;->setListener(Lcom/android/contacts/quickcontact/QuickContactRootLayout$Listener;)V

    .line 245
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mRootView:Lcom/android/contacts/quickcontact/QuickContactRootLayout;

    invoke-virtual {v1, v3}, Lcom/android/contacts/quickcontact/QuickContactRootLayout;->setFocusable(Z)V

    .line 246
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mRootView:Lcom/android/contacts/quickcontact/QuickContactRootLayout;

    invoke-virtual {v1, v3}, Lcom/android/contacts/quickcontact/QuickContactRootLayout;->setFocusableInTouchMode(Z)V

    .line 247
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mRootView:Lcom/android/contacts/quickcontact/QuickContactRootLayout;

    const/high16 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/contacts/quickcontact/QuickContactRootLayout;->setDescendantFocusability(I)V

    .line 249
    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;

    invoke-direct {v1}, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mBackground:Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;

    .line 250
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mRootView:Lcom/android/contacts/quickcontact/QuickContactRootLayout;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mBackground:Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;

    invoke-virtual {v1, v2}, Lcom/android/contacts/quickcontact/QuickContactRootLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 253
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mScreenWidth:I

    .line 254
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mUseableScreenHeight:I

    .line 256
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f070096

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    .line 257
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f070095

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mTrackScroll:Landroid/widget/HorizontalScrollView;

    .line 259
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f070042

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mFooter:Landroid/widget/FrameLayout;

    .line 260
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f070097

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mFooterDisambig:Landroid/widget/LinearLayout;

    .line 261
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f070098

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mFooterClearDefaults:Landroid/widget/LinearLayout;

    .line 262
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mResolveList:Landroid/widget/ListView;

    .line 263
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x1020001

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mSetPrimaryCheckBox:Landroid/widget/CheckBox;

    .line 265
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f070099

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDefaultsListView:Landroid/widget/ListView;

    .line 266
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f07009a

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mClearDefaultsButton:Landroid/widget/Button;

    .line 267
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mClearDefaultsButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactWindow$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/quickcontact/QuickContactWindow$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mResolveList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 276
    new-instance v1, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    .line 277
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/quickcontact/QuickContactWindow$OnDismissListener;)V
    .locals 0
    .parameter "context"
    .parameter "dismissListener"

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactWindow;-><init>(Landroid/content/Context;)V

    .line 285
    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDismissListener:Lcom/android/contacts/quickcontact/QuickContactWindow$OnDismissListener;

    .line 286
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/quickcontact/QuickContactWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactWindow;->clearDefaults()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDecor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->VIRTUAL_MIMETYPES:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mSetPrimaryCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mResolveList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/quickcontact/QuickContactWindow;Lcom/android/contacts/quickcontact/CheckableImageView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->releaseView(Lcom/android/contacts/quickcontact/CheckableImageView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mFooter:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/quickcontact/QuickContactWindow;)Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mBackground:Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/quickcontact/QuickContactWindow;Lcom/android/contacts/quickcontact/CheckableImageView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->setNewActionViewChecked(Lcom/android/contacts/quickcontact/CheckableImageView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/quickcontact/QuickContactWindow;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDefaultsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDefaultsListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/quickcontact/QuickContactWindow;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->animateExpand(Z)V

    return-void
.end method

.method private animateCollapse(Ljava/lang/Runnable;)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x2

    const-wide/16 v6, 0x64

    .line 949
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mBackground:Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 950
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mBackground:Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;

    invoke-virtual {v1, v0}, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->setBottomOverride(I)V

    .line 952
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mFooter:Landroid/widget/FrameLayout;

    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 954
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 955
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 957
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mBackground:Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;

    const-string v2, "bottomOverride"

    new-array v3, v4, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    sub-int/2addr v0, v5

    aput v0, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 959
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 960
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 961
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 963
    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactWindow$3;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/quickcontact/QuickContactWindow$3;-><init>(Lcom/android/contacts/quickcontact/QuickContactWindow;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 970
    return-void

    .line 952
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private animateExpand(Z)V
    .locals 5
    .parameter "showClearDefaults"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 977
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 978
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mFooterDisambig:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 979
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mFooterClearDefaults:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 980
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mBackground:Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;

    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 981
    .local v0, oldBottom:I
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mBackground:Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;

    invoke-virtual {v1, v0}, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->setBottomOverride(I)V

    .line 982
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mFooter:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 983
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactWindow$4;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/quickcontact/QuickContactWindow$4;-><init>(Lcom/android/contacts/quickcontact/QuickContactWindow;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 999
    return-void

    .end local v0           #oldBottom:I
    :cond_0
    move v2, v3

    .line 978
    goto :goto_0

    :cond_1
    move v2, v4

    .line 979
    goto :goto_1
.end method

.method private clearDefaults()V
    .locals 11

    .prologue
    .line 836
    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 838
    .local v7, mimeTypesKeySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v8

    new-array v6, v8, [Ljava/lang/String;

    .line 839
    .local v6, mimeTypes:[Ljava/lang/String;
    invoke-interface {v7, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 842
    move-object v1, v6

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v1, v2

    .line 843
    .local v5, mimeType:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/Action;

    .line 844
    .local v0, action:Lcom/android/contacts/quickcontact/Action;
    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lcom/android/contacts/quickcontact/Action;->getDataId()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/android/contacts/ContactSaveService;->createClearPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    .line 846
    .local v3, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 847
    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 851
    .end local v0           #action:Lcom/android/contacts/quickcontact/Action;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #mimeType:Ljava/lang/String;
    :cond_0
    new-instance v8, Lcom/android/contacts/quickcontact/QuickContactWindow$2;

    invoke-direct {v8, p0}, Lcom/android/contacts/quickcontact/QuickContactWindow$2;-><init>(Lcom/android/contacts/quickcontact/QuickContactWindow;)V

    invoke-direct {p0, v8}, Lcom/android/contacts/quickcontact/QuickContactWindow;->animateCollapse(Ljava/lang/Runnable;)V

    .line 864
    return-void
.end method

.method private configureBackground(ZI)V
    .locals 2
    .parameter "arrowUp"
    .parameter "requestedX"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mBackground:Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->configure(Landroid/content/res/Resources;ZI)V

    .line 395
    return-void
.end method

.method private considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z
    .locals 2
    .parameter "action"
    .parameter "resolveCache"

    .prologue
    .line 873
    invoke-virtual {p2, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->hasResolve(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/quickcontact/ActionMultiMap;->put(Ljava/lang/String;Lcom/android/contacts/quickcontact/Action;)V

    .line 875
    const/4 v0, 0x1

    .line 877
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private considerShowing()V
    .locals 2

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mShowing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDismissed:Z

    if-nez v0, :cond_1

    .line 562
    iget v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mHasValidSocial:Z

    if-nez v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mHeader:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 565
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactWindow;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mHeader:Landroid/view/View;

    .line 569
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactWindow;->showInternal()V

    .line 571
    :cond_1
    return-void
.end method

.method private dismissInternal()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 508
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_1

    move v0, v4

    .line 509
    .local v0, hadDecor:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 510
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 511
    iget v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindowRecycled:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindowRecycled:I

    .line 512
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 513
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDecor:Landroid/view/View;

    .line 514
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    .line 516
    :cond_0
    iput-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mShowing:Z

    .line 517
    iput-boolean v4, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDismissed:Z

    .line 520
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-virtual {v1, v4}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 521
    iput-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mQuerying:Z

    .line 524
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mHeader:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 525
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactWindow;->resetTrack()V

    .line 526
    return-void

    .end local v0           #hadDecor:Z
    :cond_1
    move v0, v3

    .line 508
    goto :goto_0
.end method

.method private getDataUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "lookupUri"

    .prologue
    .line 387
    const-string v0, "data"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getHeaderView(I)Landroid/view/View;
    .locals 5
    .parameter "mode"

    .prologue
    .line 289
    const/4 v1, 0x0

    .line 290
    .local v1, header:Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 302
    :goto_0
    instance-of v3, v1, Landroid/view/ViewStub;

    if-eqz v3, :cond_1

    .line 304
    move-object v0, v1

    check-cast v0, Landroid/view/ViewStub;

    move-object v2, v0

    .line 305
    .local v2, stub:Landroid/view/ViewStub;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 310
    .end local v2           #stub:Landroid/view/ViewStub;
    :cond_0
    :goto_1
    return-object v1

    .line 292
    :pswitch_0
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v4, 0x7f070092

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 293
    goto :goto_0

    .line 295
    :pswitch_1
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v4, 0x7f070093

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 296
    goto :goto_0

    .line 298
    :pswitch_2
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v4, 0x7f070094

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 306
    :cond_1
    if-eqz v1, :cond_0

    .line 307
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleData(Landroid/database/Cursor;)V
    .locals 23
    .parameter

    .prologue
    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/contacts/quickcontact/ResolveCache;->getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;

    move-result-object v17

    .line 637
    if-nez p1, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v4, 0x7f0c0043

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 640
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactWindow;->dismiss()V

    goto :goto_0

    .line 644
    :cond_2
    const-string v3, "vnd.android.cursor.item/contact"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 646
    new-instance v3, Lcom/android/contacts/quickcontact/ProfileAction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mLookupUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Lcom/android/contacts/quickcontact/ProfileAction;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    move-object v4, v0

    const-string v5, "vnd.android.cursor.item/contact"

    invoke-virtual {v4, v5, v3}, Lcom/android/contacts/quickcontact/ActionMultiMap;->put(Ljava/lang/String;Lcom/android/contacts/quickcontact/Action;)V

    .line 650
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDefaultsMap:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 652
    new-instance v18, Lcom/android/contacts/util/DataStatus;

    invoke-direct/range {v18 .. v18}, Lcom/android/contacts/util/DataStatus;-><init>()V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v19

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mHeader:Landroid/view/View;

    move-object v3, v0

    const v4, 0x7f070036

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/widget/ImageView;

    move-object/from16 v16, v0

    .line 656
    const/4 v3, 0x0

    move-object/from16 v20, v3

    .line 657
    :cond_4
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 658
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 659
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 660
    const/16 v3, 0xe

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 661
    const/16 v3, 0xf

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    move v10, v3

    .line 662
    :goto_2
    const/16 v3, 0x10

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    move v11, v3

    .line 665
    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/DataStatus;->possibleUpdate(Landroid/database/Cursor;)V

    .line 668
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 671
    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 672
    const-string v3, "data15"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 673
    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 674
    if-eqz v3, :cond_4

    .line 675
    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v20, v3

    goto :goto_1

    .line 661
    :cond_5
    const/4 v3, 0x0

    move v10, v3

    goto :goto_2

    .line 662
    :cond_6
    const/4 v3, 0x0

    move v11, v3

    goto :goto_3

    .line 680
    :cond_7
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v6

    .line 682
    if-eqz v6, :cond_9

    .line 686
    new-instance v3, Lcom/android/contacts/quickcontact/DataAction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/AccountType$DataKind;JLandroid/database/Cursor;)V

    .line 687
    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactWindow;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    move-result v4

    .line 688
    if-eqz v4, :cond_9

    .line 690
    if-nez v11, :cond_8

    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDefaultsMap:Ljava/util/HashMap;

    move-object v4, v0

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_9

    .line 691
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDefaultsMap:Ljava/util/HashMap;

    move-object v4, v0

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    :cond_9
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v6, :cond_a

    .line 698
    new-instance v9, Lcom/android/contacts/quickcontact/DataAction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object v10, v0

    const-string v11, "vnd.android.cursor.item/sms-address"

    move-object v12, v6

    move-wide v13, v7

    move-object/from16 v15, p1

    invoke-direct/range {v9 .. v15}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/AccountType$DataKind;JLandroid/database/Cursor;)V

    .line 700
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactWindow;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    .line 703
    :cond_a
    const-string v3, "vnd.android.cursor.item/im"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 706
    const/16 v4, 0xb

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_c

    const/4 v4, 0x1

    move v10, v4

    .line 707
    :goto_4
    if-eqz v10, :cond_b

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 708
    const-string v4, "vnd.android.cursor.item/im"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v6

    .line 710
    if-eqz v6, :cond_b

    .line 711
    new-instance v3, Lcom/android/contacts/quickcontact/DataAction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "vnd.android.cursor.item/im"

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/AccountType$DataKind;JLandroid/database/Cursor;)V

    .line 713
    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactWindow;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    .line 714
    const/4 v3, 0x1

    .line 718
    :cond_b
    if-eqz v10, :cond_4

    if-eqz v3, :cond_4

    .line 719
    const/16 v3, 0xc

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 720
    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    .line 721
    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v6

    .line 723
    if-eqz v6, :cond_4

    .line 724
    new-instance v3, Lcom/android/contacts/quickcontact/DataAction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "vnd.android.cursor.item/video-chat-address"

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/AccountType$DataKind;JLandroid/database/Cursor;)V

    .line 726
    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactWindow;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    goto/16 :goto_1

    .line 706
    :cond_c
    const/4 v4, 0x0

    move v10, v4

    goto :goto_4

    .line 734
    :cond_d
    const/4 v4, 0x0

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDefaultsMap:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    move-object v6, v0

    invoke-virtual {v6, v3}, Lcom/android/contacts/quickcontact/ActionMultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x1

    if-le v3, v6, :cond_e

    .line 737
    const/4 v3, 0x1

    .line 742
    :goto_5
    if-eqz v3, :cond_f

    .line 743
    new-instance v3, Lcom/android/contacts/quickcontact/ClearDefaultsAction;

    invoke-direct {v3}, Lcom/android/contacts/quickcontact/ClearDefaultsAction;-><init>()V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    move-object v4, v0

    invoke-interface {v3}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/contacts/quickcontact/ActionMultiMap;->put(Ljava/lang/String;Lcom/android/contacts/quickcontact/Action;)V

    .line 747
    :cond_f
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 749
    const/4 v3, 0x3

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 750
    const/4 v4, 0x4

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 751
    const/4 v5, 0x5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-static {v6, v4, v5}, Lcom/android/contacts/ContactPresenceIconUtil;->getChatCapabilityIcon(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 755
    const v5, 0x7f070037

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactWindow;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 756
    const v3, 0x7f07009c

    move-object/from16 v0, p0

    move v1, v3

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactWindow;->setHeaderImage(ILandroid/graphics/drawable/Drawable;)V

    .line 759
    :cond_10
    if-eqz v16, :cond_11

    .line 761
    if-eqz v20, :cond_14

    const/4 v3, 0x0

    :goto_6
    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 762
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 765
    :cond_11
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/util/DataStatus;->isValid()Z

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/quickcontact/QuickContactWindow;->mHasValidSocial:Z

    .line 766
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mHasValidSocial:Z

    move v3, v0

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mMode:I

    move v3, v0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_12

    .line 768
    const v3, 0x7f07003b

    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/util/DataStatus;->getStatus()Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    move v1, v3

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactWindow;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 769
    const v3, 0x7f07009b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/DataStatus;->getTimestampLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    move v1, v3

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactWindow;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 775
    :cond_12
    new-instance v3, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/contacts/quickcontact/ActionMultiMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 777
    const/4 v4, 0x0

    .line 780
    sget-object v5, Lcom/android/contacts/quickcontact/QuickContactWindow;->PRECEDING_MIMETYPES:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    move/from16 v22, v7

    move v7, v4

    move/from16 v4, v22

    :goto_7
    if-ge v4, v6, :cond_15

    aget-object v8, v5, v4

    .line 781
    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 782
    const/4 v7, 0x1

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    move-object v9, v0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactWindow;->inflateAction(Ljava/lang/String;Lcom/android/contacts/quickcontact/ResolveCache;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 784
    invoke-interface {v3, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 780
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 761
    :cond_14
    const/16 v3, 0x8

    goto/16 :goto_6

    .line 789
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 792
    sget-object v5, Lcom/android/contacts/quickcontact/QuickContactWindow;->FOLLOWING_MIMETYPES:[Ljava/lang/String;

    array-length v6, v5

    const/4 v8, 0x0

    move/from16 v22, v8

    move v8, v7

    move/from16 v7, v22

    :goto_8
    if-ge v7, v6, :cond_17

    aget-object v9, v5, v7

    .line 793
    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 794
    const/4 v8, 0x1

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    move-object v10, v0

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactWindow;->inflateAction(Ljava/lang/String;Lcom/android/contacts/quickcontact/ResolveCache;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 796
    invoke-interface {v3, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 792
    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 801
    :cond_17
    const-string v5, "__clear_defaults_mime_type"

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    move-object v5, v0

    const-string v6, "__clear_defaults_mime_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/quickcontact/ActionMultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/quickcontact/ClearDefaultsAction;

    .line 804
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactWindow;->obtainView()Lcom/android/contacts/quickcontact/CheckableImageView;

    move-result-object v5

    .line 805
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/contacts/quickcontact/CheckableImageView;->setChecked(Z)V

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c00ef

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 808
    invoke-virtual {v5, v6}, Lcom/android/contacts/quickcontact/CheckableImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 809
    const v6, 0x7f020074

    invoke-virtual {v5, v6}, Lcom/android/contacts/quickcontact/CheckableImageView;->setImageResource(I)V

    .line 810
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 811
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setTag(Ljava/lang/Object;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    move-object v6, v0

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 813
    const-string v5, "__clear_defaults_mime_type"

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 818
    :cond_18
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 819
    move-object/from16 v0, p1

    array-length v0, v0

    move v3, v0

    if-lez v3, :cond_1a

    const/4 v3, 0x1

    .line 820
    :goto_9
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 821
    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x0

    move/from16 v22, v6

    move v6, v4

    move/from16 v4, v22

    :goto_a
    if-ge v4, v5, :cond_19

    aget-object v7, p1, v4

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    move-object v8, v0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactWindow;->inflateAction(Ljava/lang/String;Lcom/android/contacts/quickcontact/ResolveCache;)Landroid/view/View;

    move-result-object v7

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 821
    add-int/lit8 v4, v4, 0x1

    move v6, v9

    goto :goto_a

    .line 825
    :cond_19
    if-nez v3, :cond_0

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mInflater:Landroid/view/LayoutInflater;

    move-object v3, v0

    const v4, 0x7f04003b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    move-object v5, v0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    move-object v4, v0

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v4, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto/16 :goto_0

    :cond_1a
    move v3, v8

    goto :goto_9

    :cond_1b
    move v3, v4

    goto/16 :goto_5
.end method

.method private inflateAction(Ljava/lang/String;Lcom/android/contacts/quickcontact/ResolveCache;)Landroid/view/View;
    .locals 8
    .parameter "mimeType"
    .parameter "resolveCache"

    .prologue
    const/4 v7, 0x0

    .line 909
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactWindow;->obtainView()Lcom/android/contacts/quickcontact/CheckableImageView;

    move-result-object v4

    .line 912
    .local v4, view:Lcom/android/contacts/quickcontact/CheckableImageView;
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v5, p1}, Lcom/android/contacts/quickcontact/ActionMultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 913
    .local v0, children:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 914
    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 916
    :cond_0
    invoke-virtual {v4, p1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setTag(Ljava/lang/Object;)V

    .line 917
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/quickcontact/Action;

    .line 920
    .local v2, firstInfo:Lcom/android/contacts/quickcontact/Action;
    invoke-virtual {p2, v2}, Lcom/android/contacts/quickcontact/ResolveCache;->getDescription(Lcom/android/contacts/quickcontact/Action;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 921
    .local v1, descrip:Ljava/lang/CharSequence;
    invoke-virtual {p2, v2}, Lcom/android/contacts/quickcontact/ResolveCache;->getIcon(Lcom/android/contacts/quickcontact/Action;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 922
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v7}, Lcom/android/contacts/quickcontact/CheckableImageView;->setChecked(Z)V

    .line 923
    invoke-virtual {v4, v1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 924
    invoke-virtual {v4, v3}, Lcom/android/contacts/quickcontact/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 925
    invoke-virtual {v4, p0}, Lcom/android/contacts/quickcontact/CheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 926
    return-object v4
.end method

.method private isMimeExcluded(Ljava/lang/String;)Z
    .locals 6
    .parameter "mimeType"

    .prologue
    const/4 v5, 0x0

    .line 623
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mExcludeMimes:[Ljava/lang/String;

    if-nez v4, :cond_0

    move v4, v5

    .line 629
    :goto_0
    return v4

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mExcludeMimes:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 625
    .local v1, excludedMime:Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 626
    const/4 v4, 0x1

    goto :goto_0

    .line 624
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #excludedMime:Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 629
    goto :goto_0
.end method

.method private layoutInScreen()V
    .locals 5

    .prologue
    .line 475
    iget-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mShowing:Z

    if-nez v3, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 478
    .local v1, l:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 480
    .local v2, originalY:I
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 482
    .local v0, blockHeight:I
    iget v3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mRequestedY:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 483
    iget v3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mRequestedY:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mUseableScreenHeight:I

    if-le v3, v4, :cond_2

    .line 485
    iget v3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mUseableScreenHeight:I

    sub-int/2addr v3, v0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 488
    :cond_2
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v2, v3, :cond_0

    .line 490
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method private declared-synchronized obtainView()Lcom/android/contacts/quickcontact/CheckableImageView;
    .locals 4

    .prologue
    .line 887
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mActionPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/CheckableImageView;

    .line 888
    if-eqz v0, :cond_0

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04003a

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/CheckableImageView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    monitor-exit p0

    return-object v0

    .line 887
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized releaseView(Lcom/android/contacts/quickcontact/CheckableImageView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 900
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mActionPool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 901
    iget v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mActionRecycled:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mActionRecycled:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    monitor-exit p0

    return-void

    .line 900
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetTrack()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 533
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mBackground:Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;

    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->clearBottomOverride()V

    .line 536
    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mLastAction:Lcom/android/contacts/quickcontact/CheckableImageView;

    .line 539
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/ActionMultiMap;->clear()V

    .line 542
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 543
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/quickcontact/CheckableImageView;

    invoke-direct {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->releaseView(Lcom/android/contacts/quickcontact/CheckableImageView;)V

    .line 544
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 542
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 547
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mTrackScroll:Landroid/widget/HorizontalScrollView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 550
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mSetPrimaryCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 552
    invoke-direct {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactWindow;->setNewActionViewChecked(Lcom/android/contacts/quickcontact/CheckableImageView;)V

    .line 553
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mFooter:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 554
    return-void
.end method

.method private setHeaderImage(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "id"
    .parameter "drawable"

    .prologue
    .line 611
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mHeader:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 612
    .local v1, view:Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 613
    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 614
    if-nez p2, :cond_1

    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 616
    :cond_0
    return-void

    .line 614
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setHeaderText(II)V
    .locals 1
    .parameter "id"
    .parameter "resId"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/quickcontact/QuickContactWindow;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 598
    return-void
.end method

.method private setHeaderText(ILjava/lang/CharSequence;)V
    .locals 3
    .parameter "id"
    .parameter "value"

    .prologue
    .line 602
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mHeader:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 603
    .local v1, view:Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 604
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 607
    :cond_0
    return-void

    .line 605
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setNewActionViewChecked(Lcom/android/contacts/quickcontact/CheckableImageView;)V
    .locals 2
    .parameter "actionView"

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mLastAction:Lcom/android/contacts/quickcontact/CheckableImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mLastAction:Lcom/android/contacts/quickcontact/CheckableImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setChecked(Z)V

    .line 941
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/contacts/quickcontact/CheckableImageView;->setChecked(Z)V

    .line 942
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mLastAction:Lcom/android/contacts/quickcontact/CheckableImageView;

    .line 943
    return-void
.end method

.method private showInternal()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 402
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDecor:Landroid/view/View;

    .line 403
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 404
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 406
    .local v1, layoutParams:Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 408
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 411
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mScreenWidth:I

    if-gt v2, v3, :cond_1

    .line 412
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-double v2, v2

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0

    mul-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 413
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 429
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDecor:Landroid/view/View;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 430
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 432
    .local v0, blockHeight:I
    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 434
    iget v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mUseableScreenHeight:I

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    if-le v2, v0, :cond_3

    .line 437
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v9, v2}, Lcom/android/contacts/quickcontact/QuickContactWindow;->configureBackground(ZI)V

    .line 438
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 439
    const v2, 0x7f0f0009

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 448
    :goto_1
    const/16 v2, 0x300

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 451
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mRequestedY:I

    .line 452
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    iput-boolean v9, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mShowing:Z

    .line 454
    iput-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mQuerying:Z

    .line 455
    iput-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDismissed:Z

    .line 462
    return-void

    .line 415
    .end local v0           #blockHeight:I
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 419
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v2, v3

    if-ltz v2, :cond_2

    .line 420
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 423
    :cond_2
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 424
    iget v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mScreenWidth:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    .line 443
    .restart local v0       #blockHeight:I
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v8, v2}, Lcom/android/contacts/quickcontact/QuickContactWindow;->configureBackground(ZI)V

    .line 444
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 445
    const v2, 0x7f0f0008

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_1
.end method


# virtual methods
.method protected detectEventOutside(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 1282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDecor:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1284
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDecor:Landroid/view/View;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 1286
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 1287
    .local v1, y:I
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1288
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1291
    .end local v0           #x:I
    .end local v1           #y:I
    :cond_0
    return-void
.end method

.method public declared-synchronized dismiss()V
    .locals 1

    .prologue
    .line 499
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDismissListener:Lcom/android/contacts/quickcontact/QuickContactWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDismissListener:Lcom/android/contacts/quickcontact/QuickContactWindow$OnDismissListener;

    invoke-interface {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactWindow$OnDismissListener;->onDismiss(Lcom/android/contacts/quickcontact/QuickContactWindow;)V

    .line 503
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactWindow;->dismissInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    monitor-exit p0

    return-void

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1224
    const/4 v0, 0x1

    .line 1226
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1274
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1296
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->detectEventOutside(Landroid/view/MotionEvent;)V

    .line 1297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1298
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactWindow;->dismiss()V

    .line 1299
    const/4 v0, 0x1

    .line 1301
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1399
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1395
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1379
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1217
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactWindow;->dismiss()V

    .line 1218
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1004
    instance-of v4, p1, Lcom/android/contacts/quickcontact/CheckableImageView;

    .line 1005
    if-eqz v4, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/quickcontact/CheckableImageView;

    move-object v1, v0

    move-object v5, v1

    .line 1006
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1007
    instance-of v2, v1, Lcom/android/contacts/quickcontact/ClearDefaultsAction;

    if-eqz v2, :cond_4

    .line 1009
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mLastAction:Lcom/android/contacts/quickcontact/CheckableImageView;

    if-ne v5, v1, :cond_2

    .line 1213
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v5, v6

    .line 1005
    goto :goto_0

    .line 1011
    :cond_2
    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactWindow$5;

    invoke-direct {v1, p0, v5}, Lcom/android/contacts/quickcontact/QuickContactWindow$5;-><init>(Lcom/android/contacts/quickcontact/QuickContactWindow;Lcom/android/contacts/quickcontact/CheckableImageView;)V

    .line 1072
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 1073
    invoke-direct {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->animateCollapse(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1075
    :cond_3
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1085
    :cond_4
    instance-of v2, v1, Lcom/android/contacts/quickcontact/Action;

    if-eqz v2, :cond_5

    .line 1086
    check-cast v1, Lcom/android/contacts/quickcontact/Action;

    .line 1089
    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v2

    move-object v3, v6

    move-object v6, v1

    move-object v1, v2

    move v2, v8

    .line 1109
    :goto_2
    if-eqz v6, :cond_b

    .line 1110
    sget-object v3, Lcom/android/contacts/quickcontact/QuickContactWindow;->VIRTUAL_MIMETYPES:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1111
    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mSetPrimaryCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez v1, :cond_9

    move v1, v8

    .line 1113
    :goto_3
    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactWindow$6;

    invoke-direct {v2, p0, v6, v1}, Lcom/android/contacts/quickcontact/QuickContactWindow$6;-><init>(Lcom/android/contacts/quickcontact/QuickContactWindow;Lcom/android/contacts/quickcontact/Action;Z)V

    .line 1138
    if-eqz v4, :cond_a

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a

    .line 1141
    invoke-direct {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactWindow;->animateCollapse(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1090
    :cond_5
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 1091
    check-cast v1, Ljava/lang/String;

    .line 1092
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v2, v1}, Lcom/android/contacts/quickcontact/ActionMultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1094
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v8, :cond_6

    .line 1096
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/quickcontact/Action;

    :goto_4
    move-object v6, v3

    move-object v3, v2

    move v2, v7

    .line 1104
    goto :goto_2

    .line 1097
    :cond_6
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1099
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/quickcontact/Action;

    goto :goto_4

    :cond_7
    move-object v3, v6

    .line 1102
    goto :goto_4

    .line 1106
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "tag is neither Action nor (mimetype-) String"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    move v1, v7

    .line 1111
    goto :goto_3

    .line 1144
    :cond_a
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1150
    :cond_b
    if-nez v3, :cond_c

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 1153
    :cond_c
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mLastAction:Lcom/android/contacts/quickcontact/CheckableImageView;

    if-eq v5, v2, :cond_0

    .line 1154
    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactWindow$7;

    invoke-direct {v2, p0, v5, v1, v3}, Lcom/android/contacts/quickcontact/QuickContactWindow$7;-><init>(Lcom/android/contacts/quickcontact/QuickContactWindow;Lcom/android/contacts/quickcontact/CheckableImageView;Ljava/lang/String;Ljava/util/List;)V

    .line 1205
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_d

    .line 1208
    invoke-direct {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactWindow;->animateCollapse(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 1211
    :cond_d
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_1
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 1319
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 1324
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .parameter "featureId"

    .prologue
    .line 1330
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1385
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactWindow;->layoutInScreen()V

    .line 468
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 933
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2}, Lcom/android/contacts/quickcontact/QuickContactWindow;->onClick(Landroid/view/View;)V

    .line 934
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1233
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1234
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1235
    const/4 v0, 0x1

    .line 1238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1256
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    .line 1262
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1244
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1246
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactWindow;->onBackPressed()V

    .line 1247
    const/4 v0, 0x1

    .line 1250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 1336
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 1342
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 1348
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "view"
    .parameter "menu"

    .prologue
    .line 1353
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 577
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mLookupUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p2, v0, :cond_0

    .line 593
    :goto_0
    monitor-exit p0

    return-void

    .line 579
    :cond_0
    if-nez p3, :cond_1

    .line 581
    :try_start_1
    const-string v0, "QuickContactWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing cursor for token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactWindow;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 586
    :cond_1
    :try_start_2
    invoke-direct {p0, p3}, Lcom/android/contacts/quickcontact/QuickContactWindow;->handleData(Landroid/database/Cursor;)V

    .line 588
    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 589
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 592
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactWindow;->considerShowing()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 1359
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1368
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 1373
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "callback"

    .prologue
    .line 1390
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized show(Landroid/net/Uri;Landroid/graphics/Rect;I[Ljava/lang/String;)V
    .locals 9
    .parameter "lookupUri"
    .parameter "anchor"
    .parameter "mode"
    .parameter "excludeMimes"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 318
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mQuerying:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mShowing:Z

    if-eqz v0, :cond_1

    .line 319
    :cond_0
    const-string v0, "QuickContactWindow"

    const-string v1, "dismissing before showing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactWindow;->dismissInternal()V

    .line 328
    :cond_1
    if-eq p3, v2, :cond_2

    if-eq p3, v5, :cond_2

    if-ne p3, v6, :cond_3

    :cond_2
    move v8, v2

    .line 330
    .local v8, validMode:Z
    :goto_0
    if-nez v8, :cond_4

    .line 331
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode, expecting MODE_LARGE, MODE_MEDIUM, or MODE_SMALL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    .end local v8           #validMode:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v8, v4

    .line 328
    goto :goto_0

    .line 335
    .restart local v8       #validMode:Z
    :cond_4
    if-nez p2, :cond_5

    .line 336
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing anchor rectangle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_5
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mLookupUri:Landroid/net/Uri;

    .line 341
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    .line 342
    iput p3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mMode:I

    .line 343
    iput-object p4, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mExcludeMimes:[Ljava/lang/String;

    .line 345
    invoke-direct {p0, p3}, Lcom/android/contacts/quickcontact/QuickContactWindow;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mHeader:Landroid/view/View;

    .line 347
    const v0, 0x7f070037

    const v1, 0x7f0c00ed

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->setHeaderText(II)V

    .line 349
    const v0, 0x7f07003b

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 350
    const v0, 0x7f07009b

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 352
    const v0, 0x7f07009c

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->setHeaderImage(ILandroid/graphics/drawable/Drawable;)V

    .line 354
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactWindow;->resetTrack()V

    .line 358
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mRootView:Lcom/android/contacts/quickcontact/QuickContactRootLayout;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/QuickContactRootLayout;->requestFocus()Z

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mHasValidSocial:Z

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mDismissed:Z

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mQuerying:Z

    .line 366
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->getDataUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 367
    .local v3, dataUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 370
    iget v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mMode:I

    if-ne v0, v6, :cond_6

    .line 372
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v1, 0x1

    sget-object v4, Lcom/android/contacts/quickcontact/QuickContactWindow$DataQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "mimetype!=? OR (mimetype=? AND _id=photo_id)"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "vnd.android.cursor.item/photo"

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const-string v7, "vnd.android.cursor.item/photo"

    aput-object v7, v6, v2

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    :goto_1
    monitor-exit p0

    return-void

    .line 377
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactWindow;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v1, 0x1

    sget-object v4, Lcom/android/contacts/quickcontact/QuickContactWindow$DataQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "mimetype!=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "vnd.android.cursor.item/photo"

    aput-object v7, v6, v2

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
