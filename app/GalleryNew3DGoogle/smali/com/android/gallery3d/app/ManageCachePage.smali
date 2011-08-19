.class public Lcom/android/gallery3d/app/ManageCachePage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "ManageCachePage.java"

# interfaces
.implements Lcom/android/gallery3d/app/EyePosition$EyePositionListener;
.implements Lcom/android/gallery3d/ui/CacheBarView$Listener;
.implements Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
.implements Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;


# instance fields
.field private mAlbumCountToMakeAvailableOffline:I

.field private mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

.field private mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

.field private mCacheBar:Lcom/android/gallery3d/ui/CacheBarView;

.field private mEyePosition:Lcom/android/gallery3d/app/EyePosition;

.field private mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mRootPane:Lcom/android/gallery3d/ui/GLView;

.field protected mSelectionDrawer:Lcom/android/gallery3d/ui/SelectionDrawer;

.field protected mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mStaticBackground:Lcom/android/gallery3d/ui/StaticBackground;

.field private mUserDistance:F

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 74
    new-instance v0, Lcom/android/gallery3d/app/ManageCachePage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/ManageCachePage$1;-><init>(Lcom/android/gallery3d/app/ManageCachePage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/ManageCachePage;)Lcom/android/gallery3d/ui/StaticBackground;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mStaticBackground:Lcom/android/gallery3d/ui/StaticBackground;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/ManageCachePage;)Lcom/android/gallery3d/app/EyePosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/ManageCachePage;)Lcom/android/gallery3d/ui/AlbumSetView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/ManageCachePage;)Lcom/android/gallery3d/ui/CacheBarView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mCacheBar:Lcom/android/gallery3d/ui/CacheBarView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/ManageCachePage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mX:F

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/ManageCachePage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mY:F

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/ManageCachePage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mZ:F

    return v0
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 177
    const v1, 0x3e99999a

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->meterToPixel(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mUserDistance:F

    .line 178
    const-string v1, "media-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, mediaPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 180
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/android/gallery3d/app/ManageCachePage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 183
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 184
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    .line 186
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    iget-object v2, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/ManageCachePage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    const/16 v4, 0x100

    invoke-direct {v1, v2, v3, v4}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/data/MediaSet;I)V

    iput-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    .line 188
    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    iget-object v2, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/AlbumSetView;->setModel(Lcom/android/gallery3d/ui/AlbumSetView$Model;)V

    .line 189
    return-void
.end method

