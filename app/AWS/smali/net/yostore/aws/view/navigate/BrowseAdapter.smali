.class public Lnet/yostore/aws/view/navigate/BrowseAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BrowseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lnet/yostore/aws/handler/entity/FsInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final GB:J

.field private final KB:J

.field private final MB:J

.field private final TB:J

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

.field private ctx:Landroid/content/Context;

.field private dateFormat:Ljava/text/DateFormat;

.field public final imageDownloader:Lnet/yostore/aws/view/common/ImageDownloader;

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mBusy:Z

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lnet/yostore/aws/api/ApiConfig;)V
    .locals 2
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .parameter "apicfg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;",
            "Lnet/yostore/aws/api/ApiConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 35
    new-instance v0, Lnet/yostore/aws/view/common/ImageDownloader;

    invoke-direct {v0}, Lnet/yostore/aws/view/common/ImageDownloader;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->imageDownloader:Lnet/yostore/aws/view/common/ImageDownloader;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->mBusy:Z

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->dateFormat:Ljava/text/DateFormat;

    .line 251
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->KB:J

    .line 252
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->MB:J

    .line 253
    const-wide/32 v0, 0x40000000

    iput-wide v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->GB:J

    .line 254
    const-wide v0, 0x10000000000L

    iput-wide v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->TB:J

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    iput-object p3, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    .line 43
    iput-object p4, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 44
    iput-object p0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 45
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->ctx:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private getSizeDisp(J)Ljava/lang/String;
    .locals 9
    .parameter "size"

    .prologue
    const-wide v7, 0x10000000000L

    const-wide/32 v5, 0x40000000

    const-wide/32 v3, 0x100000

    const-wide/16 v1, 0x400

    .line 256
    cmp-long v0, p1, v7

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v7

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " TB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    .line 257
    :cond_0
    cmp-long v0, p1, v5

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v5

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 258
    :cond_1
    cmp-long v0, p1, v3

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v3

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 259
    :cond_2
    cmp-long v0, p1, v1

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v1

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->add(Lnet/yostore/aws/handler/entity/FsInfo;)V

    return-void
.end method

