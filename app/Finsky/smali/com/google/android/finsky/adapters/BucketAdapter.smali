.class public Lcom/google/android/finsky/adapters/BucketAdapter;
.super Lcom/google/android/finsky/adapters/DocumentBasedAdapter;
.source "BucketAdapter.java"


# instance fields
.field private final mBucketEntryIconHeight:I

.field private final mBuckets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/model/Bucket;",
            ">;"
        }
    .end annotation
.end field

.field private final mColumns:I

.field private final mHeaderIconHeight:I

.field private final mHeaderIconWidth:I

.field private final mOriginalQuery:Ljava/lang/String;

.field private final mRows:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Ljava/util/List;IILjava/lang/String;ZZ)V
    .locals 12
    .parameter "context"
    .parameter "navManager"
    .parameter "loader"
    .parameter
    .parameter "columns"
    .parameter "rows"
    .parameter "searchQueryTerm"
    .parameter "showIndividualRatings"
    .parameter "showResultCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager;",
            "Lcom/google/android/finsky/utils/BitmapLoader;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocList$Bucket;",
            ">;II",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p4, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/DocList$Bucket;>;"
    const/4 v5, 0x0

    if-eqz p7, :cond_0

    const/4 v2, 0x1

    move v7, v2

    :goto_0
    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v6, p8

    move-object v8, p3

    move/from16 v10, p9

    invoke-direct/range {v2 .. v10}, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/analytics/Analytics$Event;ZZLcom/google/android/finsky/utils/BitmapLoader;ZZ)V

    .line 56
    move/from16 v0, p5

    move-object v1, p0

    iput v0, v1, Lcom/google/android/finsky/adapters/BucketAdapter;->mColumns:I

    .line 57
    move/from16 v0, p6

    move-object v1, p0

    iput v0, v1, Lcom/google/android/finsky/adapters/BucketAdapter;->mRows:I

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 59
    .local v11, res:Landroid/content/res/Resources;
    const v2, 0x7f080017

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/adapters/BucketAdapter;->mBucketEntryIconHeight:I

    .line 60
    const v2, 0x7f080015

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/adapters/BucketAdapter;->mHeaderIconWidth:I

    .line 61
    const v2, 0x7f080014

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/adapters/BucketAdapter;->mHeaderIconHeight:I

    .line 62
    invoke-static/range {p4 .. p4}, Lcom/google/android/finsky/model/Bucket;->fromProtos(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/adapters/BucketAdapter;->mBuckets:Ljava/util/List;

    .line 63
    move-object/from16 v0, p7

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/adapters/BucketAdapter;->mOriginalQuery:Ljava/lang/String;

    .line 64
    return-void

    .line 54
    .end local v11           #res:Landroid/content/res/Resources;
    :cond_0
    const/4 v2, 0x0

    move v7, v2

    goto :goto_0
.end method

.method private bindBucketEntries(Lcom/google/android/finsky/model/Bucket;Landroid/view/ViewGroup;)V
    .locals 10
    .parameter "bucket"
    .parameter "view"

    .prologue
    const/4 v9, 0x0

    .line 146
    const v7, 0x7f090016

    invoke-virtual {p2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 148
    .local v1, bucketRowHolder:Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    .local v5, row:I
    :goto_0
    iget v7, p0, Lcom/google/android/finsky/adapters/BucketAdapter;->mRows:I

    if-ge v5, v7, :cond_3

    .line 149
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 150
    .local v6, rowOfDocuments:Landroid/widget/LinearLayout;
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/BucketAdapter;->getDisplayedRows(Lcom/google/android/finsky/model/Bucket;)I

    move-result v7

    if-lt v5, v7, :cond_1

    .line 151
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/adapters/BucketAdapter;->getDisplayedColumns(Lcom/google/android/finsky/model/Bucket;I)I

    move-result v3

    .line 155
    .local v3, displayedColumns:I
    const/4 v2, 0x0

    .local v2, column:I
    :goto_1
    iget v7, p0, Lcom/google/android/finsky/adapters/BucketAdapter;->mColumns:I

    if-ge v2, v7, :cond_0

    .line 156
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 157
    .local v4, docEntry:Landroid/view/View;
    if-ge v2, v3, :cond_2

    .line 158
    iget v7, p0, Lcom/google/android/finsky/adapters/BucketAdapter;->mColumns:I

    mul-int/2addr v7, v5

    add-int v8, v7, v2

    move-object v0, v4

    check-cast v0, Landroid/view/ViewGroup;

    move-object v7, v0

    invoke-direct {p0, p1, v8, v7}, Lcom/google/android/finsky/adapters/BucketAdapter;->bindBucketEntry(Lcom/google/android/finsky/model/Bucket;ILandroid/view/ViewGroup;)V

    .line 159
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 155
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 161
    :cond_2
    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 166
    .end local v2           #column:I
    .end local v3           #displayedColumns:I
    .end local v4           #docEntry:Landroid/view/View;
    .end local v6           #rowOfDocuments:Landroid/widget/LinearLayout;
    :cond_3
    return-void
.end method

.method private bindBucketEntry(Lcom/google/android/finsky/model/Bucket;ILandroid/view/ViewGroup;)V
    .locals 4
    .parameter "bucket"
    .parameter "itemIndex"
    .parameter "holder"

    .prologue
    .line 127
    new-instance v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p1, p2}, Lcom/google/android/finsky/model/Bucket;->getItem(I)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getCookie()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;Ljava/lang/String;)V

    .line 128
    .local v0, doc:Lcom/google/android/finsky/api/model/Document;
    iget-object v2, p0, Lcom/google/android/finsky/adapters/BucketAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/CorpusMetadata;->getIconWidth(Landroid/content/Context;I)I

    move-result v1

    .line 129
    .local v1, iconWidth:I
    iget v2, p0, Lcom/google/android/finsky/adapters/BucketAdapter;->mBucketEntryIconHeight:I

    invoke-virtual {p0, v0, p3, v1, v2}, Lcom/google/android/finsky/adapters/BucketAdapter;->bindDocument(Lcom/google/android/finsky/api/model/Document;Landroid/view/ViewGroup;II)V

    .line 130
    return-void
