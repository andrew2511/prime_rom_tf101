.class Lcom/asus/Viewer/ViewImage$11$1;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/Viewer/ViewImage$11;->imageLoaded(IILandroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/Viewer/ViewImage$11;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$isError:Z

.field final synthetic val$offset:I

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/asus/Viewer/ViewImage$11;IILandroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 938
    iput-object p1, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iput p2, p0, Lcom/asus/Viewer/ViewImage$11$1;->val$pos:I

    iput p3, p0, Lcom/asus/Viewer/ViewImage$11$1;->val$offset:I

    iput-object p4, p0, Lcom/asus/Viewer/ViewImage$11$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-boolean p5, p0, Lcom/asus/Viewer/ViewImage$11$1;->val$isError:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 940
    iget-object v6, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v6, v6, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v6}, Lcom/asus/Viewer/ViewImage;->access$1400(Lcom/asus/Viewer/ViewImage;)Lcom/asus/Viewer/BitmapCache;

    move-result-object v6

    iget v7, p0, Lcom/asus/Viewer/ViewImage$11$1;->val$pos:I

    iget v8, p0, Lcom/asus/Viewer/ViewImage$11$1;->val$offset:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/asus/Viewer/ViewImage$11$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7, v8}, Lcom/asus/Viewer/BitmapCache;->put(ILandroid/graphics/Bitmap;)V

    .line 941
    iget-boolean v6, p0, Lcom/asus/Viewer/ViewImage$11$1;->val$isError:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v6, v6, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v6}, Lcom/asus/Viewer/ViewImage;->access$1400(Lcom/asus/Viewer/ViewImage;)Lcom/asus/Viewer/BitmapCache;

    move-result-object v6

    iget v7, p0, Lcom/asus/Viewer/ViewImage$11$1;->val$pos:I

    iget v8, p0, Lcom/asus/Viewer/ViewImage$11$1;->val$offset:I

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/asus/Viewer/BitmapCache;->setError(I)V

    .line 942
    :cond_0
    iget-object v6, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v6, v6, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v6}, Lcom/asus/Viewer/ViewImage;->access$800(Lcom/asus/Viewer/ViewImage;)I

    move-result v6

    if-ne v6, v10, :cond_1

    .line 993
    :goto_0
    return-void

    .line 945
    :cond_1
    iget-object v6, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v6, v6, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v6}, Lcom/asus/Viewer/ViewImage;->access$2500(Lcom/asus/Viewer/ViewImage;)[Lcom/asus/Viewer/ImageViewTouchBase;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v7, v7, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v7}, Lcom/asus/Viewer/ViewImage;->access$2600(Lcom/asus/Viewer/ViewImage;)I

    move-result v7

    aget-object v5, v6, v7

    .line 948
    .local v5, oldView:Lcom/asus/Viewer/ImageViewTouchBase;
    iget-object v6, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v6, v6, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v6}, Lcom/asus/Viewer/ViewImage;->access$2604(Lcom/asus/Viewer/ViewImage;)I

    move-result v6

    iget-object v7, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v7, v7, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v7}, Lcom/asus/Viewer/ViewImage;->access$2500(Lcom/asus/Viewer/ViewImage;)[Lcom/asus/Viewer/ImageViewTouchBase;

    move-result-object v7

    array-length v7, v7

    if-ne v6, v7, :cond_2

    .line 950
    iget-object v6, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v6, v6, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v6, v11}, Lcom/asus/Viewer/ViewImage;->access$2602(Lcom/asus/Viewer/ViewImage;I)I

    .line 953
    :cond_2
    iget-object v6, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v6, v6, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v6}, Lcom/asus/Viewer/ViewImage;->access$2500(Lcom/asus/Viewer/ViewImage;)[Lcom/asus/Viewer/ImageViewTouchBase;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v7, v7, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v7}, Lcom/asus/Viewer/ViewImage;->access$2600(Lcom/asus/Viewer/ViewImage;)I

    move-result v7

    aget-object v4, v6, v7

    .line 955
    .local v4, newView:Lcom/asus/Viewer/ImageViewTouchBase;
    invoke-virtual {v4, v11}, Lcom/asus/Viewer/ImageViewTouchBase;->setVisibility(I)V

    .line 956
    iget-object v6, p0, Lcom/asus/Viewer/ViewImage$11$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v6, v10}, Lcom/asus/Viewer/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 957
    invoke-virtual {v4}, Lcom/asus/Viewer/ImageViewTouchBase;->bringToFront()V

    .line 958
    iget-object v6, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v6, v6, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    iget-object v7, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget v7, v7, Lcom/asus/Viewer/ViewImage$11;->val$requestedPos:I

    invoke-static {v6, v7}, Lcom/asus/Viewer/ViewImage;->access$1102(Lcom/asus/Viewer/ViewImage;I)I

    .line 959
    iget-object v6, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v6, v6, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v6, v10}, Lcom/asus/Viewer/ViewImage;->access$1502(Lcom/asus/Viewer/ViewImage;Z)Z

    .line 960
    const/4 v2, 0x0

    .line 962
    .local v2, animation:I
    iget-object v6, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v6, v6, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v6}, Lcom/asus/Viewer/ViewImage;->access$2700(Lcom/asus/Viewer/ViewImage;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 963
    iget-object v6, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v6, v6, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v6}, Lcom/asus/Viewer/ViewImage;->access$2900(Lcom/asus/Viewer/ViewImage;)Ljava/util/Random;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v7, v7, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v7}, Lcom/asus/Viewer/ViewImage;->access$2800(Lcom/asus/Viewer/ViewImage;)[Landroid/view/animation/Animation;

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 965
    .local v3, n:I
    move v2, v3

    .line 970
    .end local v3           #n:I
    :goto_1
    iget-object v6, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v6, v6, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v6}, Lcom/asus/Viewer/ViewImage;->access$2800(Lcom/asus/Viewer/ViewImage;)[Landroid/view/animation/Animation;

    move-result-object v6

    aget-object v0, v6, v2

    .line 971
    .local v0, aIn:Landroid/view/animation/Animation;
    invoke-virtual {v4, v0}, Lcom/asus/Viewer/ImageViewTouchBase;->startAnimation(Landroid/view/animation/Animation;)V

    .line 972
    invoke-virtual {v4, v11}, Lcom/asus/Viewer/ImageViewTouchBase;->setVisibility(I)V

    .line 974
    iget-object v6, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v6, v6, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v6}, Lcom/asus/Viewer/ViewImage;->access$3000(Lcom/asus/Viewer/ViewImage;)[Landroid/view/animation/Animation;

    move-result-object v6

    aget-object v1, v6, v2

    .line 975
    .local v1, aOut:Landroid/view/animation/Animation;
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/asus/Viewer/ImageViewTouchBase;->setVisibility(I)V

    .line 976
    invoke-virtual {v5, v1}, Lcom/asus/Viewer/ImageViewTouchBase;->startAnimation(Landroid/view/animation/Animation;)V

    .line 978
    iget-object v6, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v6, v6, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v6}, Lcom/asus/Viewer/ViewImage;->access$1100(Lcom/asus/Viewer/ViewImage;)I

    move-result v6

    iget-object v7, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v7, v7, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v7}, Lcom/asus/Viewer/ViewImage;->access$3100(Lcom/asus/Viewer/ViewImage;)I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 979
    iget-object v6, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-boolean v6, v6, Lcom/asus/Viewer/ViewImage$11;->val$firstCall:Z

    if-eqz v6, :cond_4

    .line 980
    iget-object v6, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v6, v6, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    iget-object v7, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v7, v7, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v7}, Lcom/asus/Viewer/ViewImage;->access$1100(Lcom/asus/Viewer/ViewImage;)I

    move-result v7

    iget-object v8, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v8, v8, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    iget-object v8, v8, Lcom/asus/Viewer/ViewImage;->mAllImages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    rem-int/2addr v7, v8

    iget-object v8, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v8, v8, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v8}, Lcom/asus/Viewer/ViewImage;->access$3200(Lcom/asus/Viewer/ViewImage;)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9, v11}, Lcom/asus/Viewer/ViewImage;->access$3300(Lcom/asus/Viewer/ViewImage;IJZ)V

    goto/16 :goto_0

    .line 967
    .end local v0           #aIn:Landroid/view/animation/Animation;
    .end local v1           #aOut:Landroid/view/animation/Animation;
    :cond_3
    iget-object v6, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v6, v6, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v6}, Lcom/asus/Viewer/ViewImage;->access$2700(Lcom/asus/Viewer/ViewImage;)I

    move-result v2

    goto :goto_1

    .line 984
    .restart local v0       #aIn:Landroid/view/animation/Animation;
    .restart local v1       #aOut:Landroid/view/animation/Animation;
    :cond_4
    iget-object v6, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v6, v6, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-virtual {v6, v10}, Lcom/asus/Viewer/ViewImage;->setMode(I)V

    goto/16 :goto_0

    .line 989
    :cond_5
    iget-object v6, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v6, v6, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    iget-object v7, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v7, v7, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v7}, Lcom/asus/Viewer/ViewImage;->access$1100(Lcom/asus/Viewer/ViewImage;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v8, v8, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    iget-object v8, v8, Lcom/asus/Viewer/ViewImage;->mAllImages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    rem-int/2addr v7, v8

    iget-object v8, p0, Lcom/asus/Viewer/ViewImage$11$1;->this$1:Lcom/asus/Viewer/ViewImage$11;

    iget-object v8, v8, Lcom/asus/Viewer/ViewImage$11;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v8}, Lcom/asus/Viewer/ViewImage;->access$3200(Lcom/asus/Viewer/ViewImage;)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9, v10}, Lcom/asus/Viewer/ViewImage;->access$3300(Lcom/asus/Viewer/ViewImage;IJZ)V

    goto/16 :goto_0
.end method