.method public add(Lnet/yostore/aws/handler/entity/FsInfo;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 50
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->getItem(I)Lnet/yostore/aws/handler/entity/FsInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lnet/yostore/aws/handler/entity/FsInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 66
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/handler/entity/FsInfo;

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 68
    int-to-long v0, p1

    return-wide v0
.end method

.method public getThumbnailUrl(Lnet/yostore/aws/api/ApiConfig;J)Ljava/lang/String;
    .locals 4
    .parameter "apicfg"
    .parameter "fileId"

    .prologue
    .line 235
    const-string v1, ""

    .line 236
    .local v1, url:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pfd="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",st=2,preview=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/yostore/utility/Base64Decode;->AESencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, s:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/webrelay/getresizedphoto/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg?dis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lnet/yostore/aws/api/entity/ApiCookies;->sid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 72
    iget-object v7, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 73
    .local v2, fi:Lnet/yostore/aws/handler/entity/FsInfo;
    if-nez p2, :cond_9

    .line 75
    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v8, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->SavedSearch:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-eq v7, v8, :cond_8

    .line 77
    iget-object v7, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f03000d

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 79
    new-instance v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;-><init>(Lnet/yostore/aws/view/navigate/BrowseAdapter;)V

    .line 80
    .local v3, holder:Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;
    const v7, 0x7f090033

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 81
    const v7, 0x7f090032

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 82
    const v7, 0x7f090035

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {v3, p3}, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->setStar(Landroid/widget/ImageView;)V

    .line 83
    const v7, 0x7f090034

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->size:Landroid/widget/TextView;

    .line 90
    :goto_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    :goto_1
    const-string v4, " "

    .line 101
    .local v4, lastModifyDateDisp:Ljava/lang/String;
    const-wide/16 v0, 0x0

    .line 102
    .local v0, dateLong:J
    :try_start_0
    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    if-eqz v7, :cond_a

    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v7}, Lnet/yostore/aws/api/entity/Attribute;->getLastwritetime()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v7}, Lnet/yostore/aws/api/entity/Attribute;->getLastwritetime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_a

    .line 103
    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v7}, Lnet/yostore/aws/api/entity/Attribute;->getLastwritetime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 109
    :cond_0
    :goto_2
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-lez v7, :cond_1

    .line 110
    new-instance v5, Ljava/util/Date;

    const-wide/16 v7, 0x3e8

    mul-long/2addr v7, v0

    invoke-direct {v5, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 111
    .local v5, mDate:Ljava/util/Date;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v8, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 124
    .end local v5           #mDate:Ljava/util/Date;
    :cond_1
    :goto_3
    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    invoke-virtual {v7}, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->getString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->kind:Ljava/lang/String;

    .line 125
    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    iput-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->fid:Ljava/lang/String;

    .line 126
    iput p1, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->position:I

    .line 128
    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v8, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->SavedSearch:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-ne v7, v8, :cond_c

    .line 129
    new-instance v6, Lnet/yostore/aws/handler/entity/Search;

    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-direct {v6, v7}, Lnet/yostore/aws/handler/entity/Search;-><init>(Ljava/lang/String;)V

    .line 130
    .local v6, search:Lnet/yostore/aws/handler/entity/Search;
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v6}, Lnet/yostore/aws/handler/entity/Search;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .end local v6           #search:Lnet/yostore/aws/handler/entity/Search;
    :cond_2
    :goto_4
    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v8, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->SavedSearch:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-eq v7, v8, :cond_7

    .line 174
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget v8, v2, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    iget-boolean v7, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->mBusy:Z

    if-nez v7, :cond_16

    .line 176
    iget v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    const v8, 0x7f02006f

    if-ne v7, v8, :cond_5

    .line 177
    iget-object v7, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v7, v7, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v7, v7, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_4

    .line 178
    :cond_3
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v7

    iput-object v7, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 179
    :cond_4
    iget-object v7, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->imageDownloader:Lnet/yostore/aws/view/common/ImageDownloader;

    iget-object v8, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v9, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->fid:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {p0, v8, v9, v10}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->getThumbnailUrl(Lnet/yostore/aws/api/ApiConfig;J)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v9}, Lnet/yostore/aws/view/common/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 187
    :cond_5
    :goto_5
    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v8, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-eq v7, v8, :cond_6

    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v8, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Folder:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-ne v7, v8, :cond_18

    .line 189
    :cond_6
    iget-boolean v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    if-eqz v7, :cond_17

    .line 190
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->star:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->star:Landroid/widget/ImageView;

    const v8, 0x7f02007d

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    const/4 v7, 0x1

    iput-boolean v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->isStarred:Z

    .line 204
    :cond_7
    :goto_6
    return-object p2

    .line 85
    .end local v0           #dateLong:J
    .end local v3           #holder:Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;
    .end local v4           #lastModifyDateDisp:Ljava/lang/String;
    .restart local p3
    :cond_8
    iget-object v7, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030014

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 87
    new-instance v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;-><init>(Lnet/yostore/aws/view/navigate/BrowseAdapter;)V

    .line 88
    .restart local v3       #holder:Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;
    const v7, 0x7f090033

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->text:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 95
    .end local v3           #holder:Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;
    .restart local p3
    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;

    .restart local v3       #holder:Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;
    goto/16 :goto_1

    .line 104
    .end local p3
    .restart local v0       #dateLong:J
    .restart local v4       #lastModifyDateDisp:Ljava/lang/String;
    :cond_a
    :try_start_1
    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    if-eqz v7, :cond_b

    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v7}, Lnet/yostore/aws/api/entity/Attribute;->getCreationtime()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v7}, Lnet/yostore/aws/api/entity/Attribute;->getCreationtime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_b

    .line 105
    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v7}, Lnet/yostore/aws/api/entity/Attribute;->getCreationtime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto/16 :goto_2

    .line 106
    :cond_b
    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    if-eqz v7, :cond_0

    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v7}, Lnet/yostore/aws/api/entity/Attribute;->getLastaccesstime()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v7}, Lnet/yostore/aws/api/entity/Attribute;->getLastaccesstime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 107
    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v7}, Lnet/yostore/aws/api/entity/Attribute;->getLastaccesstime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    goto/16 :goto_2

    .line 131
    :cond_c
    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v8, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-ne v7, v8, :cond_e

    .line 132
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v8, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    if-nez v7, :cond_d

    .line 134
    const v7, 0x7f02006d

    iput v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 136
    :cond_d
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->size:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/yostore/aws/handler/entity/FsInfo;->getSizeDisp()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->size:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 139
    :cond_e
    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v8, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Folder:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-ne v7, v8, :cond_10

    .line 140
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v8, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    if-nez v7, :cond_f

    .line 142
    const v7, 0x7f02006b

    iput v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 144
    :cond_f
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->size:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 146
    :cond_10
    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v8, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->SearchMore:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-eq v7, v8, :cond_11

    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v8, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->BrowseMore:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-ne v7, v8, :cond_13

    .line 147
    :cond_11
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v8, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    if-nez v7, :cond_12

    .line 149
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v8, 0x7f06006c

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 150
    const v7, 0x7f020097

    iput v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 152
    :cond_12
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->size:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 153
    :cond_13
    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v8, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->SavedSearch:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-ne v7, v8, :cond_14

    .line 154
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v8, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 155
    :cond_14
    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v8, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->NUll:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-ne v7, v8, :cond_15

    .line 156
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v8, 0x7f06002f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 157
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->star:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->size:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 160
    :cond_15
    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v8, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Spreate:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-ne v7, v8, :cond_2

    .line 161
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v8, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->star:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->size:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 183
    :cond_16
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 194
    :cond_17
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->star:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    const/4 v7, 0x0

    iput-boolean v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->isStarred:Z

    goto/16 :goto_6

    .line 200
    :cond_18
    iget-object v7, v3, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->star:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 113
    :catch_0
    move-exception v7

    goto/16 :goto_3
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->remove(Lnet/yostore/aws/handler/entity/FsInfo;)V

    return-void
.end method

.method public remove(Lnet/yostore/aws/handler/entity/FsInfo;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 56
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method
