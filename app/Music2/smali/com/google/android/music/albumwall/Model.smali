.class public Lcom/google/android/music/albumwall/Model;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/albumwall/Model$FocusAccumulator;,
        Lcom/google/android/music/albumwall/Model$Focusable;,
        Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;,
        Lcom/google/android/music/albumwall/Model$PileMemberHandle;,
        Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;,
        Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;,
        Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;,
        Lcom/google/android/music/albumwall/Model$ModelPile;,
        Lcom/google/android/music/albumwall/Model$ModelPilePart;,
        Lcom/google/android/music/albumwall/Model$ModelItem;,
        Lcom/google/android/music/albumwall/Model$RequestablePile;,
        Lcom/google/android/music/albumwall/Model$RequestableItem;,
        Lcom/google/android/music/albumwall/Model$RequestableTexture;,
        Lcom/google/android/music/albumwall/Model$RequestableCount;,
        Lcom/google/android/music/albumwall/Model$Requestable;,
        Lcom/google/android/music/albumwall/Model$TextureTracker;,
        Lcom/google/android/music/albumwall/Model$Epoch;
    }
.end annotation


# static fields
.field private static final ALBUMITEM_CACHE_SIZE:I = 0x8a

.field private static final ITEMMAP_CACHE_SIZE:I = 0x8a

.field private static final MAX_COLUMNS:I = 0x8

.field private static final MAX_ITEMS_IN_UNEXPANDED_STACK:I = 0x4

.field private static final MAX_ITEMS_IN_USE:I = 0x8a

.field private static final MAX_OUTSTANDING:I = 0xa

.field private static final MAX_OUTSTANDING_CHILD_COUNT_REQUESTS:I = 0xa

.field private static final MAX_OUTSTANDING_ITEM_REQUESTS:I = 0xa

.field private static final MAX_OUTSTANDING_PILE_LABEL_TEXTURE_REQUESTS:I = 0xa

.field private static final MAX_OUTSTANDING_PILE_REQUESTS:I = 0xa

.field private static final MAX_PILES_IN_USE:I = 0x2a

.field private static final MAX_ROWS:I = 0x4

.field private static final PILE_CACHE_SIZE:I = 0x2a

.field private static final PILE_INDEX_CACHE_SIZE:I = 0x2a

.field private static final TAG:Ljava/lang/String; = "Model"

.field private static final TRACE_CALLBACKS:Z

.field private static final TRACE_EVICTIONS:Z

.field private static final TRACE_SETS:Z

.field private static final TRACE_TEXTURES:Z

.field private static final TRACK_TEXTURES:Z

.field private static final sTextureTracker:Lcom/google/android/music/albumwall/Model$TextureTracker;


# instance fields
.field private mAlbumLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

.field private mAlbumWallView:Lcom/google/android/music/albumwall/AlbumWallView;

.field mCenterFocus:Lcom/google/android/music/albumwall/Model$FocusAccumulator;

.field private mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

.field private mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

.field private mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

.field private mDelegate:Lcom/google/android/music/albumwall/AlbumWallCallback;

.field private mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

.field private mExpandUngroupedMetadata:F

.field private mExpandedPileChanged:Z

.field private mFrameTime:J

.field private mHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

.field private mLabelLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

.field private mManageAlbumMode:Z

.field private mMostRecentOverlayTextureFocusable:Lcom/google/android/music/albumwall/Model$Focusable;

.field private mOrdinalToRequestablePileMap:Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;

.field private mOutstandingChildCountRequests:I

.field private mOutstandingItemRequests:I

