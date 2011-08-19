.class public Lcom/google/android/music/albumwall/ItemLabel;
.super Lcom/google/android/music/albumwall/Label;
.source "ItemLabel.java"


# instance fields
.field private mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;


# direct methods
.method public constructor <init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .locals 0
    .parameter "id"
    .parameter "width"
    .parameter "height"
    .parameter "model"
    .parameter "item"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/music/albumwall/Label;-><init>(IFFLcom/google/android/music/albumwall/Model;)V

    .line 13
    iput-object p5, p0, Lcom/google/android/music/albumwall/ItemLabel;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 14
    return-void
.end method


# virtual methods
.method protected ensureVertexData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 27
    iget-object v4, p0, Lcom/google/android/music/albumwall/ItemLabel;->mModel:Lcom/google/android/music/albumwall/Model;

    iget-object v5, p0, Lcom/google/android/music/albumwall/ItemLabel;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    invoke-virtual {v4, v6, v5}, Lcom/google/android/music/albumwall/Model;->getItemTextureWidth(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)F

    move-result v2

    .line 28
    .local v2, tw:F
    iget-object v4, p0, Lcom/google/android/music/albumwall/ItemLabel;->mModel:Lcom/google/android/music/albumwall/Model;

    iget-object v5, p0, Lcom/google/android/music/albumwall/ItemLabel;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    invoke-virtual {v4, v6, v5}, Lcom/google/android/music/albumwall/Model;->getItemTextureHeight(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)F

    move-result v1

    .line 29
    .local v1, th:F
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/ItemLabel;->width()F

    move-result v3

    .line 30
    .local v3, w:F
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/ItemLabel;->height()F

    move-result v0

    .line 31
    .local v0, h:F
    cmpl-float v4, v2, v3

    if-nez v4, :cond_0

    cmpl-float v4, v1, v0

    if-eqz v4, :cond_1

    .line 32
    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/google/android/music/albumwall/ItemLabel;->internalSetExtent(FF)V

    .line 33
    invoke-virtual {p0, p0}, Lcom/google/android/music/albumwall/ItemLabel;->childExtentChanged(Lcom/google/android/opengl/glview/GLView;)V

    .line 35
    :cond_1
    invoke-super {p0}, Lcom/google/android/music/albumwall/Label;->ensureVertexData()V

    .line 36
    return-void
.end method

.method public getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/music/albumwall/ItemLabel;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    return-object v0
.end method

.method protected getTextureFadeInFactor()F
    .locals 5

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/albumwall/ItemLabel;->mModel:Lcom/google/android/music/albumwall/Model;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/music/albumwall/ItemLabel;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/albumwall/Model;->getItemTextureFadeInFactor(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;J)F

    move-result v0

    return v0
.end method

.method protected getTextureId()I
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/music/albumwall/ItemLabel;->mModel:Lcom/google/android/music/albumwall/Model;

    iget-object v1, p0, Lcom/google/android/music/albumwall/ItemLabel;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/Model;->getItemLabelTextureId(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/music/albumwall/Label;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/ItemLabel;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
