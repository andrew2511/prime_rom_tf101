.class public Lcom/android/gallery3d/ui/FilmStripView;
.super Lcom/android/gallery3d/ui/GLView;
.source "FilmStripView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ScrollBarView$Listener;
.implements Lcom/android/gallery3d/ui/SlotView$Listener;
.implements Lcom/android/gallery3d/ui/UserInteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/FilmStripView$Listener;
    }
.end annotation


# instance fields
.field private mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataAdapter;

.field private mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundTexture:Lcom/android/gallery3d/ui/DrawableTexture;

.field private mBarSize:I

.field private mBottomMargin:I

.field private mContentSize:I

.field private mFilmStripAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

.field private mFilmStripVisible:Z

.field private mGripSize:I

.field private mListener:Lcom/android/gallery3d/ui/FilmStripView$Listener;

.field private mMidMargin:I

.field private mScrollBarView:Lcom/android/gallery3d/ui/ScrollBarView;

.field private mStripDrawer:Lcom/android/gallery3d/ui/StripDrawer;

.field private mThumbSize:I

.field private mTopMargin:I

.field private mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/data/MediaSet;IIIIIIII)V
    .locals 11
    .parameter "activity"
    .parameter "mediaSet"
    .parameter "topMargin"
    .parameter "midMargin"
    .parameter "bottomMargin"
    .parameter "contentSize"
    .parameter "thumbSize"
    .parameter "barSize"
    .parameter "gripSize"
    .parameter "gripWidth"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 75
    iput p3, p0, Lcom/android/gallery3d/ui/FilmStripView;->mTopMargin:I

    .line 76
    iput p4, p0, Lcom/android/gallery3d/ui/FilmStripView;->mMidMargin:I

    .line 77
    move/from16 v0, p5

    move-object v1, p0

    iput v0, v1, Lcom/android/gallery3d/ui/FilmStripView;->mBottomMargin:I

    .line 79
    move/from16 v0, p6

    move-object v1, p0

    iput v0, v1, Lcom/android/gallery3d/ui/FilmStripView;->mContentSize:I

    .line 80
    move/from16 v0, p7

    move-object v1, p0

    iput v0, v1, Lcom/android/gallery3d/ui/FilmStripView;->mThumbSize:I

    .line 81
    move/from16 v0, p8

    move-object v1, p0

    iput v0, v1, Lcom/android/gallery3d/ui/FilmStripView;->mBarSize:I

    .line 82
    move/from16 v0, p9

    move-object v1, p0

    iput v0, v1, Lcom/android/gallery3d/ui/FilmStripView;->mGripSize:I

    .line 84
    new-instance v4, Lcom/android/gallery3d/ui/StripDrawer;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    move-object p3, v0

    .end local p3
    invoke-direct {v4, p3}, Lcom/android/gallery3d/ui/StripDrawer;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->mStripDrawer:Lcom/android/gallery3d/ui/StripDrawer;

    .line 85
    new-instance v4, Lcom/android/gallery3d/ui/AlbumView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p1

    move/from16 v6, p7

    move/from16 v7, p7

    move/from16 v10, p7

    invoke-direct/range {v4 .. v10}, Lcom/android/gallery3d/ui/AlbumView;-><init>(Lcom/android/gallery3d/app/GalleryActivity;IIIII)V

    iput-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    .line 87
    iget-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    iget-object v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/AlbumView;->setOverscrollEffect(I)V

    .line 88
    iget-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    iget-object v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->mStripDrawer:Lcom/android/gallery3d/ui/StripDrawer;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/AlbumView;->setSelectionDrawer(Lcom/android/gallery3d/ui/SelectionDrawer;)V

    .line 89
    iget-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    invoke-virtual {v4, p0}, Lcom/android/gallery3d/ui/AlbumView;->setListener(Lcom/android/gallery3d/ui/SlotView$Listener;)V

    .line 90
    iget-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    invoke-virtual {v4, p0}, Lcom/android/gallery3d/ui/AlbumView;->setUserInteractionListener(Lcom/android/gallery3d/ui/UserInteractionListener;)V

    .line 91
    new-instance v4, Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-direct {v4, p1, p2}, Lcom/android/gallery3d/app/AlbumDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/data/MediaSet;)V

    iput-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataAdapter;

    .line 92
    iget-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/ui/FilmStripView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 93
    new-instance v4, Lcom/android/gallery3d/ui/ScrollBarView;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/android/gallery3d/ui/FilmStripView;->mGripSize:I

    move-object v0, v4

    move-object v1, v5

    move v2, v6

    move/from16 v3, p10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/ScrollBarView;-><init>(Landroid/content/Context;II)V

    iput-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/android/gallery3d/ui/ScrollBarView;

    .line 95
    iget-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/android/gallery3d/ui/ScrollBarView;

    invoke-virtual {v4, p0}, Lcom/android/gallery3d/ui/ScrollBarView;->setListener(Lcom/android/gallery3d/ui/ScrollBarView$Listener;)V

    .line 96
    iget-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/android/gallery3d/ui/ScrollBarView;

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/ui/FilmStripView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 98
    iget-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    iget-object v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/AlbumView;->setModel(Lcom/android/gallery3d/ui/AlbumView$Model;)V

    .line 99
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->mFilmStripVisible:Z

    .line 102
    return-void
.end method

.method private setFilmStripVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->mFilmStripVisible:Z

    if-ne v0, p1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 114
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/FilmStripView;->mFilmStripVisible:Z

    .line 115
    if-nez p1, :cond_1

    .line 116
    new-instance v0, Lcom/android/gallery3d/anim/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/anim/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->mFilmStripAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->mFilmStripAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/anim/CanvasAnimation;->setDuration(I)V

    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->mFilmStripAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/anim/CanvasAnimation;->start()V

    .line 122
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->invalidate()V

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->mFilmStripAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    goto :goto_1
.end method


