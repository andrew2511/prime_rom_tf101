.class public Lcom/splashtop/remote/softkeyboard/Hotkey;
.super Ljava/lang/Object;
.source "Hotkey.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHotkeyDrawableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/Hotkey;->mContext:Landroid/content/Context;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/splashtop/remote/softkeyboard/Hotkey;->mHotkeyDrawableMap:Ljava/util/Map;

    .line 26
    return-void
.end method


# virtual methods
.method protected invalidate(Landroid/view/View;I)V
    .locals 4
    .parameter "view"
    .parameter "res"

    .prologue
    .line 76
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0

    invoke-virtual {p0, p2}, Lcom/splashtop/remote/softkeyboard/Hotkey;->makeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local p1
    :goto_0
    return-void

    .line 77
    .restart local p1
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 78
    .local v1, ex:Ljava/lang/Exception;
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/Hotkey;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected makeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "res"

    .prologue
    .line 63
    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/Hotkey;->mHotkeyDrawableMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 64
    .local v1, cacheDrawable:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 65
    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/Hotkey;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 66
    .local v2, is:Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v0, v4, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 68
    .local v3, npImage:Landroid/graphics/NinePatch;
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    .end local v1           #cacheDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/Hotkey;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V

    .line 69
    .restart local v1       #cacheDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/splashtop/remote/softkeyboard/Hotkey;->mHotkeyDrawableMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #npImage:Landroid/graphics/NinePatch;
    :cond_0
    return-object v1
.end method

.method protected makeHotkey9Drawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "res"

    .prologue
    .line 39
    iget-object v2, p0, Lcom/splashtop/remote/softkeyboard/Hotkey;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 40
    .local v0, bitmapOrg:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 41
    .local v1, npImage:Landroid/graphics/NinePatch;
    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/Hotkey;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V

    return-object v2
.end method

.method protected makeHotkeyDrawable(IF)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "res"
    .parameter "scale"

    .prologue
    const/4 v1, 0x0

    .line 29
    iget-object v2, p0, Lcom/splashtop/remote/softkeyboard/Hotkey;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 30
    .local v0, bitmapOrg:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 31
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 32
    .local v4, height:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 33
    .local v5, matrix:Landroid/graphics/Matrix;
    const v2, 0x3fd9999a

    invoke-virtual {v5, p2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 34
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 35
    .local v7, resizedBitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/splashtop/remote/softkeyboard/Hotkey;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method protected makeHotkeyView(ILandroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 2
    .parameter "id"
    .parameter "drawable"

    .prologue
    .line 45
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/Hotkey;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, hotKey:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 47
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    return-object v0
.end method

.method protected makeHotkeyViewFor9Drawable(IIF)Landroid/view/View;
    .locals 4
    .parameter "id"
    .parameter "drawable"
    .parameter "scale"

    .prologue
    .line 52
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/splashtop/remote/softkeyboard/Hotkey;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 53
    .local v1, hotKey:Landroid/widget/ImageView;
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 55
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/splashtop/remote/softkeyboard/Hotkey;->makeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-object v1

    .line 56
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 57
    .local v0, ex:Ljava/lang/Exception;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/splashtop/remote/softkeyboard/Hotkey;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
