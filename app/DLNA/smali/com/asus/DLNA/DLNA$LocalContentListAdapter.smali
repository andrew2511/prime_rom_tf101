.class Lcom/asus/DLNA/DLNA$LocalContentListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/DLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalContentListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/DLNA/DLNA$LocalContentListAdapter$QueueItem;,
        Lcom/asus/DLNA/DLNA$LocalContentListAdapter$ViewHolder;
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
            "Lcom/asus/DLNA/DLNA$LocalContentListAdapter$QueueItem;",
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
    .line 1491
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1630
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->tDecodeThread:Ljava/lang/Thread;

    .line 1632
    new-instance v0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$1;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$1;-><init>(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mdecodeHandler:Landroid/os/Handler;

    .line 1678
    new-instance v0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$3;-><init>(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;)V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->runnableDecodeThumbnail:Ljava/lang/Runnable;

    .line 1492
    iput-object p2, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mcontext:Landroid/content/Context;

    .line 1493
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mcontext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1494
    iput p3, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mResdevicelayout:I

    .line 1495
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mNowSelectedPOS:I

    .line 1496
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mDecodeQueue:Ljava/util/List;

    .line 1497
    return-void
.end method

.method private IsPOSInsideViewRegion(I)Z
    .locals 2
    .parameter "iNowPOS"

    .prologue
    .line 1657
    const/4 v0, 0x0

    .line 1658
    .local v0, bRes:Z
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$4900(Lcom/asus/DLNA/DLNA;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$4900(Lcom/asus/DLNA/DLNA;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 1660
    const/4 v0, 0x1

    .line 1662
    :cond_0
    return v0
.end method

.method static synthetic access$4700(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->tDecodeThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1472
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->tDecodeThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1472
    invoke-direct {p0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->runDecodeInBackground()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mDecodeQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1472
    invoke-direct {p0, p1}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->IsPOSInsideViewRegion(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1472
    invoke-direct/range {p0 .. p5}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mcontext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1472
    invoke-direct {p0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->removeExtraAndFarItem()V

    return-void
.end method

.method static synthetic access$5600(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mdecodeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "songid"
    .parameter "albumid"

    .prologue
    const-wide/16 v7, 0x0

    .line 1815
    const-string v6, "content://media/external/audio/albumart"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1816
    .local v4, sArtworkUri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 1818
    .local v0, bm:Landroid/graphics/Bitmap;
    cmp-long v6, p4, v7

    if-gez v6, :cond_0

    cmp-long v6, p2, v7

    if-gez v6, :cond_0

    .line 1819
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Must specify an album or a song id"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1823
    :cond_0
    cmp-long v6, p4, v7

    if-gez v6, :cond_2

    .line 1824
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://media/external/audio/media/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/albumart"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1825
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1826
    .local v3, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_1

    .line 1827
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 1828
    .local v2, fd:Ljava/io/FileDescriptor;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1829
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1847
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v3           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-object v0

    .line 1833
    :cond_2
    invoke-static {v4, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1834
    .restart local v5       #uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1835
    .restart local v3       #pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_1

    .line 1836
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 1837
    .restart local v2       #fd:Ljava/io/FileDescriptor;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1838
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1841
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v3           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v5           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 1842
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1843
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 1844
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private removeExtraAndFarItem()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1777
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1811
    :cond_0
    :goto_0
    return-void

    .line 1778
    :cond_1
    const/16 v6, 0xf

    iget-object v7, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v7}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/SortedMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 1779
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1780
    .local v0, iFirstKey:I
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1781
    .local v2, iLastKey:I
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4900(Lcom/asus/DLNA/DLNA;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1782
    .local v1, iFirstVisiblePOS:I
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4900(Lcom/asus/DLNA/DLNA;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 1785
    .local v3, iLastVisiblePOS:I
    sub-int v6, v1, v0

    sub-int v7, v2, v3

    if-lt v6, v7, :cond_4

    .line 1786
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4900(Lcom/asus/DLNA/DLNA;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    if-lt v0, v6, :cond_2

    iget-object v6, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4900(Lcom/asus/DLNA/DLNA;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v6

    if-gt v0, v6, :cond_2

    .line 1787
    const-string v6, "DLNA"

    const-string v7, "     >>>> sorry, this first key is inside the visible region"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1789
    :cond_2
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/DLNA/DLNA$NodeInfo;

    .line 1790
    .local v4, niFirst:Lcom/asus/DLNA/DLNA$NodeInfo;
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1792
    iget-object v6, v4, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1793
    :cond_3
    iput-object v8, v4, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 1794
    iput-object v8, v4, Lcom/asus/DLNA/DLNA$NodeInfo;->mStrUri:Ljava/lang/String;

    goto/16 :goto_0

    .line 1798
    .end local v4           #niFirst:Lcom/asus/DLNA/DLNA$NodeInfo;
    :cond_4
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4900(Lcom/asus/DLNA/DLNA;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    if-lt v2, v6, :cond_5

    iget-object v6, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4900(Lcom/asus/DLNA/DLNA;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v6

    if-gt v2, v6, :cond_5

    .line 1799
    const-string v6, "DLNA"

    const-string v7, "     >>>> sorry, this last key is inside the visible region"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1801
    :cond_5
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/DLNA/DLNA$NodeInfo;

    .line 1802
    .local v5, niLast:Lcom/asus/DLNA/DLNA$NodeInfo;
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    iget-object v6, v5, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_6

    iget-object v6, v5, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1805
    :cond_6
    iput-object v8, v5, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 1806
    iput-object v8, v5, Lcom/asus/DLNA/DLNA$NodeInfo;->mStrUri:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private runDecodeInBackground()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 1666
    new-instance v0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$2;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$2;-><init>(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;)V

    .line 1674
    .local v0, DecodeThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1675
    return-object v0
.end method


# virtual methods
.method public doClearAllQueuedCMD()V
    .locals 1

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->tDecodeThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1627
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->tDecodeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1628
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$700(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1501
    const/4 v0, 0x0

    .line 1503
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$700(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1507
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1511
    int-to-long v0, p1

    return-wide v0
.end method

.method public getNowPOS()I
    .locals 1

    .prologue
    .line 1593
    iget v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mNowSelectedPOS:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1517
    iget-object v4, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v4}, Lcom/asus/DLNA/DLNA;->access$700(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v4, v7

    .line 1589
    :goto_0
    return-object v4

    .line 1520
    :cond_0
    iget-object v4, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v4}, Lcom/asus/DLNA/DLNA;->access$700(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    move-object v4, v7

    .line 1521
    goto :goto_0

    .line 1524
    :cond_1
    if-nez p2, :cond_3

    .line 1525
    iget-object v4, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mResdevicelayout:I

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1526
    new-instance v1, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$ViewHolder;

    invoke-direct {v1, p0, v7}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$ViewHolder;-><init>(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;Lcom/asus/DLNA/DLNA$1;)V

    .line 1527
    .local v1, holder:Lcom/asus/DLNA/DLNA$LocalContentListAdapter$ViewHolder;
    const v4, 0x7f080003

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 1528
    const v4, 0x7f080005

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$ViewHolder;->filename:Landroid/widget/TextView;

    .line 1529
    const v4, 0x7f080004

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    .line 1531
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1536
    :goto_1
    iget-object v5, v1, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$ViewHolder;->filename:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v4}, Lcom/asus/DLNA/DLNA;->access$700(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/DLNA/DataItem;

    invoke-virtual {v4}, Lcom/asus/DLNA/DataItem;->getname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1538
    const/4 v2, 0x0

    .line 1539
    .local v2, imageicon:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v4}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/DLNA/DLNA$NodeInfo;

    .line 1541
    .local v3, ni:Lcom/asus/DLNA/DLNA$NodeInfo;
    if-eqz v3, :cond_2

    .line 1542
    iget-object v4, v3, Lcom/asus/DLNA/DLNA$NodeInfo;->mStrUri:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1543
    iget-object v5, v3, Lcom/asus/DLNA/DLNA$NodeInfo;->mStrUri:Ljava/lang/String;

    iget-object v4, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v4}, Lcom/asus/DLNA/DLNA;->access$700(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/DLNA/DataItem;

    invoke-virtual {v4}, Lcom/asus/DLNA/DataItem;->geturi()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    .line 1544
    iget-object v2, v3, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 1559
    :cond_2
    :goto_2
    if-nez v2, :cond_5

    .line 1561
    iget-object v4, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v4}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/DLNA/MediaControl;->getNowFilterType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1574
    :goto_3
    :pswitch_0
    new-instance v0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$QueueItem;

    invoke-direct {v0, p0, v7}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$QueueItem;-><init>(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;Lcom/asus/DLNA/DLNA$1;)V

    .line 1575
    .local v0, decodeitem:Lcom/asus/DLNA/DLNA$LocalContentListAdapter$QueueItem;
    iput p1, v0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$QueueItem;->itemPOS:I

    .line 1576
    iget-object v4, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mDecodeQueue:Ljava/util/List;

    invoke-interface {v4, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1577
    iget-object v4, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mdecodeHandler:Landroid/os/Handler;

    const/16 v5, 0x384

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1581
    .end local v0           #decodeitem:Lcom/asus/DLNA/DLNA$LocalContentListAdapter$QueueItem;
    :goto_4
    const/4 v2, 0x0

    .line 1583
    iget v4, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mNowSelectedPOS:I

    if-ne v4, p1, :cond_6

    .line 1584
    iget-object v4, v1, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    const v5, 0x7f02002f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_5
    move-object v4, p2

    .line 1589
    goto/16 :goto_0

    .line 1533
    .end local v1           #holder:Lcom/asus/DLNA/DLNA$LocalContentListAdapter$ViewHolder;
    .end local v2           #imageicon:Landroid/graphics/Bitmap;
    .end local v3           #ni:Lcom/asus/DLNA/DLNA$NodeInfo;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/asus/DLNA/DLNA$LocalContentListAdapter$ViewHolder;
    goto/16 :goto_1

    .line 1547
    .restart local v2       #imageicon:Landroid/graphics/Bitmap;
    .restart local v3       #ni:Lcom/asus/DLNA/DLNA$NodeInfo;
    :cond_4
    const-string v4, "DLNA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has incorrect thumbnail!! remove this node from cache list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    iget-object v4, v3, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1549
    iput-object v7, v3, Lcom/asus/DLNA/DLNA$NodeInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 1550
    iput-object v7, v3, Lcom/asus/DLNA/DLNA$NodeInfo;->mStrUri:Ljava/lang/String;

    .line 1551
    iget-object v4, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v4}, Lcom/asus/DLNA/DLNA;->access$4000(Lcom/asus/DLNA/DLNA;)Ljava/util/SortedMap;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1563
    :pswitch_1
    iget-object v4, v1, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$4100(Lcom/asus/DLNA/DLNA;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 1566
    :pswitch_2
    iget-object v4, v1, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$4200(Lcom/asus/DLNA/DLNA;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 1569
    :pswitch_3
    iget-object v4, v1, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v5}, Lcom/asus/DLNA/DLNA;->access$4300(Lcom/asus/DLNA/DLNA;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 1579
    :cond_5
    iget-object v4, v1, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 1586
    :cond_6
    iget-object v4, v1, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 1561
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
    .line 1616
    iget v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mNowSelectedPOS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mNowSelectedPOS:I

    .line 1617
    iget v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mNowSelectedPOS:I

    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1618
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mNowSelectedPOS:I

    .line 1620
    :cond_0
    iget v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mNowSelectedPOS:I

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->updateNowPlayingIndicator(I)V

    .line 1621
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    iget v1, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mNowSelectedPOS:I

    invoke-static {v0, v1}, Lcom/asus/DLNA/DLNA;->access$4600(Lcom/asus/DLNA/DLNA;I)V

    .line 1622
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->notifyDataSetChanged()V

    .line 1623
    return-void
.end method

.method public previousPOSIndicator()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1606
    iget v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mNowSelectedPOS:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mNowSelectedPOS:I

    .line 1607
    iget v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mNowSelectedPOS:I

    if-gez v0, :cond_0

    .line 1608
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mNowSelectedPOS:I

    .line 1610
    :cond_0
    iget v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mNowSelectedPOS:I

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->updateNowPlayingIndicator(I)V

    .line 1611
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    iget v1, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mNowSelectedPOS:I

    invoke-static {v0, v1}, Lcom/asus/DLNA/DLNA;->access$4600(Lcom/asus/DLNA/DLNA;I)V

    .line 1612
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->notifyDataSetChanged()V

    .line 1613
    return-void
.end method

.method public updateNowPlayingIndicator(I)V
    .locals 2
    .parameter "NowPOS"

    .prologue
    .line 1597
    iput p1, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->mNowSelectedPOS:I

    .line 1598
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$4500(Lcom/asus/DLNA/DLNA;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1602
    :goto_0
    invoke-virtual {p0}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->notifyDataSetChanged()V

    .line 1603
    return-void

    .line 1601
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$4500(Lcom/asus/DLNA/DLNA;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$700(Lcom/asus/DLNA/DLNA;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/DLNA/DataItem;

    invoke-virtual {v0}, Lcom/asus/DLNA/DataItem;->getname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
