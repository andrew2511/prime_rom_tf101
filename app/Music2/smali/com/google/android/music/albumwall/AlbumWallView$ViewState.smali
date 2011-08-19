.class public final Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
.super Ljava/lang/Object;
.source "AlbumWallView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/AlbumWallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewState"
.end annotation


# instance fields
.field public centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

.field public centerVisibleItemIndex:I

.field public centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

.field public centerVisiblePileIndex:I

.field public centerVisiblePileItemCount:I

.field public expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

.field public expandedPileIndex:I

.field public expandedPileItemCount:I

.field public labelsVisible:Z

.field public pileCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .locals 0
    .parameter "original"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->set(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 70
    return-void
.end method


# virtual methods
.method public set(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .locals 2
    .parameter "original"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 76
    if-nez p1, :cond_0

    .line 77
    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->pileCount:I

    .line 78
    iput-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 79
    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileIndex:I

    .line 80
    iput-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 81
    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItemIndex:I

    .line 82
    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileItemCount:I

    .line 83
    iput-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 84
    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    .line 85
    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileItemCount:I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->labelsVisible:Z

    .line 99
    :goto_0
    return-void

    .line 88
    :cond_0
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->pileCount:I

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->pileCount:I

    .line 89
    iget-object v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 90
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileIndex:I

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileIndex:I

    .line 91
    iget-object v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 92
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItemIndex:I

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItemIndex:I

    .line 93
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileItemCount:I

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileItemCount:I

    .line 94
    iget-object v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 95
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    .line 96
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileItemCount:I

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileItemCount:I

    .line 97
    iget-boolean v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->labelsVisible:Z

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->labelsVisible:Z

    goto :goto_0
.end method
