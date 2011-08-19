.class Lcom/layar/ui/MapOverlay$DownloadIconsTaks;
.super Landroid/os/AsyncTask;
.source "MapOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/MapOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadIconsTaks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[",
        "Lcom/layar/data/BasePOI;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field iconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/layar/ui/MapOverlay;


# direct methods
.method private constructor <init>(Lcom/layar/ui/MapOverlay;)V
    .locals 1
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/layar/ui/MapOverlay$DownloadIconsTaks;->this$0:Lcom/layar/ui/MapOverlay;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layar/ui/MapOverlay$DownloadIconsTaks;->iconMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/ui/MapOverlay;Lcom/layar/ui/MapOverlay$DownloadIconsTaks;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/layar/ui/MapOverlay$DownloadIconsTaks;-><init>(Lcom/layar/ui/MapOverlay;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [[Lcom/layar/data/BasePOI;

    invoke-virtual {p0, p1}, Lcom/layar/ui/MapOverlay$DownloadIconsTaks;->doInBackground([[Lcom/layar/data/BasePOI;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([[Lcom/layar/data/BasePOI;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    .line 282
    const/4 v6, 0x0

    aget-object v0, p1, v6

    .line 283
    .local v0, dataList:[Lcom/layar/data/BasePOI;
    array-length v6, v0

    new-array v4, v6, [Landroid/graphics/Bitmap;

    .line 285
    .local v4, icons:[Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v0

    if-lt v1, v6, :cond_0

    .line 301
    iget-object v6, p0, Lcom/layar/ui/MapOverlay$DownloadIconsTaks;->this$0:Lcom/layar/ui/MapOverlay;

    iput-object v4, v6, Lcom/layar/ui/MapOverlay;->objectIcons:[Landroid/graphics/Bitmap;

    .line 302
    const/4 v6, 0x0

    return-object v6

    .line 286
    :cond_0
    aget-object v5, v0, v1

    .line 287
    .local v5, poi:Lcom/layar/data/BasePOI;
    iget-object v6, v5, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    if-eqz v6, :cond_1

    iget-object v6, v5, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v6, v6, Lcom/layar/data/BasePOI$POIObject;->icon:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 288
    iget-object v6, v5, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v3, v6, Lcom/layar/data/BasePOI$POIObject;->icon:Ljava/lang/String;

    .line 290
    .local v3, iconUrl:Ljava/lang/String;
    iget-object v6, p0, Lcom/layar/ui/MapOverlay$DownloadIconsTaks;->iconMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/layar/ui/MapOverlay$DownloadIconsTaks;->iconMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    aput-object v6, v4, v1

    .line 285
    .end local v3           #iconUrl:Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    .restart local v3       #iconUrl:Ljava/lang/String;
    :cond_2
    invoke-static {v3}, Lcom/layar/data/ImageCache;->readPoiImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 293
    .local v2, icon:Landroid/graphics/Bitmap;
    if-nez v2, :cond_3

    invoke-static {v3}, Lcom/layar/data/ImageCache;->downloadPoiImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 295
    :cond_3
    iget-object v6, p0, Lcom/layar/ui/MapOverlay$DownloadIconsTaks;->iconMap:Ljava/util/Map;

    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    aput-object v2, v4, v1

    goto :goto_1
.end method