.field private mOutstandingItemTextureRequests:[I

.field private mOutstandingPileRequests:I

.field private mOutstandingPileTextureRequests:[I

.field private mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

.field private mPileMemberHandleToRequestableItemMap:Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;

.field private mPileMembersAccessed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/music/albumwall/Model$PileMemberHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mPilesAccessed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPressedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

.field private mSelectedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

.field private mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/google/android/music/albumwall/Model$TextureTracker;

    invoke-direct {v0}, Lcom/google/android/music/albumwall/Model$TextureTracker;-><init>()V

    sput-object v0, Lcom/google/android/music/albumwall/Model;->sTextureTracker:Lcom/google/android/music/albumwall/Model$TextureTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x8a

    const/16 v2, 0x2a

    const/4 v1, 0x0

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/google/android/music/albumwall/Model$Epoch;

    invoke-direct {v0}, Lcom/google/android/music/albumwall/Model$Epoch;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 655
    new-instance v0, Lcom/google/android/music/albumwall/Model$RequestableCount;

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/Model$RequestableCount;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    .line 658
    new-instance v0, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;

    invoke-direct {v0, p0, v2}, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;-><init>(Lcom/google/android/music/albumwall/Model;I)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOrdinalToRequestablePileMap:Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;

    .line 662
    new-instance v0, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-direct {v0, p0, v2}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;-><init>(Lcom/google/android/music/albumwall/Model;I)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    .line 666
    new-instance v0, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;

    invoke-direct {v0, p0, v3}, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;-><init>(Lcom/google/android/music/albumwall/Model;I)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPileMemberHandleToRequestableItemMap:Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;

    .line 670
    new-instance v0, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-direct {v0, p0, v3}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;-><init>(Lcom/google/android/music/albumwall/Model;I)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    .line 690
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemTextureRequests:[I

    .line 704
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileTextureRequests:[I

    .line 707
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPilesAccessed:Ljava/util/Set;

    .line 710
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPileMembersAccessed:Ljava/util/Set;

    .line 712
    new-instance v0, Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mAlbumLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    .line 713
    new-instance v0, Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mLabelLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    .line 782
    new-instance v0, Lcom/google/android/music/albumwall/Model$FocusAccumulator;

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/Model$FocusAccumulator;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mCenterFocus:Lcom/google/android/music/albumwall/Model$FocusAccumulator;

    .line 794
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    invoke-direct {v0}, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    .line 800
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/music/albumwall/Model$ModelPile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/Model;->handleRemoval(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/music/albumwall/Model$ModelPile;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/Model$ModelItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/Model;->handleItemRemoval(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/Model$ModelItem;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/Model$Epoch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mAlbumWallView:Lcom/google/android/music/albumwall/AlbumWallView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mDelegate:Lcom/google/android/music/albumwall/AlbumWallCallback;

    return-object v0
.end method

.method private endCollectingCacheStats()V
    .locals 5

    .prologue
    .line 1629
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPilesAccessed:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    .line 1630
    .local v2, pileCount:I
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPileMembersAccessed:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v3

    .line 1632
    .local v3, pileMembersCount:I
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPilesAccessed:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 1633
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPileMembersAccessed:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 1639
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v1, v4, 0xa

    .line 1640
    .local v1, pileCacheSize:I
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v0, v4, 0xa

    .line 1642
    .local v0, itemCacheSize:I
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mOrdinalToRequestablePileMap:Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;

    invoke-virtual {v4, v1}, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;->ensureCapacity(I)V

    .line 1643
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v4, v1}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->ensureCapacity(I)V

    .line 1644
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPileMemberHandleToRequestableItemMap:Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;

    invoke-virtual {v4, v0}, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;->ensureCapacity(I)V

    .line 1645
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-virtual {v4, v0}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->ensureCapacity(I)V

    .line 1646
    return-void
.end method

.method private endCollectingViewState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1659
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mCenterFocus:Lcom/google/android/music/albumwall/Model$FocusAccumulator;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->endCollectingViewState()V

    .line 1661
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    monitor-enter v2

    .line 1662
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    .line 1663
    .local v1, state:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    iget-object v3, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    iget v3, v3, Lcom/google/android/music/albumwall/Model$RequestableCount;->mCount:I

    iput v3, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->pileCount:I

    .line 1664
    iget-object v3, p0, Lcom/google/android/music/albumwall/Model;->mCenterFocus:Lcom/google/android/music/albumwall/Model$FocusAccumulator;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->getCurrent()Lcom/google/android/music/albumwall/Model$Focusable;

    move-result-object v0

    .line 1665
    .local v0, center:Lcom/google/android/music/albumwall/Model$Focusable;
    iget-object v3, v0, Lcom/google/android/music/albumwall/Model$Focusable;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iput-object v3, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 1666
    iget v3, v0, Lcom/google/android/music/albumwall/Model$Focusable;->mPileIndex:I

    iput v3, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileIndex:I

    .line 1667
    iget-object v3, v0, Lcom/google/android/music/albumwall/Model$Focusable;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iput-object v3, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 1668
    iget v3, v0, Lcom/google/android/music/albumwall/Model$Focusable;->mItemIndex:I

    iput v3, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItemIndex:I

    .line 1669
    iget-object v3, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItemIndex:I

    if-ltz v3, :cond_0

    .line 1670
    iget-object v3, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/google/android/music/albumwall/Model;->getChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I

    move-result v3

    iput v3, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileItemCount:I

    .line 1672
    :cond_0
    iget-object v3, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v3, :cond_1

    .line 1673
    iget-object v3, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/google/android/music/albumwall/Model;->getChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I

    move-result v3

    iput v3, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileItemCount:I

    .line 1675
    :cond_1
    iget v3, p0, Lcom/google/android/music/albumwall/Model;->mExpandUngroupedMetadata:F

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    move v3, v5

    :goto_0
    iput-boolean v3, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->labelsVisible:Z

    .line 1676
    monitor-exit v2

    .line 1677
    return-void

    .line 1675
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1676
    .end local v0           #center:Lcom/google/android/music/albumwall/Model$Focusable;
    .end local v1           #state:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getAlbumPile(I)Lcom/google/android/music/albumwall/Model$RequestablePile;
    .locals 3
    .parameter "pileIndex"

    .prologue
    .line 1057
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1058
    .local v0, key:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mOrdinalToRequestablePileMap:Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;

    invoke-virtual {v2, v0}, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/albumwall/Model$RequestablePile;

    .line 1059
    .local v1, p:Lcom/google/android/music/albumwall/Model$RequestablePile;
    if-nez v1, :cond_0

    .line 1060
    new-instance v1, Lcom/google/android/music/albumwall/Model$RequestablePile;

    .end local v1           #p:Lcom/google/android/music/albumwall/Model$RequestablePile;
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/music/albumwall/Model$RequestablePile;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    .line 1061
    .restart local v1       #p:Lcom/google/android/music/albumwall/Model$RequestablePile;
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mOrdinalToRequestablePileMap:Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    :cond_0
    return-object v1
.end method

.method private final getBackgroundItem(Lcom/google/android/music/albumwall/Model$Focusable;)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .locals 2
    .parameter "f"

    .prologue
    const/4 v1, 0x0

    .line 1608
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/Model$Focusable;->isPileList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1609
    iget-object v0, p1, Lcom/google/android/music/albumwall/Model$Focusable;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v0, :cond_0

    .line 1610
    iget-object v0, p1, Lcom/google/android/music/albumwall/Model$Focusable;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/music/albumwall/Model;->getItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v0

    .line 1615
    :goto_0
    return-object v0

    .line 1612
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1615
    :cond_1
    iget-object v0, p1, Lcom/google/android/music/albumwall/Model$Focusable;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    goto :goto_0
.end method

.method private getItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$RequestableTexture;
    .locals 8
    .parameter "type"
    .parameter "item"

    .prologue
    .line 1424
    if-nez p2, :cond_0

    .line 1425
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1427
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-virtual {v0, p2}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/albumwall/Model$ModelItem;

    .line 1428
    .local v6, album:Lcom/google/android/music/albumwall/Model$ModelItem;
    if-nez v6, :cond_1

    .line 1429
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemTextureRequests:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getMaxOutstandingAlbumTextureRequests()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1430
    invoke-direct {p0, p2}, Lcom/google/android/music/albumwall/Model;->getOrCreateAlbum(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$ModelItem;

    move-result-object v6

    .line 1435
    :cond_1
    iget-object v0, v6, Lcom/google/android/music/albumwall/Model$ModelItem;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v7, v0, p1

    .line 1436
    .local v7, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    invoke-virtual {v7}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->peekNeedsRequest()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1437
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemTextureRequests:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getMaxOutstandingAlbumTextureRequests()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1438
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemTextureRequests:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 1443
    iget-object v5, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    .line 1444
    .local v5, config:Lcom/google/android/music/albumwall/AlbumWallConfig;
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 1445
    .local v2, epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    new-instance v0, Lcom/google/android/music/albumwall/Model$7;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/Model$7;-><init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;)V

    invoke-direct {p0, v7, v0}, Lcom/google/android/music/albumwall/Model;->request(Lcom/google/android/music/albumwall/Model$Requestable;Ljava/lang/Runnable;)V

    .end local v2           #epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    .end local v5           #config:Lcom/google/android/music/albumwall/AlbumWallConfig;
    :cond_2
    move-object v0, v7

    .line 1461
    .end local v7           #texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    :goto_0
    return-object v0

    .line 1432
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getItemTextureIdImp(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)I
    .locals 2
    .parameter "type"
    .parameter "item"

    .prologue
    .line 1416
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/Model;->getItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1417
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_0

    .line 1418
    const/4 v1, 0x0

    .line 1420
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->access$1200(Lcom/google/android/music/albumwall/Model$RequestableTexture;)I

    move-result v1

    goto :goto_0
.end method

.method private getOrCreateAlbum(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$ModelItem;
    .locals 2
    .parameter "item"

    .prologue
    .line 1465
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-virtual {v1, p1}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$ModelItem;

    .line 1466
    .local v0, album:Lcom/google/android/music/albumwall/Model$ModelItem;
    if-nez v0, :cond_0

    .line 1467
    new-instance v0, Lcom/google/android/music/albumwall/Model$ModelItem;

    .end local v0           #album:Lcom/google/android/music/albumwall/Model$ModelItem;
    invoke-direct {v0}, Lcom/google/android/music/albumwall/Model$ModelItem;-><init>()V

    .line 1468
    .restart local v0       #album:Lcom/google/android/music/albumwall/Model$ModelItem;
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    :cond_0
    return-object v0
.end method

.method private getOrCreatePile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;)Lcom/google/android/music/albumwall/Model$ModelPile;
    .locals 2
    .parameter "pile"

    .prologue
    .line 1111
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v1, p1}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 1112
    .local v0, p:Lcom/google/android/music/albumwall/Model$ModelPile;
    if-nez v0, :cond_0

    .line 1113
    new-instance v0, Lcom/google/android/music/albumwall/Model$ModelPile;

    .end local v0           #p:Lcom/google/android/music/albumwall/Model$ModelPile;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/Model$ModelPile;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    .line 1114
    .restart local v0       #p:Lcom/google/android/music/albumwall/Model$ModelPile;
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    :cond_0
    return-object v0
.end method

.method private final getOvelayTextureId(Lcom/google/android/music/albumwall/Model$Focusable;)I
    .locals 3
    .parameter "f"

    .prologue
    const/4 v2, 0x0

    .line 1590
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/Model$Focusable;->isPileList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1591
    iget-object v0, p1, Lcom/google/android/music/albumwall/Model$Focusable;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v0, :cond_1

    .line 1592
    const/4 v0, 0x1

    iget-object v1, p1, Lcom/google/android/music/albumwall/Model$Focusable;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/music/albumwall/Model;->getPileTextureId(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I

    move-result v0

    .line 1599
    :goto_0
    return v0

    .line 1595
    :cond_0
    iget-object v0, p1, Lcom/google/android/music/albumwall/Model$Focusable;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    if-eqz v0, :cond_1

    .line 1596
    iget-object v0, p1, Lcom/google/android/music/albumwall/Model$Focusable;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/Model;->getItemScrollOverlayTextureId(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1599
    goto :goto_0
.end method

.method private getRequestableItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/Model$RequestableItem;
    .locals 6
    .parameter "pile"
    .parameter "expanded"
    .parameter "n"

    .prologue
    .line 1150
    new-instance v2, Lcom/google/android/music/albumwall/Model$PileMemberHandle;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/music/albumwall/Model$PileMemberHandle;-><init>(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)V

    .line 1151
    .local v2, key:Lcom/google/android/music/albumwall/Model$PileMemberHandle;
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPileMembersAccessed:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1152
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPileMemberHandleToRequestableItemMap:Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;

    invoke-virtual {v4, v2}, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$RequestableItem;

    .line 1153
    .local v0, albumItem:Lcom/google/android/music/albumwall/Model$RequestableItem;
    if-nez v0, :cond_0

    .line 1154
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v4, p1}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 1155
    .local v3, p:Lcom/google/android/music/albumwall/Model$ModelPile;
    if-eqz v3, :cond_0

    .line 1156
    invoke-virtual {v3, p2}, Lcom/google/android/music/albumwall/Model$ModelPile;->getPart(Z)Lcom/google/android/music/albumwall/Model$ModelPilePart;

    move-result-object v4

    iget-object v1, v4, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mItemCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    .line 1157
    .local v1, childCount:Lcom/google/android/music/albumwall/Model$RequestableCount;
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableCount;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemRequests:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_0

    .line 1159
    new-instance v0, Lcom/google/android/music/albumwall/Model$RequestableItem;

    .end local v0           #albumItem:Lcom/google/android/music/albumwall/Model$RequestableItem;
    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/google/android/music/albumwall/Model$RequestableItem;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    .line 1160
    .restart local v0       #albumItem:Lcom/google/android/music/albumwall/Model$RequestableItem;
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPileMemberHandleToRequestableItemMap:Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;

    invoke-virtual {v4, v2, v0}, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    .end local v1           #childCount:Lcom/google/android/music/albumwall/Model$RequestableCount;
    .end local v3           #p:Lcom/google/android/music/albumwall/Model$ModelPile;
    :cond_0
    return-object v0
.end method

.method private handleItemRemoval(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/Model$ModelItem;)V
    .locals 3
    .parameter "item"
    .parameter "value"

    .prologue
    .line 1548
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 1549
    iget-object v2, p2, Lcom/google/android/music/albumwall/Model$ModelItem;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v1, v2, v0

    .line 1550
    .local v1, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->release()V

    .line 1548
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1552
    .end local v1           #texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    :cond_0
    return-void
.end method

.method private handleRemoval(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/music/albumwall/Model$ModelPile;)V
    .locals 2
    .parameter "pileKey"
    .parameter "p"

    .prologue
    .line 1531
    const/4 v0, 0x0

    iget-object v1, p2, Lcom/google/android/music/albumwall/Model$ModelPile;->mUnexpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/music/albumwall/Model;->handleRemoval(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/Model$ModelPilePart;)V

    .line 1532
    const/4 v0, 0x1

    iget-object v1, p2, Lcom/google/android/music/albumwall/Model$ModelPile;->mExpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/music/albumwall/Model;->handleRemoval(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/Model$ModelPilePart;)V

    .line 1533
    return-void
.end method

.method private handleRemoval(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/Model$ModelPilePart;)V
    .locals 0
    .parameter "pileKey"
    .parameter "expanded"
    .parameter "part"

    .prologue
    .line 1536
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->handleRemovalofTextures(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/Model$ModelPilePart;)V

    .line 1537
    return-void
.end method

.method private handleRemovalofTextures(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/Model$ModelPilePart;)V
    .locals 3
    .parameter "pileKey"
    .parameter "expanded"
    .parameter "part"

    .prologue
    .line 1541
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 1542
    iget-object v2, p3, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v1, v2, v0

    .line 1543
    .local v1, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->release()V

    .line 1541
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1545
    .end local v1           #texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    :cond_0
    return-void
.end method

.method private request(Lcom/google/android/music/albumwall/Model$Requestable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "requestable"
    .parameter "runnable"

    .prologue
    .line 981
    invoke-virtual {p1, p2}, Lcom/google/android/music/albumwall/Model$Requestable;->setRequest(Ljava/lang/Runnable;)V

    .line 982
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

    invoke-virtual {v0, p2}, Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;->post(Ljava/lang/Runnable;)V

    .line 983
    return-void
.end method

.method private startCollectingViewState()V
    .locals 1

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mCenterFocus:Lcom/google/android/music/albumwall/Model$FocusAccumulator;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->startCollectingViewState()V

    .line 1650
    return-void
.end method

.method private timeToFadeInFactor(JJ)F
    .locals 4
    .parameter "time"
    .parameter "fadeTimeMs"

    .prologue
    .line 1405
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 1406
    const/4 v2, 0x0

    .line 1412
    :goto_0
    return v2

    .line 1408
    :cond_0
    iget-wide v2, p0, Lcom/google/android/music/albumwall/Model;->mFrameTime:J

    sub-long v0, v2, p1

    .line 1409
    .local v0, delta:J
    cmp-long v2, v0, p3

    if-lez v2, :cond_1

    .line 1410
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 1412
    :cond_1
    long-to-float v2, v0

    long-to-float v3, p3

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method private updateTexture(Lcom/google/android/music/albumwall/Model$RequestableTexture;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "texture"
    .parameter "bitmap"

    .prologue
    const/16 v3, 0xde1

    const/4 v2, 0x0

    .line 1555
    if-nez p2, :cond_0

    .line 1575
    :goto_0
    return-void

    .line 1558
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->getTextureId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1566
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->deleteTextureId()V

    .line 1570
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->genTextureId()V

    .line 1571
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setExtent(II)V

    .line 1572
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->getTextureId()I

    move-result v0

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1573
    invoke-static {}, Lcom/google/android/opengl/glview/GLCanvas;->setDefaultNPOTTextureState()V

    .line 1574
    invoke-static {v3, v2, p2, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 1568
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model;->getFrameTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setTextureLoadTime(J)V

    goto :goto_1
.end method


# virtual methods
.method public final beginFrame()V
    .locals 0

    .prologue
    .line 1620
    invoke-direct {p0}, Lcom/google/android/music/albumwall/Model;->startCollectingViewState()V

    .line 1621
    return-void
.end method

.method public eglContextCleared()V
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->eglContextCleared()V

    .line 907
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->eglContextCleared()V

    .line 908
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mAlbumLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->eglContextCleared()V

    .line 909
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mLabelLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->eglContextCleared()V

    .line 913
    return-void
.end method

.method public final endFrame()V
    .locals 0

    .prologue
    .line 1624
    invoke-direct {p0}, Lcom/google/android/music/albumwall/Model;->endCollectingViewState()V

    .line 1625
    invoke-direct {p0}, Lcom/google/android/music/albumwall/Model;->endCollectingCacheStats()V

    .line 1626
    return-void
.end method

.method public final getAlbumLoadingTextureId()I
    .locals 1

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mAlbumLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->getTextureId()I

    move-result v0

    return v0
.end method

.method public final getBackgroundItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .locals 2

    .prologue
    .line 1603
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mCenterFocus:Lcom/google/android/music/albumwall/Model$FocusAccumulator;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->getCurrent()Lcom/google/android/music/albumwall/Model$Focusable;

    move-result-object v0

    .line 1604
    .local v0, center:Lcom/google/android/music/albumwall/Model$Focusable;
    invoke-direct {p0, v0}, Lcom/google/android/music/albumwall/Model;->getBackgroundItem(Lcom/google/android/music/albumwall/Model$Focusable;)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v1

    return-object v1
.end method

.method public getCenterVisibleItemIndex()I
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iget v0, v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItemIndex:I

    return v0
.end method

.method public getCenterVisiblePileIndex()I
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iget v0, v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileIndex:I

    return v0
.end method

.method public getChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I
    .locals 5
    .parameter "pile"
    .parameter "expanded"

    .prologue
    const/16 v4, 0xa

    .line 1067
    if-nez p1, :cond_0

    .line 1068
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "pile is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1070
    :cond_0
    iget-object v3, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v3, p1}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 1072
    .local v2, p:Lcom/google/android/music/albumwall/Model$ModelPile;
    if-nez v2, :cond_1

    .line 1073
    iget v3, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingChildCountRequests:I

    if-ge v3, v4, :cond_3

    .line 1074
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/Model;->getOrCreatePile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;)Lcom/google/android/music/albumwall/Model$ModelPile;

    move-result-object v2

    .line 1079
    :cond_1
    invoke-virtual {v2, p2}, Lcom/google/android/music/albumwall/Model$ModelPile;->getPart(Z)Lcom/google/android/music/albumwall/Model$ModelPilePart;

    move-result-object v3

    iget-object v0, v3, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mItemCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    .line 1080
    .local v0, childCount:Lcom/google/android/music/albumwall/Model$RequestableCount;
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableCount;->peekNeedsRequest()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingChildCountRequests:I

    if-ge v3, v4, :cond_2

    .line 1082
    iget v3, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingChildCountRequests:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingChildCountRequests:I

    .line 1087
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 1088
    .local v1, epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    new-instance v3, Lcom/google/android/music/albumwall/Model$3;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/google/android/music/albumwall/Model$3;-><init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/Model$Epoch;)V

    invoke-direct {p0, v0, v3}, Lcom/google/android/music/albumwall/Model;->request(Lcom/google/android/music/albumwall/Model$Requestable;Ljava/lang/Runnable;)V

    .line 1107
    .end local v1           #epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    :cond_2
    iget v3, v0, Lcom/google/android/music/albumwall/Model$RequestableCount;->mCount:I

    .end local v0           #childCount:Lcom/google/android/music/albumwall/Model$RequestableCount;
    :goto_0
    return v3

    .line 1076
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getExpandUngroupedMetadata()F
    .locals 1

    .prologue
    .line 1687
    iget v0, p0, Lcom/google/android/music/albumwall/Model;->mExpandUngroupedMetadata:F

    return v0
.end method

.method public getExpandedPile()Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    return-object v0
.end method

.method public getExpandedPileChanged()Z
    .locals 1

    .prologue
    .line 944
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/Model;->mExpandedPileChanged:Z

    return v0
.end method

.method public getExpandedPileIndex()I
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iget v0, v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    return v0
.end method

.method public final getFrameTime()J
    .locals 2

    .prologue
    .line 1709
    iget-wide v0, p0, Lcom/google/android/music/albumwall/Model;->mFrameTime:J

    return-wide v0
.end method

.method public getItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .locals 7
    .parameter "pile"
    .parameter "expanded"
    .parameter "n"

    .prologue
    .line 1169
    if-gez p3, :cond_0

    .line 1170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "n < 0: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1172
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->getRequestableItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/Model$RequestableItem;

    move-result-object v6

    .line 1173
    .local v6, requestableItem:Lcom/google/android/music/albumwall/Model$RequestableItem;
    if-nez v6, :cond_1

    .line 1174
    const/4 v0, 0x0

    .line 1199
    :goto_0
    return-object v0

    .line 1176
    :cond_1
    invoke-virtual {v6}, Lcom/google/android/music/albumwall/Model$RequestableItem;->peekNeedsRequest()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemRequests:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 1178
    iget v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemRequests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemRequests:I

    .line 1183
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 1184
    .local v2, epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    new-instance v0, Lcom/google/android/music/albumwall/Model$4;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/Model$4;-><init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)V

    invoke-direct {p0, v6, v0}, Lcom/google/android/music/albumwall/Model;->request(Lcom/google/android/music/albumwall/Model$Requestable;Ljava/lang/Runnable;)V

    .line 1199
    .end local v2           #epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    :cond_2
    iget-object v0, v6, Lcom/google/android/music/albumwall/Model$RequestableItem;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    goto :goto_0
.end method

.method public getItemBackgroundTextureId(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 1523
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/google/android/music/albumwall/Model;->getItemTextureIdImp(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)I

    move-result v0

    return v0
.end method

.method public getItemLabelTextureId(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 1519
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/music/albumwall/Model;->getItemTextureIdImp(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)I

    move-result v0

    return v0
.end method

.method public getItemScrollOverlayTextureId(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 1527
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/music/albumwall/Model;->getItemTextureIdImp(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)I

    move-result v0

    return v0
.end method

.method public getItemTextureFadeInFactor(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;J)F
    .locals 2
    .parameter "type"
    .parameter "item"
    .parameter "fadeTimeMs"

    .prologue
    .line 1401
    invoke-virtual {p0, p1, p2}, Lcom/google/android/music/albumwall/Model;->getItemTextureLoadTime(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/google/android/music/albumwall/Model;->timeToFadeInFactor(JJ)F

    move-result v0

    return v0
.end method

.method public getItemTextureHeight(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)F
    .locals 2
    .parameter "type"
    .parameter "item"

    .prologue
    .line 1392
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/Model;->getItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1393
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_0

    .line 1394
    const/4 v1, 0x0

    .line 1396
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0
.end method

.method public getItemTextureId(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 1357
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/google/android/music/albumwall/Model;->getItemTextureIdImp(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)I

    move-result v0

    return v0
.end method

.method public getItemTextureLoadTime(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)J
    .locals 3
    .parameter "type"
    .parameter "item"

    .prologue
    .line 1376
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/Model;->getItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1377
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_0

    .line 1378
    const-wide/16 v1, 0x0

    .line 1380
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->getTextureLoadTime()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemTextureWidth(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)F
    .locals 2
    .parameter "type"
    .parameter "item"

    .prologue
    .line 1384
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/Model;->getItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1385
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_0

    .line 1386
    const/4 v1, 0x0

    .line 1388
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0
.end method

.method public final getLabelLoadingTextureId()I
    .locals 1

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mLabelLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->getTextureId()I

    move-result v0

    return v0
.end method

.method public getLabelMarkTextureId(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)I
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 1361
    const/4 v0, 0x0

    .line 1362
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    instance-of v1, p1, Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v1, :cond_0

    .line 1364
    check-cast p1, Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .end local p1
    invoke-virtual {p0, v3, p1, v2}, Lcom/google/android/music/albumwall/Model;->getPileTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1369
    :goto_0
    if-nez v0, :cond_1

    move v1, v2

    .line 1372
    :goto_1
    return v1

    .line 1367
    .restart local p1
    :cond_0
    invoke-direct {p0, v3, p1}, Lcom/google/android/music/albumwall/Model;->getItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    goto :goto_0

    .line 1372
    .end local p1
    :cond_1
    invoke-static {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->access$1200(Lcom/google/android/music/albumwall/Model$RequestableTexture;)I

    move-result v1

    goto :goto_1
.end method

.method public getLabelsVisible()Z
    .locals 2

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    monitor-enter v0

    .line 1693
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iget-boolean v1, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->labelsVisible:Z

    monitor-exit v0

    return v1

    .line 1694
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPile(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .locals 5
    .parameter "pileIndex"

    .prologue
    .line 1001
    if-gez p1, :cond_0

    .line 1002
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pile < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1004
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mPilesAccessed:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1005
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/Model;->getAlbumPile(I)Lcom/google/android/music/albumwall/Model$RequestablePile;

    move-result-object v0

    .line 1006
    .local v0, albumPile:Lcom/google/android/music/albumwall/Model$RequestablePile;
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestablePile;->peekNeedsRequest()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileRequests:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 1008
    iget v2, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileRequests:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileRequests:I

    .line 1013
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 1014
    .local v1, epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    new-instance v2, Lcom/google/android/music/albumwall/Model$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/android/music/albumwall/Model$2;-><init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/Model$Epoch;I)V

    invoke-direct {p0, v0, v2}, Lcom/google/android/music/albumwall/Model;->request(Lcom/google/android/music/albumwall/Model$Requestable;Ljava/lang/Runnable;)V

    .line 1029
    .end local v1           #epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    :cond_1
    iget-object v2, v0, Lcom/google/android/music/albumwall/Model$RequestablePile;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    return-object v2
.end method

.method public getPileCount()I
    .locals 3

    .prologue
    .line 956
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableCount;->peekNeedsRequest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 960
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 961
    .local v0, epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    new-instance v2, Lcom/google/android/music/albumwall/Model$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/albumwall/Model$1;-><init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/Model$Epoch;)V

    invoke-direct {p0, v1, v2}, Lcom/google/android/music/albumwall/Model;->request(Lcom/google/android/music/albumwall/Model$Requestable;Ljava/lang/Runnable;)V

    .line 976
    .end local v0           #epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    iget v1, v1, Lcom/google/android/music/albumwall/Model$RequestableCount;->mCount:I

    return v1
.end method

.method public getPileTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)Lcom/google/android/music/albumwall/Model$RequestableTexture;
    .locals 9
    .parameter "type"
    .parameter "pile"
    .parameter "expanded"

    .prologue
    const/16 v1, 0xa

    .line 1271
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v0, p2}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 1273
    .local v7, p:Lcom/google/android/music/albumwall/Model$ModelPile;
    if-nez v7, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileTextureRequests:[I

    aget v0, v0, p1

    if-ge v0, v1, :cond_2

    .line 1275
    invoke-direct {p0, p2}, Lcom/google/android/music/albumwall/Model;->getOrCreatePile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;)Lcom/google/android/music/albumwall/Model$ModelPile;

    move-result-object v7

    .line 1280
    :cond_0
    invoke-virtual {v7, p3}, Lcom/google/android/music/albumwall/Model$ModelPile;->getPart(Z)Lcom/google/android/music/albumwall/Model$ModelPilePart;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v8, v0, p1

    .line 1281
    .local v8, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    invoke-virtual {v8}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->peekNeedsRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileTextureRequests:[I

    aget v0, v0, p1

    if-ge v0, v1, :cond_1

    .line 1284
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileTextureRequests:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 1289
    iget-object v6, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    .line 1291
    .local v6, config:Lcom/google/android/music/albumwall/AlbumWallConfig;
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 1292
    .local v2, epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    new-instance v0, Lcom/google/android/music/albumwall/Model$5;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/albumwall/Model$5;-><init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/AlbumWallConfig;)V

    invoke-direct {p0, v8, v0}, Lcom/google/android/music/albumwall/Model;->request(Lcom/google/android/music/albumwall/Model$Requestable;Ljava/lang/Runnable;)V

    .end local v2           #epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    .end local v6           #config:Lcom/google/android/music/albumwall/AlbumWallConfig;
    :cond_1
    move-object v0, v8

    .line 1307
    .end local v8           #texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    :goto_0
    return-object v0

    .line 1277
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPileTextureFadeInFactor(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZJ)F
    .locals 2
    .parameter "type"
    .parameter "pile"
    .parameter "expanded"
    .parameter "fadeTimeMs"

    .prologue
    .line 1267
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->getPileTextureLoadTime(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/google/android/music/albumwall/Model;->timeToFadeInFactor(JJ)F

    move-result v0

    return v0
.end method

.method public getPileTextureHeight(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)F
    .locals 2
    .parameter "type"
    .parameter "pile"
    .parameter "expanded"

    .prologue
    .line 1250
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->getPileTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1251
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_0

    .line 1252
    const/4 v1, 0x0

    .line 1254
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0
.end method

.method public getPileTextureId(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I
    .locals 2
    .parameter "type"
    .parameter "pile"
    .parameter "expanded"

    .prologue
    .line 1234
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->getPileTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1235
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_0

    .line 1236
    const/4 v1, 0x0

    .line 1238
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->access$1200(Lcom/google/android/music/albumwall/Model$RequestableTexture;)I

    move-result v1

    goto :goto_0
.end method

.method public getPileTextureLoadTime(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)J
    .locals 3
    .parameter "type"
    .parameter "pile"
    .parameter "expanded"

    .prologue
    .line 1258
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->getPileTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1259
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_0

    .line 1260
    const-wide/16 v1, 0x0

    .line 1262
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->getTextureLoadTime()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getPileTextureWidth(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)F
    .locals 2
    .parameter "type"
    .parameter "pile"
    .parameter "expanded"

    .prologue
    .line 1242
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->getPileTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1243
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_0

    .line 1244
    const/4 v1, 0x0

    .line 1246
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0
.end method

.method public final getPressedItemFrame()Lcom/google/android/opengl/glview/NinePatch;
    .locals 1

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPressedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    return-object v0
.end method

.method public final getSelectedItemFrame()Lcom/google/android/opengl/glview/NinePatch;
    .locals 1

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mSelectedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    return-object v0
.end method

.method public final getThumbOverlayTextureId()I
    .locals 3

    .prologue
    .line 1578
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mCenterFocus:Lcom/google/android/music/albumwall/Model$FocusAccumulator;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->getCurrent()Lcom/google/android/music/albumwall/Model$Focusable;

    move-result-object v0

    .line 1579
    .local v0, center:Lcom/google/android/music/albumwall/Model$Focusable;
    invoke-direct {p0, v0}, Lcom/google/android/music/albumwall/Model;->getOvelayTextureId(Lcom/google/android/music/albumwall/Model$Focusable;)I

    move-result v1

    .line 1580
    .local v1, id:I
    if-nez v1, :cond_0

    .line 1582
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mMostRecentOverlayTextureFocusable:Lcom/google/android/music/albumwall/Model$Focusable;

    if-eqz v2, :cond_0

    .line 1583
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mMostRecentOverlayTextureFocusable:Lcom/google/android/music/albumwall/Model$Focusable;

    invoke-direct {p0, v2}, Lcom/google/android/music/albumwall/Model;->getOvelayTextureId(Lcom/google/android/music/albumwall/Model$Focusable;)I

    move-result v1

    .line 1586
    :cond_0
    return v1
.end method

.method public getViewState()Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    .locals 3

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    monitor-enter v0

    .line 1700
    :try_start_0
    new-instance v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    invoke-direct {v1, v2}, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;-><init>(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    monitor-exit v0

    return-object v1

    .line 1701
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final invalidateItemTexture(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V
    .locals 3
    .parameter "item"
    .parameter "type"

    .prologue
    .line 1763
    instance-of v2, p1, Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v2, :cond_1

    .line 1764
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v2, p1}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 1765
    .local v1, pile:Lcom/google/android/music/albumwall/Model$ModelPile;
    if-eqz v1, :cond_0

    .line 1766
    invoke-virtual {v1, p2}, Lcom/google/android/music/albumwall/Model$ModelPile;->invalidate(I)V

    .line 1774
    .end local v1           #pile:Lcom/google/android/music/albumwall/Model$ModelPile;
    :cond_0
    :goto_0
    return-void

    .line 1769
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-virtual {v2, p1}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$ModelItem;

    .line 1770
    .local v0, album:Lcom/google/android/music/albumwall/Model$ModelItem;
    if-eqz v0, :cond_0

    .line 1771
    invoke-virtual {v0, p2}, Lcom/google/android/music/albumwall/Model$ModelItem;->invalidate(I)V

    goto :goto_0
.end method

.method public final invalidateTexture(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->invalidate(Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;I)V

    .line 1753
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->invalidate(Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;I)V

    .line 1754
    return-void
.end method

.method public final isManageAlbumMode()Z
    .locals 1

    .prologue
    .line 1733
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/Model;->mManageAlbumMode:Z

    return v0
.end method

.method public final reportFocusableDistance(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;IIZ)V
    .locals 7
    .parameter "pile"
    .parameter "pileIndex"
    .parameter "item"
    .parameter "itemIndex"
    .parameter "distanceSquared"
    .parameter "isPileList"

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mCenterFocus:Lcom/google/android/music/albumwall/Model$FocusAccumulator;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->reportFocusableDistance(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;IIZ)V

    .line 1656
    return-void
.end method

.method public requestRefresh(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .locals 1
    .parameter "viewState"

    .prologue
    .line 817
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/albumwall/Model;->requestRefresh(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;Z)V

    .line 818
    return-void
.end method

.method public requestRefresh(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;Z)V
    .locals 8
    .parameter "viewState"
    .parameter "updateModel"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 833
    new-instance v2, Lcom/google/android/music/albumwall/Model$Epoch;

    invoke-direct {v2}, Lcom/google/android/music/albumwall/Model$Epoch;-><init>()V

    iput-object v2, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 834
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/Model$RequestableCount;->invalidate()V

    .line 835
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mOrdinalToRequestablePileMap:Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;

    iget-object v3, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

    invoke-virtual {v2, v3}, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;->invalidate(Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;)V

    .line 836
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    iget-object v3, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

    invoke-virtual {v2, v3}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->invalidate(Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;)V

    .line 837
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mPileMemberHandleToRequestableItemMap:Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;

    iget-object v3, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

    invoke-virtual {v2, v3}, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;->invalidate(Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;)V

    .line 838
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    iget-object v3, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

    invoke-virtual {v2, v3}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->invalidate(Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;)V

    .line 840
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    monitor-enter v2

    .line 841
    :try_start_0
    iget-object v3, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iget-object v1, v3, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 842
    .local v1, oldExpandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    if-eqz p1, :cond_9

    .line 843
    iget-object v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 844
    .local v0, newExpandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    iget-object v3, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iget v3, v3, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    iget v4, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    if-ne v3, v4, :cond_0

    if-nez v1, :cond_7

    move v3, v5

    :goto_0
    if-nez v0, :cond_8

    move v4, v5

    :goto_1
    if-ne v3, v4, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 847
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/google/android/music/albumwall/Model;->setExpandedPileChanged(Z)V

    .line 855
    .end local v0           #newExpandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    invoke-virtual {v3, p1}, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->set(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 856
    iget-object v3, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iget-boolean v3, v3, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->labelsVisible:Z

    if-eqz v3, :cond_a

    const/high16 v3, 0x3f80

    :goto_3
    iput v3, p0, Lcom/google/android/music/albumwall/Model;->mExpandUngroupedMetadata:F

    .line 857
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 859
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 860
    iget v2, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->pileCount:I

    if-ltz v2, :cond_2

    .line 861
    iget v2, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->pileCount:I

    invoke-virtual {p0, v6, v2}, Lcom/google/android/music/albumwall/Model;->setPileCount(Lcom/google/android/music/albumwall/Model$Epoch;I)V

    .line 863
    :cond_2
    iget-object v2, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v2, :cond_3

    iget v2, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileIndex:I

    if-ltz v2, :cond_3

    .line 864
    iget v2, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileIndex:I

    iget-object v3, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {p0, v6, v2, v3}, Lcom/google/android/music/albumwall/Model;->setPile(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V

    .line 866
    :cond_3
    iget-object v2, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v2, :cond_4

    iget v2, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    if-ltz v2, :cond_4

    .line 867
    iget v2, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    iget-object v3, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {p0, v6, v2, v3}, Lcom/google/android/music/albumwall/Model;->setPile(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V

    .line 869
    :cond_4
    iget-object v2, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v2, :cond_5

    iget v2, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileItemCount:I

    if-ltz v2, :cond_5

    .line 870
    iget-object v2, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget v3, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileItemCount:I

    invoke-virtual {p0, v6, v2, v5, v3}, Lcom/google/android/music/albumwall/Model;->setChildCount(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)V

    .line 872
    :cond_5
    iget-object v2, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v2, :cond_6

    iget v2, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileItemCount:I

    if-ltz v2, :cond_6

    .line 873
    iget-object v2, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget v3, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileItemCount:I

    invoke-virtual {p0, v6, v2, v5, v3}, Lcom/google/android/music/albumwall/Model;->setChildCount(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)V

    .line 876
    :cond_6
    return-void

    .restart local v0       #newExpandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    :cond_7
    move v3, v7

    .line 844
    goto :goto_0

    :cond_8
    move v4, v7

    goto :goto_1

    .line 850
    .end local v0           #newExpandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    :cond_9
    if-eqz v1, :cond_1

    .line 851
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/google/android/music/albumwall/Model;->setExpandedPileChanged(Z)V

    goto :goto_2

    .line 857
    .end local v1           #oldExpandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 856
    .restart local v1       #oldExpandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    :cond_a
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public setAlbumWallConfig(Lcom/google/android/music/albumwall/AlbumWallConfig;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 810
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    .line 812
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getSelectedItemFrame()Lcom/google/android/opengl/glview/NinePatch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mSelectedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    .line 813
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getPressedItemFrame()Lcom/google/android/opengl/glview/NinePatch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPressedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    .line 814
    return-void
.end method

.method public setCallbacks(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/AlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;)V
    .locals 0
    .parameter "view"
    .parameter "delegate"
    .parameter "helper"

    .prologue
    .line 804
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model;->mAlbumWallView:Lcom/google/android/music/albumwall/AlbumWallView;

    .line 805
    iput-object p2, p0, Lcom/google/android/music/albumwall/Model;->mDelegate:Lcom/google/android/music/albumwall/AlbumWallCallback;

    .line 806
    iput-object p3, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

    .line 807
    return-void
.end method

.method public setChildCount(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)V
    .locals 6
    .parameter "epoch"
    .parameter "pile"
    .parameter "expanded"
    .parameter "count"

    .prologue
    .line 1127
    if-eqz p1, :cond_0

    .line 1128
    iget v3, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingChildCountRequests:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingChildCountRequests:I

    .line 1130
    :cond_0
    iget-object v3, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v3, p2}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 1131
    .local v2, p:Lcom/google/android/music/albumwall/Model$ModelPile;
    if-nez v2, :cond_2

    .line 1133
    const-string v3, "Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting un-requested child count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_1
    :goto_0
    return-void

    .line 1135
    :cond_2
    invoke-virtual {v2, p3}, Lcom/google/android/music/albumwall/Model$ModelPile;->getPart(Z)Lcom/google/android/music/albumwall/Model$ModelPilePart;

    move-result-object v3

    iget-object v0, v3, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mItemCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    .line 1136
    .local v0, childCount:Lcom/google/android/music/albumwall/Model$RequestableCount;
    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    if-ne p1, v3, :cond_4

    .line 1137
    :cond_3
    iget v1, v0, Lcom/google/android/music/albumwall/Model$RequestableCount;->mCount:I

    .line 1138
    .local v1, oldCount:I
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableCount;->setReceived()V

    .line 1139
    iput p4, v0, Lcom/google/android/music/albumwall/Model$RequestableCount;->mCount:I

    .line 1140
    if-le v1, p4, :cond_1

    goto :goto_0

    .line 1144
    .end local v1           #oldCount:I
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableCount;->setRequestFailed()V

    goto :goto_0
.end method

.method public setExpandUngroupedMetadata(F)V
    .locals 3
    .parameter "expandUngroupedMetadata"

    .prologue
    .line 1680
    iput p1, p0, Lcom/google/android/music/albumwall/Model;->mExpandUngroupedMetadata:F

    .line 1681
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    monitor-enter v0

    .line 1682
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    const/high16 v2, 0x3f80

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->labelsVisible:Z

    .line 1683
    monitor-exit v0

    .line 1684
    return-void

    .line 1682
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1683
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setExpandedPile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)V
    .locals 2
    .parameter "pile"
    .parameter "pileIndex"

    .prologue
    .line 924
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eq v0, p1, :cond_2

    .line 925
    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 926
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pile == null but pileIndex != -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :cond_0
    if-eqz p1, :cond_1

    if-gez p2, :cond_1

    .line 929
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pile != null but pileIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 931
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    monitor-enter v0

    .line 932
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iput-object p1, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 933
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iput p2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    .line 934
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/Model;->setExpandedPileChanged(Z)V

    .line 937
    :cond_2
    return-void

    .line 934
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setExpandedPileChanged(Z)V
    .locals 0
    .parameter "expandedPileChanged"

    .prologue
    .line 940
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/Model;->mExpandedPileChanged:Z

    .line 941
    return-void
.end method

.method public final setFrameTime(J)V
    .locals 0
    .parameter "frameTime"

    .prologue
    .line 1713
    iput-wide p1, p0, Lcom/google/android/music/albumwall/Model;->mFrameTime:J

    .line 1714
    return-void
.end method

.method public setItem(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .locals 4
    .parameter "epoch"
    .parameter "pile"
    .parameter "expanded"
    .parameter "n"
    .parameter "item"

    .prologue
    .line 1208
    iget v1, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemRequests:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemRequests:I

    .line 1209
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/music/albumwall/Model;->getRequestableItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/Model$RequestableItem;

    move-result-object v0

    .line 1210
    .local v0, albumItem:Lcom/google/android/music/albumwall/Model$RequestableItem;
    if-nez v0, :cond_0

    .line 1211
    const-string v1, "Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setItem bad pile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :goto_0
    return-void

    .line 1213
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    if-ne p1, v1, :cond_2

    .line 1214
    if-eqz p5, :cond_1

    .line 1215
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableItem;->setReceived()V

    .line 1216
    iput-object p5, v0, Lcom/google/android/music/albumwall/Model$RequestableItem;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    goto :goto_0

    .line 1218
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableItem;->setRequestFailed()V

    goto :goto_0

    .line 1221
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableItem;->setRequestFailed()V

    goto :goto_0
.end method

.method public setItemTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "epoch"
    .parameter "type"
    .parameter "item"
    .parameter "bitmap"

    .prologue
    const/4 v4, 0x1

    .line 1478
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemTextureRequests:[I

    aget v3, v2, p2

    sub-int/2addr v3, v4

    aput v3, v2, p2

    .line 1479
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-virtual {v2, p3}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$ModelItem;

    .line 1480
    .local v0, album:Lcom/google/android/music/albumwall/Model$ModelItem;
    if-nez v0, :cond_2

    .line 1481
    const-string v2, "Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setItemTexture unknown item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    .line 1502
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

    new-instance v3, Lcom/google/android/music/albumwall/Model$8;

    invoke-direct {v3, p0, p2, p3, p4}, Lcom/google/android/music/albumwall/Model$8;-><init>(Lcom/google/android/music/albumwall/Model;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;->post(Ljava/lang/Runnable;)V

    .line 1509
    :cond_1
    return-void

    .line 1483
    :cond_2
    iget-object v2, v0, Lcom/google/android/music/albumwall/Model$ModelItem;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v1, v2, p2

    .line 1484
    .local v1, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    if-ne p1, v2, :cond_4

    .line 1485
    if-eqz p4, :cond_3

    .line 1486
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setReceived()V

    .line 1487
    invoke-direct {p0, v1, p4}, Lcom/google/android/music/albumwall/Model;->updateTexture(Lcom/google/android/music/albumwall/Model$RequestableTexture;Landroid/graphics/Bitmap;)V

    .line 1489
    if-ne p2, v4, :cond_0

    .line 1490
    new-instance v2, Lcom/google/android/music/albumwall/Model$Focusable;

    invoke-direct {v2, p3}, Lcom/google/android/music/albumwall/Model$Focusable;-><init>(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    iput-object v2, p0, Lcom/google/android/music/albumwall/Model;->mMostRecentOverlayTextureFocusable:Lcom/google/android/music/albumwall/Model$Focusable;

    goto :goto_0

    .line 1494
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setRequestFailed()V

    goto :goto_0

    .line 1497
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setRequestFailed()V

    goto :goto_0
.end method

.method public final setManageAlbumMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1741
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/Model;->mManageAlbumMode:Z

    .line 1742
    return-void
.end method

.method public setPile(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V
    .locals 4
    .parameter "epoch"
    .parameter "pileIndex"
    .parameter "pile"

    .prologue
    .line 1040
    if-eqz p1, :cond_0

    .line 1041
    iget v1, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileRequests:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileRequests:I

    .line 1043
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/music/albumwall/Model;->getAlbumPile(I)Lcom/google/android/music/albumwall/Model$RequestablePile;

    move-result-object v0

    .line 1044
    .local v0, albumPile:Lcom/google/android/music/albumwall/Model$RequestablePile;
    if-nez v0, :cond_1

    .line 1045
    const-string v1, "Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPile bad pile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :goto_0
    return-void

    .line 1047
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    if-ne p1, v1, :cond_3

    .line 1048
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestablePile;->setReceived()V

    .line 1049
    iput-object p3, v0, Lcom/google/android/music/albumwall/Model$RequestablePile;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    goto :goto_0

    .line 1051
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestablePile;->setRequestFailed()V

    goto :goto_0
.end method

.method public setPileCount(Lcom/google/android/music/albumwall/Model$Epoch;I)V
    .locals 1
    .parameter "epoch"
    .parameter "n"

    .prologue
    .line 992
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    if-ne p1, v0, :cond_1

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableCount;->setReceived()V

    .line 994
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    iput p2, v0, Lcom/google/android/music/albumwall/Model$RequestableCount;->mCount:I

    .line 998
    :goto_0
    return-void

    .line 996
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableCount;->setRequestFailed()V

    goto :goto_0
.end method

.method public setPileLabelTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLandroid/graphics/Bitmap;)V
    .locals 9
    .parameter "epoch"
    .parameter "type"
    .parameter "pile"
    .parameter "expanded"
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x1

    .line 1315
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileTextureRequests:[I

    aget v1, v0, p2

    sub-int/2addr v1, v2

    aput v1, v0, p2

    .line 1316
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v0, p3}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 1317
    .local v7, p:Lcom/google/android/music/albumwall/Model$ModelPile;
    if-nez v7, :cond_2

    .line 1318
    const-string v0, "Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPileLabelTexture bad pile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    .line 1341
    iget-object v8, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

    new-instance v0, Lcom/google/android/music/albumwall/Model$6;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/Model$6;-><init>(Lcom/google/android/music/albumwall/Model;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLandroid/graphics/Bitmap;)V

    invoke-virtual {v8, v0}, Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;->post(Ljava/lang/Runnable;)V

    .line 1347
    :cond_1
    return-void

    .line 1320
    :cond_2
    invoke-virtual {v7, p4}, Lcom/google/android/music/albumwall/Model$ModelPile;->getPart(Z)Lcom/google/android/music/albumwall/Model$ModelPilePart;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v6, v0, p2

    .line 1321
    .local v6, label:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    if-ne p1, v0, :cond_4

    .line 1322
    if-eqz p5, :cond_3

    .line 1323
    invoke-virtual {v6}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setReceived()V

    .line 1324
    invoke-direct {p0, v6, p5}, Lcom/google/android/music/albumwall/Model;->updateTexture(Lcom/google/android/music/albumwall/Model$RequestableTexture;Landroid/graphics/Bitmap;)V

    .line 1326
    if-ne p2, v2, :cond_0

    .line 1327
    new-instance v0, Lcom/google/android/music/albumwall/Model$Focusable;

    invoke-direct {v0, p3}, Lcom/google/android/music/albumwall/Model$Focusable;-><init>(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mMostRecentOverlayTextureFocusable:Lcom/google/android/music/albumwall/Model$Focusable;

    goto :goto_0

    .line 1330
    :cond_3
    invoke-virtual {v6}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setRequestFailed()V

    goto :goto_0

    .line 1333
    :cond_4
    invoke-virtual {v6}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setRequestFailed()V

    goto :goto_0
.end method

.method public updateLoadingTexture()V
    .locals 2

    .prologue
    .line 882
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mAlbumLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->release()V

    .line 883
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mLabelLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->release()V

    .line 885
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getAlbumLoading()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 886
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 887
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mAlbumLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-direct {p0, v1, v0}, Lcom/google/android/music/albumwall/Model;->updateTexture(Lcom/google/android/music/albumwall/Model$RequestableTexture;Landroid/graphics/Bitmap;)V

    .line 888
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mAlbumLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setReceived()V

    .line 890
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelLoading()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 891
    if-eqz v0, :cond_1

    .line 892
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mLabelLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-direct {p0, v1, v0}, Lcom/google/android/music/albumwall/Model;->updateTexture(Lcom/google/android/music/albumwall/Model$RequestableTexture;Landroid/graphics/Bitmap;)V

    .line 893
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mLabelLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setReceived()V

    .line 895
    :cond_1
    return-void
.end method
