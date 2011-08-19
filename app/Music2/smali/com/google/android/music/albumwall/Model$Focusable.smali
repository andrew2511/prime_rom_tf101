.class final Lcom/google/android/music/albumwall/Model$Focusable;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Focusable"
.end annotation


# instance fields
.field public mIsPileList:Z

.field public mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

.field public mItemIndex:I

.field public mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

.field public mPileIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$Focusable;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 735
    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V
    .locals 1
    .parameter "pile"

    .prologue
    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$Focusable;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/Model$Focusable;->mIsPileList:Z

    .line 731
    return-void
.end method


# virtual methods
.method public isPileList()Z
    .locals 1

    .prologue
    .line 738
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/Model$Focusable;->mIsPileList:Z

    return v0
.end method
