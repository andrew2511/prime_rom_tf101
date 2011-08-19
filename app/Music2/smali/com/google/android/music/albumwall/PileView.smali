.class public Lcom/google/android/music/albumwall/PileView;
.super Lcom/google/android/opengl/glview/Stack;
.source "PileView.java"


# instance fields
.field private mIndex:I

.field private mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;


# direct methods
.method public constructor <init>(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;IFFI)V
    .locals 0
    .parameter "id"
    .parameter "pile"
    .parameter "index"
    .parameter "width"
    .parameter "height"
    .parameter "gravity"

    .prologue
    .line 14
    invoke-direct {p0, p1, p6}, Lcom/google/android/opengl/glview/Stack;-><init>(II)V

    .line 15
    iput-object p2, p0, Lcom/google/android/music/albumwall/PileView;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 16
    iput p3, p0, Lcom/google/android/music/albumwall/PileView;->mIndex:I

    .line 17
    invoke-virtual {p0, p4, p5}, Lcom/google/android/music/albumwall/PileView;->internalSetExtent(FF)V

    .line 18
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/google/android/music/albumwall/PileView;->mIndex:I

    return v0
.end method

.method public getMinLength(Z)F
    .locals 1
    .parameter "horizontal"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/google/android/music/albumwall/PileView;->length(Z)F

    move-result v0

    return v0
.end method

.method public getPile()Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/music/albumwall/PileView;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    return-object v0
.end method
