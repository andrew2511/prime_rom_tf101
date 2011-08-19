.class public abstract Lcom/android/vending/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/vending/ChainAction;
.implements Lcom/android/vending/model/LocalAssetCache$AssetStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/BaseActivity$SnippetInitializer;,
        Lcom/android/vending/BaseActivity$ProgressDialogAccessor;,
        Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;,
        Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor;,
        Lcom/android/vending/BaseActivity$AssetInfoLoader;,
        Lcom/android/vending/BaseActivity$CacheCheckingBaseAction;,
        Lcom/android/vending/BaseActivity$BaseAction;,
        Lcom/android/vending/BaseActivity$BackgroundThread;,
        Lcom/android/vending/BaseActivity$BackendAction;,
        Lcom/android/vending/BaseActivity$GetAuthTokensCallback;,
        Lcom/android/vending/BaseActivity$AuthService;
    }
.end annotation


# static fields
.field private static sBackgroundRunnable:Ljava/lang/Runnable;

.field private static sForegroundRunnable:Ljava/lang/Runnable;

.field private static sMarketInForeground:Z

.field private static sMarketLeaving:Z


# instance fields
.field protected mApplication:Lcom/android/vending/VendingApplication;

.field protected mAssetType:Lcom/android/vending/model/Asset$AssetType;

.field private mAutoStartAction:Lcom/android/vending/BaseActivity$BaseAction;

.field protected mController:Lcom/android/vending/controller/Controller;

.field public mDestroyed:Z

.field private mDialogMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/vending/controller/DialogAccessor;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/controller/DialogAccessor;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayedDialogs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEndChainAction:Lcom/android/vending/ChainAction;

.field protected volatile mExecutingAction:Lcom/android/vending/BaseActivity$BackendAction;

.field private mFinishDialogAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

.field private mFirstChainAction:Lcom/android/vending/ChainAction;

.field protected final mHandler:Landroid/os/Handler;

.field private mIntentMessageShown:Z

.field private mIsPaused:Z

.field protected mMarketIcon:Landroid/view/View;

.field protected mMutableDialogAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

.field private mNonPersistedDialogs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/vending/controller/DialogAccessor;",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private mNumAuthAttempts:I

.field private mOutstandingAuthRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/controller/DialogAccessor;",
            ">;"
        }
    .end annotation
.end field

.field protected mProgressDialogAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

.field protected mRequestManager:Lcom/android/vending/api/RequestManager;

.field private mRetryPanelAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

.field protected mSavedRequestCode:I

.field protected mSavedResultCode:I

.field protected mSearchButton:Landroid/view/View;

.field private mSharedParameters:Lcom/android/vending/controller/RequestParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 287
    sput-boolean v0, Lcom/android/vending/BaseActivity;->sMarketLeaving:Z

    .line 288
    sput-boolean v0, Lcom/android/vending/BaseActivity;->sMarketInForeground:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/BaseActivity;->mOutstandingAuthRequests:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/vending/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 182
    iput-object v1, p0, Lcom/android/vending/BaseActivity;->mAssetType:Lcom/android/vending/model/Asset$AssetType;

    .line 244
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/vending/BaseActivity;->mSavedResultCode:I

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/BaseActivity;->mDialogs:Ljava/util/List;

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/BaseActivity;->mDialogMap:Ljava/util/Map;

    .line 254
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/vending/BaseActivity;->mDisplayedDialogs:Ljava/util/Set;

    .line 260
    iput-object v1, p0, Lcom/android/vending/BaseActivity;->mNonPersistedDialogs:Ljava/util/Map;

    .line 2170
    return-void
.end method

