.class public Lcom/android/videoeditor/OverlaysAdapter;
.super Lcom/android/videoeditor/BaseAdapterWithImages;
.source "OverlaysAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/videoeditor/BaseAdapterWithImages",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final sCopyPaint:Landroid/graphics/Paint;


# instance fields
.field private final mGenericBitmap:Landroid/graphics/Bitmap;

.field private final mOverlays:[Lcom/android/videoeditor/OverlayType;

.field private final mSubtitle:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/videoeditor/OverlaysAdapter;->sCopyPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 2
    .parameter "context"
    .parameter "listView"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/videoeditor/BaseAdapterWithImages;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020022

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/OverlaysAdapter;->mGenericBitmap:Landroid/graphics/Bitmap;

    .line 54
    const v0, 0x7f090066

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/OverlaysAdapter;->mTitle:Ljava/lang/String;

    .line 55
    const v0, 0x7f090067

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/OverlaysAdapter;->mSubtitle:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/android/videoeditor/OverlayType;->getOverlays(Landroid/content/Context;)[Lcom/android/videoeditor/OverlayType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/OverlaysAdapter;->mOverlays:[Lcom/android/videoeditor/OverlayType;

    .line 57
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/videoeditor/OverlaysAdapter;->mOverlays:[Lcom/android/videoeditor/OverlayType;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/videoeditor/OverlaysAdapter;->mOverlays:[Lcom/android/videoeditor/OverlayType;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 81
    if-nez p2, :cond_0

    .line 82
    iget-object v4, p0, Lcom/android/videoeditor/OverlaysAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 84
    .local v2, vi:Landroid/view/LayoutInflater;
    const v4, 0x7f04000a

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 85
    .local v1, rowView:Landroid/view/View;
    new-instance v3, Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;

    invoke-direct {v3, v1}, Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;-><init>(Landroid/view/View;)V

    .line 86
    .local v3, viewHolder:Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;,"Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder<Ljava/lang/Integer;>;"
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    .end local v2           #vi:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v4, p0, Lcom/android/videoeditor/OverlaysAdapter;->mOverlays:[Lcom/android/videoeditor/OverlayType;

    aget-object v0, v4, p1

    .line 93
    .local v0, overlayType:Lcom/android/videoeditor/OverlayType;
    invoke-virtual {v0}, Lcom/android/videoeditor/OverlayType;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/videoeditor/OverlayType;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v3}, Lcom/android/videoeditor/OverlaysAdapter;->initiateLoad(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;)V

    .line 96
    iget-object v4, v3, Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/videoeditor/OverlayType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-object v1

    .line 88
    .end local v0           #overlayType:Lcom/android/videoeditor/OverlayType;
    .end local v1           #rowView:Landroid/view/View;
    .end local v3           #viewHolder:Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;,"Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder<Ljava/lang/Integer;>;"
    :cond_0
    move-object v1, p2

    .line 89
    .restart local v1       #rowView:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;

    .restart local v3       #viewHolder:Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;,"Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder<Ljava/lang/Integer;>;"
    goto :goto_0
.end method

.method protected loadImage(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "data"

    .prologue
    const/4 v9, 0x0

    .line 106
    iget-object v0, p0, Lcom/android/videoeditor/OverlaysAdapter;->mGenericBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/videoeditor/OverlaysAdapter;->mGenericBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 109
    .local v8, overlayBitmap:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 110
    .local v7, canvas:Landroid/graphics/Canvas;
    iget-object v0, p0, Lcom/android/videoeditor/OverlaysAdapter;->mGenericBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/android/videoeditor/OverlaysAdapter;->sCopyPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v9, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 111
    iget-object v0, p0, Lcom/android/videoeditor/OverlaysAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/videoeditor/OverlaysAdapter;->mTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/videoeditor/OverlaysAdapter;->mSubtitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/videoeditor/OverlaysAdapter;->mGenericBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/videoeditor/OverlaysAdapter;->mGenericBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/android/videoeditor/util/ImageUtils;->buildOverlayBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Lcom/android/videoeditor/OverlaysAdapter;->sCopyPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v9, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 114
    return-object v8
.end method
