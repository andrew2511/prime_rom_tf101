.class public Lcom/android/gallery3d/ui/DetailsWindow;
.super Lcom/android/gallery3d/ui/GLView;
.source "DetailsWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/DetailsWindow$DetailsPanel;,
        Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;,
        Lcom/android/gallery3d/ui/DetailsWindow$AddressLookupJob;,
        Lcom/android/gallery3d/ui/DetailsWindow$CloseListener;,
        Lcom/android/gallery3d/ui/DetailsWindow$DetailsSource;
    }
.end annotation


# instance fields
.field private mAddressLookupJob:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field protected mBackground:Lcom/android/gallery3d/ui/Texture;

.field private mCloseButton:Lcom/android/gallery3d/ui/Icon;

.field private mContext:Lcom/android/gallery3d/app/GalleryActivity;

.field private mDetailPanel:Lcom/android/gallery3d/ui/DetailsWindow$DetailsPanel;

.field private mDetails:Lcom/android/gallery3d/data/MediaDetails;

.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mListener:Lcom/android/gallery3d/ui/DetailsWindow$CloseListener;

.field private mLocationIndex:I

.field private mMaxDetailLength:I

.field private mModel:Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;

.field private mScrollView:Lcom/android/gallery3d/ui/ScrollView;

.field private mSource:Lcom/android/gallery3d/ui/DetailsWindow$DetailsSource;

.field private mTitle:Lcom/android/gallery3d/ui/StringTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/DetailsWindow$DetailsSource;)V
    .locals 8
    .parameter "activity"
    .parameter "source"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 83
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 71
    new-instance v4, Lcom/android/gallery3d/ui/DetailsWindow$DetailsPanel;

    invoke-direct {v4, p0, v7}, Lcom/android/gallery3d/ui/DetailsWindow$DetailsPanel;-><init>(Lcom/android/gallery3d/ui/DetailsWindow;Lcom/android/gallery3d/ui/DetailsWindow$1;)V

    iput-object v4, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mDetailPanel:Lcom/android/gallery3d/ui/DetailsWindow$DetailsPanel;

    .line 84
    iput-object p1, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    .line 85
    iput-object p2, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mSource:Lcom/android/gallery3d/ui/DetailsWindow$DetailsSource;

    .line 86
    new-instance v4, Lcom/android/gallery3d/ui/DetailsWindow$1;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/gallery3d/ui/DetailsWindow$1;-><init>(Lcom/android/gallery3d/ui/DetailsWindow;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v4, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mHandler:Landroid/os/Handler;

    .line 97
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    .line 98
    .local v2, context:Landroid/content/Context;
    new-instance v3, Lcom/android/gallery3d/ui/ResourceTexture;

    const v4, 0x7f02001e

    invoke-direct {v3, v2, v4}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    .line 100
    .local v3, icon:Lcom/android/gallery3d/ui/ResourceTexture;
    sget-object v4, Landroid/R$styleable;->AlertDialog:[I

    const v5, 0x101005d

    invoke-virtual {v2, v7, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 103
    .local v1, background:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    if-nez v1, :cond_0

    move-object v4, v7

    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/ui/DetailsWindow;->setBackground(Lcom/android/gallery3d/ui/Texture;)V

    .line 106
    new-instance v4, Lcom/android/gallery3d/ui/DetailsWindow$2;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/gallery3d/ui/DetailsWindow$2;-><init>(Lcom/android/gallery3d/ui/DetailsWindow;Landroid/content/Context;Lcom/android/gallery3d/ui/BasicTexture;)V

    iput-object v4, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mCloseButton:Lcom/android/gallery3d/ui/Icon;

    .line 116
    new-instance v4, Lcom/android/gallery3d/ui/ScrollView;

    invoke-direct {v4, v2}, Lcom/android/gallery3d/ui/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mScrollView:Lcom/android/gallery3d/ui/ScrollView;

    .line 117
    iget-object v4, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mScrollView:Lcom/android/gallery3d/ui/ScrollView;

    iget-object v5, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mDetailPanel:Lcom/android/gallery3d/ui/DetailsWindow$DetailsPanel;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/ScrollView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 119
    iget-object v4, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mScrollView:Lcom/android/gallery3d/ui/ScrollView;

    invoke-super {p0, v4}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 120
    iget-object v4, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mCloseButton:Lcom/android/gallery3d/ui/Icon;

    invoke-super {p0, v4}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 122
    invoke-virtual {p0, v6}, Lcom/android/gallery3d/ui/DetailsWindow;->reloadDetails(I)V

    .line 123
    return-void

    .line 104
    :cond_0
    new-instance v4, Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-direct {v4, v2, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/DetailsWindow;)Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mModel:Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/DetailsWindow;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/DetailsWindow;)Lcom/android/gallery3d/ui/StringTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mTitle:Lcom/android/gallery3d/ui/StringTexture;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/DetailsWindow;)Lcom/android/gallery3d/ui/DetailsWindow$CloseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mListener:Lcom/android/gallery3d/ui/DetailsWindow$CloseListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/DetailsWindow;)Lcom/android/gallery3d/app/GalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/DetailsWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mLocationIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/gallery3d/ui/DetailsWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mLocationIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/DetailsWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mIndex:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/DetailsWindow;)Lcom/android/gallery3d/ui/DetailsWindow$DetailsSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mSource:Lcom/android/gallery3d/ui/DetailsWindow$DetailsSource;

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/android/gallery3d/ui/DetailsWindow;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/DetailsWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mMaxDetailLength:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/gallery3d/ui/DetailsWindow;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mAddressLookupJob:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method private static getName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "key"

    .prologue
    .line 375
    sparse-switch p1, :sswitch_data_0

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 377
    :sswitch_0
    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 379
    :sswitch_1
    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 381
    :sswitch_2
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 383
    :sswitch_3
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 385
    :sswitch_4
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 387
    :sswitch_5
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 389
    :sswitch_6
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 391
    :sswitch_7
    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 393
    :sswitch_8
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 395
    :sswitch_9
    const v0, 0x7f080047

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 397
    :sswitch_a
    const v0, 0x7f080048

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 399
    :sswitch_b
    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 401
    :sswitch_c
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 403
    :sswitch_d
    const v0, 0x7f08004b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 405
    :sswitch_e
    const v0, 0x7f08004c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 407
    :sswitch_f
    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 409
    :sswitch_10
    const v0, 0x7f08004e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 411
    :sswitch_11
    const v0, 0x7f08004f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 413
    :sswitch_12
    const v0, 0x7f080050

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 375
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x64 -> :sswitch_b
        0x65 -> :sswitch_c
        0x66 -> :sswitch_d
        0x67 -> :sswitch_f
        0x68 -> :sswitch_10
        0x69 -> :sswitch_e
        0x6b -> :sswitch_11
        0x6c -> :sswitch_12
        0xc8 -> :sswitch_4
    .end sparse-switch
