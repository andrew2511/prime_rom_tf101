.class Lcom/android/systemui/recent/RecentApplicationsActivity$1;
.super Landroid/app/IThumbnailReceiver$Stub;
.source "RecentApplicationsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentApplicationsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentApplicationsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$1;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    invoke-direct {p0}, Landroid/app/IThumbnailReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public finished()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 302
    return-void
.end method

.method public newThumbnail(ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 15
    .parameter "id"
    .parameter "bitmap"
    .parameter "description"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 307
    .local v14, w:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 308
    .local v9, h:I
    invoke-static {}, Lcom/android/systemui/recent/RecentApplicationsActivity;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "RecentApplicationsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New thumbnail for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dimensions="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " description \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$1;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    move-object v0, v2

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/systemui/recent/RecentApplicationsActivity;->access$400(Lcom/android/systemui/recent/RecentApplicationsActivity;I)Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;

    move-result-object v10

    .line 311
    .local v10, info:Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;
    if-eqz v10, :cond_5

    .line 312
    move-object/from16 v0, p2

    move-object v1, v10

    iput-object v0, v1, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->thumbnail:Landroid/graphics/Bitmap;

    .line 313
    move-object/from16 v0, p3

    move-object v1, v10

    iput-object v0, v1, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->description:Ljava/lang/CharSequence;

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 315
    .local v13, thumbWidth:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 316
    .local v12, thumbHeight:I
    iget-object v2, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$1;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    invoke-static {v2}, Lcom/android/systemui/recent/RecentApplicationsActivity;->access$500(Lcom/android/systemui/recent/RecentApplicationsActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-gt v13, v12, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$1;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    invoke-static {v2}, Lcom/android/systemui/recent/RecentApplicationsActivity;->access$500(Lcom/android/systemui/recent/RecentApplicationsActivity;)Z

    move-result v2

    if-nez v2, :cond_4

    if-ge v13, v12, :cond_4

    .line 318
    :cond_2
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 319
    .local v11, matrix:Landroid/graphics/Matrix;
    const/high16 v2, 0x42b4

    int-to-float v3, v13

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    int-to-float v4, v12

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual {v11, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 320
    iput-object v11, v10, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->matrix:Landroid/graphics/Matrix;

    .line 325
    .end local v11           #matrix:Landroid/graphics/Matrix;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$1;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    invoke-static {v2}, Lcom/android/systemui/recent/RecentApplicationsActivity;->access$600(Lcom/android/systemui/recent/RecentApplicationsActivity;)Lcom/android/ex/carousel/CarouselView;

    move-result-object v2

    iget v3, v10, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->position:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/ex/carousel/CarouselView;->setTextureForItem(ILandroid/graphics/Bitmap;)V

    .line 326
    iget-object v2, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$1;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    invoke-static {v2}, Lcom/android/systemui/recent/RecentApplicationsActivity;->access$600(Lcom/android/systemui/recent/RecentApplicationsActivity;)Lcom/android/ex/carousel/CarouselView;

    move-result-object v2

    iget v3, v10, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->position:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/ex/carousel/CarouselView;->setDetailTextureForItem(IFFFFLandroid/graphics/Bitmap;)V

    .line 330
    .end local v12           #thumbHeight:I
    .end local v13           #thumbWidth:I
    :cond_3
    :goto_1
    return-void

    .line 322
    .restart local v12       #thumbHeight:I
    .restart local v13       #thumbWidth:I
    :cond_4
    const/4 v2, 0x0

    iput-object v2, v10, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->matrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 328
    .end local v12           #thumbHeight:I
    .end local v13           #thumbWidth:I
    :cond_5
    invoke-static {}, Lcom/android/systemui/recent/RecentApplicationsActivity;->access$100()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "RecentApplicationsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find view for id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
