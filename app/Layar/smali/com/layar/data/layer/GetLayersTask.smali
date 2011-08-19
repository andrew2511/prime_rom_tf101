.class public Lcom/layar/data/layer/GetLayersTask;
.super Landroid/os/AsyncTask;
.source "GetLayersTask.java"

# interfaces
.implements Lcom/layar/data/layer/LayerManager$LayerFoundListener;
.implements Lcom/layar/data/layer/LayersType;
.implements Lcom/layar/data/layer/LayerSections;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Lcom/layar/data/layer/Layer20;",
        "Lcom/layar/data/layer/LayerManager$LayersResponse;",
        ">;",
        "Lcom/layar/data/layer/LayerManager$LayerFoundListener;",
        "Lcom/layar/data/layer/LayersType;",
        "Lcom/layar/data/layer/LayerSections;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static lastDateValue:J


# instance fields
.field private date:Landroid/text/format/Time;

.field private final mContext:Landroid/content/Context;

.field private mLayerManager:Lcom/layar/data/layer/LayerManager;

.field private final mListener:Lcom/layar/data/DownloadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/layar/data/DownloadListener",
            "<",
            "Lcom/layar/data/layer/Layer20;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubSection:Ljava/lang/String;

.field private final mType:Ljava/lang/String;

.field private nowDay:I

.field private nowYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-class v0, Lcom/layar/data/layer/GetLayersTask;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/layer/GetLayersTask;->TAG:Ljava/lang/String;

    .line 34
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/layar/data/layer/GetLayersTask;->lastDateValue:J

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/layar/data/DownloadListener;)V
    .locals 1
    .parameter "context"
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/layar/data/DownloadListener",
            "<",
            "Lcom/layar/data/layer/Layer20;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p3, listener:Lcom/layar/data/DownloadListener;,"Lcom/layar/data/DownloadListener<Lcom/layar/data/layer/Layer20;>;"
    const-string v0, "all"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/layar/data/layer/GetLayersTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/layar/data/DownloadListener;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/layar/data/DownloadListener;)V
    .locals 0
    .parameter "context"
    .parameter "type"
    .parameter "subSection"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/layar/data/DownloadListener",
            "<",
            "Lcom/layar/data/layer/Layer20;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p4, listener:Lcom/layar/data/DownloadListener;,"Lcom/layar/data/DownloadListener<Lcom/layar/data/layer/Layer20;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/layar/data/layer/GetLayersTask;->mContext:Landroid/content/Context;

    .line 43
    iput-object p4, p0, Lcom/layar/data/layer/GetLayersTask;->mListener:Lcom/layar/data/DownloadListener;

    .line 44
    iput-object p2, p0, Lcom/layar/data/layer/GetLayersTask;->mType:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/layar/data/layer/GetLayersTask;->mSubSection:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private addFakeFavoritesItems(Ljava/util/ArrayList;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)V
    .locals 2
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/layer/Layer20;",
            ">;",
            "Lcom/layar/data/layer/LayerManager$LayerFoundListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    new-instance v0, Lcom/layar/data/layer/Layer20;

    invoke-direct {v0}, Lcom/layar/data/layer/Layer20;-><init>()V

    .line 135
    .local v0, fakeItem:Lcom/layar/data/layer/Layer20;
    const/16 v1, -0x6e

    iput v1, v0, Lcom/layar/data/layer/Layer20;->layerType:I

    .line 136
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    if-eqz p2, :cond_0

    .line 138
    invoke-interface {p2, v0, p1}, Lcom/layar/data/layer/LayerManager$LayerFoundListener;->onLayerFound(Lcom/layar/data/layer/Layer20;Ljava/util/ArrayList;)Z

    .line 139
    :cond_0
    return-void
.end method

