.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;
.super Lcom/android/ex/carousel/CarouselViewHelper;
.source "VolumeCarouselFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalCarouselViewHelper"
.end annotation


# instance fields
.field private final mHandleExternalStorageException:Ljava/lang/Runnable;

.field mHelperAtlasRenderer:Lcom/google/android/apps/books/widget/AtlasRenderer;

.field final synthetic this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/content/Context;Lcom/google/android/apps/books/widget/AtlasRenderer;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "atlasRenderer"

    .prologue
    .line 829
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    .line 830
    invoke-direct {p0, p2}, Lcom/android/ex/carousel/CarouselViewHelper;-><init>(Landroid/content/Context;)V

    .line 927
    new-instance v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$1;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->mHandleExternalStorageException:Ljava/lang/Runnable;

    .line 831
    iput-object p3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->mHelperAtlasRenderer:Lcom/google/android/apps/books/widget/AtlasRenderer;

    .line 832
    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 826
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->cardPositionIsValidLocked(I)Z

    move-result v0

    return v0
.end method

.method private cardPositionIsValidLocked(I)Z
    .locals 6
    .parameter "n"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v5, ")"

    const-string v4, "VolumeCarouselFragment"

    .line 1148
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1149
    :cond_0
    invoke-static {}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VolumeCarouselFragment"

    const-string v1, "cardPositionIsValidLocked: Invalid cursor"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v1, v3

    .line 1174
    :goto_0
    return v1

    .line 1151
    :cond_2
    if-ltz p1, :cond_3

    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_5

    .line 1152
    :cond_3
    invoke-static {}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "VolumeCarouselFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cardPositionIsValidLocked: Invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not in [0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v1, v3

    .line 1154
    goto :goto_0

    .line 1155
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt p1, v1, :cond_7

    .line 1156
    invoke-static {}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "VolumeCarouselFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cardPositionIsValidLocked: position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "beyond mLoadedVolumes.length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v1, v3

    .line 1158
    goto/16 :goto_0

    .line 1162
    :cond_7
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1163
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1165
    .local v0, volumeId:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1166
    const-string v1, "VolumeCarouselFragment"

    const-string v1, "cardPositionIsValidLocked: mLoadedVolumes is null"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 1167
    goto/16 :goto_0

    .line 1168
    :cond_8
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1169
    :cond_9
    invoke-static {}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "VolumeCarouselFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cardPositionIsValidLocked: non matching volume ids at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLoadedVolumesId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cursor volumeId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v1, v3

    .line 1172
    goto/16 :goto_0

    :cond_b
    move v1, v2

    .line 1174
    goto/16 :goto_0
.end method

.method private computeDepthScale(I)F
    .locals 7
    .parameter "numPages"

    .prologue
    .line 1043
    const v3, 0x3ecccccd

    .line 1044
    .local v3, minimumScale:F
    const/high16 v1, 0x4020

    .line 1046
    .local v1, maximumScale:F
    const/16 v2, 0x32

    .line 1047
    .local v2, minimumNumPages:I
    const/high16 v0, 0x4448

    .line 1050
    .local v0, maximumNumPages:F
    const/16 v5, 0x32

    sub-int v5, p1, v5

    int-to-float v5, v5

    const v6, 0x443b8000

    div-float v4, v5, v6

    .line 1052
    .local v4, result:F
    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-static {v4, v5, v6}, Lcom/google/android/apps/books/util/MathUtils;->constrain(FFF)F

    move-result v4

    .line 1055
    const v5, 0x3ecccccd

    const v6, 0x40066666

    mul-float/2addr v6, v4

    add-float v4, v5, v6

    .line 1057
    return v4
.end method

