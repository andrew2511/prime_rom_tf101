.class final Landroid/view/ViewDebug$4;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Landroid/view/ViewDebug$ViewOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/ViewDebug$ViewOperation",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 998
    iput-object p1, p0, Landroid/view/ViewDebug$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs post([Ljava/lang/Object;)V
    .registers 4
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 1019
    aget-object v0, p1, v1

    if-eqz v0, :cond_c

    .line 1020
    aget-object p0, p1, v1

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1022
    :cond_c
    return-void
.end method

.method public pre()[Ljava/lang/Object;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1000
    iget-object v3, p0, Landroid/view/ViewDebug$4;->val$view:Landroid/view/View;

    if-eqz v3, :cond_37

    iget-object v3, p0, Landroid/view/ViewDebug$4;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_37

    iget-object v3, p0, Landroid/view/ViewDebug$4;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    move-object v2, v3

    .line 1003
    .local v2, metrics:Landroid/util/DisplayMetrics;
    :goto_18
    if-eqz v2, :cond_39

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 1006
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_25
    if-eqz v0, :cond_3b

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v1, v3

    .line 1007
    .local v1, canvas:Landroid/graphics/Canvas;
    :goto_2d
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    return-object v3

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_37
    move-object v2, v6

    .line 1000
    goto :goto_18

    .restart local v2       #metrics:Landroid/util/DisplayMetrics;
    :cond_39
    move-object v0, v6

    .line 1003
    goto :goto_25

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_3b
    move-object v1, v6

    .line 1006
    goto :goto_2d
.end method

.method public varargs run([Ljava/lang/Object;)V
    .registers 4
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 1013
    aget-object v0, p1, v1

    if-eqz v0, :cond_e

    .line 1014
    iget-object v0, p0, Landroid/view/ViewDebug$4;->val$view:Landroid/view/View;

    aget-object p0, p1, v1

    .end local p0
    check-cast p0, Landroid/graphics/Canvas;

    invoke-virtual {v0, p0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1016
    :cond_e
    return-void
.end method