.method static addTouchDelegate(Landroid/view/View;I)V
    .locals 7
    .parameter "view"
    .parameter "resId"

    .prologue
    .line 789
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 790
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v5, v6, Landroid/util/DisplayMetrics;->density:F

    .line 791
    .local v5, scale:F
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 792
    .local v0, dp:F
    neg-float v6, v0

    mul-float/2addr v6, v5

    float-to-int v3, v6

    .line 793
    .local v3, px:I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 794
    .local v1, hitRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 795
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 796
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 797
    .local v2, parent:Landroid/view/View;
    new-instance v6, Landroid/view/TouchDelegate;

    invoke-direct {v6, v1, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 798
    return-void
.end method

.method public static cancelMarketLeaving()V
    .locals 1

    .prologue
    .line 706
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/vending/BaseActivity;->sMarketLeaving:Z

    .line 707
    return-void
.end method

.method private completeGetAuthToken(ILandroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1391
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1392
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1393
    if-eqz v0, :cond_1

    .line 1394
    const-string v1, "authtoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1401
    :goto_0
    return-object v0

    .line 1396
    :cond_0
    if-nez p1, :cond_1

    .line 1397
    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->setResult(I)V

    .line 1398
    const-string v0, "auth result is RESULT_CANCELED"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1399
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->finish()V

    .line 1401
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onMenuItemSelected(Landroid/app/Activity;ILandroid/view/MenuItem;)Z
    .locals 4
    .parameter "activity"
    .parameter "featureId"
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1226
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v1, v2

    .line 1248
    :goto_0
    return v1

    .line 1228
    :pswitch_0
    invoke-static {p0}, Lcom/android/vending/BaseActivity;->showDebugDialog(Landroid/content/Context;)V

    move v1, v3

    .line 1229
    goto :goto_0

    .line 1233
    :pswitch_1
    invoke-interface {p2}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    .line 1234
    .local v0, pinned:Z
    :goto_1
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1235
    sget-object v1, Lcom/android/vending/util/VendingPreferences;->NOTIFY_UPDATES:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v1, v3

    .line 1236
    goto :goto_0

    .end local v0           #pinned:Z
    :cond_0
    move v0, v2

    .line 1233
    goto :goto_1

    .line 1240
    :pswitch_2
    invoke-interface {p2}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v3

    .line 1241
    .restart local v0       #pinned:Z
    :goto_2
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1242
    sget-object v1, Lcom/android/vending/util/VendingPreferences;->AUTO_ADD_SHORTCUTS:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v1, v3

    .line 1243
    goto :goto_0

    .end local v0           #pinned:Z
    :cond_1
    move v0, v2

    .line 1240
    goto :goto_2

    .line 1226
    :pswitch_data_0
    .packed-switch 0x7f080137
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static scaleAppearance(Landroid/widget/TextView;II)V
    .locals 5
    .parameter "textView"
    .parameter "maxTextSizeResId"
    .parameter "layoutWidthResId"

    .prologue
    .line 760
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 761
    .local v2, savedLp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 762
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 763
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .end local p1
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .end local v0           #dm:Landroid/util/DisplayMetrics;
    div-float v0, p1, v0

    .line 764
    .local v0, maxTextSize:F
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 765
    .local p1, layoutWidth:F
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .end local p2
    const/4 v1, -0x2

    const/4 v3, -0x2

    invoke-direct {p2, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 766
    .end local v1           #res:Landroid/content/res/Resources;
    .local p2, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 767
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 768
    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 769
    .end local p2           #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    .line 770
    .local p2, width:F
    div-float/2addr p1, p2

    const/high16 p2, 0x3f80

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .end local p1           #layoutWidth:F
    .end local p2           #width:F
    move-result p2

    .line 771
    .local p2, scale:F
    const/high16 p1, 0x41c8

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p2

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 775
    .local p1, paddingTop:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v1, p1, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 777
    mul-float p1, v0, p2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 778
    .end local p1           #paddingTop:I
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 779
    return-void
.end method

.method public static setBackgroundRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 710
    sget-boolean v0, Lcom/android/vending/BaseActivity;->sMarketInForeground:Z

    if-nez v0, :cond_0

    .line 712
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 716
    :goto_0
    return-void

    .line 714
    :cond_0
    sput-object p0, Lcom/android/vending/BaseActivity;->sBackgroundRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private setMarketInForeground()V
    .locals 1

    .prologue
    .line 686
    sget-boolean v0, Lcom/android/vending/BaseActivity;->sMarketInForeground:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/vending/BaseActivity;->sForegroundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 687
    sget-object v0, Lcom/android/vending/BaseActivity;->sForegroundRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 688
    const/4 v0, 0x0

    sput-object v0, Lcom/android/vending/BaseActivity;->sForegroundRunnable:Ljava/lang/Runnable;

    .line 691
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/vending/BaseActivity;->sMarketLeaving:Z

    .line 692
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/vending/BaseActivity;->sMarketInForeground:Z

    .line 693
    return-void
.end method

.method private setMarketLeftForeground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 696
    sget-boolean v0, Lcom/android/vending/BaseActivity;->sMarketInForeground:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/vending/BaseActivity;->sBackgroundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 697
    sget-object v0, Lcom/android/vending/BaseActivity;->sBackgroundRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 698
    const/4 v0, 0x0

    sput-object v0, Lcom/android/vending/BaseActivity;->sBackgroundRunnable:Ljava/lang/Runnable;

    .line 701
    :cond_0
    sput-boolean v1, Lcom/android/vending/BaseActivity;->sMarketLeaving:Z

    .line 702
    sput-boolean v1, Lcom/android/vending/BaseActivity;->sMarketInForeground:Z

    .line 703
    return-void
.end method

.method private static showDebugDialog(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 1120
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1122
    invoke-static {p0}, Lcom/android/vending/util/MarketDebug;->getBasicDebugInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1123
    const-string v1, "Quick summary"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1124
    const v1, 0x7f0701c8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1126
    const-string v1, "Send full"

    new-instance v2, Lcom/android/vending/BaseActivity$4;

    invoke-direct {v2, p0}, Lcom/android/vending/BaseActivity$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1142
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1143
    return-void
.end method


# virtual methods
.method protected clearChainActions()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 592
    iput-object v0, p0, Lcom/android/vending/BaseActivity;->mFirstChainAction:Lcom/android/vending/ChainAction;

    .line 593
    iput-object v0, p0, Lcom/android/vending/BaseActivity;->mEndChainAction:Lcom/android/vending/ChainAction;

    .line 594
    return-void
.end method

.method public createNoAccountsDialogAccessor(Ljava/lang/Runnable;)Lcom/android/vending/controller/DialogAccessor;
    .locals 1
    .parameter "callback"

    .prologue
    .line 1035
    new-instance v0, Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor;

    invoke-direct {v0, p0, p1}, Lcom/android/vending/BaseActivity$NoAccountsDialogAccessor;-><init>(Lcom/android/vending/BaseActivity;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public deferResultHandling(II)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"

    .prologue
    .line 1337
    iput p1, p0, Lcom/android/vending/BaseActivity;->mSavedRequestCode:I

    .line 1338
    iput p2, p0, Lcom/android/vending/BaseActivity;->mSavedResultCode:I

    .line 1339
    return-void
.end method

.method public displayAlertMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "message"

    .prologue
    .line 365
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/vending/BaseActivity;->displayAlertMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 366
    return-void
.end method

.method public displayAlertMessage(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "title"
    .parameter "message"
    .parameter "finish"

    .prologue
    .line 378
    if-nez p3, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mMutableDialogAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    invoke-static {p0, v0, p1, p2}, Lcom/android/vending/AlertUtil;->displayTitleMessageDialog(Lcom/android/vending/BaseActivity;Lcom/android/vending/AlertUtil$MutableDialogAccessor;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mFinishDialogAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    invoke-static {p0, v0, p1, p2}, Lcom/android/vending/AlertUtil;->displayTitleMessageDialog(Lcom/android/vending/BaseActivity;Lcom/android/vending/AlertUtil$MutableDialogAccessor;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public displayDialog(Lcom/android/vending/controller/DialogAccessor;)V
    .locals 4
    .parameter "dialogAccessor"

    .prologue
    .line 410
    iget-object v2, p0, Lcom/android/vending/BaseActivity;->mDialogMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 411
    .local v1, id:Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 412
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "registerDialog must be called before displayDialog"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 414
    :cond_0
    iget-boolean v2, p0, Lcom/android/vending/BaseActivity;->mIsPaused:Z

    if-eqz v2, :cond_2

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dialog (id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") was not shown as the application was paused. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Dialog will be shown onResume"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 419
    iget-object v2, p0, Lcom/android/vending/BaseActivity;->mPendingDialogs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_1
    :goto_0
    return-void

    .line 422
    :cond_2
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 423
    iget-object v2, p0, Lcom/android/vending/BaseActivity;->mDialogMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 424
    .local v0, dialogId:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/vending/BaseActivity;->showDialog(I)V

    .line 425
    iget-object v2, p0, Lcom/android/vending/BaseActivity;->mDisplayedDialogs:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public displayNonPersistedDialog(Lcom/android/vending/controller/DialogAccessor;)V
    .locals 3
    .parameter "dialogAccessor"

    .prologue
    .line 435
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mDialogMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "displayNonPersistentDialog() called for a registered dialog."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 441
    invoke-interface {p1}, Lcom/android/vending/controller/DialogAccessor;->create()Landroid/app/Dialog;

    move-result-object v0

    .line 442
    .local v0, dialog:Landroid/app/Dialog;
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mNonPersistedDialogs:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 443
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/vending/BaseActivity;->mNonPersistedDialogs:Ljava/util/Map;

    .line 445
    :cond_1
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mNonPersistedDialogs:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 448
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_2
    return-void
.end method

.method public displayToast(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 391
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 392
    return-void
.end method

.method public displayToast(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 400
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 401
    return-void
.end method

.method protected doRetry()V
    .locals 2

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mExecutingAction:Lcom/android/vending/BaseActivity$BackendAction;

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mExecutingAction:Lcom/android/vending/BaseActivity$BackendAction;

    invoke-virtual {v0}, Lcom/android/vending/BaseActivity$BackendAction;->retry()V

    .line 1157
    :goto_0
    return-void

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mFirstChainAction:Lcom/android/vending/ChainAction;

    if-eqz v0, :cond_1

    .line 1153
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mFirstChainAction:Lcom/android/vending/ChainAction;

    invoke-interface {v0, p0}, Lcom/android/vending/ChainAction;->runAction(Lcom/android/vending/BaseActivity;)V

    goto :goto_0

    .line 1155
    :cond_1
    const-string v0, "No action to start or retry."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 347
    return-object p0
.end method

.method public getReferrerUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "rowIndex"

    .prologue
    .line 2150
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestManager()Lcom/android/vending/api/RequestManager;
    .locals 1

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    return-object v0
.end method

.method public getSharedParameters()Lcom/android/vending/controller/RequestParameters;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mSharedParameters:Lcom/android/vending/controller/RequestParameters;

    return-object v0
.end method

.method public getVendingApplication()Lcom/android/vending/VendingApplication;
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mApplication:Lcom/android/vending/VendingApplication;

    return-object v0
.end method

.method protected handleDeferredResultIfNecessary()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1349
    iget v0, p0, Lcom/android/vending/BaseActivity;->mSavedResultCode:I

    if-ne v0, v3, :cond_0

    .line 1358
    :goto_0
    return-void

    .line 1353
    :cond_0
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mController:Lcom/android/vending/controller/Controller;

    instance-of v0, v0, Lcom/android/vending/controller/ResultsController;

    if-eqz v0, :cond_1

    .line 1354
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mController:Lcom/android/vending/controller/Controller;

    check-cast v0, Lcom/android/vending/controller/ResultsController;

    iget v1, p0, Lcom/android/vending/BaseActivity;->mSavedRequestCode:I

    iget v2, p0, Lcom/android/vending/BaseActivity;->mSavedResultCode:I

    invoke-interface {v0, v1, v2, p0}, Lcom/android/vending/controller/ResultsController;->handleResult(IILcom/android/vending/BaseActivity;)V

    .line 1357
    :cond_1
    iput v3, p0, Lcom/android/vending/BaseActivity;->mSavedResultCode:I

    goto :goto_0
.end method

.method protected haveAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Z
    .locals 1
    .parameter "service"

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v0, p1}, Lcom/android/vending/VendingApplication;->getCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected haveAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)Z
    .locals 1
    .parameter "service"
    .parameter "account"

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v0, p1, p2}, Lcom/android/vending/VendingApplication;->getCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideDialog(Lcom/android/vending/controller/DialogAccessor;)V
    .locals 2
    .parameter "dialogAccessor"

    .prologue
    .line 457
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mDialogMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 458
    .local v0, dialogId:Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mDisplayedDialogs:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    :goto_0
    return-void

    .line 462
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->dismissDialog(I)V

    .line 463
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mDisplayedDialogs:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public hideIndeterminateProgress(Lcom/android/vending/BaseActivity$BackendAction;)V
    .locals 1
    .parameter "backendAction"

    .prologue
    .line 1366
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 1367
    return-void
.end method

.method public hideWaitPanel()V
    .locals 1

    .prologue
    .line 1324
    iget-boolean v0, p0, Lcom/android/vending/BaseActivity;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 1328
    :goto_0
    return-void

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mProgressDialogAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->hideDialog(Lcom/android/vending/controller/DialogAccessor;)V

    goto :goto_0
.end method

.method protected initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 999
    const-string v0, "get_auth_token %s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/vending/BaseActivity$AuthService;->getServiceName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->start(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1000
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v0, p1}, Lcom/android/vending/VendingApplication;->getCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Ljava/lang/String;

    move-result-object v0

    .line 1001
    if-eqz v0, :cond_0

    .line 1002
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/vending/BaseActivity;->onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    :goto_0
    return-void

    .line 1006
    :cond_0
    iget v0, p0, Lcom/android/vending/BaseActivity;->mNumAuthAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/vending/BaseActivity;->mNumAuthAttempts:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 1007
    const-string v0, "Too many login attempts."

    invoke-static {v0}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p0, v3}, Lcom/android/vending/BaseActivity;->setResult(I)V

    .line 1009
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->finish()V

    goto :goto_0

    .line 1013
    :cond_1
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity$AuthService;->getAuthCode()I

    move-result v1

    .line 1016
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mOutstandingAuthRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1017
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auth request already outstanding for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/vending/BaseActivity$AuthService;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1022
    :cond_3
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mOutstandingAuthRequests:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity$AuthService;->getAuthCode()I

    move-result v1

    iget-object v4, p0, Lcom/android/vending/BaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/vending/BaseActivity$GetAuthTokensCallback;

    invoke-direct {v5, p0, p1, v6}, Lcom/android/vending/BaseActivity$GetAuthTokensCallback;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/BaseActivity$AuthService;Z)V

    new-instance v6, Lcom/android/vending/BaseActivity$GetAuthTokensCallback;

    invoke-direct {v6, p0, p1, v3}, Lcom/android/vending/BaseActivity$GetAuthTokensCallback;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/BaseActivity$AuthService;Z)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/android/vending/compat/AccountManagerHelper;->initiateGetAuthToken(Lcom/android/vending/BaseActivity;ILcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerCallback;)V

    goto :goto_0
.end method

.method protected invalidateAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v0, p1, p2}, Lcom/android/vending/VendingApplication;->getCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1171
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/vending/VendingApplication;->invalidateCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    .line 1172
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity$AuthService;->getInvalidateCode()I

    move-result v1

    .line 1173
    iget-object v2, p0, Lcom/android/vending/BaseActivity;->mOutstandingAuthRequests:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1174
    const-string v2, "com.google"

    invoke-static {p0, v2, v0}, Lcom/android/vending/compat/AccountManagerHelper;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/vending/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1179
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 801
    iget-boolean v0, p0, Lcom/android/vending/BaseActivity;->mIsPaused:Z

    return v0
.end method

.method protected maybeDisplayMessage(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 1380
    const-string v0, "message_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1381
    iget-boolean v0, p0, Lcom/android/vending/BaseActivity;->mIntentMessageShown:Z

    if-nez v0, :cond_0

    .line 1382
    const-string v0, "message_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1383
    const-string v1, "message_body"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1384
    invoke-virtual {p0, v0, v1}, Lcom/android/vending/BaseActivity;->displayAlertMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/BaseActivity;->mIntentMessageShown:Z

    .line 1388
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 887
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 890
    const/4 v0, 0x0

    .line 891
    .local v0, account:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/vending/BaseActivity;->mOutstandingAuthRequests:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 892
    .local v3, iterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 893
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 894
    .local v1, auth:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 895
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local v0           #account:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 896
    .restart local v0       #account:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 900
    .end local v1           #auth:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    if-nez v0, :cond_3

    .line 951
    :cond_2
    :goto_0
    return-void

    .line 902
    :cond_3
    sget-object v4, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v4}, Lcom/android/vending/BaseActivity$AuthService;->getAuthCode()I

    move-result v4

    if-ne p1, v4, :cond_4

    .line 903
    invoke-direct {p0, p2, p3}, Lcom/android/vending/BaseActivity;->completeGetAuthToken(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 904
    .local v2, authToken:Ljava/lang/String;
    sget-object v4, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v4, v0, v2}, Lcom/android/vending/BaseActivity;->onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 907
    .end local v2           #authToken:Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/android/vending/BaseActivity$AuthService;->ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v4}, Lcom/android/vending/BaseActivity$AuthService;->getAuthCode()I

    move-result v4

    if-ne p1, v4, :cond_5

    .line 908
    invoke-direct {p0, p2, p3}, Lcom/android/vending/BaseActivity;->completeGetAuthToken(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 909
    .restart local v2       #authToken:Ljava/lang/String;
    sget-object v4, Lcom/android/vending/BaseActivity$AuthService;->ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v4, v0, v2}, Lcom/android/vending/BaseActivity;->onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 912
    .end local v2           #authToken:Ljava/lang/String;
    :cond_5
    sget-object v4, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v4}, Lcom/android/vending/BaseActivity$AuthService;->getAuthCode()I

    move-result v4

    if-ne p1, v4, :cond_6

    .line 913
    invoke-direct {p0, p2, p3}, Lcom/android/vending/BaseActivity;->completeGetAuthToken(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 914
    .restart local v2       #authToken:Ljava/lang/String;
    sget-object v4, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v4, v0, v2}, Lcom/android/vending/BaseActivity;->onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 917
    .end local v2           #authToken:Ljava/lang/String;
    :cond_6
    sget-object v4, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_QA:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v4}, Lcom/android/vending/BaseActivity$AuthService;->getAuthCode()I

    move-result v4

    if-ne p1, v4, :cond_7

    .line 918
    invoke-direct {p0, p2, p3}, Lcom/android/vending/BaseActivity;->completeGetAuthToken(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 919
    .restart local v2       #authToken:Ljava/lang/String;
    sget-object v4, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_QA:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v4, v0, v2}, Lcom/android/vending/BaseActivity;->onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 922
    .end local v2           #authToken:Ljava/lang/String;
    :cond_7
    sget-object v4, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_SANDBOX:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v4}, Lcom/android/vending/BaseActivity$AuthService;->getAuthCode()I

    move-result v4

    if-ne p1, v4, :cond_8

    .line 923
    invoke-direct {p0, p2, p3}, Lcom/android/vending/BaseActivity;->completeGetAuthToken(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 924
    .restart local v2       #authToken:Ljava/lang/String;
    sget-object v4, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_SANDBOX:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v4, v0, v2}, Lcom/android/vending/BaseActivity;->onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 927
    .end local v2           #authToken:Ljava/lang/String;
    :cond_8
    sget-object v4, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v4}, Lcom/android/vending/BaseActivity$AuthService;->getInvalidateCode()I

    move-result v4

    if-ne p1, v4, :cond_9

    .line 928
    sget-object v4, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v4, v0}, Lcom/android/vending/BaseActivity;->initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    goto :goto_0

    .line 931
    :cond_9
    sget-object v4, Lcom/android/vending/BaseActivity$AuthService;->ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v4}, Lcom/android/vending/BaseActivity$AuthService;->getInvalidateCode()I

    move-result v4

    if-ne p1, v4, :cond_a

    .line 932
    sget-object v4, Lcom/android/vending/BaseActivity$AuthService;->ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v4, v0}, Lcom/android/vending/BaseActivity;->initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    goto :goto_0

    .line 935
    :cond_a
    sget-object v4, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v4}, Lcom/android/vending/BaseActivity$AuthService;->getInvalidateCode()I

    move-result v4

    if-ne p1, v4, :cond_b

    .line 936
    sget-object v4, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v4, v0}, Lcom/android/vending/BaseActivity;->initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 939
    :cond_b
    sget-object v4, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_QA:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v4}, Lcom/android/vending/BaseActivity$AuthService;->getInvalidateCode()I

    move-result v4

    if-ne p1, v4, :cond_c

    .line 940
    sget-object v4, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_QA:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v4, v0}, Lcom/android/vending/BaseActivity;->initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 943
    :cond_c
    sget-object v4, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_SANDBOX:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {v4}, Lcom/android/vending/BaseActivity$AuthService;->getInvalidateCode()I

    move-result v4

    if-ne p1, v4, :cond_d

    .line 944
    sget-object v4, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_SANDBOX:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v4, v0}, Lcom/android/vending/BaseActivity;->initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 948
    :cond_d
    iget-object v4, p0, Lcom/android/vending/BaseActivity;->mController:Lcom/android/vending/controller/Controller;

    instance-of v4, v4, Lcom/android/vending/controller/ResultsController;

    if-eqz v4, :cond_2

    .line 949
    iget-object v4, p0, Lcom/android/vending/BaseActivity;->mController:Lcom/android/vending/controller/Controller;

    check-cast v4, Lcom/android/vending/controller/ResultsController;

    invoke-interface {v4, p1, p2, p0}, Lcom/android/vending/controller/ResultsController;->handleResult(IILcom/android/vending/BaseActivity;)V

    goto/16 :goto_0
