.class public abstract Lcom/amazon/kcp/reader/ReaderActivity;
.super Lcom/amazon/kcp/redding/DocumentActivity;
.source "ReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ReaderActivity$11;
    }
.end annotation


# static fields
.field private static final BOOK_EXIT_METRIC_TIMER:Ljava/lang/String; = "BookExit"

.field public static final EDIT_NOTE_ACTIVITY_REQUEST:I = 0x1

.field protected static final LANDSCAPE_RIGHT_DIALOG_ID:I = 0x1

.field protected static final LOCATION_DIALOG_ID:I = 0x0

.field private static final METRICS_NAME:Ljava/lang/String; = "ReaderActivity"

.field public static final NOTES_ACTIVITY_REQUEST:I = 0x0

.field private static final ORIENTATION_DEGREE_TOLERANCE:I = 0x14


# instance fields
.field private contentContainer:Landroid/view/ViewGroup;

.field private deviceIsLandscapeRight:Z

.field private deviceOrientation:I

.field private immersiveReadingMode:Z

.field private instructionsDialog:Landroid/app/Dialog;

.field private isChangingColor:Z

.field private isCurrentlySearching:Z

.field private objectSelectionController:Lcom/amazon/kcp/reader/ObjectSelectionController;

.field private objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

.field protected onCloseListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;

.field protected onFocusChangeListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;

.field protected onQueryTextListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;

.field private orientationListener:Landroid/view/OrientationEventListener;

.field protected page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

.field protected readerController:Lcom/amazon/kcp/reader/ReaderController;

.field protected readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

.field protected searchView:Lcom/amazon/android/widget/SearchViewWrapper;