.method private initializeViews()V
    .locals 11

    .prologue
    const/16 v3, 0xc0

    const/16 v10, 0x8

    const/16 v5, 0x10

    .line 192
    new-instance v0, Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/GalleryContext;Z)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 193
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/SelectionManager;->setSelectionListener(Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 194
    new-instance v0, Lcom/android/gallery3d/ui/StaticBackground;

    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/StaticBackground;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mStaticBackground:Lcom/android/gallery3d/ui/StaticBackground;

    .line 195
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mStaticBackground:Lcom/android/gallery3d/ui/StaticBackground;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 197
    new-instance v1, Lcom/android/gallery3d/ui/ManageCacheDrawer;

    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v1, v0, v2}, Lcom/android/gallery3d/ui/ManageCacheDrawer;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionDrawer:Lcom/android/gallery3d/ui/SelectionDrawer;

    .line 199
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetView;

    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionDrawer:Lcom/android/gallery3d/ui/SelectionDrawer;

    const/16 v7, 0x90

    const/16 v8, 0xe

    const/16 v9, 0x68

    move v4, v3

    move v6, v5

    invoke-direct/range {v0 .. v9}, Lcom/android/gallery3d/ui/AlbumSetView;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionDrawer;IIIIIII)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    .line 204
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    new-instance v1, Lcom/android/gallery3d/app/ManageCachePage$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/ManageCachePage$2;-><init>(Lcom/android/gallery3d/app/ManageCachePage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetView;->setListener(Lcom/android/gallery3d/ui/SlotView$Listener;)V

    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 212
    new-instance v1, Lcom/android/gallery3d/ui/CacheBarView;

    iget-object v2, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    const v3, 0x7f02002e

    const/16 v4, 0x30

    const/16 v8, 0x12

    move v6, v10

    move v7, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/gallery3d/ui/CacheBarView;-><init>(Lcom/android/gallery3d/app/GalleryActivity;IIIIII)V

    iput-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mCacheBar:Lcom/android/gallery3d/ui/CacheBarView;

    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mCacheBar:Lcom/android/gallery3d/ui/CacheBarView;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/CacheBarView;->setListener(Lcom/android/gallery3d/ui/CacheBarView$Listener;)V

    .line 220
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mCacheBar:Lcom/android/gallery3d/ui/CacheBarView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 222
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mStaticBackground:Lcom/android/gallery3d/ui/StaticBackground;

    const v1, 0x7f020002

    const v2, 0x7f020003

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/StaticBackground;->setImage(II)V

    .line 224
    return-void
.end method

.method private showToast()V
    .locals 4

    .prologue
    .line 241
    iget v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumCountToMakeAvailableOffline:I

    if-lez v1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 243
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090002

    iget v3, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumCountToMakeAvailableOffline:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 248
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method private showToastForLocalAlbum()V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 252
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 255
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/gallery3d/app/ManageCachePage;->initializeViews()V

    .line 153
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/ManageCachePage;->initializeData(Landroid/os/Bundle;)V

    .line 154
    new-instance v0, Lcom/android/gallery3d/app/EyePosition;

    iget-object v1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/gallery3d/app/EyePosition;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/EyePosition$EyePositionListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    .line 155
    return-void
.end method

.method public onDoneClicked()V
    .locals 4

    .prologue
    .line 227
    iget-object v2, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 228
    .local v0, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ManageCachePage;->onBackPressed()V

    .line 238
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/ManageCachePage;->showToast()V

    .line 234
    new-instance v1, Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v2, p0, Lcom/android/gallery3d/app/ManageCachePage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    .line 236
    .local v1, menuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;
    const/high16 v2, 0x7f07

    const v3, 0x7f080027

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    goto :goto_0
.end method

.method public onEyePositionChanged(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->lockRendering()V

    .line 105
    iput p1, p0, Lcom/android/gallery3d/app/ManageCachePage;->mX:F

    .line 106
    iput p2, p0, Lcom/android/gallery3d/app/ManageCachePage;->mY:F

    .line 107
    iput p3, p0, Lcom/android/gallery3d/app/ManageCachePage;->mZ:F

    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->unlockRendering()V

    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 110
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 160
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->pause()V

    .line 161
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetView;->pause()V

    .line 162
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mCacheBar:Lcom/android/gallery3d/ui/CacheBarView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CacheBarView;->pause()V

    .line 163
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/EyePosition;->pause()V

    .line 164
    return-void
.end method

.method public onProgressComplete(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ManageCachePage;->onBackPressed()V

    .line 259
    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 262
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 169
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/ManageCachePage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->resume()V

    .line 171
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetView;->resume()V

    .line 172
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mCacheBar:Lcom/android/gallery3d/ui/CacheBarView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CacheBarView;->resume()V

    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/app/ManageCachePage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/EyePosition;->resume()V

    .line 174
    return-void
.end method

.method public onSelectionChange(Lcom/android/gallery3d/data/Path;Z)V
    .locals 0
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 268
    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 265
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 9
    .parameter "slotIndex"

    .prologue
    const/4 v8, 0x1

    .line 113
    iget-object v6, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-virtual {v6, p1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v5

    .line 114
    .local v5, targetSet:Lcom/android/gallery3d/data/MediaSet;
    if-nez v5, :cond_0

    .line 148
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v6

    and-int/lit16 v6, v6, 0x100

    if-nez v6, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/android/gallery3d/app/ManageCachePage;->showToastForLocalAlbum()V

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 125
    .local v2, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getCacheFlag()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    move v0, v8

    .line 127
    .local v0, isFullyCached:Z
    :goto_1
    iget-object v6, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, v2}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v1

    .line 129
    .local v1, isSelected:Z
    if-nez v0, :cond_2

    .line 132
    if-eqz v1, :cond_4

    .line 133
    iget v6, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumCountToMakeAvailableOffline:I

    sub-int/2addr v6, v8

    iput v6, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumCountToMakeAvailableOffline:I

    .line 139
    :cond_2
    :goto_2
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getCacheSize()J

    move-result-wide v3

    .line 140
    .local v3, sizeOfTarget:J
    xor-int v6, v0, v1

    if-eqz v6, :cond_5

    .line 141
    iget-object v6, p0, Lcom/android/gallery3d/app/ManageCachePage;->mCacheBar:Lcom/android/gallery3d/ui/CacheBarView;

    neg-long v7, v3

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/ui/CacheBarView;->increaseTargetCacheSize(J)V

    .line 146
    :goto_3
    iget-object v6, p0, Lcom/android/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 147
    iget-object v6, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/AlbumSetView;->invalidate()V

    goto :goto_0

    .line 125
    .end local v0           #isFullyCached:Z
    .end local v1           #isSelected:Z
    .end local v3           #sizeOfTarget:J
    :cond_3
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1

    .line 135
    .restart local v0       #isFullyCached:Z
    .restart local v1       #isSelected:Z
    :cond_4
    iget v6, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumCountToMakeAvailableOffline:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/gallery3d/app/ManageCachePage;->mAlbumCountToMakeAvailableOffline:I

    goto :goto_2

    .line 143
    .restart local v3       #sizeOfTarget:J
    :cond_5
    iget-object v6, p0, Lcom/android/gallery3d/app/ManageCachePage;->mCacheBar:Lcom/android/gallery3d/ui/CacheBarView;

    invoke-virtual {v6, v3, v4}, Lcom/android/gallery3d/ui/CacheBarView;->increaseTargetCacheSize(J)V

    goto :goto_3
.end method
