.class public Lcom/layar/ui/drag/LayerSpot;
.super Landroid/widget/LinearLayout;
.source "LayerSpot.java"

# interfaces
.implements Lcom/layar/ui/drag/DragSource;
.implements Lcom/layar/ui/drag/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/drag/LayerSpot$GetIconTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "layar.LayerSpot"


# instance fields
.field private contentMandatory:Z

.field private icon:Landroid/graphics/Bitmap;

.field private iconTask:Lcom/layar/ui/drag/LayerSpot$GetIconTask;

.field private layer:Lcom/layar/data/layer/Layer20;

.field private mDragger:Lcom/layar/ui/drag/DragController;

.field private final mIconView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/layar/ui/drag/LayerSpot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-boolean v1, p0, Lcom/layar/ui/drag/LayerSpot;->contentMandatory:Z

    .line 44
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/layar/ui/drag/LayerSpot;->setGravity(I)V

    .line 45
    const v0, 0x7f02005c

    invoke-virtual {p0, v0}, Lcom/layar/ui/drag/LayerSpot;->setBackgroundResource(I)V

    .line 46
    invoke-virtual {p0, v1}, Lcom/layar/ui/drag/LayerSpot;->setFocusable(Z)V

    .line 47
    invoke-virtual {p0, v1}, Lcom/layar/ui/drag/LayerSpot;->setFocusableInTouchMode(Z)V

    .line 48
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/ui/drag/LayerSpot;->mIconView:Landroid/widget/ImageView;

    .line 49
    iget-object v0, p0, Lcom/layar/ui/drag/LayerSpot;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/layar/ui/drag/LayerSpot;->addView(Landroid/view/View;)V

    .line 50
    iget-object v0, p0, Lcom/layar/ui/drag/LayerSpot;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    const-string v0, "layar.LayerSpot"

    const-string v1, "LayarSpot created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Lcom/layar/ui/drag/LayerSpot$1;

    invoke-direct {v0, p0}, Lcom/layar/ui/drag/LayerSpot$1;-><init>(Lcom/layar/ui/drag/LayerSpot;)V

    invoke-virtual {p0, v0}, Lcom/layar/ui/drag/LayerSpot;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/layar/ui/drag/LayerSpot;)Lcom/layar/data/layer/Layer20;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/layar/ui/drag/LayerSpot;->layer:Lcom/layar/data/layer/Layer20;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/ui/drag/LayerSpot;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/layar/ui/drag/LayerSpot;->prepareIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/ui/drag/LayerSpot;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/layar/ui/drag/LayerSpot;->icon:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$3(Lcom/layar/ui/drag/LayerSpot;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/layar/ui/drag/LayerSpot;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/layar/ui/drag/LayerSpot;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/layar/ui/drag/LayerSpot;->icon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5(Lcom/layar/ui/drag/LayerSpot;Lcom/layar/ui/drag/LayerSpot$GetIconTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/layar/ui/drag/LayerSpot;->iconTask:Lcom/layar/ui/drag/LayerSpot$GetIconTask;

    return-void
.end method

.method static synthetic access$6(Lcom/layar/ui/drag/LayerSpot;)Lcom/layar/ui/drag/DragController;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/layar/ui/drag/LayerSpot;->mDragger:Lcom/layar/ui/drag/DragController;

    return-object v0
.end method

.method static synthetic access$7(Lcom/layar/ui/drag/LayerSpot;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/layar/ui/drag/LayerSpot;->contentMandatory:Z

    return v0
.end method

.method private prepareIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "icon"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x31

    .line 178
    invoke-virtual {p0}, Lcom/layar/ui/drag/LayerSpot;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02005b

    .line 177
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 180
    .local v2, gridBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 181
    .local v1, favIcon:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 183
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 185
    .local v3, p:Landroid/graphics/Paint;
    invoke-virtual {v0, v2, v9, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 186
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 188
    if-eqz p1, :cond_0

    .line 189
    const/4 v5, 0x1

    invoke-static {p1, v8, v8, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 190
    .local v4, scaled:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 191
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v8

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 192
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    .line 191
    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 194
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 196
    .end local v4           #scaled:Landroid/graphics/Bitmap;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public acceptDrop(Lcom/layar/ui/drag/DragSource;IIIILjava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 145
    if-eq p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public estimateDropLocation(Lcom/layar/ui/drag/DragSource;IIIILjava/lang/Object;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"
    .parameter "recycle"

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayer()Lcom/layar/data/layer/Layer20;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/layar/ui/drag/LayerSpot;->layer:Lcom/layar/data/layer/Layer20;

    return-object v0
.end method

.method public isContentMandatory()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/layar/ui/drag/LayerSpot;->contentMandatory:Z

    return v0
.end method

.method public onDragEnter(Lcom/layar/ui/drag/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/layar/ui/drag/LayerSpot;->requestFocus()Z

    .line 158
    return-void
.end method

.method public onDragExit(Lcom/layar/ui/drag/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 164
    return-void
.end method

.method public onDragOver(Lcom/layar/ui/drag/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 169
    return-void
.end method

.method public onDrop(Lcom/layar/ui/drag/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 174
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 6
    .parameter "target"
    .parameter "success"

    .prologue
    const/4 v5, 0x0

    .line 130
    const-string v2, "layar.LayerSpot"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onDropCompleted("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-eqz p2, :cond_1

    .line 132
    instance-of v2, p1, Lcom/layar/ui/drag/LayerSpot;

    if-eqz v2, :cond_0

    .line 133
    move-object v0, p1

    check-cast v0, Lcom/layar/ui/drag/LayerSpot;

    move-object v1, v0

    .line 134
    .local v1, spot:Lcom/layar/ui/drag/LayerSpot;
    iget-object v2, p0, Lcom/layar/ui/drag/LayerSpot;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v3, p0, Lcom/layar/ui/drag/LayerSpot;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Lcom/layar/ui/drag/LayerSpot;->setLayer(Lcom/layar/data/layer/Layer20;Landroid/graphics/Bitmap;)V

    .line 137
    .end local v1           #spot:Lcom/layar/ui/drag/LayerSpot;
    :cond_0
    iget-boolean v2, p0, Lcom/layar/ui/drag/LayerSpot;->contentMandatory:Z

    if-nez v2, :cond_1

    invoke-virtual {p0, v5, v5}, Lcom/layar/ui/drag/LayerSpot;->setLayer(Lcom/layar/data/layer/Layer20;Landroid/graphics/Bitmap;)V

    .line 139
    :cond_1
    return-void
.end method

.method public setContentMandatory(Z)V
    .locals 0
    .parameter "contentMandatory"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/layar/ui/drag/LayerSpot;->contentMandatory:Z

    .line 117
    return-void
.end method

.method public setDragger(Lcom/layar/ui/drag/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/layar/ui/drag/LayerSpot;->mDragger:Lcom/layar/ui/drag/DragController;

    .line 126
    return-void
.end method

.method public setLayer(Lcom/layar/data/layer/Layer20;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "layer"
    .parameter "icon"

    .prologue
    const/4 v3, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    iput-object p1, p0, Lcom/layar/ui/drag/LayerSpot;->layer:Lcom/layar/data/layer/Layer20;

    .line 82
    iget-object v1, p0, Lcom/layar/ui/drag/LayerSpot;->iconTask:Lcom/layar/ui/drag/LayerSpot$GetIconTask;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/layar/ui/drag/LayerSpot;->iconTask:Lcom/layar/ui/drag/LayerSpot$GetIconTask;

    invoke-virtual {v1, v5}, Lcom/layar/ui/drag/LayerSpot$GetIconTask;->cancel(Z)Z

    .line 86
    :cond_0
    if-nez p1, :cond_1

    .line 87
    const/4 p2, 0x0

    .line 88
    invoke-virtual {p0, v4}, Lcom/layar/ui/drag/LayerSpot;->setFocusable(Z)V

    .line 89
    invoke-virtual {p0, v4}, Lcom/layar/ui/drag/LayerSpot;->setFocusableInTouchMode(Z)V

    .line 90
    iget-object v1, p0, Lcom/layar/ui/drag/LayerSpot;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    :goto_0
    return-void

    .line 93
    :cond_1
    if-eqz p2, :cond_2

    .line 94
    iput-object p2, p0, Lcom/layar/ui/drag/LayerSpot;->icon:Landroid/graphics/Bitmap;

    .line 95
    iget-object v1, p0, Lcom/layar/ui/drag/LayerSpot;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    iget-object v1, p0, Lcom/layar/ui/drag/LayerSpot;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    :goto_1
    invoke-virtual {p0, v5}, Lcom/layar/ui/drag/LayerSpot;->setFocusable(Z)V

    .line 111
    invoke-virtual {p0, v5}, Lcom/layar/ui/drag/LayerSpot;->setFocusableInTouchMode(Z)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v1, p1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    const-string v2, "icon"

    invoke-static {v1, v2, v4}, Lcom/layar/data/ImageCache;->readLayerImage(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    .local v0, iconImage:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 100
    invoke-direct {p0, v0}, Lcom/layar/ui/drag/LayerSpot;->prepareIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/ui/drag/LayerSpot;->icon:Landroid/graphics/Bitmap;

    .line 101
    iget-object v1, p0, Lcom/layar/ui/drag/LayerSpot;->mIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/layar/ui/drag/LayerSpot;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    iget-object v1, p0, Lcom/layar/ui/drag/LayerSpot;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/layar/ui/drag/LayerSpot;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    new-instance v1, Lcom/layar/ui/drag/LayerSpot$GetIconTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/layar/ui/drag/LayerSpot$GetIconTask;-><init>(Lcom/layar/ui/drag/LayerSpot;Lcom/layar/ui/drag/LayerSpot$GetIconTask;)V

    iput-object v1, p0, Lcom/layar/ui/drag/LayerSpot;->iconTask:Lcom/layar/ui/drag/LayerSpot$GetIconTask;

    .line 106
    iget-object v1, p0, Lcom/layar/ui/drag/LayerSpot;->iconTask:Lcom/layar/ui/drag/LayerSpot$GetIconTask;

    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/layar/ui/drag/LayerSpot$GetIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method
