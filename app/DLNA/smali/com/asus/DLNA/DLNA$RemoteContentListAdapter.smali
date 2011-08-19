.class Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/DLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteContentListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$QueueItem;,
        Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final NOTIFY_NEED_TO_DECODE_NOW:I = 0x384

.field private static final NOTIFY_UPDATE_THUMBNAIL_NOW:I = 0x385


# instance fields
.field private mDecodeQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNowSelectedPOS:I

.field private mResdevicelayout:I

.field private mcontext:Landroid/content/Context;

.field private mdecodeHandler:Landroid/os/Handler;

.field final runnableDecodeThumbnail:Ljava/lang/Runnable;

.field private tDecodeThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/asus/DLNA/DLNA;


# direct methods
.method public constructor <init>(Lcom/asus/DLNA/DLNA;Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "iChildItemLayoutRes"

    .prologue
    .line 1874
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2039
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->tDecodeThread:Ljava/lang/Thread;

    .line 2041
    new-instance v0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$1;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$1;-><init>(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mdecodeHandler:Landroid/os/Handler;

    .line 2089
    new-instance v0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$3;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$3;-><init>(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->runnableDecodeThumbnail:Ljava/lang/Runnable;

    .line 1875
    iput-object p2, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mcontext:Landroid/content/Context;

    .line 1876
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mcontext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1877
    iput p3, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mResdevicelayout:I

    .line 1878
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mNowSelectedPOS:I

    .line 1879
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mDecodeQueue:Ljava/util/List;

    .line 1880
    return-void
.end method

.method private ImageOperations(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "url"

    .prologue
    const/4 v6, 0x0

    .line 2184
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 2185
    :cond_0
    const-string v4, "DLNA"

    const-string v5, "No image URL !!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 2245
    :goto_0
    return-object v4

    .line 2190
    :cond_1
    const/4 v3, 0x1

    .line 2192
    .local v3, sampleSize:I
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 2193
    .local v2, is:Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .local v0, bOriginal:Landroid/graphics/Bitmap;
    move-object v4, v0

    .line 2194
    goto :goto_0

    .line 2238
    .end local v0           #bOriginal:Landroid/graphics/Bitmap;
    .end local v2           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 2240
    .local v1, e:Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v4, v6

    .line 2241
    goto :goto_0

    .line 2242
    .end local v1           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 2244
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v6

    .line 2245
    goto :goto_0
.end method

.method private IsPOSInsideViewRegion(I)Z
    .locals 2
    .parameter "iNowPOS"

    .prologue
    .line 2066
    const/4 v0, 0x0

    .line 2067
    .local v0, bRes:Z
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$4900(Lcom/asus/DLNA/DLNA;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$4900(Lcom/asus/DLNA/DLNA;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 2069
    const/4 v0, 0x1

    .line 2071
    :cond_0
    return v0
.end method

.method static synthetic access$5900(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->tDecodeThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1855
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->tDecodeThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$6000(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1855
    invoke-direct {p0}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->runDecodeInBackground()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mDecodeQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1855
    invoke-direct {p0, p1}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->IsPOSInsideViewRegion(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1855
    invoke-direct {p0, p1}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->ImageOperations(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6400(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1855
    invoke-direct {p0}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->removeExtraAndFarItem()V

    return-void
.end method

.method static synthetic access$6500(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mdecodeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private removeExtraAndFarItem()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2144
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v6

    if-nez v6, :cond_1

    .line 2178
    :cond_0
    :goto_0
    return-void

    .line 2145
    :cond_1
    const/16 v6, 0xf

    iget-object v7, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v7}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/SortedMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 2146
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2147
    .local v0, iFirstKey:I
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2148
    .local v2, iLastKey:I
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4900(Lcom/asus/DLNA/DLNA;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2149
    .local v1, iFirstVisiblePOS:I
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4900(Lcom/asus/DLNA/DLNA;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 2152
    .local v3, iLastVisiblePOS:I
    sub-int v6, v1, v0

    iget-object v7, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v7}, Lcom/asus/DLNA/DLNA;->access$4900(Lcom/asus/DLNA/DLNA;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    if-lt v6, v7, :cond_4

    .line 2153
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4900(Lcom/asus/DLNA/DLNA;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    if-lt v0, v6, :cond_2

    if-gt v0, v3, :cond_2

    .line 2154
    const-string v6, "DLNA"

    const-string v7, "     >>>> sorry, this first key is inside the visible region"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2156
    :cond_2
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/DLNA/DLNA$NodeInfo;

    .line 2157
    .local v4, niFirst:Lcom/asus/DLNA/DLNA$NodeInfo;
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2159
    iget-object v6, v4, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 2160
    :cond_3
    iput-object v8, v4, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 2161
    iput-object v8, v4, Lcom/asus/DLNA/DLNA$NodeInfo;->mStrUri:Ljava/lang/String;

    goto/16 :goto_0

    .line 2165
    .end local v4           #niFirst:Lcom/asus/DLNA/DLNA$NodeInfo;
    :cond_4
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4900(Lcom/asus/DLNA/DLNA;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    if-lt v2, v6, :cond_5

    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4900(Lcom/asus/DLNA/DLNA;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v6

    if-gt v2, v6, :cond_5

    .line 2166
    const-string v6, "DLNA"

    const-string v7, "     >>>> sorry, this last key is inside the visible region"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2168
    :cond_5
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/DLNA/DLNA$NodeInfo;

    .line 2169
    .local v5, niLast:Lcom/asus/DLNA/DLNA$NodeInfo;
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2171
    iget-object v6, v5, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_6

    iget-object v6, v5, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 2172
    :cond_6
    iput-object v8, v5, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 2173
    iput-object v8, v5, Lcom/asus/DLNA/DLNA$NodeInfo;->mStrUri:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private runDecodeInBackground()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 2075
    new-instance v0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$2;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$2;-><init>(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;)V

    .line 2083
    .local v0, DecodeThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2084
    return-object v0
.end method


# virtual methods
.method public doClearAllQueuedCMD()V
    .locals 1

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->tDecodeThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 2036
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->tDecodeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2037
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$2200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ItemList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1884
    const/4 v0, 0x0

    .line 1886
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$2200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ItemList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DLNA/ItemList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1890
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1894
    int-to-long v0, p1

    return-wide v0
.end method

.method public getNowPOS()I
    .locals 1

    .prologue
    .line 1999
    iget v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mNowSelectedPOS:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    move-object v14, v0

    invoke-static {v14}, Lcom/asus/DLNA/DLNA;->access$2200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ItemList;

    move-result-object v14

    if-nez v14, :cond_0

    .line 1902
    const/4 v14, 0x0

    .line 1995
    .end local p3
    :goto_0
    return-object v14

    .line 1904
    .restart local p3
    :cond_0
    if-nez p2, :cond_1

    .line 1905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mResdevicelayout:I

    move v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1907
    new-instance v4, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$ViewHolder;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$ViewHolder;-><init>(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;)V

    .line 1908
    .local v4, holder:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$ViewHolder;
    const v14, 0x7f080003

    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/widget/ImageView;

    move-object/from16 v0, p3

    move-object v1, v4

    iput-object v0, v1, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 1909
    const v14, 0x7f080005

    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    move-object/from16 v0, p3

    move-object v1, v4

    iput-object v0, v1, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$ViewHolder;->filename:Landroid/widget/TextView;

    .line 1910
    const v14, 0x7f080004

    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    move-object/from16 v0, p3

    move-object v1, v4

    iput-object v0, v1, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    .line 1912
    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1918
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    move-object v14, v0

    invoke-static {v14}, Lcom/asus/DLNA/DLNA;->access$2200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ItemList;

    move-result-object v14

    move-object v0, v14

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/ItemList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/asus/DLNA/Item;

    invoke-virtual/range {p3 .. p3}, Lcom/asus/DLNA/Item;->getEntryInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v11

    .line 1919
    .local v11, theEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;
    sget v14, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Title:I

    int-to-long v14, v14

    invoke-virtual {v11, v14, v15}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v13

    .line 1920
    .local v13, theTitle:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/awox/jUPnPCP/CDSEntryInfo;->IsContainer()Z

    move-result v12

    .line 1921
    .local v12, theIsContainer:Z
    invoke-virtual {v11}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetChildCount()J

    move-result-wide v8

    .line 1922
    .local v8, theChildCount:J
    const/4 v10, 0x0

    .line 1924
    .local v10, theChildCountStr:Ljava/lang/String;
    const/4 v14, 0x1

    if-ne v14, v12, :cond_2

    .line 1926
    iget-object v14, v4, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    move-object v15, v0

    invoke-static {v15}, Lcom/asus/DLNA/DLNA;->access$5700(Lcom/asus/DLNA/DLNA;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1929
    iget-object v14, v4, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$ViewHolder;->filename:Landroid/widget/TextView;

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1931
    iget-object v14, v4, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    move-object/from16 v14, p2

    .line 1995
    goto/16 :goto_0

    .line 1914
    .end local v4           #holder:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$ViewHolder;
    .end local v8           #theChildCount:J
    .end local v10           #theChildCountStr:Ljava/lang/String;
    .end local v11           #theEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;
    .end local v12           #theIsContainer:Z
    .end local v13           #theTitle:Ljava/lang/String;
    .restart local p3
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$ViewHolder;

    .restart local v4       #holder:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$ViewHolder;
    goto :goto_1

    .line 1935
    .end local p3
    .restart local v8       #theChildCount:J
    .restart local v10       #theChildCountStr:Ljava/lang/String;
    .restart local v11       #theEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;
    .restart local v12       #theIsContainer:Z
    .restart local v13       #theTitle:Ljava/lang/String;
    :cond_2
    iget-object v14, v4, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$ViewHolder;->filename:Landroid/widget/TextView;

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1936
    const/4 v5, 0x0

    .line 1937
    .local v5, imageicon:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    move-object v14, v0

    invoke-static {v14}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/DLNA/DLNA$NodeInfo;

    .line 1939
    .local v6, ni:Lcom/asus/DLNA/DLNA$NodeInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    move-object v14, v0

    invoke-static {v14}, Lcom/asus/DLNA/DLNA;->access$2200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ItemList;

    move-result-object v14

    move-object v0, v14

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/ItemList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/asus/DLNA/Item;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/asus/DLNA/Item;->resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-object v14, v0

    const-string v15, "JPEG_MED,JPEG_SM,JPEG_TN,PNG_TN"

    invoke-virtual {v14, v15}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetThumbnailURI(Ljava/lang/String;)Lcom/awox/jUPnPCP/ThumbnailGetResult;

    move-result-object v14

    invoke-virtual {v14}, Lcom/awox/jUPnPCP/ThumbnailGetResult;->getMURI()Ljava/lang/String;

    move-result-object v7

    .line 1941
    .local v7, strRemoteUri:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 1942
    iget-object v14, v6, Lcom/asus/DLNA/DLNA$NodeInfo;->mStrUri:Ljava/lang/String;

    if-eqz v14, :cond_3

    .line 1943
    iget-object v14, v6, Lcom/asus/DLNA/DLNA$NodeInfo;->mStrUri:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_5

    .line 1944
    iget-object v5, v6, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 1959
    :cond_3
    :goto_3
    if-nez v5, :cond_6

    .line 1960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    move-object v14, v0

    invoke-static {v14}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v14

    invoke-virtual {v14}, Lcom/asus/DLNA/MediaControl;->getNowFilterType()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 1974
    :goto_4
    :pswitch_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_4

    .line 1976
    new-instance v3, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$QueueItem;

    const/4 v14, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$QueueItem;-><init>(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;Lcom/asus/DLNA/DLNA$1;)V

    .line 1977
    .local v3, decodeitem:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$QueueItem;
    move/from16 v0, p1

    move-object v1, v3

    iput v0, v1, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$QueueItem;->itemPOS:I

    .line 1978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mDecodeQueue:Ljava/util/List;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-interface {v14, v15, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mdecodeHandler:Landroid/os/Handler;

    move-object v14, v0

    const/16 v15, 0x384

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1986
    .end local v3           #decodeitem:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$QueueItem;
    :cond_4
    :goto_5
    const/4 v5, 0x0

    .line 1988
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mNowSelectedPOS:I

    move v14, v0

    move v0, v14

    move/from16 v1, p1

    if-ne v0, v1, :cond_7

    .line 1989
    iget-object v14, v4, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    const v15, 0x7f02002f

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1947
    :cond_5
    const-string v14, "DLNA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pos="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " has incorrect thumbnail!! remove this node from cache list"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    iget-object v14, v6, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 1949
    const/4 v14, 0x0

    iput-object v14, v6, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 1950
    const/4 v14, 0x0

    iput-object v14, v6, Lcom/asus/DLNA/DLNA$NodeInfo;->mStrUri:Ljava/lang/String;

    .line 1951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    move-object v14, v0

    invoke-static {v14}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1962
    :pswitch_1
    iget-object v14, v4, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    move-object v15, v0

    invoke-static {v15}, Lcom/asus/DLNA/DLNA;->access$4100(Lcom/asus/DLNA/DLNA;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 1965
    :pswitch_2
    iget-object v14, v4, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    move-object v15, v0

    invoke-static {v15}, Lcom/asus/DLNA/DLNA;->access$4200(Lcom/asus/DLNA/DLNA;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 1968
    :pswitch_3
    iget-object v14, v4, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    move-object v15, v0

    invoke-static {v15}, Lcom/asus/DLNA/DLNA;->access$4300(Lcom/asus/DLNA/DLNA;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 1984
    :cond_6
    iget-object v14, v4, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v14, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_5

    .line 1991
    :cond_7
    iget-object v14, v4, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1960
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public nextPOSIndicator()V
    .locals 2

    .prologue
    .line 2025
    iget v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mNowSelectedPOS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mNowSelectedPOS:I

    .line 2026
    iget v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mNowSelectedPOS:I

    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 2027
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mNowSelectedPOS:I

    .line 2029
    :cond_0
    iget v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mNowSelectedPOS:I

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->updateNowPlayingIndicator(I)V

    .line 2030
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    iget v1, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mNowSelectedPOS:I

    invoke-static {v0, v1}, Lcom/asus/DLNA/DLNA;->access$4600(Lcom/asus/DLNA/DLNA;I)V

    .line 2031
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->notifyDataSetChanged()V

    .line 2032
    return-void
.end method

.method public previousPOSIndicator()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2015
    iget v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mNowSelectedPOS:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mNowSelectedPOS:I

    .line 2016
    iget v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mNowSelectedPOS:I

    if-gez v0, :cond_0

    .line 2017
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mNowSelectedPOS:I

    .line 2019
    :cond_0
    iget v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mNowSelectedPOS:I

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->updateNowPlayingIndicator(I)V

    .line 2020
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    iget v1, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mNowSelectedPOS:I

    invoke-static {v0, v1}, Lcom/asus/DLNA/DLNA;->access$4600(Lcom/asus/DLNA/DLNA;I)V

    .line 2021
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->notifyDataSetChanged()V

    .line 2022
    return-void
.end method

.method public updateNowPlayingIndicator(I)V
    .locals 4
    .parameter "NowPOS"

    .prologue
    .line 2003
    iput p1, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->mNowSelectedPOS:I

    .line 2004
    const/4 v2, -0x1

    if-ne v2, p1, :cond_0

    .line 2005
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$4500(Lcom/asus/DLNA/DLNA;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2011
    :goto_0
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->notifyDataSetChanged()V

    .line 2012
    return-void

    .line 2007
    :cond_0
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$2200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/ItemList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/asus/DLNA/ItemList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/DLNA/Item;

    invoke-virtual {v2}, Lcom/asus/DLNA/Item;->getEntryInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v0

    .line 2008
    .local v0, theEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;
    sget v2, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Title:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v1

    .line 2009
    .local v1, theTitle:Ljava/lang/String;
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$4500(Lcom/asus/DLNA/DLNA;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