.end method

.method private setDetails(Lcom/android/gallery3d/data/MediaDetails;)V
    .locals 1
    .parameter "details"

    .prologue
    .line 222
    new-instance v0, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;-><init>(Lcom/android/gallery3d/ui/DetailsWindow;Lcom/android/gallery3d/data/MediaDetails;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mModel:Lcom/android/gallery3d/ui/DetailsWindow$MyDataModel;

    .line 223
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/DetailsWindow;->invalidate()V

    .line 224
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/DetailsWindow;->setVisibility(I)V

    .line 197
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/DetailsWindow;->requestLayout()V

    .line 198
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "sizeChange"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v6, 0x0

    .line 177
    iget-object v5, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mCloseButton:Lcom/android/gallery3d/ui/Icon;

    invoke-virtual {v5, v6, v6}, Lcom/android/gallery3d/ui/Icon;->measure(II)V

    .line 178
    iget-object v5, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mCloseButton:Lcom/android/gallery3d/ui/Icon;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/Icon;->getMeasuredWidth()I

    move-result v1

    .line 179
    .local v1, bWidth:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mCloseButton:Lcom/android/gallery3d/ui/Icon;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/Icon;->getMeasuredHeight()I

    move-result v0

    .line 180
    .local v0, bHeight:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/DetailsWindow;->getWidth()I

    move-result v4

    .line 181
    .local v4, width:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/DetailsWindow;->getHeight()I

    move-result v2

    .line 183
    .local v2, height:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/DetailsWindow;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    .line 184
    .local v3, p:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mCloseButton:Lcom/android/gallery3d/ui/Icon;

    iget v6, v3, Landroid/graphics/Rect;->right:I

    sub-int v6, v4, v6

    sub-int/2addr v6, v1

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->right:I

    sub-int v8, v4, v8

    iget v9, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/gallery3d/ui/Icon;->layout(IIII)V

    .line 186
    iget-object v5, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mScrollView:Lcom/android/gallery3d/ui/ScrollView;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v0

    iget v8, v3, Landroid/graphics/Rect;->right:I

    sub-int v8, v4, v8

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v2, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/gallery3d/ui/ScrollView;->layout(IIII)V

    .line 188
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 169
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 170
    .local v0, height:I
    invoke-static {p0}, Lcom/android/gallery3d/ui/MeasureHelper;->getInstance(Lcom/android/gallery3d/ui/GLView;)Lcom/android/gallery3d/ui/MeasureHelper;

    move-result-object v1

    const/16 v2, 0x190

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/ui/MeasureHelper;->setPreferredContentSize(II)Lcom/android/gallery3d/ui/MeasureHelper;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/gallery3d/ui/MeasureHelper;->measure(II)V

    .line 173
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mAddressLookupJob:Lcom/android/gallery3d/util/Future;

    .line 202
    .local v0, lookupJob:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/location/Address;>;"
    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 204
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 206
    :cond_0
    return-void
.end method

.method public reloadDetails(I)V
    .locals 3
    .parameter "indexHint"

    .prologue
    .line 209
    iget-object v2, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mSource:Lcom/android/gallery3d/ui/DetailsWindow$DetailsSource;

    invoke-interface {v2, p1}, Lcom/android/gallery3d/ui/DetailsWindow$DetailsSource;->findIndex(I)I

    move-result v1

    .line 210
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mSource:Lcom/android/gallery3d/ui/DetailsWindow$DetailsSource;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/DetailsWindow$DetailsSource;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 212
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    if-eqz v0, :cond_3

    .line 213
    iget v2, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mIndex:I

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mDetails:Lcom/android/gallery3d/data/MediaDetails;

    if-eq v2, v0, :cond_0

    .line 214
    :cond_2
    iput v1, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mIndex:I

    .line 215
    iput-object v0, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mDetails:Lcom/android/gallery3d/data/MediaDetails;

    .line 216
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/DetailsWindow;->setDetails(Lcom/android/gallery3d/data/MediaDetails;)V

    .line 218
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mDetailPanel:Lcom/android/gallery3d/ui/DetailsWindow$DetailsPanel;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/DetailsWindow$DetailsPanel;->requestLayout()V

    goto :goto_0
.end method

.method protected renderBackground(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mBackground:Lcom/android/gallery3d/ui/Texture;

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/DetailsWindow;->getWidth()I

    move-result v4

    .line 155
    .local v4, width:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/DetailsWindow;->getHeight()I

    move-result v5

    .line 158
    .local v5, height:I
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)I

    .line 159
    const v0, 0x3f333333

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 160
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mBackground:Lcom/android/gallery3d/ui/Texture;

    move-object v1, p1

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 161
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 163
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/DetailsWindow;->getPaddings()Landroid/graphics/Rect;

    move-result-object v6

    .line 164
    .local v6, p:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mTitle:Lcom/android/gallery3d/ui/StringTexture;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0
.end method

.method public setBackground(Lcom/android/gallery3d/ui/Texture;)V
    .locals 3
    .parameter "background"

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mBackground:Lcom/android/gallery3d/ui/Texture;

    if-ne p1, v1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 131
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mBackground:Lcom/android/gallery3d/ui/Texture;

    .line 132
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/android/gallery3d/ui/NinePatchTexture;

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mBackground:Lcom/android/gallery3d/ui/Texture;

    check-cast v1, Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    .line 134
    .local v0, p:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x9

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 135
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x9

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 136
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x9

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 137
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x9

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/DetailsWindow;->setPaddings(Landroid/graphics/Rect;)V

    .line 142
    .end local v0           #p:Landroid/graphics/Rect;
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/DetailsWindow;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    .line 143
    .restart local v0       #p:Landroid/graphics/Rect;
    const/16 v1, 0x190

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mMaxDetailLength:I

    .line 144
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/DetailsWindow;->invalidate()V

    goto :goto_0

    .line 140
    .end local v0           #p:Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/android/gallery3d/ui/DetailsWindow;->setPaddings(IIII)V

    goto :goto_1
.end method

.method public setCloseListener(Lcom/android/gallery3d/ui/DetailsWindow$CloseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mListener:Lcom/android/gallery3d/ui/DetailsWindow$CloseListener;

    .line 127
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 148
    const/high16 v0, 0x4190

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/DetailsWindow;->mTitle:Lcom/android/gallery3d/ui/StringTexture;

    .line 149
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/DetailsWindow;->setVisibility(I)V

    .line 192
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/DetailsWindow;->requestLayout()V

    .line 193
    return-void
.end method