.end method

.method public onAssetStateChanged(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 2
    .parameter "serverAssetId"
    .parameter "newState"

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vending/BaseActivity$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/vending/BaseActivity$5;-><init>(Lcom/android/vending/BaseActivity;Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1276
    return-void
.end method

.method protected onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1091
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/vending/BaseActivity;->onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1092
    const-string v0, "get_auth_token"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->end(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1093
    return-void
.end method

.method protected final onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1108
    if-eqz p3, :cond_1

    .line 1109
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/vending/VendingApplication;->setCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->doRetry()V

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1112
    :cond_1
    const-string v0, "null auth token."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mMarketIcon:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 314
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    const-class v1, Lcom/android/vending/AssetBrowserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 316
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 323
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mSearchButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->onSearchRequested()Z

    goto :goto_0

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mController:Lcom/android/vending/controller/Controller;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/android/vending/controller/Controller;->handleRequest(ILcom/android/vending/BaseActivity;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x0

    .line 518
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 523
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/android/vending/VendingApplication;

    iput-object v6, p0, Lcom/android/vending/BaseActivity;->mApplication:Lcom/android/vending/VendingApplication;

    .line 524
    new-instance v6, Lcom/android/vending/api/RequestManager;

    iget-object v7, p0, Lcom/android/vending/BaseActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v7}, Lcom/android/vending/VendingApplication;->getApiClientContext()Lcom/android/vending/VendingApplication$ApiClientContext;

    move-result-object v7

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getGoogleHttpClient()Lcom/android/vending/compat/GoogleHttpClient;

    move-result-object v8

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/android/vending/api/RequestManager;-><init>(Lcom/android/vending/VendingApplication$ApiClientContext;Lcom/android/vending/compat/GoogleHttpClient;Lcom/android/vending/cache/CacheManager;)V

    iput-object v6, p0, Lcom/android/vending/BaseActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    .line 530
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/android/vending/BaseActivity;->setDefaultKeyMode(I)V

    .line 532
    new-instance v6, Lcom/android/vending/controller/RequestParameters;

    invoke-direct {v6}, Lcom/android/vending/controller/RequestParameters;-><init>()V

    iput-object v6, p0, Lcom/android/vending/BaseActivity;->mSharedParameters:Lcom/android/vending/controller/RequestParameters;

    .line 534
    if-eqz p1, :cond_0

    .line 535
    const-string v6, "intent_message_shown"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/vending/BaseActivity;->mIntentMessageShown:Z

    .line 537
    const-string v6, "intent_outstanding_auth_ids"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 539
    .local v4, outstandingAuthIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v6, "intent_outstanding_auths_accounts"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 541
    .local v3, outstandingAuthAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 542
    iget-object v6, p0, Lcom/android/vending/BaseActivity;->mOutstandingAuthRequests:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 547
    .end local v1           #i:I
    .end local v3           #outstandingAuthAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #outstandingAuthIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    new-instance v2, Lcom/android/vending/InitializeMarketAction;

    invoke-direct {v2}, Lcom/android/vending/InitializeMarketAction;-><init>()V

    .line 548
    .local v2, initializeMarketAction:Lcom/android/vending/InitializeMarketAction;
    new-instance v5, Lcom/android/vending/ParentalControlChecker;

    invoke-direct {v5}, Lcom/android/vending/ParentalControlChecker;-><init>()V

    .line 549
    .local v5, parentalControlChecker:Lcom/android/vending/ParentalControlChecker;
    new-instance v0, Lcom/android/vending/CarrierProvisioningAction;

    invoke-direct {v0}, Lcom/android/vending/CarrierProvisioningAction;-><init>()V

    .line 550
    .local v0, carrierProvisioningAction:Lcom/android/vending/CarrierProvisioningAction;
    iput-object v2, p0, Lcom/android/vending/BaseActivity;->mFirstChainAction:Lcom/android/vending/ChainAction;

    .line 551
    invoke-virtual {v2, v5}, Lcom/android/vending/InitializeMarketAction;->setNext(Lcom/android/vending/ChainAction;)V

    .line 552
    invoke-virtual {v5, v0}, Lcom/android/vending/ParentalControlChecker;->setNext(Lcom/android/vending/ChainAction;)V

    .line 553
    iput-object v0, p0, Lcom/android/vending/BaseActivity;->mEndChainAction:Lcom/android/vending/ChainAction;

    .line 555
    invoke-static {p0}, Lcom/android/vending/AlertUtil;->registerMutableDialogAccessor(Lcom/android/vending/BaseActivity;)Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/vending/BaseActivity;->mMutableDialogAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    .line 556
    new-instance v6, Lcom/android/vending/BaseActivity$1;

    invoke-direct {v6, p0}, Lcom/android/vending/BaseActivity$1;-><init>(Lcom/android/vending/BaseActivity;)V

    new-instance v7, Lcom/android/vending/BaseActivity$2;

    invoke-direct {v7, p0}, Lcom/android/vending/BaseActivity$2;-><init>(Lcom/android/vending/BaseActivity;)V

    invoke-static {p0, v6, v7, v10}, Lcom/android/vending/AlertUtil;->registerMutableDialogAccessor(Lcom/android/vending/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/vending/BaseActivity;->mRetryPanelAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    .line 568
    new-instance v6, Lcom/android/vending/BaseActivity$3;

    invoke-direct {v6, p0}, Lcom/android/vending/BaseActivity$3;-><init>(Lcom/android/vending/BaseActivity;)V

    invoke-static {p0, v6, v10, v10}, Lcom/android/vending/AlertUtil;->registerMutableDialogAccessor(Lcom/android/vending/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/vending/BaseActivity;->mFinishDialogAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    .line 575
    new-instance v6, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-direct {v6, p0}, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;-><init>(Lcom/android/vending/BaseActivity;)V

    iput-object v6, p0, Lcom/android/vending/BaseActivity;->mProgressDialogAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    .line 576
    iget-object v6, p0, Lcom/android/vending/BaseActivity;->mProgressDialogAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-virtual {p0, v6}, Lcom/android/vending/BaseActivity;->registerDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 578
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/vending/BaseActivity;->mIsPaused:Z

    .line 579
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/vending/BaseActivity;->mPendingDialogs:Ljava/util/List;

    .line 585
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mDialogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/vending/controller/DialogAccessor;

    invoke-interface {p0}, Lcom/android/vending/controller/DialogAccessor;->create()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 1201
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1202
    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1204
    const v0, 0x7f080138

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget-object v1, Lcom/android/vending/util/VendingPreferences;->NOTIFY_UPDATES:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1207
    const v0, 0x7f080139

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget-object v1, Lcom/android/vending/util/VendingPreferences;->AUTO_ADD_SHORTCUTS:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1210
    const v0, 0x7f080137

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget-object v1, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_ENABLE_DEBUG_INFO:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v1}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1213
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 820
    iget-object v2, p0, Lcom/android/vending/BaseActivity;->mNonPersistedDialogs:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 821
    iget-object v2, p0, Lcom/android/vending/BaseActivity;->mNonPersistedDialogs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 822
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 823
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 827
    .end local v0           #dialog:Landroid/app/Dialog;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 828
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/vending/BaseActivity;->mDestroyed:Z

    .line 829
    return-void
.end method

.method protected onDisplayErrorUi(Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;)V
    .locals 3
    .parameter

    .prologue
    .line 1907
    sget-object v0, Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;->NETWORK_ERROR:Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;

    if-ne p1, v0, :cond_0

    .line 1908
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1909
    const v1, 0x7f070035

    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    .line 1914
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/vending/BaseActivity;->showRetryPanel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1915
    return-void

    .line 1911
    :cond_0
    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1912
    const v1, 0x7f070038

    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 1218
    invoke-static {p0, p1, p2}, Lcom/android/vending/BaseActivity;->onMenuItemSelected(Landroid/app/Activity;ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    const/4 v0, 0x1

    .line 1222
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 806
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/BaseActivity;->mIntentMessageShown:Z

    .line 813
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 656
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 659
    sput-boolean v0, Lcom/android/vending/BaseActivity;->sMarketLeaving:Z

    .line 661
    iput-boolean v0, p0, Lcom/android/vending/BaseActivity;->mIsPaused:Z

    .line 666
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/vending/model/AbstractLocalAssetCache;->removeListener(Lcom/android/vending/model/LocalAssetCache$AssetStateListener;)V

    .line 667
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mDialogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/controller/DialogAccessor;

    invoke-interface {v0, p2}, Lcom/android/vending/controller/DialogAccessor;->prepare(Landroid/app/Dialog;)V

    .line 489
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 490
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 861
    iget-object v2, p0, Lcom/android/vending/BaseActivity;->mDialogs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, i:I
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 862
    iget-object v2, p0, Lcom/android/vending/BaseActivity;->mDialogs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/controller/DialogAccessor;

    invoke-interface {v2, p1, v0}, Lcom/android/vending/controller/DialogAccessor;->restoreState(Landroid/os/Bundle;I)V

    .line 864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog_visibility"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 865
    .local v1, visibility:Z
    if-eqz v1, :cond_0

    .line 866
    iget-object v2, p0, Lcom/android/vending/BaseActivity;->mDisplayedDialogs:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 869
    .end local v1           #visibility:Z
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 872
    const-string v2, "saved_request_code"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/vending/BaseActivity;->mSavedRequestCode:I

    .line 873
    const-string v2, "saved_result_code"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/vending/BaseActivity;->mSavedResultCode:I

    .line 879
    return-void
.end method

.method public onResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 882
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/vending/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 883
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 630
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 632
    const v3, 0x7f08011a

    invoke-virtual {p0, v3}, Lcom/android/vending/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 633
    .local v2, searchButton:Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 634
    const/high16 v3, 0x7f0a

    invoke-static {v2, v3}, Lcom/android/vending/BaseActivity;->addTouchDelegate(Landroid/view/View;I)V

    .line 638
    :cond_0
    invoke-direct {p0}, Lcom/android/vending/BaseActivity;->setMarketInForeground()V

    .line 643
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/vending/BaseActivity;->mIsPaused:Z

    .line 644
    iget-object v3, p0, Lcom/android/vending/BaseActivity;->mPendingDialogs:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 645
    iget-object v3, p0, Lcom/android/vending/BaseActivity;->mPendingDialogs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/controller/DialogAccessor;

    .line 646
    .local v0, dialog:Lcom/android/vending/controller/DialogAccessor;
    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->displayDialog(Lcom/android/vending/controller/DialogAccessor;)V

    goto :goto_0

    .line 649
    .end local v0           #dialog:Lcom/android/vending/controller/DialogAccessor;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/vending/BaseActivity;->mPendingDialogs:Ljava/util/List;

    .line 651
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/android/vending/model/AbstractLocalAssetCache;->addListener(Lcom/android/vending/model/LocalAssetCache$AssetStateListener;)V

    .line 652
    return-void
.end method

.method protected onRetryPanelCanceled()V
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->setResult(I)V

    .line 513
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->finish()V

    .line 514
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    .line 833
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 834
    const-string v5, "intent_message_shown"

    iget-boolean v6, p0, Lcom/android/vending/BaseActivity;->mIntentMessageShown:Z

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 836
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .local v4, outstandingAuthIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 838
    .local v3, outstandingAuthAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/vending/BaseActivity;->mOutstandingAuthRequests:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 839
    .local v0, auth:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 842
    .end local v0           #auth:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    const-string v5, "intent_outstanding_auth_ids"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 843
    const-string v5, "intent_outstanding_auths_accounts"

    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 845
    iget-object v5, p0, Lcom/android/vending/BaseActivity;->mDialogs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .local v1, i:I
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 846
    iget-object v5, p0, Lcom/android/vending/BaseActivity;->mDialogs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vending/controller/DialogAccessor;

    invoke-interface {v5, p1, v1}, Lcom/android/vending/controller/DialogAccessor;->saveState(Landroid/os/Bundle;I)V

    .line 848
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialog_visibility"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/vending/BaseActivity;->mDisplayedDialogs:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 853
    :cond_1
    iget v5, p0, Lcom/android/vending/BaseActivity;->mSavedResultCode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 854
    const-string v5, "saved_request_code"

    iget v6, p0, Lcom/android/vending/BaseActivity;->mSavedRequestCode:I

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 855
    const-string v5, "saved_result_code"

    iget v6, p0, Lcom/android/vending/BaseActivity;->mSavedResultCode:I

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 857
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 612
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 615
    invoke-direct {p0}, Lcom/android/vending/BaseActivity;->setMarketInForeground()V

    .line 621
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 623
    .local v0, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 624
    new-instance v1, Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/vending/BaseActivity$BackgroundDataDialogAccessor;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/BaseActivity$1;)V

    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->displayNonPersistedDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 626
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 671
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 674
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->getChangingConfigurations()I

    move-result v0

    if-lez v0, :cond_0

    .line 675
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/vending/BaseActivity;->sMarketLeaving:Z

    .line 678
    :cond_0
    sget-boolean v0, Lcom/android/vending/BaseActivity;->sMarketLeaving:Z

    if-eqz v0, :cond_1

    .line 681
    invoke-direct {p0}, Lcom/android/vending/BaseActivity;->setMarketLeftForeground()V

    .line 683
    :cond_1
    return-void
.end method

.method public postOnHandler(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2155
    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1302
    return-void
.end method

.method public final registerDialog(Lcom/android/vending/controller/DialogAccessor;)V
    .locals 2
    .parameter "dialogAccessor"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mDialogMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mDialogMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mDialogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mDialogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_0
    return-void
.end method

.method protected retryExecutingAction()V
    .locals 2

    .prologue
    .line 980
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mExecutingAction:Lcom/android/vending/BaseActivity$BackendAction;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mExecutingAction:Lcom/android/vending/BaseActivity$BackendAction;

    invoke-virtual {v0}, Lcom/android/vending/BaseActivity$BackendAction;->retry()V

    .line 985
    :goto_0
    return-void

    .line 983
    :cond_0
    const-string v0, "No executing action."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public runAction(Lcom/android/vending/BaseActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mAutoStartAction:Lcom/android/vending/BaseActivity$BaseAction;

    if-eqz v0, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mAutoStartAction:Lcom/android/vending/BaseActivity$BaseAction;

    invoke-virtual {v0}, Lcom/android/vending/BaseActivity$BaseAction;->start()V

    .line 1413
    :cond_0
    return-void
.end method

.method public setAssetType(Lcom/android/vending/model/Asset$AssetType;)V
    .locals 0
    .parameter "assetType"

    .prologue
    .line 958
    iput-object p1, p0, Lcom/android/vending/BaseActivity;->mAssetType:Lcom/android/vending/model/Asset$AssetType;

    .line 959
    return-void
.end method

.method protected setAutoStartAction(Lcom/android/vending/BaseActivity$BaseAction;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 962
    iput-object p1, p0, Lcom/android/vending/BaseActivity;->mAutoStartAction:Lcom/android/vending/BaseActivity$BaseAction;

    .line 965
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mFirstChainAction:Lcom/android/vending/ChainAction;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mEndChainAction:Lcom/android/vending/ChainAction;

    if-eqz v0, :cond_0

    .line 966
    const-string v0, "First action cannot be null if end action is not null"

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 967
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to execute chain actions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mFirstChainAction:Lcom/android/vending/ChainAction;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mEndChainAction:Lcom/android/vending/ChainAction;

    if-nez v0, :cond_1

    .line 972
    iput-object p0, p0, Lcom/android/vending/BaseActivity;->mFirstChainAction:Lcom/android/vending/ChainAction;

    .line 973
    iput-object p0, p0, Lcom/android/vending/BaseActivity;->mEndChainAction:Lcom/android/vending/ChainAction;

    .line 977
    :goto_0
    return-void

    .line 975
    :cond_1
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mEndChainAction:Lcom/android/vending/ChainAction;

    invoke-interface {v0, p0}, Lcom/android/vending/ChainAction;->setNext(Lcom/android/vending/ChainAction;)V

    goto :goto_0
.end method

.method public setNext(Lcom/android/vending/ChainAction;)V
    .locals 0
    .parameter "nextAction"

    .prologue
    .line 1420
    return-void
.end method

.method protected setViewOnClickListener(I)V
    .locals 1
    .parameter "viewId"

    .prologue
    .line 330
    invoke-virtual {p0, p1}, Lcom/android/vending/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    return-void
.end method

.method protected setViewOnClickListener(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 338
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    return-void
.end method

.method protected setupSlimTitleBar(Ljava/lang/CharSequence;Z)V
    .locals 3
    .parameter "title"
    .parameter "enableSearch"

    .prologue
    .line 725
    const v1, 0x7f080118

    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/BaseActivity;->mMarketIcon:Landroid/view/View;

    .line 726
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mMarketIcon:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 727
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mMarketIcon:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 731
    const v1, 0x7f080119

    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 732
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    const v1, 0x7f0a0004

    const v2, 0x7f0a0002

    invoke-static {v0, v1, v2}, Lcom/android/vending/BaseActivity;->scaleAppearance(Landroid/widget/TextView;II)V

    .line 736
    .end local v0           #tv:Landroid/widget/TextView;
    :cond_1
    const v1, 0x7f08011a

    invoke-virtual {p0, v1}, Lcom/android/vending/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/BaseActivity;->mSearchButton:Landroid/view/View;

    .line 737
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mSearchButton:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 738
    if-eqz p2, :cond_3

    .line 739
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mSearchButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 740
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mSearchButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    :cond_2
    :goto_0
    return-void

    .line 742
    :cond_3
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mSearchButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showIndeterminateProgress(Lcom/android/vending/BaseActivity$BackendAction;)V
    .locals 1
    .parameter "backendAction"

    .prologue
    .line 1361
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 1363
    return-void
.end method

.method public showRetryPanel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1370
    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mRetryPanelAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/vending/AlertUtil;->displayTitleMessageDialog(Lcom/android/vending/BaseActivity;Lcom/android/vending/AlertUtil$MutableDialogAccessor;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1372
    return-void
.end method

.method public showSoftKeyboard()V
    .locals 2

    .prologue
    .line 2165
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2167
    return-void
.end method

.method public showWaitPanel(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 1313
    iget-boolean v0, p0, Lcom/android/vending/BaseActivity;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 1318
    :goto_0
    return-void

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mProgressDialogAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-virtual {v0, p1}, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;->setMessage(Ljava/lang/CharSequence;)V

    .line 1317
    iget-object v0, p0, Lcom/android/vending/BaseActivity;->mProgressDialogAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-virtual {p0, v0}, Lcom/android/vending/BaseActivity;->displayDialog(Lcom/android/vending/controller/DialogAccessor;)V

    goto :goto_0
.end method

.method public startAction(Lcom/android/vending/BaseActivity$BaseAction;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 355
    invoke-virtual {p1}, Lcom/android/vending/BaseActivity$BaseAction;->start()V

    .line 356
    return-void
.end method

.method protected startSetupActionChain(Z)V
    .locals 2
    .parameter "firstrun"

    .prologue
    .line 602
    if-nez p1, :cond_0

    .line 603
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity;->doRetry()V

    .line 608
    :goto_0
    return-void

    .line 607
    :cond_0
    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    iget-object v1, p0, Lcom/android/vending/BaseActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v1}, Lcom/android/vending/VendingApplication;->getCurrentAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/BaseActivity;->initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateActivity(I)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 1334
    return-void
.end method

.method public abstract updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
.end method
