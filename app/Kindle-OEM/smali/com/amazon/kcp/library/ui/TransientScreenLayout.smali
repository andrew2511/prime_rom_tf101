.class public Lcom/amazon/kcp/library/ui/TransientScreenLayout;
.super Landroid/widget/LinearLayout;
.source "TransientScreenLayout.java"


# instance fields
.field private cachedCoverHashcode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/kcp/library/ui/TransientScreenLayout;->cachedCoverHashcode:I

    .line 45
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 52
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 55
    const v9, 0x7f0c00ce

    invoke-virtual {p0, v9}, Lcom/amazon/kcp/library/ui/TransientScreenLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/library/ui/BookCoverView;

    .line 56
    .local v3, coverView:Lcom/amazon/kcp/library/ui/BookCoverView;
    invoke-virtual {v3}, Lcom/amazon/kcp/library/ui/BookCoverView;->getCover()Lcom/amazon/kcp/library/ui/Cover;

    move-result-object v1

    .line 57
    .local v1, cover:Lcom/amazon/kcp/library/ui/Cover;
    invoke-virtual {v1}, Lcom/amazon/kcp/library/ui/Cover;->getCoverImage()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 61
    .local v5, orig:Landroid/graphics/Bitmap;
    if-nez p1, :cond_0

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    iget v10, p0, Lcom/amazon/kcp/library/ui/TransientScreenLayout;->cachedCoverHashcode:I

    if-eq v9, v10, :cond_1

    .line 65
    :cond_0
    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    iput v9, p0, Lcom/amazon/kcp/library/ui/TransientScreenLayout;->cachedCoverHashcode:I

    .line 68
    invoke-virtual {v3}, Lcom/amazon/kcp/library/ui/BookCoverView;->getWidth()I

    move-result v9

    invoke-virtual {v3}, Lcom/amazon/kcp/library/ui/BookCoverView;->getHeight()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v10, v11}, Lcom/amazon/kcp/library/ui/Cover;->getCoverImageBounds(IIZ)Landroid/graphics/Rect;

    move-result-object v2

    .line 69
    .local v2, coverBounds:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v5, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 73
    .local v8, scaled:Landroid/graphics/Bitmap;
    const v9, 0x7f0c00d1

    invoke-virtual {p0, v9}, Lcom/amazon/kcp/library/ui/TransientScreenLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 74
    .local v0, availableHeight:I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ge v9, v0, :cond_2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move v4, v9

    .line 78
    .local v4, croppedRefHeight:I
    :goto_0
    invoke-static {v8, v4}, Lcom/amazon/android/util/UIUtils;->createReflection(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 81
    .local v7, reflection:Landroid/graphics/Bitmap;
    const v9, 0x7f0c00d0

    invoke-virtual {p0, v9}, Lcom/amazon/kcp/library/ui/TransientScreenLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 82
    .local v6, refView:Landroid/widget/ImageView;
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    .end local v0           #availableHeight:I
    .end local v2           #coverBounds:Landroid/graphics/Rect;
    .end local v4           #croppedRefHeight:I
    .end local v6           #refView:Landroid/widget/ImageView;
    .end local v7           #reflection:Landroid/graphics/Bitmap;
    .end local v8           #scaled:Landroid/graphics/Bitmap;
    :cond_1
    return-void

    .restart local v0       #availableHeight:I
    .restart local v2       #coverBounds:Landroid/graphics/Rect;
    .restart local v8       #scaled:Landroid/graphics/Bitmap;
    :cond_2
    move v4, v0

    .line 74
    goto :goto_0
.end method