.method private isLimitedPreviewLocked(I)Z
    .locals 6
    .parameter "n"

    .prologue
    .line 945
    iget-object v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v4}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    if-ne p1, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    const-string v5, "Cursor out of place"

    invoke-static {v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 947
    iget-object v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v4}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v4

    const/16 v5, 0xb

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 948
    .local v3, viewability:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v4}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v4

    const/16 v5, 0xc

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 949
    .local v1, buyUrl:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v4}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v4

    const/16 v5, 0xd

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 951
    .local v2, openAccess:Ljava/lang/String;
    invoke-static {v3, v2, v1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->computeAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    move-result-object v0

    .line 952
    .local v0, access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    sget-object v4, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->SAMPLE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    invoke-virtual {v4, v0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 945
    .end local v0           #access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .end local v1           #buyUrl:Ljava/lang/String;
    .end local v2           #openAccess:Ljava/lang/String;
    .end local v3           #viewability:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private snapshotView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "view"

    .prologue
    .line 1123
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1128
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1130
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1131
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1132
    return-object v0
.end method


# virtual methods
.method public getDetailTexture(I)Landroid/graphics/Bitmap;
    .locals 28
    .parameter "n"

    .prologue
    .line 957
    invoke-static {}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1000()Z

    move-result v23

    if-eqz v23, :cond_0

    const-string v23, "VolumeCarouselFragment"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getDetailTexture("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1100(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23

    .line 962
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$2200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/view/View;

    move-result-object v24

    if-nez v24, :cond_1

    const/16 v24, 0x0

    monitor-exit v23

    move-object/from16 v23, v24

    .line 1033
    .end local p1
    :goto_0
    return-object v23

    .line 964
    .restart local p1
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$2200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 965
    .local v7, context:Landroid/content/Context;
    if-nez v7, :cond_2

    const/16 v24, 0x0

    monitor-exit v23

    move-object/from16 v23, v24

    goto :goto_0

    .line 967
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v24

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->isClosed()Z

    move-result v24

    if-nez v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v24

    move/from16 v0, p1

    move/from16 v1, v24

    if-lt v0, v1, :cond_4

    :cond_3
    const/16 v24, 0x0

    monitor-exit v23

    move-object/from16 v23, v24

    goto :goto_0

    .line 971
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    const/16 v24, 0x1

    :goto_1
    invoke-static/range {v24 .. v24}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v24

    const/16 v25, 0x3

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 975
    .local v19, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v24

    const/16 v25, 0x4

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 976
    .local v5, author:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v24

    const/16 v25, 0x1

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 983
    .local v22, volumeId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)[Ljava/lang/String;

    move-result-object v24

    aput-object v22, v24, p1

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$2200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/view/View;

    move-result-object v24

    const v25, 0x7f0e0044

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 986
    .local v20, titleView:Landroid/widget/TextView;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$2200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/view/View;

    move-result-object v24

    const v25, 0x7f0e0045

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 989
    .local v6, authorView:Landroid/widget/TextView;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$2200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/view/View;

    move-result-object v24

    const v25, 0x7f0e004d

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 993
    .local v9, downloadProgressView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1400(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/database/Cursor;)D

    move-result-wide v10

    .line 996
    .local v10, fraction:D
    const-wide/high16 v24, 0x4059

    mul-double v24, v24, v10

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move v12, v0

    .line 997
    .local v12, fractionInt:I
    invoke-static {v10, v11}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->isFullyDownloaded(D)Z

    move-result v13

    .line 998
    .local v13, fullyDownloaded:Z
    if-lez v12, :cond_5

    if-eqz v13, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->isShowingOfflineUi()Z

    move-result v24

    if-eqz v24, :cond_8

    :cond_6
    const/16 v24, 0x1

    move/from16 v16, v24

    .line 1000
    .local v16, progressVisible:Z
    :goto_2
    const v24, 0x7f0b003c

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    move-object v0, v7

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object v0, v9

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1002
    if-eqz v16, :cond_9

    const/16 v24, 0x0

    :goto_3
    move-object v0, v9

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$2200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/view/View;

    move-result-object v24

    const v25, 0x7f0e004c

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/google/android/apps/books/widget/CheckedImageView;

    .line 1008
    .local v15, pinnedStatusView:Lcom/google/android/apps/books/widget/CheckedImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 1009
    const/16 v21, 0x0

    .line 1011
    .local v21, visibility:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAllUpdatedPinnedStates:Ljava/util/Map;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAllUpdatedPinnedStates:Ljava/util/Map;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .line 1016
    .local v14, pinned:Z
    :goto_4
    invoke-virtual {v15, v14}, Lcom/google/android/apps/books/widget/CheckedImageView;->setChecked(Z)V

    .line 1020
    .end local v14           #pinned:Z
    :goto_5
    move-object v0, v15

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/CheckedImageView;->setVisibility(I)V

    .line 1023
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 1024
    .local v17, res:Landroid/content/res/Resources;
    const v24, 0x7f0d000c

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1025
    .local v8, detailTextureWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$2200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/view/View;

    move-result-object v24

    const/high16 v25, 0x4000

    move v0, v8

    move/from16 v1, v25

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->measure(II)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$2200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$2200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move v3, v8

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$2200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->snapshotView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 1031
    .local v18, result:Landroid/graphics/Bitmap;
    monitor-exit v23

    move-object/from16 v23, v18

    .line 1033
    goto/16 :goto_0

    .line 971
    .end local v5           #author:Ljava/lang/String;
    .end local v6           #authorView:Landroid/widget/TextView;
    .end local v8           #detailTextureWidth:I
    .end local v9           #downloadProgressView:Landroid/widget/TextView;
    .end local v10           #fraction:D
    .end local v12           #fractionInt:I
    .end local v13           #fullyDownloaded:Z
    .end local v15           #pinnedStatusView:Lcom/google/android/apps/books/widget/CheckedImageView;
    .end local v16           #progressVisible:Z
    .end local v17           #res:Landroid/content/res/Resources;
    .end local v18           #result:Landroid/graphics/Bitmap;
    .end local v19           #title:Ljava/lang/String;
    .end local v20           #titleView:Landroid/widget/TextView;
    .end local v21           #visibility:I
    .end local v22           #volumeId:Ljava/lang/String;
    .restart local p1
    :cond_7
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 998
    .restart local v5       #author:Ljava/lang/String;
    .restart local v6       #authorView:Landroid/widget/TextView;
    .restart local v9       #downloadProgressView:Landroid/widget/TextView;
    .restart local v10       #fraction:D
    .restart local v12       #fractionInt:I
    .restart local v13       #fullyDownloaded:Z
    .restart local v19       #title:Ljava/lang/String;
    .restart local v20       #titleView:Landroid/widget/TextView;
    .restart local v22       #volumeId:Ljava/lang/String;
    :cond_8
    const/16 v24, 0x0

    move/from16 v16, v24

    goto/16 :goto_2

    .line 1002
    .restart local v16       #progressVisible:Z
    :cond_9
    const/16 v24, 0x4

    goto/16 :goto_3

    .line 1014
    .restart local v15       #pinnedStatusView:Lcom/google/android/apps/books/widget/CheckedImageView;
    .restart local v21       #visibility:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v24

    const/16 v25, 0xa

    invoke-static/range {v24 .. v25}, Lcom/google/android/apps/books/util/CursorUtils;->getBoolean(Landroid/database/Cursor;I)Z

    move-result v14

    .restart local v14       #pinned:Z
    goto/16 :goto_4

    .line 1018
    .end local v14           #pinned:Z
    .end local v21           #visibility:I
    :cond_b
    const/16 v21, 0x4

    .restart local v21       #visibility:I
    goto/16 :goto_5

    .line 1031
    .end local v5           #author:Ljava/lang/String;
    .end local v6           #authorView:Landroid/widget/TextView;
    .end local v7           #context:Landroid/content/Context;
    .end local v9           #downloadProgressView:Landroid/widget/TextView;
    .end local v10           #fraction:D
    .end local v12           #fractionInt:I
    .end local v13           #fullyDownloaded:Z
    .end local v15           #pinnedStatusView:Lcom/google/android/apps/books/widget/CheckedImageView;
    .end local v16           #progressVisible:Z
    .end local v19           #title:Ljava/lang/String;
    .end local v20           #titleView:Landroid/widget/TextView;
    .end local v21           #visibility:I
    .end local v22           #volumeId:Ljava/lang/String;
    .end local p1
    :catchall_0
    move-exception v24

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v24
.end method

.method public getDetailTextureParameters(I)Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;
    .locals 2
    .parameter "id"

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$2300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)[Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$2400(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)I

    move-result v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTexture(I)Landroid/graphics/Bitmap;
    .locals 22
    .parameter "n"

    .prologue
    .line 836
    invoke-static {}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1000()Z

    move-result v19

    if-eqz v19, :cond_0

    const-string v19, "VolumeCarouselFragment"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getTexture("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1100(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Ljava/lang/Object;

    move-result-object v19

    monitor-enter v19

    .line 846
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v20

    move/from16 v0, p1

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    :cond_1
    const/16 v20, 0x0

    monitor-exit v19

    move-object/from16 v19, v20

    .line 924
    :goto_0
    return-object v19

    .line 850
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    const/16 v20, 0x1

    :goto_1
    invoke-static/range {v20 .. v20}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v20

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 854
    .local v17, volumeId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1400(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/database/Cursor;)D

    move-result-wide v12

    .line 855
    .local v12, fraction:D
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->isLimitedPreviewLocked(I)Z

    move-result v14

    .line 857
    .local v14, sample:Z
    if-nez v17, :cond_4

    const/16 v20, 0x0

    monitor-exit v19

    move-object/from16 v19, v20

    goto :goto_0

    .line 850
    .end local v12           #fraction:D
    .end local v14           #sample:Z
    .end local v17           #volumeId:Ljava/lang/String;
    :cond_3
    const/16 v20, 0x0

    goto :goto_1

    .line 859
    .restart local v12       #fraction:D
    .restart local v14       #sample:Z
    .restart local v17       #volumeId:Ljava/lang/String;
    :cond_4
    invoke-static/range {v17 .. v17}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 860
    .local v18, volumeUri:Landroid/net/Uri;
    invoke-static/range {v17 .. v17}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildCoverUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 865
    .local v16, volumeCoverUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1500(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/widget/BooksCarouselView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/BooksCarouselView;->lookupCover(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 866
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_5

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)[Ljava/lang/String;

    move-result-object v20

    aput-object v17, v20, p1

    .line 868
    monitor-exit v19

    move-object/from16 v19, v7

    goto/16 :goto_0

    .line 870
    :cond_5
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1600(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v11

    .line 873
    .local v11, fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1700(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/accounts/Account;

    move-result-object v19

    if-nez v19, :cond_7

    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 870
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v11           #fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    .end local v12           #fraction:D
    .end local v14           #sample:Z
    .end local v16           #volumeCoverUri:Landroid/net/Uri;
    .end local v17           #volumeId:Ljava/lang/String;
    .end local v18           #volumeUri:Landroid/net/Uri;
    :catchall_0
    move-exception v20

    :try_start_1
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v20

    .line 876
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    .restart local v11       #fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    .restart local v12       #fraction:D
    .restart local v14       #sample:Z
    .restart local v16       #volumeCoverUri:Landroid/net/Uri;
    .restart local v17       #volumeId:Ljava/lang/String;
    .restart local v18       #volumeUri:Landroid/net/Uri;
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1700(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/accounts/Account;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeCover(Ljava/lang/String;Landroid/accounts/Account;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 882
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$900(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "cover_content_status"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 884
    .local v8, coverState:I
    const/16 v19, 0x3

    move v0, v8

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 886
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$900(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v15

    .line 887
    .local v15, stream:Ljava/io/InputStream;
    invoke-static {v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 888
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 901
    .end local v15           #stream:Ljava/io/InputStream;
    :cond_8
    :goto_3
    if-nez v7, :cond_b

    .line 904
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 877
    .end local v8           #coverState:I
    :catch_0
    move-exception v19

    move-object/from16 v10, v19

    .line 878
    .local v10, e:Ljava/io/IOException;
    const-string v19, "VolumeCarouselFragment"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "problem while ensuring volume cover: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 890
    .end local v10           #e:Ljava/io/IOException;
    .restart local v8       #coverState:I
    :catch_1
    move-exception v19

    move-object/from16 v10, v19

    .line 891
    .restart local v10       #e:Ljava/io/IOException;
    const-string v19, "VolumeCarouselFragment"

    const/16 v20, 0x5

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 892
    const-string v19, "VolumeCarouselFragment"

    const-string v20, "problem loading texture"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 894
    :cond_9
    move-object v0, v10

    instance-of v0, v0, Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;

    move/from16 v19, v0

    if-nez v19, :cond_a

    move-object v0, v10

    instance-of v0, v0, Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 896
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1800(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/os/Handler;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->mHandleExternalStorageException:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 908
    .end local v10           #e:Ljava/io/IOException;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1900(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Z

    move-result v19

    if-nez v19, :cond_c

    invoke-static {v12, v13}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->isFullyDownloaded(D)Z

    move-result v19

    if-nez v19, :cond_c

    const/16 v19, 0x1

    move/from16 v9, v19

    .line 911
    .local v9, dimCover:Z
    :goto_4
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v5, v19, v20

    .line 912
    .local v5, aspectRatio:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$2000(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Ljava/util/Map;

    move-result-object v19

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->mHelperAtlasRenderer:Lcom/google/android/apps/books/widget/AtlasRenderer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object v1, v7

    move-object/from16 v2, v20

    move v3, v9

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/books/widget/AtlasRenderer;->render(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 917
    .local v6, atlas:Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 918
    move-object v7, v6

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1500(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/widget/BooksCarouselView;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/widget/BooksCarouselView;->cacheCover(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    move-object/from16 v19, v7

    .line 924
    goto/16 :goto_0

    .line 908
    .end local v5           #aspectRatio:F
    .end local v6           #atlas:Landroid/graphics/Bitmap;
    .end local v9           #dimCover:Z
    :cond_c
    const/16 v19, 0x0

    move/from16 v9, v19

    goto :goto_4
.end method

.method public getTextureParameters(I)Lcom/android/ex/carousel/CarouselViewHelper$TextureParameters;
    .locals 22
    .parameter "id"

    .prologue
    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1100(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Ljava/lang/Object;

    move-result-object v19

    monitor-enter v19

    .line 1066
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v20

    move/from16 v0, p1

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    :cond_0
    const/16 v20, 0x0

    monitor-exit v19

    move-object/from16 v19, v20

    .line 1119
    :goto_0
    return-object v19

    .line 1070
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    const/16 v20, 0x1

    :goto_1
    invoke-static/range {v20 .. v20}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v20

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1074
    .local v15, volumeId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v20

    const/16 v21, 0xe

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1075
    .local v10, pageCount:I
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1078
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->getTexture(I)Landroid/graphics/Bitmap;

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$2000(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Ljava/util/Map;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 1080
    .local v4, bitmapAspectRatio:Ljava/lang/Float;
    if-nez v4, :cond_3

    .line 1081
    const/16 v19, 0x0

    goto :goto_0

    .line 1070
    .end local v4           #bitmapAspectRatio:Ljava/lang/Float;
    .end local v10           #pageCount:I
    .end local v15           #volumeId:Ljava/lang/String;
    :cond_2
    const/16 v20, 0x0

    goto :goto_1

    .line 1075
    :catchall_0
    move-exception v20

    :try_start_1
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v20

    .line 1086
    .restart local v4       #bitmapAspectRatio:Ljava/lang/Float;
    .restart local v10       #pageCount:I
    .restart local v15       #volumeId:Ljava/lang/String;
    :cond_3
    const v9, 0x3f3d1942

    .line 1087
    .local v9, nativeAspectRatio:F
    const v6, 0x3e0a3d71

    .line 1088
    .local v6, halfNativeDepth:F
    const v8, 0x3fb33333

    .line 1091
    .local v8, maximumYScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1092
    .local v11, resources:Landroid/content/res/Resources;
    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0d0014

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    .line 1100
    .local v13, screenSizeScaleFactor:F
    :goto_2
    move/from16 v16, v13

    .line 1101
    .local v16, xscale:F
    const v19, 0x3f3d1942

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v20

    div-float v19, v19, v20

    mul-float v17, v19, v13

    .line 1103
    .local v17, yscale:F
    const v19, 0x3fb33333

    cmpl-float v19, v17, v19

    if-lez v19, :cond_4

    .line 1105
    const v19, 0x3fb33333

    div-float v12, v19, v17

    .line 1106
    .local v12, scaleFactor:F
    mul-float v16, v16, v12

    .line 1107
    mul-float v17, v17, v12

    .line 1109
    .end local v12           #scaleFactor:F
    :cond_4
    if-lez v10, :cond_6

    move-object/from16 v0, p0

    move v1, v10

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->computeDepthScale(I)F

    move-result v19

    move/from16 v18, v19

    .line 1112
    .local v18, zscale:F
    :goto_3
    const v5, -0x40c66666

    .line 1113
    .local v5, down:F
    const v14, 0x3f39999a

    .line 1114
    .local v14, up:F
    new-instance v7, Landroid/renderscript/Matrix4f;

    invoke-direct {v7}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 1115
    .local v7, m:Landroid/renderscript/Matrix4f;
    const/16 v19, 0x0

    const v20, -0x40c66666

    div-float v20, v20, v17

    const v21, -0x41f5c28f

    mul-float v21, v21, v18

    move-object v0, v7

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/renderscript/Matrix4f;->translate(FFF)V

    .line 1116
    move-object v0, v7

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/renderscript/Matrix4f;->scale(FFF)V

    .line 1117
    const/16 v19, 0x0

    const v20, 0x3f39999a

    div-float v20, v20, v17

    const/16 v21, 0x0

    move-object v0, v7

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/renderscript/Matrix4f;->translate(FFF)V

    .line 1119
    new-instance v19, Lcom/android/ex/carousel/CarouselViewHelper$TextureParameters;

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/android/ex/carousel/CarouselViewHelper$TextureParameters;-><init>(Landroid/renderscript/Matrix4f;)V

    goto/16 :goto_0

    .line 1096
    .end local v5           #down:F
    .end local v7           #m:Landroid/renderscript/Matrix4f;
    .end local v13           #screenSizeScaleFactor:F
    .end local v14           #up:F
    .end local v16           #xscale:F
    .end local v17           #yscale:F
    .end local v18           #zscale:F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0d0015

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    .restart local v13       #screenSizeScaleFactor:F
    goto/16 :goto_2

    .line 1109
    .restart local v16       #xscale:F
    .restart local v17       #yscale:F
    :cond_6
    const/high16 v19, 0x3f80

    move/from16 v18, v19

    goto :goto_3
.end method

.method public onCardLongPress(I[ILandroid/graphics/Rect;)V
    .locals 9
    .parameter "n"
    .parameter "touchPosition"
    .parameter "detailCoordinates"

    .prologue
    const-string v3, "VolumeCarouselFragment"

    .line 1232
    invoke-static {}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VolumeCarouselFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCardLongPress("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 1236
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_1

    .line 1272
    :goto_0
    return-void

    .line 1242
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1100(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1243
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->cardPositionIsValidLocked(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1244
    invoke-static {}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "VolumeCarouselFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring long-press on position "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :cond_2
    monitor-exit v0

    goto :goto_0

    .line 1251
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1248
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1249
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1250
    .local v6, volumeId:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->isLimitedPreviewLocked(I)Z

    move-result v7

    .line 1251
    .local v7, sample:Z
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1252
    if-eqz v7, :cond_4

    const v0, 0x7f120001

    move v4, v0

    .line 1255
    .local v4, menuId:I
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$4;

    move-object v1, p0

    move-object v3, p2

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$4;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;Landroid/view/View;[IIILjava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1252
    .end local v4           #menuId:I
    :cond_4
    const/high16 v0, 0x7f12

    move v4, v0

    goto :goto_1
.end method

.method public onCardSelected(I)V
    .locals 4
    .parameter "n"

    .prologue
    .line 1180
    invoke-static {}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VolumeCarouselFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCardSelected("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1183
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1204
    :goto_0
    return-void

    .line 1185
    :cond_1
    new-instance v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$2;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onDetailSelected(III)V
    .locals 5
    .parameter "n"
    .parameter "x"
    .parameter "y"

    .prologue
    const-string v4, "VolumeCarouselFragment"

    const-string v3, ", "

    .line 1208
    invoke-static {}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VolumeCarouselFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetailSelected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1100(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1211
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->cardPositionIsValidLocked(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1212
    invoke-static {}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1000()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "VolumeCarouselFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring detail selection of position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_1
    monitor-exit v1

    .line 1228
    :cond_2
    :goto_0
    return-void

    .line 1215
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1217
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1218
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1220
    new-instance v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$3;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1215
    .end local v0           #view:Landroid/view/View;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
