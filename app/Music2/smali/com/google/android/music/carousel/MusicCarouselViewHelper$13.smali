.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getTexture(I)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

.field final synthetic val$cardInfoArg:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

.field final synthetic val$id:I

.field final synthetic val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 739
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iput-object p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iput-object p3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->val$cardInfoArg:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    iput p4, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 14

    .prologue
    .line 743
    invoke-static {}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$500()I

    move-result v1

    const/16 v2, 0x8

    sub-int v6, v1, v2

    .line 744
    .local v6, artWidth:I
    invoke-static {}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$600()I

    move-result v1

    const/16 v2, 0x8

    sub-int v7, v1, v2

    .line 746
    .local v7, artHeight:I
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->mBitmap:Landroid/graphics/Bitmap;

    .line 747
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 749
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 750
    const/high16 v1, 0x4080

    const/high16 v2, 0x4080

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 752
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget v1, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 769
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 770
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1600(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 771
    .local v11, glossyOverlay:Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v12, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 773
    .local v12, overlayBounds:Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 774
    .local v13, paint:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 775
    new-instance v10, Landroid/graphics/RectF;

    const/high16 v1, 0x4080

    const/high16 v2, 0x4080

    add-int/lit8 v3, v6, 0x4

    int-to-float v3, v3

    add-int/lit8 v4, v7, 0x4

    int-to-float v4, v4

    invoke-direct {v10, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 777
    .local v10, dst:Landroid/graphics/RectF;
    invoke-virtual {v0, v11, v12, v10, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 778
    return-void

    .line 754
    .end local v10           #dst:Landroid/graphics/RectF;
    .end local v11           #glossyOverlay:Landroid/graphics/Bitmap;
    .end local v12           #overlayBounds:Landroid/graphics/Rect;
    .end local v13           #paint:Landroid/graphics/Paint;
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1500(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-wide v4, v4, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/google/android/music/utils/AlbumArtUtils;->drawFauxAlbumArt(Landroid/graphics/Canvas;Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 759
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1500(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->val$cardInfoArg:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    iget-object v1, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-wide v4, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->val$cardInfoArg:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    iget-object v1, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-object v8, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbum:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->val$cardInfoArg:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    iget-object v1, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-object v9, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mArtist:Ljava/lang/String;

    move-object v2, v0

    invoke-static/range {v2 .. v9}, Lcom/google/android/music/utils/AlbumArtUtils;->draw(Landroid/graphics/Canvas;Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 764
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1500(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-wide v4, v4, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    iget-object v8, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-object v8, v8, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/google/android/music/utils/AlbumArtUtils;->drawFauxAlbumArt(Landroid/graphics/Canvas;Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 752
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public taskCompleted()V
    .locals 3

    .prologue
    .line 782
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->val$cardInfoArg:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    invoke-static {v1, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1700(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;)I

    move-result v0

    .line 783
    .local v0, currentId:I
    if-ltz v0, :cond_0

    .line 788
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1800(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setTextureForItem(ILandroid/graphics/Bitmap;)V

    .line 795
    :goto_0
    return-void

    .line 793
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;->delete(Ljava/lang/Object;)V

    goto :goto_0
.end method