.end method

.method private bindSongsListBucket(Lcom/google/android/finsky/model/Bucket;Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "bucketInfo"
    .parameter "bucket"

    .prologue
    .line 82
    const v3, 0x7f090016

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 83
    .local v0, bucketItemHolder:Landroid/view/ViewGroup;
    new-instance v1, Lcom/google/android/finsky/layout/TrackList;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/BucketAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/google/android/finsky/layout/TrackList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    .local v1, tlist:Lcom/google/android/finsky/layout/TrackList;
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/BucketAdapter;->getMockTracks()Ljava/util/List;

    move-result-object v2

    .line 85
    .local v2, tracks:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/model/Track;>;"
    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/TrackList;->setTracks(Ljava/util/List;)V

    .line 86
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    return-void
.end method

.method private bindView(Lcom/google/android/finsky/model/Bucket;Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "bucket"
    .parameter "view"

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->isSongsList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/adapters/BucketAdapter;->bindSongsListBucket(Lcom/google/android/finsky/model/Bucket;Landroid/view/ViewGroup;)V

    .line 184
    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/adapters/BucketAdapter;->mOriginalQuery:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/finsky/adapters/BucketAdapter;->mHeaderIconWidth:I

    iget v5, p0, Lcom/google/android/finsky/adapters/BucketAdapter;->mHeaderIconHeight:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/adapters/BucketAdapter;->bindBucketHeader(Lcom/google/android/finsky/model/Bucket;Landroid/view/ViewGroup;Ljava/lang/String;II)V

    .line 185
    return-void

    .line 182
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/adapters/BucketAdapter;->bindBucketEntries(Lcom/google/android/finsky/model/Bucket;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method private getDisplayedColumns(Lcom/google/android/finsky/model/Bucket;I)I
    .locals 2
    .parameter "bucket"
    .parameter "row"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/BucketAdapter;->getDisplayedRows(Lcom/google/android/finsky/model/Bucket;)I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/adapters/BucketAdapter;->mColumns:I

    mul-int/2addr v1, p2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/finsky/adapters/BucketAdapter;->mColumns:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDisplayedRows(Lcom/google/android/finsky/model/Bucket;)I
    .locals 4
    .parameter "bucket"

    .prologue
    .line 133
    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->getItemCount()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/google/android/finsky/adapters/BucketAdapter;->mColumns:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/google/android/finsky/adapters/BucketAdapter;->mRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getMockTracks()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/model/Track;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 96
    .local v7, tracks:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/model/Track;>;"
    const/4 v1, 0x1

    .line 98
    .local v1, count:I
    iget-object v8, p0, Lcom/google/android/finsky/adapters/BucketAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 99
    .local v4, is:Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 100
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .local v5, readLine:Ljava/lang/String;
    move v2, v1

    .line 103
    .end local v1           #count:I
    .local v2, count:I
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 104
    new-instance v6, Lcom/google/android/finsky/model/Track;

    invoke-direct {v6}, Lcom/google/android/finsky/model/Track;-><init>()V

    .line 105
    .local v6, ti:Lcom/google/android/finsky/model/Track;
    const-string v8, "1234"

    iput-object v8, v6, Lcom/google/android/finsky/model/Track;->docId:Ljava/lang/String;

    .line 106
    iput-object v5, v6, Lcom/google/android/finsky/model/Track;->title:Ljava/lang/String;

    .line 107
    const-string v8, "This Is It"

    iput-object v8, v6, Lcom/google/android/finsky/model/Track;->album:Ljava/lang/String;

    .line 108
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/google/android/finsky/model/Track;->artist:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    add-int/lit8 v1, v2, 0x1

    .end local v2           #count:I
    .restart local v1       #count:I
    :try_start_1
    iput v2, v6, Lcom/google/android/finsky/model/Track;->trackNo:I

    .line 110
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/google/android/finsky/model/Track;->year:I

    .line 111
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/google/android/finsky/model/Track;->length:Ljava/lang/String;

    .line 112
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/google/android/finsky/model/Track;->price:Ljava/lang/String;

    .line 113
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/google/android/finsky/model/Track;->url:Ljava/lang/String;

    .line 114
    sget-object v8, Lcom/google/android/finsky/model/Track$TrackMode;->READY:Lcom/google/android/finsky/model/Track$TrackMode;

    iput-object v8, v6, Lcom/google/android/finsky/model/Track;->mode:Lcom/google/android/finsky/model/Track$TrackMode;

    .line 115
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v1

    .line 118
    .end local v1           #count:I
    .restart local v2       #count:I
    goto :goto_0

    .end local v6           #ti:Lcom/google/android/finsky/model/Track;
    :cond_0
    move v1, v2

    .line 122
    .end local v2           #count:I
    .restart local v1       #count:I
    :goto_1
    return-object v7

    .line 119
    .end local v1           #count:I
    .restart local v2       #count:I
    :catch_0
    move-exception v8

    move-object v3, v8

    move v1, v2

    .line 120
    .end local v2           #count:I
    .restart local v1       #count:I
    .local v3, e:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 119
    .end local v3           #e:Ljava/io/IOException;
    .restart local v6       #ti:Lcom/google/android/finsky/model/Track;
    :catch_1
    move-exception v8

    move-object v3, v8

    goto :goto_2
.end method

.method private inflateViewForBucket(Lcom/google/android/finsky/model/Bucket;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "bucket"
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 188
    const v8, 0x7f040007

    invoke-virtual {p0, v8, p2, v9}, Lcom/google/android/finsky/adapters/BucketAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 189
    .local v7, view:Landroid/view/View;
    const v8, 0x7f090016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 190
    .local v0, bucketItemHolder:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Lcom/google/android/finsky/model/Bucket;->isSongsList()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 191
    new-instance v5, Lcom/google/android/finsky/layout/TrackList;

    iget-object v8, p0, Lcom/google/android/finsky/adapters/BucketAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8, v10}, Lcom/google/android/finsky/layout/TrackList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 192
    .local v5, tlist:Lcom/google/android/finsky/layout/TrackList;
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/BucketAdapter;->getMockTracks()Ljava/util/List;

    move-result-object v6

    .line 193
    .local v6, tracks:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/model/Track;>;"
    invoke-virtual {v5, v6}, Lcom/google/android/finsky/layout/TrackList;->setTracks(Ljava/util/List;)V

    .line 194
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 208
    .end local v5           #tlist:Lcom/google/android/finsky/layout/TrackList;
    .end local v6           #tracks:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/model/Track;>;"
    :cond_0
    return-object v7

    .line 196
    :cond_1
    const/4 v3, 0x0

    .local v3, row:I
    :goto_0
    iget v8, p0, Lcom/google/android/finsky/adapters/BucketAdapter;->mRows:I

    if-ge v3, v8, :cond_0

    .line 197
    const v8, 0x7f040006

    invoke-virtual {p0, v8, v10, v9}, Lcom/google/android/finsky/adapters/BucketAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 199
    .local v4, rowOfBucketEntries:Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v8, p0, Lcom/google/android/finsky/adapters/BucketAdapter;->mColumns:I

    if-ge v2, v8, :cond_2

    .line 200
    const v8, 0x7f040040

    invoke-virtual {p0, v8, v4, v9}, Lcom/google/android/finsky/adapters/BucketAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 202
    .local v1, emptyEntry:Landroid/view/ViewGroup;
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 203
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 205
    .end local v1           #emptyEntry:Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 196
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketAdapter;->mBuckets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/google/android/finsky/model/Bucket;
    .locals 1
    .parameter "position"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketAdapter;->mBuckets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/finsky/model/Bucket;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/BucketAdapter;->getItem(I)Lcom/google/android/finsky/model/Bucket;

    move-result-object v0

    return-object v0
.end method

.method protected getLastRequestError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/BucketAdapter;->getItem(I)Lcom/google/android/finsky/model/Bucket;

    move-result-object v1

    .line 171
    .local v1, bucket:Lcom/google/android/finsky/model/Bucket;
    if-nez p2, :cond_0

    .line 172
    invoke-direct {p0, v1, p3}, Lcom/google/android/finsky/adapters/BucketAdapter;->inflateViewForBucket(Lcom/google/android/finsky/model/Bucket;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 174
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/adapters/BucketAdapter;->bindView(Lcom/google/android/finsky/model/Bucket;Landroid/view/ViewGroup;)V

    .line 175
    return-object p2
.end method

.method protected isMoreDataAvailable()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method protected retryLoadingItems()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method
