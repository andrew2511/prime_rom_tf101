.class Lcom/google/android/music/albumwall/Model$FocusAccumulator;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FocusAccumulator"
.end annotation


# instance fields
.field private mCurrent:Lcom/google/android/music/albumwall/Model$Focusable;

.field private mNext:Lcom/google/android/music/albumwall/Model$Focusable;

.field private mNextDistanceSquared:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    new-instance v0, Lcom/google/android/music/albumwall/Model$Focusable;

    invoke-direct {v0}, Lcom/google/android/music/albumwall/Model$Focusable;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->mCurrent:Lcom/google/android/music/albumwall/Model$Focusable;

    .line 749
    new-instance v0, Lcom/google/android/music/albumwall/Model$Focusable;

    invoke-direct {v0}, Lcom/google/android/music/albumwall/Model$Focusable;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->mNext:Lcom/google/android/music/albumwall/Model$Focusable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/albumwall/Model$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 747
    invoke-direct {p0}, Lcom/google/android/music/albumwall/Model$FocusAccumulator;-><init>()V

    return-void
.end method


# virtual methods
.method public final endCollectingViewState()V
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->mCurrent:Lcom/google/android/music/albumwall/Model$Focusable;

    .line 774
    .local v0, temp:Lcom/google/android/music/albumwall/Model$Focusable;
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->mNext:Lcom/google/android/music/albumwall/Model$Focusable;

    iput-object v1, p0, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->mCurrent:Lcom/google/android/music/albumwall/Model$Focusable;

    .line 775
    iput-object v0, p0, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->mNext:Lcom/google/android/music/albumwall/Model$Focusable;

    .line 776
    return-void
.end method

.method public getCurrent()Lcom/google/android/music/albumwall/Model$Focusable;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->mCurrent:Lcom/google/android/music/albumwall/Model$Focusable;

    return-object v0
.end method

.method public final reportFocusableDistance(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;IIZ)V
    .locals 1
    .parameter "pile"
    .parameter "pileIndex"
    .parameter "item"
    .parameter "itemIndex"
    .parameter "distanceSquared"
    .parameter "isPileList"

    .prologue
    .line 762
    iget v0, p0, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->mNextDistanceSquared:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->mNextDistanceSquared:I

    if-le v0, p5, :cond_1

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->mNext:Lcom/google/android/music/albumwall/Model$Focusable;

    iput-object p1, v0, Lcom/google/android/music/albumwall/Model$Focusable;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 764
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->mNext:Lcom/google/android/music/albumwall/Model$Focusable;

    iput p2, v0, Lcom/google/android/music/albumwall/Model$Focusable;->mPileIndex:I

    .line 765
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->mNext:Lcom/google/android/music/albumwall/Model$Focusable;

    iput-object p3, v0, Lcom/google/android/music/albumwall/Model$Focusable;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 766
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->mNext:Lcom/google/android/music/albumwall/Model$Focusable;

    iput p4, v0, Lcom/google/android/music/albumwall/Model$Focusable;->mItemIndex:I

    .line 767
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->mNext:Lcom/google/android/music/albumwall/Model$Focusable;

    iput-boolean p6, v0, Lcom/google/android/music/albumwall/Model$Focusable;->mIsPileList:Z

    .line 768
    iput p5, p0, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->mNextDistanceSquared:I

    .line 770
    :cond_1
    return-void
.end method

.method public startCollectingViewState()V
    .locals 1

    .prologue
    .line 753
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->mNextDistanceSquared:I

    .line 754
    return-void
.end method
