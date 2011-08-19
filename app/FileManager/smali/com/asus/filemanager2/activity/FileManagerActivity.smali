.class public Lcom/asus/filemanager2/activity/FileManagerActivity;
.super Landroid/app/Activity;
.source "FileManagerActivity.java"

# interfaces
.implements Lcom/asus/filemanager/dialog/IDialogCallBack;
.implements Lcom/asus/filemanager/toolbar/IPathListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/filemanager2/activity/FileManagerActivity$ProgressCancelListener;,
        Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;
    }
.end annotation


# static fields
.field private static sDeleteProgress:Landroid/app/ProgressDialog;

.field private static sPasteProgress:Landroid/app/ProgressDialog;


# instance fields
.field private mEditMode:Landroid/view/ActionMode;

.field private mEditPool:Lcom/asus/filemanager/edit/EditPool;

.field private mExistPair:Lcom/asus/filemanager/edit/ExistPair;

.field private mFileArray:[Lcom/asus/filemanager/main/VFile;

.field private mFileListAdapter:Lcom/asus/filemanager2/adapter/FileListAdapter;

.field private mFileListView:Landroid/widget/ListView;

.field private mHandler:Landroid/os/Handler;

.field private mIndicatorFile:Lcom/asus/filemanager/main/VFile;

.field private mInflater:Landroid/view/LayoutInflater;

.field public mIsSelector:Z

.field private mLastEditModeCallback:Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;

.field private mNonConfigurationInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionFile:Lcom/asus/filemanager/main/VFile;

.field private mPathIndicator:Lcom/asus/filemanager/toolbar/PathIndicator;

.field private mProgressCancelListener:Lcom/asus/filemanager2/activity/FileManagerActivity$ProgressCancelListener;

.field private mScanFileRunnable:Lcom/asus/filemanager/adapter/ScanFile;

.field private mSharePrefence:Landroid/content/SharedPreferences;

.field private mShowHidden:Z

.field private mSortUtil:Lcom/asus/filemanager/sort/SortUtil;

.field private mThumbnailDB:Lcom/asus/filemanager/adapter/ThumbnailDB;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 117
    new-instance v0, Lcom/asus/filemanager/sort/SortUtil;

    invoke-direct {v0, v1}, Lcom/asus/filemanager/sort/SortUtil;-><init>(I)V

    iput-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mSortUtil:Lcom/asus/filemanager/sort/SortUtil;

    .line 127
    iput-boolean v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mIsSelector:Z

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mNonConfigurationInstances:Ljava/util/HashMap;

    .line 132
    new-instance v0, Lcom/asus/filemanager/edit/EditPool;

    invoke-direct {v0}, Lcom/asus/filemanager/edit/EditPool;-><init>()V

    iput-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mEditPool:Lcom/asus/filemanager/edit/EditPool;

    .line 146
    new-instance v0, Lcom/asus/filemanager2/activity/FileManagerActivity$1;

    invoke-direct {v0, p0}, Lcom/asus/filemanager2/activity/FileManagerActivity$1;-><init>(Lcom/asus/filemanager2/activity/FileManagerActivity;)V

    iput-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mHandler:Landroid/os/Handler;

    .line 956
    return-void
.end method

.method static synthetic access$000()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/asus/filemanager2/activity/FileManagerActivity;->sPasteProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    sput-object p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->sPasteProgress:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/asus/filemanager2/activity/FileManagerActivity;)Lcom/asus/filemanager/main/VFile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mIndicatorFile:Lcom/asus/filemanager/main/VFile;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/asus/filemanager2/activity/FileManagerActivity;Lcom/asus/filemanager/main/VFile;)Lcom/asus/filemanager/main/VFile;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mOptionFile:Lcom/asus/filemanager/main/VFile;

    return-object p1
.end method

