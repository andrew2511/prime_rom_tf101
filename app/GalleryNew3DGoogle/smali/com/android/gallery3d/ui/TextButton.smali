.class public Lcom/android/gallery3d/ui/TextButton;
.super Lcom/android/gallery3d/ui/Label;
.source "TextButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/TextButton$OnClickedListener;
    }
.end annotation


# instance fields
.field private mNormalBackground:Lcom/android/gallery3d/ui/Texture;

.field private mOnClickListener:Lcom/android/gallery3d/ui/TextButton$OnClickedListener;

.field private mPressed:Z

.field private mPressedBackground:Lcom/android/gallery3d/ui/Texture;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "label"

    .prologue
    const/16 v1, 0x10

    const/4 v0, 0x5

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/Label;-><init>(Landroid/content/Context;I)V

    .line 38
    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/android/gallery3d/ui/TextButton;->setPaddings(IIII)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 72
    :goto_0
    :pswitch_0
    return v1

    .line 59
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/TextButton;->mPressed:Z

    .line 60
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TextButton;->invalidate()V

    goto :goto_0

    .line 63
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/TextButton;->mOnClickListener:Lcom/android/gallery3d/ui/TextButton$OnClickedListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/ui/TextButton;->mOnClickListener:Lcom/android/gallery3d/ui/TextButton$OnClickedListener;

    invoke-interface {v0, p0}, Lcom/android/gallery3d/ui/TextButton$OnClickedListener;->onClicked(Lcom/android/gallery3d/ui/GLView;)V

    .line 68
    :cond_0
    :pswitch_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/TextButton;->mPressed:Z

    .line 69
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TextButton;->invalidate()V

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 77
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/TextButton;->mPressed:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/ui/TextButton;->mPressedBackground:Lcom/android/gallery3d/ui/Texture;

    move-object v1, v2

    .line 78
    .local v1, bg:Lcom/android/gallery3d/ui/Texture;
    :goto_0
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TextButton;->getWidth()I

    move-result v5

    .line 80
    .local v5, width:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TextButton;->getHeight()I

    move-result v6

    .line 81
    .local v6, height:I
    instance-of v2, v1, Lcom/android/gallery3d/ui/NinePatchTexture;

    if-eqz v2, :cond_2

    .line 82
    move-object v0, v1

    check-cast v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    .line 83
    .local v7, p:Landroid/graphics/Rect;
    iget v2, v7, Landroid/graphics/Rect;->left:I

    neg-int v3, v2

    iget v2, v7, Landroid/graphics/Rect;->top:I

    neg-int v4, v2

    iget v2, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v5

    iget v8, v7, Landroid/graphics/Rect;->right:I

    add-int v5, v2, v8

    iget v2, v7, Landroid/graphics/Rect;->top:I

    .end local v5           #width:I
    add-int/2addr v2, v6

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    add-int v6, v2, v8

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 89
    .end local v6           #height:I
    .end local v7           #p:Landroid/graphics/Rect;
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/Label;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 90
    return-void

    .line 77
    .end local v1           #bg:Lcom/android/gallery3d/ui/Texture;
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/TextButton;->mNormalBackground:Lcom/android/gallery3d/ui/Texture;

    move-object v1, v2

    goto :goto_0

    .restart local v1       #bg:Lcom/android/gallery3d/ui/Texture;
    .restart local v5       #width:I
    .restart local v6       #height:I
    :cond_2
    move-object v2, p1

    move v4, v3

    .line 86
    invoke-interface/range {v1 .. v6}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_1
.end method

.method public setNormalBackground(Lcom/android/gallery3d/ui/Texture;)V
    .locals 0
    .parameter "texture"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/gallery3d/ui/TextButton;->mNormalBackground:Lcom/android/gallery3d/ui/Texture;

    .line 52
    return-void
.end method

.method public setOnClickListener(Lcom/android/gallery3d/ui/TextButton$OnClickedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/gallery3d/ui/TextButton;->mOnClickListener:Lcom/android/gallery3d/ui/TextButton$OnClickedListener;

    .line 44
    return-void
.end method

.method public setPressedBackground(Lcom/android/gallery3d/ui/Texture;)V
    .locals 0
    .parameter "texture"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/gallery3d/ui/TextButton;->mPressedBackground:Lcom/android/gallery3d/ui/Texture;

    .line 48
    return-void
.end method
