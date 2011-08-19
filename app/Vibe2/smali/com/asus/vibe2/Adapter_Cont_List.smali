.class public Lcom/asus/vibe2/Adapter_Cont_List;
.super Landroid/widget/BaseAdapter;
.source "Adapter_Cont_List.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/vibe2/Adapter_Cont_List$ViewHolder;
    }
.end annotation


# static fields
.field private static lastUpdated:J


# instance fields
.field private mBitmapHandler:Landroid/os/Handler;

.field private mBitmaps:[Landroid/graphics/Bitmap;

.field private mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/vibe/item/VibeItem_Cont;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mTabType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/asus/vibe2/Adapter_Cont_List;->lastUpdated:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 3
    .parameter "context"
    .parameter "tabType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/vibe/item/VibeItem_Cont;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Cont;>;"
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mContext:Landroid/content/Context;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mTabType:I

    .line 31
    iput-object v1, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mContents:Ljava/util/ArrayList;

    .line 32
    iput-object v1, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 42
    new-instance v0, Lcom/asus/vibe2/Adapter_Cont_List$1;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Adapter_Cont_List$1;-><init>(Lcom/asus/vibe2/Adapter_Cont_List;)V

    iput-object v0, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mBitmapHandler:Landroid/os/Handler;

    .line 67
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->MEM_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/asus/vibe2/debug/MemDebug;->add(Ljava/lang/Object;)V

    const-string v0, "ASUS@Vibe_Mem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " created!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mContext:Landroid/content/Context;

    .line 69
    iput p2, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mTabType:I

    .line 70
    if-eqz p3, :cond_1

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mContents:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 74
    :cond_1
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 27
    sget-wide v0, Lcom/asus/vibe2/Adapter_Cont_List;->lastUpdated:J

    return-wide v0
.end method

.method static synthetic access$002(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    sput-wide p0, Lcom/asus/vibe2/Adapter_Cont_List;->lastUpdated:J

    return-wide p0
.end method

.method static synthetic access$100(Lcom/asus/vibe2/Adapter_Cont_List;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mBitmapHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/asus/vibe2/Adapter_Cont_List;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mTabType:I

    return v0
.end method

.method static synthetic access$300(Lcom/asus/vibe2/Adapter_Cont_List;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/asus/vibe2/Adapter_Cont_List;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public clearBitmap()V
    .locals 5

    .prologue
    .line 144
    iget-object v4, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 145
    iget-object v0, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mBitmaps:[Landroid/graphics/Bitmap;

    .local v0, arr$:[Landroid/graphics/Bitmap;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 146
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 147
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 145
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v0           #arr$:[Landroid/graphics/Bitmap;
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 156
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->MEM_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/asus/vibe2/debug/MemDebug;->remove(Ljava/lang/Object;)V

    const-string v0, "ASUS@Vibe_Mem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finalized!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 158
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mContents:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/asus/vibe/item/VibeItem_Cont;
    .locals 1
    .parameter "pos"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mContents:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/vibe/item/VibeItem_Cont;

    move-object v0, p0

    .line 87
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/asus/vibe2/Adapter_Cont_List;->getItem(I)Lcom/asus/vibe/item/VibeItem_Cont;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mContents:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 92
    int-to-long v0, p1

    .line 94
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f02003c

    const v8, 0x7f02003a

    const/4 v7, 0x0

    .line 98
    instance-of v3, p3, Landroid/widget/GridView;

    .line 99
    .local v3, isGrid:Z
    const/4 v4, 0x0

    .line 100
    .local v4, view:Landroid/view/View;
    if-nez p2, :cond_3

    .line 101
    iget-object v5, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    if-eqz v3, :cond_2

    const v6, 0x7f030009

    :goto_0
    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 102
    new-instance v2, Lcom/asus/vibe2/Adapter_Cont_List$ViewHolder;

    invoke-direct {v2}, Lcom/asus/vibe2/Adapter_Cont_List$ViewHolder;-><init>()V

    .line 103
    .local v2, holder:Lcom/asus/vibe2/Adapter_Cont_List$ViewHolder;
    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/asus/vibe2/Adapter_Cont_List$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 104
    const v5, 0x1020014

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/asus/vibe2/Adapter_Cont_List$ViewHolder;->text:Landroid/widget/TextView;

    .line 105
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 109
    .end local v2           #holder:Lcom/asus/vibe2/Adapter_Cont_List$ViewHolder;
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/vibe2/Adapter_Cont_List$ViewHolder;

    .line 110
    .restart local v2       #holder:Lcom/asus/vibe2/Adapter_Cont_List$ViewHolder;
    iget-object v5, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mContents:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, p1, :cond_1

    if-eqz v2, :cond_1

    .line 111
    iget-object v5, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/vibe/item/VibeItem_Cont;

    .line 113
    .local v1, content:Lcom/asus/vibe/item/VibeItem_Cont;
    iget-object v5, v2, Lcom/asus/vibe2/Adapter_Cont_List$ViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 117
    iget-object v5, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v5, v5, p1

    if-eqz v5, :cond_4

    .line 118
    iget-object v5, v2, Lcom/asus/vibe2/Adapter_Cont_List$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    :cond_0
    :goto_2
    iget-object v5, v2, Lcom/asus/vibe2/Adapter_Cont_List$ViewHolder;->text:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/asus/vibe2/Adapter_Cont_List$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/asus/vibe/item/VibeItem_Cont;->mContentName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    .end local v1           #content:Lcom/asus/vibe/item/VibeItem_Cont;
    :cond_1
    return-object v4

    .line 101
    .end local v2           #holder:Lcom/asus/vibe2/Adapter_Cont_List$ViewHolder;
    :cond_2
    const v6, 0x7f03000a

    goto :goto_0

    .line 107
    :cond_3
    move-object v4, p2

    goto :goto_1

    .line 119
    .restart local v1       #content:Lcom/asus/vibe/item/VibeItem_Cont;
    .restart local v2       #holder:Lcom/asus/vibe2/Adapter_Cont_List$ViewHolder;
    :cond_4
    iget-object v5, v1, Lcom/asus/vibe/item/VibeItem_Cont;->mImageBuffer:[B

    if-eqz v5, :cond_7

    iget-object v5, v1, Lcom/asus/vibe/item/VibeItem_Cont;->mImageBuffer:[B

    array-length v5, v5

    if-lez v5, :cond_7

    .line 120
    iget-object v5, v1, Lcom/asus/vibe/item/VibeItem_Cont;->mImageBuffer:[B

    iget-object v6, v1, Lcom/asus/vibe/item/VibeItem_Cont;->mImageBuffer:[B

    array-length v6, v6

    invoke-static {v5, v7, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_6

    .line 122
    const-string v5, "ASUS@Vibe"

    const-string v6, "Adapter_Cont: Can not decode bitmap!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-object v10, v1, Lcom/asus/vibe/item/VibeItem_Cont;->mImageUrl:Ljava/lang/String;

    .line 124
    iput-object v10, v1, Lcom/asus/vibe/item/VibeItem_Cont;->mImageBuffer:[B

    .line 125
    iget-object v5, v2, Lcom/asus/vibe2/Adapter_Cont_List$ViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    move v6, v8

    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_5
    move v6, v9

    goto :goto_3

    .line 127
    :cond_6
    iget-object v5, v2, Lcom/asus/vibe2/Adapter_Cont_List$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    iget-object v5, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mBitmaps:[Landroid/graphics/Bitmap;

    aput-object v0, v5, p1

    goto :goto_2

    .line 132
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_7
    iget-object v5, v2, Lcom/asus/vibe2/Adapter_Cont_List$ViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v3, :cond_8

    move v6, v8

    :goto_4
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    iget-object v5, v1, Lcom/asus/vibe/item/VibeItem_Cont;->mImageUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 134
    iget-object v5, p0, Lcom/asus/vibe2/Adapter_Cont_List;->mBitmapHandler:Landroid/os/Handler;

    invoke-static {p1, v1, v5}, Lcom/asus/vibe/api/IconCacheMgr;->newCacher(ILcom/asus/vibe/item/VibeItem_Cont;Landroid/os/Handler;)V

    goto :goto_2

    :cond_8
    move v6, v9

    .line 132
    goto :goto_4
.end method