.method private initDate()V
    .locals 2

    .prologue
    .line 195
    invoke-static {}, Lcom/layar/util/Util;->getTime()Landroid/text/format/Time;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/data/layer/GetLayersTask;->date:Landroid/text/format/Time;

    .line 196
    iget-object v0, p0, Lcom/layar/data/layer/GetLayersTask;->date:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 197
    iget-object v0, p0, Lcom/layar/data/layer/GetLayersTask;->date:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 198
    iget-object v0, p0, Lcom/layar/data/layer/GetLayersTask;->date:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    iput v0, p0, Lcom/layar/data/layer/GetLayersTask;->nowDay:I

    .line 199
    iget-object v0, p0, Lcom/layar/data/layer/GetLayersTask;->date:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    iput v0, p0, Lcom/layar/data/layer/GetLayersTask;->nowYear:I

    .line 200
    return-void
.end method

.method private setDateToLayerHeader(Lcom/layar/data/layer/Layer20;J)V
    .locals 6
    .parameter "layer"
    .parameter "dateValue"

    .prologue
    .line 203
    invoke-static {p2, p3}, Lcom/layar/util/Util;->getDateMidnight(J)J

    move-result-wide v0

    .line 204
    .local v0, dateMidnight:J
    sget-wide v2, Lcom/layar/data/layer/GetLayersTask;->lastDateValue:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    sget-wide v2, Lcom/layar/data/layer/GetLayersTask;->lastDateValue:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 205
    :cond_0
    sput-wide v0, Lcom/layar/data/layer/GetLayersTask;->lastDateValue:J

    .line 206
    iget-object v2, p0, Lcom/layar/data/layer/GetLayersTask;->date:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 207
    iget-object v2, p0, Lcom/layar/data/layer/GetLayersTask;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/layar/data/layer/GetLayersTask;->nowYear:I

    iget v4, p0, Lcom/layar/data/layer/GetLayersTask;->nowDay:I

    iget-object v5, p0, Lcom/layar/data/layer/GetLayersTask;->date:Landroid/text/format/Time;

    invoke-static {v2, v3, v4, v5}, Lcom/layar/util/UiUtils;->getDateString(Landroid/content/Context;IILandroid/text/format/Time;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/layar/data/layer/Layer20;->headerText:Ljava/lang/String;

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/layar/data/layer/Layer20;->headerText:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Lcom/layar/data/layer/LayerManager$LayersResponse;
    .locals 11
    .parameter "params"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/layar/data/layer/GetLayersTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v8

    .line 129
    :goto_0
    return-object v5

    .line 63
    :cond_0
    const-string v5, "search"

    iget-object v6, p0, Lcom/layar/data/layer/GetLayersTask;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    array-length v5, p1

    if-lez v5, :cond_a

    .line 65
    aget-object v3, p1, v7

    .line 66
    .local v3, query:Ljava/lang/String;
    iget-object v5, p0, Lcom/layar/data/layer/GetLayersTask;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    invoke-virtual {v5, v3, p0}, Lcom/layar/data/layer/LayerManager;->getSearchLayers(Ljava/lang/String;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v5

    goto :goto_0

    .line 68
    .end local v3           #query:Ljava/lang/String;
    :cond_1
    const-string v5, "popular"

    iget-object v6, p0, Lcom/layar/data/layer/GetLayersTask;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    iget-object v5, p0, Lcom/layar/data/layer/GetLayersTask;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v6, p0, Lcom/layar/data/layer/GetLayersTask;->mSubSection:Ljava/lang/String;

    invoke-virtual {v5, v6, p0}, Lcom/layar/data/layer/LayerManager;->getPopularLayers(Ljava/lang/String;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v5

    goto :goto_0

    .line 70
    :cond_2
    const-string v5, "new"

    iget-object v6, p0, Lcom/layar/data/layer/GetLayersTask;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 74
    iget-object v5, p0, Lcom/layar/data/layer/GetLayersTask;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    invoke-virtual {v5, p0}, Lcom/layar/data/layer/LayerManager;->getNewLayers(Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v5

    goto :goto_0

    .line 75
    :cond_3
    const-string v5, "local"

    iget-object v6, p0, Lcom/layar/data/layer/GetLayersTask;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 76
    iget-object v5, p0, Lcom/layar/data/layer/GetLayersTask;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v6, p0, Lcom/layar/data/layer/GetLayersTask;->mSubSection:Ljava/lang/String;

    invoke-virtual {v5, v6, p0}, Lcom/layar/data/layer/LayerManager;->getLocalLayers(Ljava/lang/String;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v5

    goto :goto_0

    .line 77
    :cond_4
    const-string v5, "recent"

    iget-object v6, p0, Lcom/layar/data/layer/GetLayersTask;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 78
    sput-wide v9, Lcom/layar/data/layer/GetLayersTask;->lastDateValue:J

    .line 79
    invoke-direct {p0}, Lcom/layar/data/layer/GetLayersTask;->initDate()V

    .line 80
    iget-object v5, p0, Lcom/layar/data/layer/GetLayersTask;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    invoke-virtual {v5, p0}, Lcom/layar/data/layer/LayerManager;->getRecentLayers(Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v5

    goto :goto_0

    .line 81
    :cond_5
    const-string v5, "my+purchased"

    iget-object v6, p0, Lcom/layar/data/layer/GetLayersTask;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 82
    sput-wide v9, Lcom/layar/data/layer/GetLayersTask;->lastDateValue:J

    .line 84
    iget-object v5, p0, Lcom/layar/data/layer/GetLayersTask;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    .line 85
    const-string v6, "favorites"

    .line 84
    invoke-virtual {v5, v6, p0}, Lcom/layar/data/layer/LayerManager;->getYoursLayers(Ljava/lang/String;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v4

    .line 86
    .local v4, response:Lcom/layar/data/layer/LayerManager$LayersResponse;
    iget v5, v4, Lcom/layar/data/layer/LayerManager$LayersResponse;->responseCode:I

    if-eqz v5, :cond_6

    .line 87
    iget-object v5, v4, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    invoke-direct {p0, v5, p0}, Lcom/layar/data/layer/GetLayersTask;->addFakeFavoritesItems(Ljava/util/ArrayList;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)V

    move-object v5, v4

    .line 88
    goto/16 :goto_0

    .line 90
    :cond_6
    invoke-virtual {p0}, Lcom/layar/data/layer/GetLayersTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 91
    iget-object v5, v4, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    invoke-direct {p0, v5, p0}, Lcom/layar/data/layer/GetLayersTask;->addFakeFavoritesItems(Ljava/util/ArrayList;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)V

    move-object v5, v4

    .line 92
    goto/16 :goto_0

    .line 95
    :cond_7
    iget-object v5, v4, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    invoke-direct {p0, v5, p0}, Lcom/layar/data/layer/GetLayersTask;->addFakeFavoritesItems(Ljava/util/ArrayList;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)V

    .line 96
    const-wide/16 v5, 0x1

    sput-wide v5, Lcom/layar/data/layer/GetLayersTask;->lastDateValue:J

    .line 97
    iget-object v5, p0, Lcom/layar/data/layer/GetLayersTask;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    .line 98
    const-string v6, "purchased"

    .line 97
    invoke-virtual {v5, v6, p0}, Lcom/layar/data/layer/LayerManager;->getYoursLayers(Ljava/lang/String;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v2

    .line 99
    .local v2, purchasedResponse:Lcom/layar/data/layer/LayerManager$LayersResponse;
    iget v5, v2, Lcom/layar/data/layer/LayerManager$LayersResponse;->responseCode:I

    if-eqz v5, :cond_8

    .line 100
    iget v5, v2, Lcom/layar/data/layer/LayerManager$LayersResponse;->responseCode:I

    iput v5, v4, Lcom/layar/data/layer/LayerManager$LayersResponse;->responseCode:I

    move-object v5, v4

    .line 101
    goto/16 :goto_0

    .line 104
    :cond_8
    invoke-virtual {p0}, Lcom/layar/data/layer/GetLayersTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v5, v4

    .line 105
    goto/16 :goto_0

    .line 106
    :cond_9
    iget-object v5, v2, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    if-eqz v5, :cond_a

    iget-object v5, v2, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 107
    iget-object v5, v4, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .end local v2           #purchasedResponse:Lcom/layar/data/layer/LayerManager$LayersResponse;
    .end local v4           #response:Lcom/layar/data/layer/LayerManager$LayersResponse;
    :cond_a
    move-object v5, v8

    .line 129
    goto/16 :goto_0

    .line 108
    :cond_b
    const-string v5, "my"

    iget-object v6, p0, Lcom/layar/data/layer/GetLayersTask;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 109
    iget-object v5, p0, Lcom/layar/data/layer/GetLayersTask;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v6, p0, Lcom/layar/data/layer/GetLayersTask;->mSubSection:Ljava/lang/String;

    invoke-virtual {v5, v6, p0}, Lcom/layar/data/layer/LayerManager;->getYoursLayers(Ljava/lang/String;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v5

    goto/16 :goto_0

    .line 110
    :cond_c
    const-string v5, "category"

    iget-object v6, p0, Lcom/layar/data/layer/GetLayersTask;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 111
    array-length v5, p1

    if-lez v5, :cond_a

    .line 112
    aget-object v0, p1, v7

    .line 113
    .local v0, categoryId:Ljava/lang/String;
    iget-object v5, p0, Lcom/layar/data/layer/GetLayersTask;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/layar/data/layer/GetLayersTask;->mSubSection:Ljava/lang/String;

    .line 113
    invoke-virtual {v5, v6, v7, p0}, Lcom/layar/data/layer/LayerManager;->getCategoryLayers(ILjava/lang/String;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v5

    goto/16 :goto_0

    .line 116
    .end local v0           #categoryId:Ljava/lang/String;
    :cond_d
    const-string v5, "group"

    iget-object v6, p0, Lcom/layar/data/layer/GetLayersTask;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 117
    array-length v5, p1

    if-lez v5, :cond_a

    .line 118
    aget-object v1, p1, v7

    .line 119
    .local v1, groupId:Ljava/lang/String;
    iget-object v5, p0, Lcom/layar/data/layer/GetLayersTask;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 119
    invoke-virtual {v5, v6, p0}, Lcom/layar/data/layer/LayerManager;->getGroupLayers(ILcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v5

    goto/16 :goto_0

    .line 122
    .end local v1           #groupId:Ljava/lang/String;
    :cond_e
    const-string v5, "variant"

    iget-object v6, p0, Lcom/layar/data/layer/GetLayersTask;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 123
    array-length v5, p1

    if-lez v5, :cond_a

    .line 124
    aget-object v3, p1, v7

    .line 125
    .restart local v3       #query:Ljava/lang/String;
    invoke-static {}, Lcom/layar/App;->getVariantsManager()Lcom/layar/data/variants/VariantsManager;

    move-result-object v5

    invoke-virtual {v5, v3, p0}, Lcom/layar/data/variants/VariantsManager;->getVariantDetails(Ljava/lang/String;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/layar/data/layer/GetLayersTask;->doInBackground([Ljava/lang/String;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v0

    return-object v0
.end method

.method public onCancelled()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/layar/data/layer/GetLayersTask;->mListener:Lcom/layar/data/DownloadListener;

    invoke-interface {v0}, Lcom/layar/data/DownloadListener;->onDownloadingCanceled()V

    .line 171
    return-void
.end method

.method public onLayerFound(Lcom/layar/data/layer/Layer20;Ljava/util/ArrayList;)Z
    .locals 8
    .parameter "layer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layar/data/layer/Layer20;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/layer/Layer20;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 175
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/layar/data/layer/GetLayersTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 178
    const-string v2, "recent"

    iget-object v3, p0, Lcom/layar/data/layer/GetLayersTask;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    iget-object v2, p1, Lcom/layar/data/layer/Layer20;->headerText:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 180
    .local v0, dateValue:J
    invoke-direct {p0, p1, v0, v1}, Lcom/layar/data/layer/GetLayersTask;->setDateToLayerHeader(Lcom/layar/data/layer/Layer20;J)V

    .line 189
    .end local v0           #dateValue:J
    :cond_0
    :goto_0
    new-array v2, v5, [Lcom/layar/data/layer/Layer20;

    aput-object p1, v2, v4

    invoke-virtual {p0, v2}, Lcom/layar/data/layer/GetLayersTask;->publishProgress([Ljava/lang/Object;)V

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/layar/data/layer/GetLayersTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    :goto_1
    return v2

    .line 183
    :cond_2
    const-string v2, "my+purchased"

    iget-object v3, p0, Lcom/layar/data/layer/GetLayersTask;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    sget-wide v2, Lcom/layar/data/layer/GetLayersTask;->lastDateValue:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/layar/data/layer/GetLayersTask;->mContext:Landroid/content/Context;

    const v3, 0x7f09008f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/layar/data/layer/Layer20;->headerText:Ljava/lang/String;

    .line 186
    sput-wide v6, Lcom/layar/data/layer/GetLayersTask;->lastDateValue:J

    goto :goto_0

    :cond_3
    move v2, v5

    .line 191
    goto :goto_1
.end method

.method public onPostExecute(Lcom/layar/data/layer/LayerManager$LayersResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/layar/data/layer/GetLayersTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    if-eqz p1, :cond_1

    iget v0, p1, Lcom/layar/data/layer/LayerManager$LayersResponse;->responseCode:I

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/layar/data/layer/GetLayersTask;->mListener:Lcom/layar/data/DownloadListener;

    iget v1, p1, Lcom/layar/data/layer/LayerManager$LayersResponse;->responseCode:I

    invoke-interface {v0, v1}, Lcom/layar/data/DownloadListener;->onDownloadingError(I)V

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/layar/data/layer/GetLayersTask;->mListener:Lcom/layar/data/DownloadListener;

    invoke-interface {v0}, Lcom/layar/data/DownloadListener;->onDownloadingEnded()V

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/layar/data/layer/LayerManager$LayersResponse;

    invoke-virtual {p0, p1}, Lcom/layar/data/layer/GetLayersTask;->onPostExecute(Lcom/layar/data/layer/LayerManager$LayersResponse;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/layar/data/layer/GetLayersTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/data/layer/GetLayersTask;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    .line 55
    iget-object v0, p0, Lcom/layar/data/layer/GetLayersTask;->mListener:Lcom/layar/data/DownloadListener;

    invoke-interface {v0}, Lcom/layar/data/DownloadListener;->onDownloadingStarted()V

    goto :goto_0
.end method

.method public varargs onProgressUpdate([Lcom/layar/data/layer/Layer20;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 143
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    .line 152
    :cond_0
    return-void

    .line 143
    :cond_1
    aget-object v0, p1, v2

    .line 144
    .local v0, layer:Lcom/layar/data/layer/Layer20;
    invoke-virtual {p0}, Lcom/layar/data/layer/GetLayersTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    iget-object v3, p0, Lcom/layar/data/layer/GetLayersTask;->mListener:Lcom/layar/data/DownloadListener;

    invoke-interface {v3, v0}, Lcom/layar/data/DownloadListener;->onItemDownloaded(Ljava/lang/Object;)V

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/layar/data/layer/Layer20;

    invoke-virtual {p0, p1}, Lcom/layar/data/layer/GetLayersTask;->onProgressUpdate([Lcom/layar/data/layer/Layer20;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layar/data/layer/GetLayersTask;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Subsection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/data/layer/GetLayersTask;->mSubSection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