.field private final settingsChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lcom/amazon/kcp/redding/DocumentActivity;-><init>()V

    .line 98
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isCurrentlySearching:Z

    .line 103
    iput v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    .line 104
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceIsLandscapeRight:Z

    .line 110
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isChangingColor:Z

    .line 125
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ReaderActivity$1;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->onQueryTextListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;

    .line 149
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ReaderActivity$2;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->onFocusChangeListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;

    .line 164
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivity$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ReaderActivity$3;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->onCloseListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;

    .line 177
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivity$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ReaderActivity$4;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->settingsChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ReaderActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->setPreferenceFromSettingsController(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->handleOrientationLockClick()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ReaderActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->handleDeviceOrientationChange(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/ReaderActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->instructionsDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/amazon/kcp/reader/ReaderActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->instructionsDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private buildLandscapeRightLockDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 1060
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1061
    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1062
    const v1, 0x7f0b0080

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1063
    const v1, 0x7f0b0010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1065
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private buildLocationDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 869
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v1

    .line 870
    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getLastPosition()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getLocationFromPosition(I)I

    move-result v2

    .line 872
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 874
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 875
    const v0, 0x7f0b00e8

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v0, v4}, Lcom/amazon/kcp/reader/ReaderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 877
    const v0, 0x7f030028

    const/4 v4, 0x0

    invoke-static {p0, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 878
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 879
    const v4, 0x7f0c0090

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 880
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 881
    new-instance v4, Lcom/amazon/kcp/reader/GotoTextWatcher;

    invoke-direct {v4, v2}, Lcom/amazon/kcp/reader/GotoTextWatcher;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 883
    new-instance v2, Lcom/amazon/kcp/reader/LocationDialogController;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kcp/reader/LocationDialogController;-><init>(Landroid/widget/EditText;Lcom/amazon/kcp/reader/models/IBookNavigator;)V

    .line 884
    const v1, 0x7f0b000d

    invoke-virtual {v3, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 885
    const v1, 0x7f0b000c

    invoke-virtual {v3, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 887
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 889
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 892
    new-instance v3, Lcom/amazon/kcp/reader/ReaderActivity$9;

    invoke-direct {v3, p0, v1, v2}, Lcom/amazon/kcp/reader/ReaderActivity$9;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Landroid/app/Dialog;Lcom/amazon/kcp/reader/LocationDialogController;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 908
    return-object v1
.end method

.method private flashOrientationLockIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1003
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/SettingsController;->getOrientation()I

    move-result v0

    .line 1007
    .local v0, orientation:I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceIsLandscapeRight:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v1, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1, v2, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOrientationLockTemporarilyVisible(ZZ)V

    .line 1014
    :cond_0
    return-void
.end method

.method private handleDeviceOrientationChange(I)V
    .locals 4
    .parameter "degrees"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 963
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    const/16 v0, 0x154

    if-gt p1, v0, :cond_2

    const/16 v0, 0x14

    if-ge p1, v0, :cond_3

    .line 970
    :cond_2
    iget v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    if-eq v0, v2, :cond_0

    .line 972
    iput v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    .line 973
    iput-boolean v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceIsLandscapeRight:Z

    .line 974
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->flashOrientationLockIfNeeded()V

    goto :goto_0

    .line 977
    :cond_3
    const/16 v0, 0xfa

    if-le p1, v0, :cond_4

    const/16 v0, 0x122

    if-ge p1, v0, :cond_4

    .line 979
    iget v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    if-eq v0, v1, :cond_0

    .line 981
    iput v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    .line 982
    iput-boolean v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceIsLandscapeRight:Z

    .line 983
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->flashOrientationLockIfNeeded()V

    goto :goto_0

    .line 986
    :cond_4
    const/16 v0, 0x46

    if-le p1, v0, :cond_0

    const/16 v0, 0x6e

    if-ge p1, v0, :cond_0

    .line 988
    iget v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    if-eq v0, v1, :cond_0

    .line 990
    iput v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    .line 991
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceIsLandscapeRight:Z

    .line 992
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->flashOrientationLockIfNeeded()V

    goto :goto_0
.end method

.method private handleOrientationLockClick()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1018
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    .line 1020
    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getOrientation()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1023
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/SettingsController;->setOrientation(I)V

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1025
    :cond_1
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceIsLandscapeRight:Z

    if-eqz v1, :cond_2

    .line 1027
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/reader/ReaderActivity;->showDialog(I)V

    .line 1028
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ReaderActivity"

    const-string v2, "OrientationLockOrientationUnsupported"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1030
    :cond_2
    iget v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    if-ne v1, v3, :cond_0

    .line 1033
    :cond_3
    iget v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/SettingsController;->setOrientation(I)V

    .line 1034
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1036
    iget v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 1045
    const-string v1, "unknown"

    .line 1048
    :goto_1
    const-string v2, "Orientation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "ReaderActivity"

    const-string v3, "OrientationLockSet"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    goto :goto_0

    .line 1039
    :pswitch_0
    const-string v1, "landscape"

    goto :goto_1

    .line 1042
    :pswitch_1
    const-string v1, "portrait"

    goto :goto_1

    .line 1036
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private jumpToUserLocation(Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 350
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivity$11;->$SwitchMap$com$amazon$kcp$reader$IAndroidReaderController$StartPage:[I

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 360
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setLocation(Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;)V

    .line 363
    :goto_0
    return-void

    .line 353
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->showDialog(I)V

    goto :goto_0

    .line 350
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private setDefaultLineSpacing()V
    .locals 3

    .prologue
    .line 562
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/models/IBookDisplay;->setLineSpacing(I)V

    .line 566
    :cond_0
    return-void
.end method

.method private setPreferenceFromSettingsController(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 520
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    .line 523
    const-string v1, "fontSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;

    move-result-object v1

    sget-object v2, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getFontSizeIndex()I

    move-result v0

    aget v0, v2, v0

    invoke-interface {v1, v0}, Lcom/amazon/kcp/reader/models/IBookDisplay;->setFontSize(I)V

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    const-string v1, "colorMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 530
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 532
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isChangingColor:Z

    .line 534
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->finish()V

    .line 535
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 536
    const-string v1, "colorChange"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 537
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 541
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->updateColorModeFromSettings()V

    goto :goto_0

    .line 544
    :cond_3
    const-string v1, "readerOrientation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 546
    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getOrientation()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->convertConfigurationToScreenOrientation(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 548
    :cond_4
    const-string v1, "screenBrightness"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/SettingsController;->applyScreenBrightness(Landroid/view/Window;)Z

    goto :goto_0
.end method

.method private showInstructionsDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 920
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->instructionsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 953
    :goto_0
    return-void

    .line 925
    :cond_0
    const v0, 0x108009b

    .line 926
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 928
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    .line 929
    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getColorMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorModeFactory;->getColorMode(ILandroid/content/res/Resources;)Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-result-object v0

    .line 930
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getDialogInfoIconResId()I

    move-result v0

    .line 933
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 934
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 935
    const v0, 0x7f0b007a

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 936
    const v0, 0x7f030036

    invoke-static {p0, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 937
    const v0, 0x7f0b0010

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 938
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->instructionsDialog:Landroid/app/Dialog;

    .line 939
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->instructionsDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/amazon/kcp/reader/ReaderActivity$10;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ReaderActivity$10;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 952
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->instructionsDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private updateSoftBackButtonUi(Lcom/amazon/kcp/reader/models/ColorMode;)V
    .locals 3
    .parameter "currentMode"

    .prologue
    .line 583
    const v2, 0x7f0c00ba

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/reader/ReaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 584
    .local v1, softBackButtonArrow:Landroid/widget/ImageView;
    const v2, 0x7f0c00bb

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/reader/ReaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 585
    .local v0, backButtonTextView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 588
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/models/ColorMode;->getTextColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 590
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 368
    invoke-super {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->finish()V

    .line 369
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "BookExit"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method protected getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    return-object v0
.end method

.method public getObjectSelectionController()Lcom/amazon/kcp/reader/ObjectSelectionController;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->objectSelectionController:Lcom/amazon/kcp/reader/ObjectSelectionController;

    return-object v0
.end method

.method public getObjectSelectionModel()Lcom/amazon/kcp/reader/ObjectSelectionModel;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    return-object v0
.end method

.method public getPage()Lcom/amazon/kcp/reader/pages/internal/CReaderPage;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    return-object v0
.end method

.method public getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return-object v0
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isImmersiveReadingMode()Z
    .locals 1

    .prologue
    .line 1090
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->immersiveReadingMode:Z

    return v0
.end method

.method protected isSearching()Z
    .locals 1

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isCurrentlySearching:Z

    return v0
.end method

.method protected abstract newReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1156
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/DocumentActivity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 1158
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onActionBarVisibilityChanged(Z)V

    .line 1162
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 769
    if-nez p1, :cond_2

    if-ne p2, v3, :cond_2

    .line 771
    const-string v0, "selectedAnnotationIndex"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 772
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getAnnotationsManager()Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->getAnnotationsList()[Lcom/amazon/kcp/reader/models/IAnnotation;

    move-result-object v1

    .line 773
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 775
    aget-object v0, v1, v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IAnnotation;->gotoLocation()V

    .line 778
    :cond_0
    const-string v0, "editNoteAtIndex"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 779
    if-ltz v0, :cond_1

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 782
    aget-object v1, v1, v0

    .line 783
    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IAnnotation;->gotoLocation()V

    .line 786
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/amazon/kcp/reader/EditNoteActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 787
    const-string v3, "note_text"

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IAnnotation;->getUserText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    const-string v1, "annotation_index"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 790
    invoke-virtual {p0, v2, v4}, Lcom/amazon/kcp/reader/ReaderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 823
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectNone()V

    .line 824
    return-void

    .line 793
    :cond_2
    if-ne p1, v4, :cond_1

    if-ne p2, v3, :cond_1

    .line 795
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getAnnotationsManager()Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    move-result-object v1

    .line 797
    const-string v0, "result_of_edit"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

    .line 798
    const-string v2, "annotation_index"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 799
    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->getAnnotationsList()[Lcom/amazon/kcp/reader/models/IAnnotation;

    move-result-object v3

    .line 800
    const-string v4, "note_text"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 801
    sget-object v5, Lcom/amazon/kcp/reader/ReaderActivity$11;->$SwitchMap$com$amazon$kcp$reader$EditNoteActivity$EditResult:[I

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 804
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getLastSelectedElement()Lcom/amazon/kcp/reader/models/IPageElement;

    move-result-object v0

    .line 807
    if-eqz v0, :cond_1

    .line 809
    invoke-interface {v1, v0, v4}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->addNote(Lcom/amazon/kcp/reader/models/IPageElement;Ljava/lang/String;)Lcom/amazon/kcp/reader/models/IAnnotation;

    goto :goto_0

    .line 814
    :pswitch_1
    if-ltz v2, :cond_1

    array-length v0, v3

    if-ge v2, v0, :cond_1

    .line 816
    aget-object v0, v3, v2

    invoke-interface {v1, v0, v4}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->editNote(Lcom/amazon/kcp/reader/models/IAnnotation;Ljava/lang/String;)Lcom/amazon/kcp/reader/models/IAnnotation;

    goto :goto_0

    .line 801
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 725
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/DocumentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 726
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-nez v0, :cond_0

    .line 759
    :goto_0
    return-void

    .line 734
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getOrientation()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceIsLandscapeRight:Z

    if-nez v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0, v1, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOrientationLockTemporarilyVisible(ZZ)V

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->instructionsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 744
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->instructionsDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 745
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->instructionsDialog:Landroid/app/Dialog;

    .line 746
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->showInstructionsDialog()V

    .line 751
    :cond_2
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivity$11;->$SwitchMap$com$amazon$kcp$reader$ObjectSelectionModel$SelectionState:[I

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectionState()Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 754
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectNone()V

    goto :goto_0

    .line 758
    :pswitch_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectNone()V

    goto :goto_0

    .line 751
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 189
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/DocumentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    .line 192
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    .line 193
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->immersiveReadingMode:Z

    .line 196
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/reader/ReaderController;->bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v2

    .line 197
    if-nez v2, :cond_0

    .line 199
    invoke-virtual {p0, v6}, Lcom/amazon/kcp/reader/ReaderActivity;->setResult(I)V

    .line 201
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->finish()V

    .line 293
    :goto_0
    return-void

    .line 205
    :cond_0
    new-instance v0, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;-><init>(Lcom/amazon/kcp/reader/models/IBookDocument;Lcom/amazon/kcp/application/IKindleApplicationController;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    .line 206
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->setDefaultLineSpacing()V

    .line 209
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->settingsChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/SettingsController;->registerSettingsChangedListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 212
    const-string v0, "readerOrientation"

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->setPreferenceFromSettingsController(Ljava/lang/String;)V

    .line 213
    const-string v0, "screenBrightness"

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->setPreferenceFromSettingsController(Ljava/lang/String;)V

    .line 216
    sget-boolean v0, Lcom/amazon/kcp/application/ReddingApplication;->HAS_ACTION_BAR:Z

    if-nez v0, :cond_4

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->requestWindowFeature(I)Z

    .line 226
    :goto_1
    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->setContentView(I)V

    .line 227
    const v0, 0x7f0c0010

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentContainer:Landroid/view/ViewGroup;

    .line 229
    new-instance v0, Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->getDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;

    move-result-object v1

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->getAnnotationsManager()Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->supportsAnnotations()Z

    move-result v4

    invoke-direct {v0, v1, v3, v4}, Lcom/amazon/kcp/reader/ObjectSelectionModel;-><init>(Lcom/amazon/kcp/reader/models/IBookDisplay;Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;Z)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    .line 232
    new-instance v0, Lcom/amazon/kcp/reader/ObjectSelectionController;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->getAnnotationsManager()Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/kcp/reader/ObjectSelectionController;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/ObjectSelectionModel;Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->objectSelectionController:Lcom/amazon/kcp/reader/ObjectSelectionController;

    .line 237
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->newReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 238
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 240
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setPage(Lcom/amazon/kcp/reader/pages/internal/CReaderPage;)V

    .line 241
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    new-instance v1, Lcom/amazon/kcp/reader/ReaderActivity$5;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ReaderActivity$5;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOrientationLockClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->isImmersiveReadingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {p0, v6}, Lcom/amazon/kcp/reader/ReaderActivity;->setSystemUiVisibility(Z)V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->setActionBarVisibilityListener(Lcom/amazon/kcp/redding/ReddingActivity$OnActionBarVisibilityChangedListener;)V

    .line 260
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 261
    const-string v1, "start_page"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    const-string v1, "start_page"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    .line 264
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->jumpToUserLocation(Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;)V

    .line 268
    :cond_2
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 269
    if-eqz v0, :cond_3

    .line 271
    new-instance v1, Lcom/amazon/kcp/reader/ReaderActivity$6;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ReaderActivity$6;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 282
    :cond_3
    new-instance v0, Lcom/amazon/kcp/reader/ReaderActivity$7;

    invoke-direct {v0, p0, p0}, Lcom/amazon/kcp/reader/ReaderActivity$7;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->orientationListener:Landroid/view/OrientationEventListener;

    goto/16 :goto_0

    .line 222
    :cond_4
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->requestWindowFeature(I)Z

    .line 223
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->registerColorModeDependentDrawables()V

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 685
    const/4 v0, 0x0

    .line 686
    packed-switch p1, :pswitch_data_0

    .line 693
    :goto_0
    return-object v0

    .line 689
    :pswitch_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->buildLocationDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 692
    :pswitch_1
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->buildLandscapeRightLockDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 686
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 450
    invoke-super {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->onDestroy()V

    .line 452
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getChangingConfigurations()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/reader/ReaderController;->unbindFromCurrentBook(Landroid/app/Activity;Z)V

    .line 454
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getHistoryManager()Lcom/amazon/kcp/application/HistoryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/HistoryManager;->hasBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isChangingColor:Z

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getHistoryManager()Lcom/amazon/kcp/application/HistoryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/HistoryManager;->pop()Z

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setPage(Lcom/amazon/kcp/reader/pages/internal/CReaderPage;)V

    .line 467
    :cond_1
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 468
    if-eqz v0, :cond_2

    .line 470
    invoke-virtual {v0, v2}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 477
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 485
    :cond_3
    iput-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentContainer:Landroid/view/ViewGroup;

    .line 486
    iput-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    .line 487
    iput-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    .line 488
    iput-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 489
    iput-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    .line 490
    iput-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->instructionsDialog:Landroid/app/Dialog;

    .line 491
    iput-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->orientationListener:Landroid/view/OrientationEventListener;

    .line 493
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/reader/ReaderActivity;->setActionBarVisibilityListener(Lcom/amazon/kcp/redding/ReddingActivity$OnActionBarVisibilityChangedListener;)V

    .line 496
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->settingsChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/SettingsController;->unregisterSettingsChangedListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 498
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ReaderActivity"

    const-string v2, "BookExitTimer"

    const-string v3, "BookExit"

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    return-void

    .line 452
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 638
    packed-switch p1, :pswitch_data_0

    .line 664
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/redding/DocumentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 642
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideAllViewOptionOverlays()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 644
    goto :goto_1

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectionState()Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    if-eq v0, v1, :cond_0

    .line 652
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->hasSelectionOnScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 654
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectNone()V

    move v0, v2

    .line 655
    goto :goto_1

    .line 659
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectNone()V

    goto :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 678
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectNone()V

    .line 679
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 426
    invoke-super {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->onPause()V

    .line 430
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->saveCurrentBookState()V

    .line 431
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->serializeAnnotations()V

    .line 441
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;->HOME:Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/SettingsController;->setLaunchTo(Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;)V

    .line 445
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 705
    packed-switch p1, :pswitch_data_0

    .line 715
    :goto_0
    return-void

    .line 709
    :pswitch_0
    const v0, 0x7f0c0090

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 712
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    .line 713
    invoke-interface {v0, v4}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getPageFirstPosition(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getLocationFromPosition(I)I

    move-result v1

    .line 714
    const v0, 0x7f0c008f

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b00e9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/amazon/kcp/reader/ReaderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 705
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 670
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideAllViewOptionOverlays()Z

    .line 671
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 408
    invoke-super {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->onResume()V

    .line 409
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;->READER:Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/application/SettingsController;->setLaunchTo(Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;)V

    .line 411
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onActivityResume()V

    .line 414
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v1

    .line 415
    .local v1, settings:Lcom/amazon/kcp/application/SettingsController;
    invoke-virtual {v1}, Lcom/amazon/kcp/application/SettingsController;->getReaderInstructionViewCount()I

    move-result v0

    .line 416
    .local v0, instructionViews:I
    if-nez v0, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->showInstructionsDialog()V

    .line 419
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/SettingsController;->setReaderInstructionViewCount(I)V

    .line 421
    :cond_0
    return-void
.end method

.method protected onSearchEnded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 626
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isCurrentlySearching:Z

    .line 627
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/amazon/android/util/UIUtils;->setStatusBarVisible(Landroid/view/Window;Z)V

    .line 628
    return-void
.end method

.method public onSearchRequested()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 609
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->isCurrentlySearching:Z

    .line 612
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideAllViewOptionOverlays()Z

    .line 617
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/amazon/android/util/UIUtils;->setStatusBarVisible(Landroid/view/Window;Z)V

    .line 620
    invoke-virtual {p0, v3, v2, v3, v2}, Lcom/amazon/kcp/reader/ReaderActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 621
    return v1
.end method

.method public abstract onSoftBackButtonClicked(Landroid/view/View;)V
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 375
    invoke-super {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->onStart()V

    .line 377
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getOrientation()I

    move-result v0

    .line 378
    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 382
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Orientation in onStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    iput-boolean v3, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceIsLandscapeRight:Z

    .line 384
    if-eq v0, v4, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 386
    :cond_1
    iput v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->deviceOrientation:I

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 391
    const/16 v0, 0x9

    invoke-virtual {p0, v4, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->setActionBarDisplayOptions(II)V

    .line 392
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/reader/ReaderActivity;->setActionBarVisibility(Z)V

    .line 393
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->orientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 402
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/redding/DocumentActivity;->onStop()V

    .line 403
    return-void
.end method

.method protected registerColorModeDependentDrawables()V
    .locals 2

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->registerTextColorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 601
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->registerTextColorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 602
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->registerTextColorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 603
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->registerTextColorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    return-void
.end method

.method public setSystemUiVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 1102
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    move v0, v1

    .line 1105
    .local v0, visibility:I
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1107
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 1109
    :cond_0
    return-void

    .line 1102
    .end local v0           #visibility:I
    :cond_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method protected setTitleVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1120
    return-void
.end method

.method protected setupSearchView(Landroid/view/Menu;)V
    .locals 3
    .parameter

    .prologue
    .line 1138
    sget-boolean v0, Lcom/amazon/kcp/application/ReddingApplication;->HAS_SEARCH_VIEW:Z

    if-eqz v0, :cond_0

    .line 1140
    new-instance v1, Lcom/amazon/android/widget/SearchViewWrapper;

    const v0, 0x7f0c00f8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazon/android/widget/SearchViewWrapper;-><init>(Landroid/view/MenuItem;)V

    .line 1141
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1143
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amazon/android/widget/SearchViewWrapper;->setSearchableInfo(Landroid/app/SearchManager;Landroid/content/ComponentName;)V

    .line 1144
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/amazon/android/widget/SearchViewWrapper;->setIconifiedByDefault(Z)V

    .line 1145
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->onQueryTextListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;

    invoke-virtual {v1, v0}, Lcom/amazon/android/widget/SearchViewWrapper;->setOnQueryTextListener(Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;)V

    .line 1146
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->onFocusChangeListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;

    invoke-virtual {v1, v0}, Lcom/amazon/android/widget/SearchViewWrapper;->setOnQueryTextFocusChangeListener(Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;)V

    .line 1147
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity;->onCloseListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;

    invoke-virtual {v1, v0}, Lcom/amazon/android/widget/SearchViewWrapper;->setOnCloseListener(Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;)V

    .line 1149
    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity;->searchView:Lcom/amazon/android/widget/SearchViewWrapper;

    .line 1151
    :cond_0
    return-void
.end method

.method public abstract startSearch(Ljava/lang/String;)V
.end method

.method public abstract supportsAnnotations()Z
.end method

.method public abstract supportsBookmarks()Z
.end method

.method public updateColorModeFromSettings()V
    .locals 4

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v1

    .line 575
    .local v1, settings:Lcom/amazon/kcp/application/SettingsController;
    invoke-virtual {v1}, Lcom/amazon/kcp/application/SettingsController;->getColorMode()I

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kcp/reader/ui/color/AndroidColorModeFactory;->getColorMode(ILandroid/content/res/Resources;)Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-result-object v0

    .line 576
    .local v0, currentMode:Lcom/amazon/kcp/reader/models/ColorMode;
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->getDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amazon/kcp/reader/models/IBookDisplay;->setColorMode(Lcom/amazon/kcp/reader/models/ColorMode;)V

    .line 577
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->updateSoftBackButtonUi(Lcom/amazon/kcp/reader/models/ColorMode;)V

    .line 578
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->updateTextColorDrawables(Lcom/amazon/kcp/reader/models/ColorMode;)V

    .line 579
    return-void
.end method

.method public verifyAndDeleteAnnotation(I)V
    .locals 4
    .parameter

    .prologue
    .line 828
    const v0, 0x7f0b0102

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 829
    const v1, 0x7f0b0103

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 831
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 834
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 835
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 836
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 837
    const v0, 0x7f0b0009

    new-instance v1, Lcom/amazon/kcp/reader/ReaderActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity$8;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;I)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 857
    const v0, 0x7f0b000d

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 859
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 860
    return-void
.end method
