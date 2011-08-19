.class public Lcom/asus/reader/pdf/PDFOverview$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "PDFOverview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/pdf/PDFOverview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAdapter"
.end annotation


# instance fields
.field private TotalPage:I

.field private mContext:Landroid/content/Context;

.field private mThumbIds:[I

.field final synthetic this$0:Lcom/asus/reader/pdf/PDFOverview;


# direct methods
.method public constructor <init>(Lcom/asus/reader/pdf/PDFOverview;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/asus/reader/pdf/PDFOverview$ImageAdapter;->this$0:Lcom/asus/reader/pdf/PDFOverview;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 87
    sget-object v0, Lcom/asus/reader/pdf/PDFOverview;->cache:Lcom/asus/reader/pdf/PDFCache;

    sget v0, Lcom/asus/reader/pdf/PDFCache;->mPageCount:I

    iput v0, p0, Lcom/asus/reader/pdf/PDFOverview$ImageAdapter;->TotalPage:I

    .line 89
    iget v0, p0, Lcom/asus/reader/pdf/PDFOverview$ImageAdapter;->TotalPage:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFOverview$ImageAdapter;->mThumbIds:[I

    .line 54
    iput-object p2, p0, Lcom/asus/reader/pdf/PDFOverview$ImageAdapter;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFOverview$ImageAdapter;->mThumbIds:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 66
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x5

    .line 71
    if-nez p2, :cond_0

    .line 72
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFOverview$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 73
    .local v2, imageView:Landroid/widget/ImageView;
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/16 v4, 0x66

    const/16 v5, 0x84

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 75
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 80
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sdcard/Books/test/page"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 81
    .local v1, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    return-object v2

    .line 78
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0

    .restart local v2       #imageView:Landroid/widget/ImageView;
    goto :goto_0
.end method