.method static synthetic access$102(Lcom/asus/filemanager2/activity/FileManagerActivity;Lcom/asus/filemanager/main/VFile;)Lcom/asus/filemanager/main/VFile;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mIndicatorFile:Lcom/asus/filemanager/main/VFile;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/asus/filemanager2/activity/FileManagerActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mEditMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$200(Lcom/asus/filemanager2/activity/FileManagerActivity;Lcom/asus/filemanager/main/VFile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->updatePathIndicator(Lcom/asus/filemanager/main/VFile;)V

    return-void
.end method

.method static synthetic access$300(Lcom/asus/filemanager2/activity/FileManagerActivity;)[Lcom/asus/filemanager/main/VFile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    return-object v0
.end method

.method static synthetic access$302(Lcom/asus/filemanager2/activity/FileManagerActivity;[Lcom/asus/filemanager/main/VFile;)[Lcom/asus/filemanager/main/VFile;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    return-object p1
.end method

.method static synthetic access$400(Lcom/asus/filemanager2/activity/FileManagerActivity;)Lcom/asus/filemanager2/adapter/FileListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mFileListAdapter:Lcom/asus/filemanager2/adapter/FileListAdapter;

    return-object v0
.end method

.method static synthetic access$500()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/asus/filemanager2/activity/FileManagerActivity;->sDeleteProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$502(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    sput-object p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->sDeleteProgress:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$600(Lcom/asus/filemanager2/activity/FileManagerActivity;)Lcom/asus/filemanager/edit/EditPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mEditPool:Lcom/asus/filemanager/edit/EditPool;

    return-object v0
.end method

.method static synthetic access$702(Lcom/asus/filemanager2/activity/FileManagerActivity;Lcom/asus/filemanager/edit/ExistPair;)Lcom/asus/filemanager/edit/ExistPair;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mExistPair:Lcom/asus/filemanager/edit/ExistPair;

    return-object p1
.end method

.method static synthetic access$800(Lcom/asus/filemanager2/activity/FileManagerActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->setForcePath(Ljava/lang/String;)V

    return-void
.end method

.method private finishEditMode()V
    .locals 2

    .prologue
    .line 839
    invoke-direct {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mLastEditModeCallback:Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;->mClosedByUser:Z

    .line 841
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mEditMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 843
    :cond_0
    return-void
.end method

.method private initFileList([Lcom/asus/filemanager/main/VFile;)V
    .locals 2
    .parameter "filearray"

    .prologue
    .line 399
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mFileListView:Landroid/widget/ListView;

    .line 400
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mFileListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 401
    new-instance v0, Lcom/asus/filemanager2/adapter/FileListAdapter;

    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mThumbnailDB:Lcom/asus/filemanager/adapter/ThumbnailDB;

    invoke-direct {v0, p0, p1, v1}, Lcom/asus/filemanager2/adapter/FileListAdapter;-><init>(Lcom/asus/filemanager2/activity/FileManagerActivity;[Lcom/asus/filemanager/main/VFile;Lcom/asus/filemanager/adapter/ThumbnailDB;)V

    iput-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mFileListAdapter:Lcom/asus/filemanager2/adapter/FileListAdapter;

    .line 402
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mFileListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mFileListAdapter:Lcom/asus/filemanager2/adapter/FileListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 404
    return-void
.end method

.method private initNormalModeActionBar()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 408
    invoke-virtual {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 409
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f02

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 414
    :goto_0
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 415
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 417
    const v2, 0x7f030006

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 418
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 419
    .local v1, spinner:Landroid/widget/Spinner;
    new-instance v2, Lcom/asus/filemanager2/adapter/FilterAdapter;

    invoke-direct {v2, p0}, Lcom/asus/filemanager2/adapter/FilterAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 421
    return-void

    .line 412
    .end local v1           #spinner:Landroid/widget/Spinner;
    :cond_0
    invoke-virtual {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private isInEditMode()Z
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mEditMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isItemsSelected()Z
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mFileListAdapter:Lcom/asus/filemanager2/adapter/FileListAdapter;

    invoke-virtual {v0}, Lcom/asus/filemanager2/adapter/FileListAdapter;->isItemsSelected()Z

    move-result v0

    return v0
.end method

.method private static isRootFolder(Lcom/asus/filemanager/main/VFile;)Z
    .locals 2
    .parameter "f"

    .prologue
    .line 716
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/asus/filemanager/main/VFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isRootOrMountDir(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 99
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getEpadExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setForcePath(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 974
    if-eqz p1, :cond_0

    .line 975
    const-string v0, "FileManagerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetForcePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    new-instance v0, Lcom/asus/filemanager/main/VFile;

    invoke-direct {v0, p1}, Lcom/asus/filemanager/main/VFile;-><init>(Ljava/lang/String;)V

    .line 977
    invoke-virtual {v0}, Lcom/asus/filemanager/main/VFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/asus/filemanager/main/VFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 978
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->StartScanFile(Lcom/asus/filemanager/main/VFile;I)V

    .line 981
    :cond_0
    return-void
.end method

.method private startPaste(Ljava/io/File;Z)V
    .locals 4
    .parameter "folder"
    .parameter "triggerByLongpress"

    .prologue
    .line 940
    if-eqz p1, :cond_0

    .line 941
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->showDialog(I)V

    .line 944
    invoke-static {}, Lcom/asus/filemanager/edit/EditorAsyncHelper;->copyFileTerminate()V

    .line 950
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mEditPool:Lcom/asus/filemanager/edit/EditPool;

    invoke-virtual {v0}, Lcom/asus/filemanager/edit/EditPool;->GetFiles()[Lcom/asus/filemanager/main/VFile;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mEditPool:Lcom/asus/filemanager/edit/EditPool;

    invoke-virtual {v3}, Lcom/asus/filemanager/edit/EditPool;->GetExtraBoolean()Z

    move-result v3

    invoke-static {v0, v1, v2, v3, p2}, Lcom/asus/filemanager/edit/EditorAsyncHelper;->copyFile([Lcom/asus/filemanager/main/VFile;Ljava/lang/String;Landroid/os/Handler;ZZ)V

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mEditPool:Lcom/asus/filemanager/edit/EditPool;

    invoke-virtual {v0}, Lcom/asus/filemanager/edit/EditPool;->Clear()V

    .line 954
    return-void
.end method

.method private updateEditModeView()V
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mEditMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 832
    return-void
.end method

.method private updatePathIndicator(Lcom/asus/filemanager/main/VFile;)V
    .locals 4
    .parameter "currentFile"

    .prologue
    .line 690
    iget-object v3, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mPathIndicator:Lcom/asus/filemanager/toolbar/PathIndicator;

    invoke-virtual {v3}, Lcom/asus/filemanager/toolbar/PathIndicator;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 691
    .local v2, lastPath:Ljava/lang/String;
    iget-object v3, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mPathIndicator:Lcom/asus/filemanager/toolbar/PathIndicator;

    invoke-virtual {v3, p1}, Lcom/asus/filemanager/toolbar/PathIndicator;->ShowPath(Ljava/io/File;)Z

    move-result v0

    .line 693
    .local v0, changed:Z
    if-eqz v0, :cond_1

    .line 694
    iget-object v3, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mPathIndicator:Lcom/asus/filemanager/toolbar/PathIndicator;

    invoke-virtual {v3}, Lcom/asus/filemanager/toolbar/PathIndicator;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, curPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/asus/filemanager2/activity/FileManagerActivity;->isRootOrMountDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->isRootOrMountDir(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 698
    :cond_0
    invoke-virtual {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->invalidateOptionsMenu()V

    .line 701
    .end local v1           #curPath:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public OpenFile(Lcom/asus/filemanager/main/VFile;)V
    .locals 10
    .parameter

    .prologue
    const v9, 0x7f050006

    const/16 v3, 0x60

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 876
    if-nez p1, :cond_1

    .line 936
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    iget-boolean v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mIsSelector:Z

    if-nez v0, :cond_6

    .line 880
    invoke-virtual {p1}, Lcom/asus/filemanager/main/VFile;->getExtName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 881
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 887
    invoke-virtual {p1}, Lcom/asus/filemanager/main/VFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 888
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 890
    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    if-nez v1, :cond_4

    .line 891
    :cond_3
    invoke-static {v9, v7}, Lcom/asus/filemanager/dialog/ToastMsg;->Show(II)V

    goto :goto_0

    .line 895
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 897
    if-nez v7, :cond_5

    if-eqz v2, :cond_5

    .line 899
    :try_start_0
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 900
    invoke-virtual {p0, v3}, Lcom/asus/filemanager2/activity/FileManagerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v8

    .line 908
    :goto_1
    if-nez v2, :cond_8

    if-eqz v0, :cond_8

    .line 910
    :try_start_1
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 911
    invoke-virtual {p0, v3}, Lcom/asus/filemanager2/activity/FileManagerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v8

    .line 919
    :goto_2
    if-nez v0, :cond_0

    .line 920
    invoke-static {v9, v7}, Lcom/asus/filemanager/dialog/ToastMsg;->Show(II)V

    goto :goto_0

    .line 902
    :catch_0
    move-exception v4

    .line 904
    const-string v4, "FileManagerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaFile_mime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " can\'t be handled"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v2, v7

    goto :goto_1

    .line 913
    :catch_1
    move-exception v1

    .line 915
    const-string v1, "FileManagerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimeUtils_mime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " can\'t be handled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    goto :goto_2

    .line 923
    :cond_6
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 924
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 925
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 928
    invoke-virtual {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "return-data"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "image"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 929
    invoke-virtual {p1}, Lcom/asus/filemanager/main/VFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v3, v7}, Lcom/asus/filemanager/adapter/ItemIcon;->loadResizedBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 930
    if-eqz v0, :cond_7

    .line 931
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 933
    :cond_7
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->setResult(ILandroid/content/Intent;)V

    .line 934
    invoke-virtual {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->finish()V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_2
.end method

.method public StartScanFile(Lcom/asus/filemanager/main/VFile;I)V
    .locals 7
    .parameter "file"
    .parameter "type"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mScanFileRunnable:Lcom/asus/filemanager/adapter/ScanFile;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mScanFileRunnable:Lcom/asus/filemanager/adapter/ScanFile;

    invoke-virtual {v0}, Lcom/asus/filemanager/adapter/ScanFile;->terminate()V

    .line 857
    :cond_0
    new-instance v0, Lcom/asus/filemanager/adapter/ScanFile;

    iget-boolean v3, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mShowHidden:Z

    iget-object v4, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mSortUtil:Lcom/asus/filemanager/sort/SortUtil;

    iget-object v5, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    iget-object v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mHandler:Landroid/os/Handler;

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/asus/filemanager/adapter/ScanFile;-><init>(Lcom/asus/filemanager/main/VFile;IZLcom/asus/filemanager/sort/SortUtil;[Lcom/asus/filemanager/main/VFile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mScanFileRunnable:Lcom/asus/filemanager/adapter/ScanFile;

    .line 858
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mScanFileRunnable:Lcom/asus/filemanager/adapter/ScanFile;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 859
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mIndicatorFile:Lcom/asus/filemanager/main/VFile;

    invoke-static {v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->isRootFolder(Lcom/asus/filemanager/main/VFile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 396
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->onPathBack()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 259
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->setContentView(I)V

    .line 261
    invoke-virtual {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mIsSelector:Z

    .line 265
    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 266
    const-string v0, "MyPrefsFile"

    invoke-virtual {p0, v0, v2}, Lcom/asus/filemanager2/activity/FileManagerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mSharePrefence:Landroid/content/SharedPreferences;

    .line 267
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mSharePrefence:Landroid/content/SharedPreferences;

    const-string v1, "mShowHidden"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mShowHidden:Z

    .line 269
    invoke-direct {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->initNormalModeActionBar()V

    .line 271
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/asus/filemanager/main/ReceiveEvent;->Init(Landroid/os/Handler;)V

    .line 273
    invoke-static {p0}, Lcom/asus/filemanager/adapter/ThumbnailDB;->GetDB(Landroid/content/Context;)Lcom/asus/filemanager/adapter/ThumbnailDB;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mThumbnailDB:Lcom/asus/filemanager/adapter/ThumbnailDB;

    .line 275
    new-instance v1, Lcom/asus/filemanager/toolbar/PathIndicator;

    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v0, p0, v2}, Lcom/asus/filemanager/toolbar/PathIndicator;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/asus/filemanager/toolbar/IPathListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mPathIndicator:Lcom/asus/filemanager/toolbar/PathIndicator;

    .line 278
    invoke-virtual {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->onRestoreNonConfigurationInstance()V

    .line 287
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 496
    packed-switch p1, :pswitch_data_0

    move-object v3, v6

    .line 561
    :goto_0
    return-object v3

    .line 498
    :pswitch_0
    new-instance v3, Lcom/asus/filemanager/dialog/DialogDelete;

    invoke-direct {v3, p0, p1, p0}, Lcom/asus/filemanager/dialog/DialogDelete;-><init>(Landroid/content/Context;ILcom/asus/filemanager/dialog/IDialogCallBack;)V

    goto :goto_0

    .line 500
    :pswitch_1
    new-instance v3, Lcom/asus/filemanager/dialog/DialogRename;

    invoke-direct {v3, p0, p1, p0}, Lcom/asus/filemanager/dialog/DialogRename;-><init>(Landroid/content/Context;ILcom/asus/filemanager/dialog/IDialogCallBack;)V

    goto :goto_0

    .line 502
    :pswitch_2
    new-instance v3, Lcom/asus/filemanager/dialog/DialogNewFolder;

    invoke-direct {v3, p0, p1, p0}, Lcom/asus/filemanager/dialog/DialogNewFolder;-><init>(Landroid/content/Context;ILcom/asus/filemanager/dialog/IDialogCallBack;)V

    goto :goto_0

    .line 504
    :pswitch_3
    sget-object v3, Lcom/asus/filemanager2/activity/FileManagerActivity;->sDeleteProgress:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/asus/filemanager2/activity/FileManagerActivity;->sDeleteProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/asus/filemanager2/activity/FileManagerActivity;->sDeleteProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/asus/filemanager2/activity/FileManagerActivity;->sDeleteProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v3

    if-eq v3, p0, :cond_0

    .line 508
    const-string v3, "FileManagerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "force to close the last dialog this="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",own="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/asus/filemanager2/activity/FileManagerActivity;->sDeleteProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    sget-object v3, Lcom/asus/filemanager2/activity/FileManagerActivity;->sDeleteProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 511
    sput-object v6, Lcom/asus/filemanager2/activity/FileManagerActivity;->sDeleteProgress:Landroid/app/ProgressDialog;

    .line 513
    :cond_0
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/asus/filemanager2/activity/FileManagerActivity;->sDeleteProgress:Landroid/app/ProgressDialog;

    .line 514
    sget-object v3, Lcom/asus/filemanager2/activity/FileManagerActivity;->sDeleteProgress:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 515
    sget-object v3, Lcom/asus/filemanager2/activity/FileManagerActivity;->sDeleteProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 516
    sget-object v3, Lcom/asus/filemanager2/activity/FileManagerActivity;->sDeleteProgress:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 517
    sget-object v3, Lcom/asus/filemanager2/activity/FileManagerActivity;->sDeleteProgress:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 519
    :pswitch_4
    sget-object v3, Lcom/asus/filemanager2/activity/FileManagerActivity;->sPasteProgress:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/asus/filemanager2/activity/FileManagerActivity;->sPasteProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/asus/filemanager2/activity/FileManagerActivity;->sPasteProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/asus/filemanager2/activity/FileManagerActivity;->sPasteProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v3

    if-eq v3, p0, :cond_1

    .line 523
    const-string v3, "FileManagerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "force to close the last dialog this="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",own="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/asus/filemanager2/activity/FileManagerActivity;->sPasteProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    sget-object v3, Lcom/asus/filemanager2/activity/FileManagerActivity;->sPasteProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 526
    sput-object v6, Lcom/asus/filemanager2/activity/FileManagerActivity;->sPasteProgress:Landroid/app/ProgressDialog;

    .line 529
    :cond_1
    iget-object v3, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mProgressCancelListener:Lcom/asus/filemanager2/activity/FileManagerActivity$ProgressCancelListener;

    if-nez v3, :cond_2

    .line 530
    new-instance v3, Lcom/asus/filemanager2/activity/FileManagerActivity$ProgressCancelListener;

    invoke-direct {v3, p0, v6}, Lcom/asus/filemanager2/activity/FileManagerActivity$ProgressCancelListener;-><init>(Lcom/asus/filemanager2/activity/FileManagerActivity;Lcom/asus/filemanager2/activity/FileManagerActivity$1;)V

    iput-object v3, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mProgressCancelListener:Lcom/asus/filemanager2/activity/FileManagerActivity$ProgressCancelListener;

    .line 532
    :cond_2
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/asus/filemanager2/activity/FileManagerActivity;->sPasteProgress:Landroid/app/ProgressDialog;

    .line 533
    sget-object v3, Lcom/asus/filemanager2/activity/FileManagerActivity;->sPasteProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 534
    sget-object v3, Lcom/asus/filemanager2/activity/FileManagerActivity;->sPasteProgress:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mProgressCancelListener:Lcom/asus/filemanager2/activity/FileManagerActivity$ProgressCancelListener;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 535
    sget-object v3, Lcom/asus/filemanager2/activity/FileManagerActivity;->sPasteProgress:Landroid/app/ProgressDialog;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 536
    sget-object v3, Lcom/asus/filemanager2/activity/FileManagerActivity;->sPasteProgress:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 537
    sget-object v3, Lcom/asus/filemanager2/activity/FileManagerActivity;->sPasteProgress:Landroid/app/ProgressDialog;

    const/4 v4, -0x2

    invoke-virtual {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mProgressCancelListener:Lcom/asus/filemanager2/activity/FileManagerActivity$ProgressCancelListener;

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 538
    sget-object v3, Lcom/asus/filemanager2/activity/FileManagerActivity;->sPasteProgress:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 540
    :pswitch_5
    new-instance v3, Lcom/asus/filemanager/dialog/DialogExist;

    invoke-direct {v3, p0, p1, p0}, Lcom/asus/filemanager/dialog/DialogExist;-><init>(Landroid/content/Context;ILcom/asus/filemanager/dialog/IDialogCallBack;)V

    goto/16 :goto_0

    .line 542
    :pswitch_6
    new-instance v3, Lcom/asus/filemanager/dialog/DialogInfo;

    invoke-direct {v3, p0, p1, p0}, Lcom/asus/filemanager/dialog/DialogInfo;-><init>(Landroid/content/Context;ILcom/asus/filemanager/dialog/IDialogCallBack;)V

    goto/16 :goto_0

    .line 544
    :pswitch_7
    iget-object v3, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v4, 0x7f03

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 546
    .local v0, about_view:Landroid/view/View;
    const v3, 0x7f050044

    invoke-virtual {p0, v3}, Lcom/asus/filemanager2/activity/FileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, versionText:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.asus.filemanager"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 550
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 553
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_1
    const/high16 v3, 0x7f08

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    new-instance v3, Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/high16 v4, 0x7f05

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f050001

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 551
    :catch_0
    move-exception v3

    goto :goto_1

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x7f080036

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 425
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 426
    invoke-virtual {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 427
    .local v0, inflater:Landroid/view/MenuInflater;
    const v2, 0x7f070002

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 428
    const v2, 0x7f080034

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mEditPool:Lcom/asus/filemanager/edit/EditPool;

    invoke-virtual {v3}, Lcom/asus/filemanager/edit/EditPool;->GetSize()I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    :goto_0
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 429
    const v2, 0x7f080037

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 430
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 431
    iget-boolean v2, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mShowHidden:Z

    if-nez v2, :cond_3

    move v2, v5

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 433
    iget-boolean v2, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mIsSelector:Z

    if-eqz v2, :cond_0

    .line 434
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 435
    const v2, 0x7f080030

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 438
    :cond_0
    iget-object v2, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mPathIndicator:Lcom/asus/filemanager/toolbar/PathIndicator;

    invoke-virtual {v2}, Lcom/asus/filemanager/toolbar/PathIndicator;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/asus/filemanager2/activity/FileManagerActivity;->isRootOrMountDir(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 440
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 443
    :cond_1
    return v5

    .end local v1           #item:Landroid/view/MenuItem;
    :cond_2
    move v3, v4

    .line 428
    goto :goto_0

    .restart local v1       #item:Landroid/view/MenuItem;
    :cond_3
    move v2, v4

    .line 431
    goto :goto_1
.end method

.method public onDeselectAll()V
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mFileListAdapter:Lcom/asus/filemanager2/adapter/FileListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mFileListAdapter:Lcom/asus/filemanager2/adapter/FileListAdapter;

    invoke-virtual {v0}, Lcom/asus/filemanager2/adapter/FileListAdapter;->isItemsSelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mFileListAdapter:Lcom/asus/filemanager2/adapter/FileListAdapter;

    invoke-virtual {v0}, Lcom/asus/filemanager2/adapter/FileListAdapter;->clearItemsSelected()V

    .line 824
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mFileListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 825
    invoke-direct {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    invoke-direct {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->finishEditMode()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 380
    const-string v0, "FileManagerActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mThumbnailDB:Lcom/asus/filemanager/adapter/ThumbnailDB;

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mThumbnailDB:Lcom/asus/filemanager/adapter/ThumbnailDB;

    invoke-virtual {v0}, Lcom/asus/filemanager/adapter/ThumbnailDB;->GetDBSize()J

    move-result-wide v0

    const-wide/32 v2, 0xa00000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mThumbnailDB:Lcom/asus/filemanager/adapter/ThumbnailDB;

    invoke-virtual {v0}, Lcom/asus/filemanager/adapter/ThumbnailDB;->deleteAll()V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mThumbnailDB:Lcom/asus/filemanager/adapter/ThumbnailDB;

    invoke-virtual {v0}, Lcom/asus/filemanager/adapter/ThumbnailDB;->closeDB()V

    .line 386
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 387
    return-void
.end method

.method public onFinishDialog(ILandroid/os/Bundle;)V
    .locals 4
    .parameter "id"
    .parameter "val"

    .prologue
    const/4 v3, 0x0

    .line 593
    packed-switch p1, :pswitch_data_0

    .line 631
    :goto_0
    :pswitch_0
    return-void

    .line 595
    :pswitch_1
    const-string v1, "RETURN_SUCCESS"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->showDialog(I)V

    .line 598
    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mEditPool:Lcom/asus/filemanager/edit/EditPool;

    invoke-virtual {v1}, Lcom/asus/filemanager/edit/EditPool;->GetFiles()[Lcom/asus/filemanager/main/VFile;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/asus/filemanager/edit/EditorAsyncHelper;->deletFile([Ljava/io/File;Landroid/os/Handler;)V

    .line 600
    :cond_0
    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mEditPool:Lcom/asus/filemanager/edit/EditPool;

    invoke-virtual {v1}, Lcom/asus/filemanager/edit/EditPool;->Clear()V

    goto :goto_0

    .line 603
    :pswitch_2
    iput-object v3, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mOptionFile:Lcom/asus/filemanager/main/VFile;

    goto :goto_0

    .line 612
    :pswitch_3
    const-string v1, "RETURN_SUCCESS"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 614
    const-string v1, "RETURN_BOOLEAN_ARRAY"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    .line 616
    .local v0, ba:[Z
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    const/4 v2, 0x1

    aget-boolean v2, v0, v2

    invoke-static {v1, v2}, Lcom/asus/filemanager/edit/EditorAsyncHelper;->setCopyFileOverWrite(ZZ)V

    .line 623
    .end local v0           #ba:[Z
    :goto_1
    iput-object v3, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mExistPair:Lcom/asus/filemanager/edit/ExistPair;

    .line 624
    const-string v1, "FileManagerActivity"

    const-string v2, "Copy Pause Unlock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-static {}, Lcom/asus/filemanager/main/Mutex;->Unlock()V

    goto :goto_0

    .line 621
    :cond_1
    invoke-static {}, Lcom/asus/filemanager/edit/EditorAsyncHelper;->copyFileTerminate()V

    goto :goto_1

    .line 628
    :pswitch_4
    iput-object v3, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mOptionFile:Lcom/asus/filemanager/main/VFile;

    goto :goto_0

    .line 593
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 362
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 363
    const-string v1, "FileManagerActivity"

    const-string v2, "onNewIntent()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v1, "path"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 366
    new-instance v1, Lcom/asus/filemanager/main/VFile;

    invoke-direct {v1, v0}, Lcom/asus/filemanager/main/VFile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mIndicatorFile:Lcom/asus/filemanager/main/VFile;

    .line 367
    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mIndicatorFile:Lcom/asus/filemanager/main/VFile;

    invoke-direct {p0, v1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->updatePathIndicator(Lcom/asus/filemanager/main/VFile;)V

    .line 368
    invoke-direct {p0, v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->setForcePath(Ljava/lang/String;)V

    .line 370
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 449
    const-string v2, "FileManagerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOptionsItemSelected item:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, consume:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 490
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v2, v6

    :goto_1
    return v2

    .line 453
    :sswitch_0
    const-string v2, "FileManagerActivity"

    const-string v3, "Select App Icon"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v2, "/sdcard"

    invoke-direct {p0, v2}, Lcom/asus/filemanager2/activity/FileManagerActivity;->setForcePath(Ljava/lang/String;)V

    .line 455
    const/4 v0, 0x1

    .line 456
    goto :goto_0

    .line 458
    :sswitch_1
    const-string v2, "FileManagerActivity"

    const-string v3, "Select all"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v2, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mFileListAdapter:Lcom/asus/filemanager2/adapter/FileListAdapter;

    invoke-virtual {v2}, Lcom/asus/filemanager2/adapter/FileListAdapter;->setSelectAll()V

    .line 460
    invoke-virtual {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->updateEditMode()V

    .line 461
    const/4 v0, 0x1

    .line 462
    goto :goto_0

    .line 465
    :sswitch_2
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/asus/filemanager2/activity/FileManagerActivity;->showDialog(I)V

    .line 466
    const/4 v0, 0x1

    .line 467
    goto :goto_0

    .line 469
    :sswitch_3
    iget-object v2, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mIndicatorFile:Lcom/asus/filemanager/main/VFile;

    invoke-direct {p0, v2, v5}, Lcom/asus/filemanager2/activity/FileManagerActivity;->startPaste(Ljava/io/File;Z)V

    .line 470
    iget-object v2, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mEditPool:Lcom/asus/filemanager/edit/EditPool;

    invoke-virtual {v2}, Lcom/asus/filemanager/edit/EditPool;->Clear()V

    .line 471
    const/4 v0, 0x1

    .line 472
    invoke-virtual {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 475
    :sswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v6

    :goto_2
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 476
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v6

    :goto_3
    iput-boolean v2, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mShowHidden:Z

    .line 477
    iget-object v2, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mSharePrefence:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 478
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "mShowHidden"

    iget-boolean v3, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mShowHidden:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 479
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 480
    iget-object v2, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mIndicatorFile:Lcom/asus/filemanager/main/VFile;

    invoke-virtual {p0, v2, v6}, Lcom/asus/filemanager2/activity/FileManagerActivity;->StartScanFile(Lcom/asus/filemanager/main/VFile;I)V

    .line 481
    const/4 v0, 0x1

    .line 482
    goto :goto_0

    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    move v2, v5

    .line 475
    goto :goto_2

    :cond_2
    move v2, v5

    .line 476
    goto :goto_3

    .line 484
    :sswitch_5
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/asus/filemanager2/activity/FileManagerActivity;->showDialog(I)V

    .line 485
    const/4 v0, 0x1

    .line 486
    goto :goto_0

    :cond_3
    move v2, v5

    .line 490
    goto :goto_1

    .line 451
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f080030 -> :sswitch_1
        0x7f080034 -> :sswitch_3
        0x7f080036 -> :sswitch_2
        0x7f080037 -> :sswitch_4
        0x7f080038 -> :sswitch_5
    .end sparse-switch
.end method

.method public onPathBack()V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mIndicatorFile:Lcom/asus/filemanager/main/VFile;

    invoke-static {v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->isRootFolder(Lcom/asus/filemanager/main/VFile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    :goto_0
    return-void

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mIndicatorFile:Lcom/asus/filemanager/main/VFile;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->StartScanFile(Lcom/asus/filemanager/main/VFile;I)V

    goto :goto_0
.end method

.method public onPathClicked(Ljava/io/File;)V
    .locals 2
    .parameter "folder"

    .prologue
    .line 712
    new-instance v0, Lcom/asus/filemanager/main/VFile;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/asus/filemanager/main/VFile;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->StartScanFile(Lcom/asus/filemanager/main/VFile;I)V

    .line 713
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 374
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 375
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mPathIndicator:Lcom/asus/filemanager/toolbar/PathIndicator;

    invoke-virtual {v0}, Lcom/asus/filemanager/toolbar/PathIndicator;->unregisterObserver()V

    .line 376
    return-void
.end method

.method public onPopupActionButtonClick(Landroid/view/View;)V
    .locals 8
    .parameter "button"

    .prologue
    .line 638
    const/4 v2, 0x0

    .line 640
    .local v2, f:Lcom/asus/filemanager/main/VFile;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 641
    iget-object v6, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v2, v6, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :cond_0
    :goto_0
    move-object v0, v2

    .line 650
    .local v0, chosenFile:Lcom/asus/filemanager/main/VFile;
    invoke-virtual {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->onDeselectAll()V

    .line 653
    new-instance v3, Landroid/widget/PopupMenu;

    invoke-direct {v3, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 654
    .local v3, popup:Landroid/widget/PopupMenu;
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    const v6, 0x7f070003

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 656
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    const v6, 0x7f08003b

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 658
    .local v4, shareMenu:Landroid/view/MenuItem;
    invoke-virtual {v0}, Lcom/asus/filemanager/main/VFile;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 659
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 663
    :goto_1
    new-instance v5, Lcom/asus/filemanager2/activity/FileManagerActivity$2;

    invoke-direct {v5, p0, v0}, Lcom/asus/filemanager2/activity/FileManagerActivity$2;-><init>(Lcom/asus/filemanager2/activity/FileManagerActivity;Lcom/asus/filemanager/main/VFile;)V

    invoke-virtual {v3, v5}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 682
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    .line 683
    return-void

    .line 644
    .end local v0           #chosenFile:Lcom/asus/filemanager/main/VFile;
    .end local v3           #popup:Landroid/widget/PopupMenu;
    .end local v4           #shareMenu:Landroid/view/MenuItem;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 645
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "FileManagerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to call onPopupActionButtonClick:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 661
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #chosenFile:Lcom/asus/filemanager/main/VFile;
    .restart local v3       #popup:Landroid/widget/PopupMenu;
    .restart local v4       #shareMenu:Landroid/view/MenuItem;
    :cond_1
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 567
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 569
    packed-switch p1, :pswitch_data_0

    .line 587
    .end local p2
    :goto_0
    :pswitch_0
    return-void

    .line 571
    .restart local p2
    :pswitch_1
    check-cast p2, Lcom/asus/filemanager/dialog/DialogDelete;

    .end local p2
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mEditPool:Lcom/asus/filemanager/edit/EditPool;

    invoke-virtual {v0}, Lcom/asus/filemanager/edit/EditPool;->GetFiles()[Lcom/asus/filemanager/main/VFile;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/asus/filemanager/dialog/DialogDelete;->PrepareDialog([Ljava/io/File;)V

    goto :goto_0

    .line 574
    .restart local p2
    :pswitch_2
    check-cast p2, Lcom/asus/filemanager/dialog/DialogRename;

    .end local p2
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mOptionFile:Lcom/asus/filemanager/main/VFile;

    invoke-virtual {p2, v0}, Lcom/asus/filemanager/dialog/DialogRename;->PrepareDialog(Ljava/io/File;)V

    goto :goto_0

    .line 577
    .restart local p2
    :pswitch_3
    check-cast p2, Lcom/asus/filemanager/dialog/DialogNewFolder;

    .end local p2
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mIndicatorFile:Lcom/asus/filemanager/main/VFile;

    invoke-virtual {p2, v0}, Lcom/asus/filemanager/dialog/DialogNewFolder;->PrepareDialog(Ljava/io/File;)V

    goto :goto_0

    .line 580
    .restart local p2
    :pswitch_4
    check-cast p2, Lcom/asus/filemanager/dialog/DialogExist;

    .end local p2
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mExistPair:Lcom/asus/filemanager/edit/ExistPair;

    invoke-virtual {p2, v0}, Lcom/asus/filemanager/dialog/DialogExist;->PrepareDialog(Lcom/asus/filemanager/edit/ExistPair;)V

    goto :goto_0

    .line 583
    .restart local p2
    :pswitch_5
    check-cast p2, Lcom/asus/filemanager/dialog/DialogInfo;

    .end local p2
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mOptionFile:Lcom/asus/filemanager/main/VFile;

    invoke-virtual {p2, v0}, Lcom/asus/filemanager/dialog/DialogInfo;->PrepareDialog(Lcom/asus/filemanager/main/VFile;)V

    goto :goto_0

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onRestoreNonConfigurationInstance()V
    .locals 3

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mNonConfigurationInstances:Ljava/util/HashMap;

    .line 293
    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mNonConfigurationInstances:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 294
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mNonConfigurationInstances:Ljava/util/HashMap;

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mNonConfigurationInstances:Ljava/util/HashMap;

    const-string v2, "indicator_file"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/filemanager/main/VFile;

    iput-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mIndicatorFile:Lcom/asus/filemanager/main/VFile;

    .line 303
    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mIndicatorFile:Lcom/asus/filemanager/main/VFile;

    if-nez v1, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 306
    new-instance v1, Lcom/asus/filemanager/main/VFile;

    invoke-direct {v1, v0}, Lcom/asus/filemanager/main/VFile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mIndicatorFile:Lcom/asus/filemanager/main/VFile;

    .line 311
    .end local v0           #path:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mIndicatorFile:Lcom/asus/filemanager/main/VFile;

    invoke-direct {p0, v1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->updatePathIndicator(Lcom/asus/filemanager/main/VFile;)V

    .line 314
    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mNonConfigurationInstances:Ljava/util/HashMap;

    const-string v2, "file_array"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/asus/filemanager/main/VFile;

    check-cast v1, [Lcom/asus/filemanager/main/VFile;

    iput-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    .line 315
    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    invoke-direct {p0, v1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->initFileList([Lcom/asus/filemanager/main/VFile;)V

    .line 318
    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mNonConfigurationInstances:Ljava/util/HashMap;

    const-string v2, "mEditPool"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/filemanager/edit/EditPool;

    iput-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mEditPool:Lcom/asus/filemanager/edit/EditPool;

    .line 319
    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mEditPool:Lcom/asus/filemanager/edit/EditPool;

    if-nez v1, :cond_2

    .line 320
    new-instance v1, Lcom/asus/filemanager/edit/EditPool;

    invoke-direct {v1}, Lcom/asus/filemanager/edit/EditPool;-><init>()V

    iput-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mEditPool:Lcom/asus/filemanager/edit/EditPool;

    .line 324
    :cond_2
    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mNonConfigurationInstances:Ljava/util/HashMap;

    const-string v2, "mExistPair"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/filemanager/edit/ExistPair;

    iput-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mExistPair:Lcom/asus/filemanager/edit/ExistPair;

    .line 327
    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mNonConfigurationInstances:Ljava/util/HashMap;

    const-string v2, "mOptionFile"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/filemanager/main/VFile;

    iput-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mOptionFile:Lcom/asus/filemanager/main/VFile;

    .line 328
    return-void

    .line 308
    .restart local v0       #path:Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/asus/filemanager/main/VFile;

    const-string v2, "/sdcard"

    invoke-direct {v1, v2}, Lcom/asus/filemanager/main/VFile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mIndicatorFile:Lcom/asus/filemanager/main/VFile;

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 355
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 356
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mIndicatorFile:Lcom/asus/filemanager/main/VFile;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->StartScanFile(Lcom/asus/filemanager/main/VFile;I)V

    .line 357
    invoke-virtual {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->updateEditMode()V

    .line 358
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mPathIndicator:Lcom/asus/filemanager/toolbar/PathIndicator;

    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mIndicatorFile:Lcom/asus/filemanager/main/VFile;

    invoke-virtual {v1}, Lcom/asus/filemanager/main/VFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/filemanager/toolbar/PathIndicator;->registerObserver(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mNonConfigurationInstances:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mNonConfigurationInstances:Ljava/util/HashMap;

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mNonConfigurationInstances:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 339
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mNonConfigurationInstances:Ljava/util/HashMap;

    const-string v1, "file_array"

    iget-object v2, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mNonConfigurationInstances:Ljava/util/HashMap;

    const-string v1, "indicator_file"

    iget-object v2, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mIndicatorFile:Lcom/asus/filemanager/main/VFile;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mNonConfigurationInstances:Ljava/util/HashMap;

    const-string v1, "mEditPool"

    iget-object v2, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mEditPool:Lcom/asus/filemanager/edit/EditPool;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mNonConfigurationInstances:Ljava/util/HashMap;

    const-string v1, "mExistPair"

    iget-object v2, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mExistPair:Lcom/asus/filemanager/edit/ExistPair;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mNonConfigurationInstances:Ljava/util/HashMap;

    const-string v1, "mOptionFile"

    iget-object v2, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mOptionFile:Lcom/asus/filemanager/main/VFile;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v0, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mNonConfigurationInstances:Ljava/util/HashMap;

    return-object v0
.end method

.method protected shareFile(Lcom/asus/filemanager/main/VFile;)V
    .locals 4
    .parameter

    .prologue
    .line 863
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p1}, Lcom/asus/filemanager/main/VFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 866
    if-nez v1, :cond_0

    .line 867
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/asus/filemanager/main/VFile;->getExtName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 869
    :cond_0
    const-string v2, "android.intent.extra.STREAM"

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 870
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 871
    const v1, 0x7f050045

    invoke-virtual {p0, v1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 872
    return-void
.end method

.method public updateEditMode()V
    .locals 4

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->isItemsSelected()Z

    move-result v0

    .line 805
    .local v0, isItemSelected:Z
    const-string v1, "FileManagerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numSelected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    if-nez v0, :cond_0

    .line 807
    invoke-direct {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->finishEditMode()V

    .line 817
    :goto_0
    return-void

    .line 810
    :cond_0
    const-string v1, "FileManagerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInEditMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->isInEditMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-direct {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 812
    invoke-direct {p0}, Lcom/asus/filemanager2/activity/FileManagerActivity;->updateEditModeView()V

    goto :goto_0

    .line 814
    :cond_1
    new-instance v1, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;-><init>(Lcom/asus/filemanager2/activity/FileManagerActivity;Lcom/asus/filemanager2/activity/FileManagerActivity$1;)V

    iput-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mLastEditModeCallback:Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;

    .line 815
    iget-object v1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity;->mLastEditModeCallback:Lcom/asus/filemanager2/activity/FileManagerActivity$EditModeCallback;

    invoke-virtual {p0, v1}, Lcom/asus/filemanager2/activity/FileManagerActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_0
.end method
