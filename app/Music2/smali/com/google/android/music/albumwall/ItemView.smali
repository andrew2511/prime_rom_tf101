.class public Lcom/google/android/music/albumwall/ItemView;
.super Lcom/google/android/opengl/glview/TexturedQuad;
.source "ItemView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlbumView"

.field public static final VISIT_SAVE_POSE:I = 0x64


# instance fields
.field private mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

.field private mModel:Lcom/google/android/music/albumwall/Model;


# direct methods
.method public constructor <init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .locals 0
    .parameter "viewId"
    .parameter "width"
    .parameter "height"
    .parameter "model"
    .parameter "item"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/TexturedQuad;-><init>(IFF)V

    .line 20
    iput-object p4, p0, Lcom/google/android/music/albumwall/ItemView;->mModel:Lcom/google/android/music/albumwall/Model;

    .line 21
    iput-object p5, p0, Lcom/google/android/music/albumwall/ItemView;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 22
    return-void
.end method


# virtual methods
.method public drawForeground(Lcom/google/android/opengl/glview/GLCanvas;I)Z
    .locals 10
    .parameter "glCanvas"
    .parameter "textureChannel"

    .prologue
    const/4 v5, 0x1

    const/high16 v9, 0x4080

    const/high16 v2, 0x4000

    const/4 v8, 0x0

    const/high16 v7, -0x4000

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, patch:Lcom/google/android/opengl/glview/NinePatch;
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/music/albumwall/ItemView;->testAndFlags(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/google/android/music/albumwall/ItemView;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model;->getSelectedItemFrame()Lcom/google/android/opengl/glview/NinePatch;

    move-result-object v0

    .line 39
    :cond_0
    invoke-virtual {p0, v5}, Lcom/google/android/music/albumwall/ItemView;->testAndFlags(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/google/android/music/albumwall/ItemView;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model;->getPressedItemFrame()Lcom/google/android/opengl/glview/NinePatch;

    move-result-object v0

    .line 42
    :cond_1
    if-eqz v0, :cond_2

    .line 43
    const/high16 v6, 0x4000

    .line 44
    .local v6, border:F
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/ItemView;->width()F

    move-result v1

    sub-float v3, v1, v9

    .line 45
    .local v3, w:F
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/ItemView;->height()F

    move-result v1

    sub-float v4, v1, v9

    .line 46
    .local v4, h:F
    invoke-virtual {p1, v2, v2, v8}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    move-object v1, p1

    move v2, p2

    .line 47
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/opengl/glview/NinePatch;->draw(Lcom/google/android/opengl/glview/GLCanvas;IFFZ)V

    .line 48
    invoke-virtual {p1, v7, v7, v8}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    .line 50
    .end local v3           #w:F
    .end local v4           #h:F
    .end local v6           #border:F
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/music/albumwall/ItemView;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    return-object v0
.end method

.method protected getLoadingTextureId()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/music/albumwall/ItemView;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->getAlbumLoadingTextureId()I

    move-result v0

    return v0
.end method

.method protected getTextureFadeInFactor()F
    .locals 5

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/music/albumwall/ItemView;->mModel:Lcom/google/android/music/albumwall/Model;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/music/albumwall/ItemView;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/albumwall/Model;->getItemTextureFadeInFactor(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;J)F

    move-result v0

    return v0
.end method

.method protected getTextureId()I
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/albumwall/ItemView;->mModel:Lcom/google/android/music/albumwall/Model;

    iget-object v1, p0, Lcom/google/android/music/albumwall/ItemView;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/Model;->getItemTextureId(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/ItemView;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visit(ILjava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "visitor"

    .prologue
    .line 55
    packed-switch p1, :pswitch_data_0

    .line 59
    .end local p2
    :goto_0
    return-void

    .line 57
    .restart local p2
    :pswitch_0
    check-cast p2, Lcom/google/android/music/albumwall/AlbumPoseCache;

    .end local p2
    iget-object v0, p0, Lcom/google/android/music/albumwall/ItemView;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->getFrameTime()J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Lcom/google/android/music/albumwall/AlbumPoseCache;->record(Lcom/google/android/music/albumwall/ItemView;J)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