# virtual methods
.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->mFilmStripVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->mFilmStripAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 180
    :goto_0
    return v0

    .line 169
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 180
    :goto_1
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 172
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->onUserInteractionBegin()V

    goto :goto_1

    .line 176
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->onUserInteractionEnd()V

    goto :goto_1

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/FilmStripView;->setFilmStripVisible(Z)V

    .line 131
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v8, 0x0

    .line 144
    if-nez p1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    iget v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->mTopMargin:I

    sub-int v5, p4, p2

    iget v6, p0, Lcom/android/gallery3d/ui/FilmStripView;->mTopMargin:I

    iget v7, p0, Lcom/android/gallery3d/ui/FilmStripView;->mContentSize:I

    add-int/2addr v6, v7

    invoke-virtual {v3, v8, v4, v5, v6}, Lcom/android/gallery3d/ui/AlbumView;->layout(IIII)V

    .line 146
    iget v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->mTopMargin:I

    iget v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->mContentSize:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->mMidMargin:I

    add-int v0, v3, v4

    .line 147
    .local v0, barStart:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/android/gallery3d/ui/ScrollBarView;

    sub-int v4, p4, p2

    iget v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->mBarSize:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v8, v0, v4, v5}, Lcom/android/gallery3d/ui/ScrollBarView;->layout(IIII)V

    .line 148
    sub-int v2, p4, p2

    .line 149
    .local v2, width:I
    sub-int v1, p5, p3

    .line 150
    .local v1, height:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8, v8, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 151
    new-instance v3, Lcom/android/gallery3d/ui/DrawableTexture;

    iget-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4, v2, v1}, Lcom/android/gallery3d/ui/DrawableTexture;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->mBackgroundTexture:Lcom/android/gallery3d/ui/DrawableTexture;

    goto :goto_0
.end method

.method public onLongTap(I)V
    .locals 0
    .parameter "slotIndex"

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/FilmStripView;->onSingleTapUp(I)V

    .line 219
    return-void
.end method

.method public onScrollPositionChanged(II)V
    .locals 1
    .parameter "position"
    .parameter "total"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->mScrollBarView:Lcom/android/gallery3d/ui/ScrollBarView;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/ScrollBarView;->setContentPosition(II)V

    .line 239
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumView;->setFocusIndex(I)V

    .line 213
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->mListener:Lcom/android/gallery3d/ui/FilmStripView$Listener;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/FilmStripView$Listener;->onSlotSelected(I)V

    .line 214
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/UserInteractionListener;->onUserInteraction()V

    .line 234
    return-void
.end method

.method public onUserInteractionBegin()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/UserInteractionListener;->onUserInteractionBegin()V

    .line 224
    return-void
.end method

.method public onUserInteractionEnd()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/UserInteractionListener;->onUserInteractionEnd()V

    .line 229
    return-void
.end method

.method protected onVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->onVisibilityChanged(I)V

    .line 136
    if-nez p1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->onUserInteraction()V

    .line 139
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumView;->pause()V

    .line 257
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataAdapter;->pause()V

    .line 258
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->mFilmStripAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    .line 186
    .local v0, anim:Lcom/android/gallery3d/anim/CanvasAnimation;
    if-nez v0, :cond_1

    iget-boolean v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->mFilmStripVisible:Z

    if-nez v5, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    const/4 v2, 0x0

    .line 189
    .local v2, needRestore:Z
    if-eqz v0, :cond_2

    .line 190
    const/4 v2, 0x1

    .line 191
    invoke-virtual {v0}, Lcom/android/gallery3d/anim/CanvasAnimation;->getCanvasSaveFlags()I

    move-result v5

    invoke-interface {p1, v5}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)I

    .line 192
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 193
    .local v3, now:J
    invoke-virtual {v0, v3, v4}, Lcom/android/gallery3d/anim/CanvasAnimation;->calculate(J)Z

    move-result v1

    .line 194
    .local v1, more:Z
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/anim/CanvasAnimation;->apply(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 195
    if-eqz v1, :cond_3

    .line 196
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->invalidate()V

    .line 202
    .end local v1           #more:Z
    .end local v3           #now:J
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->mBackgroundTexture:Lcom/android/gallery3d/ui/DrawableTexture;

    invoke-virtual {v5, p1, v6, v6}, Lcom/android/gallery3d/ui/DrawableTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 203
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 205
    if-eqz v2, :cond_0

    .line 206
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    goto :goto_0

    .line 198
    .restart local v1       #more:Z
    .restart local v3       #now:J
    :cond_3
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->mFilmStripAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    goto :goto_1
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumView;->resume()V

    .line 262
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataAdapter;->resume()V

    .line 263
    return-void
.end method

.method public setFocusIndex(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumView;->setFocusIndex(I)V

    .line 248
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumView;->makeSlotVisible(I)V

    .line 249
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/ui/FilmStripView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/gallery3d/ui/FilmStripView;->mListener:Lcom/android/gallery3d/ui/FilmStripView$Listener;

    .line 106
    return-void
.end method

.method public setStartIndex(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumView;->setStartIndex(I)V

    .line 253
    return-void
.end method

.method public setUserInteractionListener(Lcom/android/gallery3d/ui/UserInteractionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/gallery3d/ui/FilmStripView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    .line 110
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/FilmStripView;->setFilmStripVisible(Z)V

    .line 127
    return-void
.end method
