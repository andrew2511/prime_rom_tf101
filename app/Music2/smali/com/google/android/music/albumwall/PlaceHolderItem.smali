.class public Lcom/google/android/music/albumwall/PlaceHolderItem;
.super Lcom/google/android/music/albumwall/ItemView;
.source "PlaceHolderItem.java"


# instance fields
.field mModel:Lcom/google/android/music/albumwall/Model;


# direct methods
.method public constructor <init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .locals 0
    .parameter "viewId"
    .parameter "width"
    .parameter "height"
    .parameter "model"
    .parameter "item"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p5}, Lcom/google/android/music/albumwall/ItemView;-><init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 13
    iput-object p4, p0, Lcom/google/android/music/albumwall/PlaceHolderItem;->mModel:Lcom/google/android/music/albumwall/Model;

    .line 14
    return-void
.end method


# virtual methods
.method protected getLoadingTextureId()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/music/albumwall/PlaceHolderItem;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->getAlbumLoadingTextureId()I

    move-result v0

    return v0
.end method

.method protected getTextureId()I
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/PlaceHolderItem;->getLoadingTextureId()I

    move-result v0

    return v0
.end method
