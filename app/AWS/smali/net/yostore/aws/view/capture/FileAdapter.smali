.class public Lnet/yostore/aws/view/capture/FileAdapter;
.super Landroid/widget/BaseAdapter;
.source "FileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/capture/FileAdapter$AddListener;,
        Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final GB:J

.field private final KB:J

.field private final MB:J

.field private final TB:J

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ctx:Landroid/content/Context;

.field public hm:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/yostore/aws/sqlite/entity/UploadItem;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconAdded:Landroid/graphics/Bitmap;

.field private mIconFile:Landroid/graphics/Bitmap;

.field private mIconFolder:Landroid/graphics/Bitmap;

.field private mIconNotAdded:Landroid/graphics/Bitmap;

.field private mInflater:Landroid/view/LayoutInflater;

.field private paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uploadFolder:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;J)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter
    .parameter "uploadFolder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, it:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/capture/FileAdapter;->items:Ljava/util/List;

    .line 38
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/view/capture/FileAdapter;->uploadFolder:J

    .line 293
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lnet/yostore/aws/view/capture/FileAdapter;->KB:J

    .line 294
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lnet/yostore/aws/view/capture/FileAdapter;->MB:J

    .line 295
    const-wide/32 v0, 0x40000000

    iput-wide v0, p0, Lnet/yostore/aws/view/capture/FileAdapter;->GB:J

    .line 296
    const-wide v0, 0x10000000000L

    iput-wide v0, p0, Lnet/yostore/aws/view/capture/FileAdapter;->TB:J

    .line 45
    iput-object p1, p0, Lnet/yostore/aws/view/capture/FileAdapter;->ctx:Landroid/content/Context;

    .line 46
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/capture/FileAdapter;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/capture/FileAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 49
    iput-object p2, p0, Lnet/yostore/aws/view/capture/FileAdapter;->items:Ljava/util/List;

    .line 50
    iput-object p3, p0, Lnet/yostore/aws/view/capture/FileAdapter;->paths:Ljava/util/List;

    .line 51
    iput-wide p4, p0, Lnet/yostore/aws/view/capture/FileAdapter;->uploadFolder:J

    .line 53
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/capture/FileAdapter;->initIcon(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/capture/FileAdapter;)J
    .locals 2
    .parameter

    .prologue
    .line 38
    iget-wide v0, p0, Lnet/yostore/aws/view/capture/FileAdapter;->uploadFolder:J

    return-wide v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/capture/FileAdapter;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileAdapter;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/capture/FileAdapter;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileAdapter;->mIconFolder:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/capture/FileAdapter;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileAdapter;->mIconFile:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getSizeDisp(J)Ljava/lang/String;
    .locals 9
    .parameter "size"

    .prologue
    const-wide v7, 0x10000000000L

    const-wide/32 v5, 0x40000000

    const-wide/32 v3, 0x100000

    const-wide/16 v1, 0x400

    .line 298
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

    .line 302
    :goto_0
    return-object v0

    .line 299
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

    .line 300
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

    .line 301
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

    .line 302
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

.method private initIcon(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/capture/FileAdapter;->mIconFolder:Landroid/graphics/Bitmap;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/capture/FileAdapter;->mIconFile:Landroid/graphics/Bitmap;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02001d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/capture/FileAdapter;->mIconNotAdded:Landroid/graphics/Bitmap;

    .line 60
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 66
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FileAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 68
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 72
    if-nez p2, :cond_0

    .line 73
    iget-object v2, p0, Lnet/yostore/aws/view/capture/FileAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030013

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 74
    new-instance v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;-><init>(Lnet/yostore/aws/view/capture/FileAdapter;)V

    .line 75
    .local v1, holder:Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;
    const v2, 0x7f090033

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 76
    const v2, 0x7f090032

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 77
    const v2, 0x7f090040

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->icadd:Landroid/widget/CheckBox;

    .line 78
    const v2, 0x7f090034

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->size:Landroid/widget/TextView;

    .line 81
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    :goto_0
    iput p1, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->position:I

    .line 89
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lnet/yostore/aws/view/capture/FileAdapter;->paths:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, f:Ljava/io/File;
    iget-object v2, p0, Lnet/yostore/aws/view/capture/FileAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<b1>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const-string v3, "/mnt/sdcard/"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v1, v7}, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->setIsFolder(Z)V

    .line 96
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->icadd:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    :goto_1
    return-object p2

    .line 85
    .end local v0           #f:Ljava/io/File;
    .end local v1           #holder:Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;

    .restart local v1       #holder:Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;
    goto :goto_0

    .line 103
    .restart local v0       #f:Ljava/io/File;
    :cond_1
    iget-object v2, p0, Lnet/yostore/aws/view/capture/FileAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<b2>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v3, 0x7f0600d1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 106
    invoke-virtual {v1, v7}, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->setIsFolder(Z)V

    .line 107
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->icadd:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 117
    :cond_2
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v2, p0, Lnet/yostore/aws/view/capture/FileAdapter;->paths:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->path:Ljava/lang/String;

    .line 119
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    invoke-virtual {v1, v7}, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->setIsFolder(Z)V

    .line 122
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->icadd:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 123
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->icadd:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 138
    :cond_3
    invoke-virtual {v1, v6}, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->setIsFolder(Z)V

    .line 139
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->icadd:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 140
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->icadd:Landroid/widget/CheckBox;

    new-instance v3, Lnet/yostore/aws/view/capture/FileAdapter$AddListener;

    invoke-direct {v3, p0, v1}, Lnet/yostore/aws/view/capture/FileAdapter$AddListener;-><init>(Lnet/yostore/aws/view/capture/FileAdapter;Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    new-instance v3, Lnet/yostore/aws/view/capture/FileAdapter$AddListener;

    invoke-direct {v3, p0, v1}, Lnet/yostore/aws/view/capture/FileAdapter$AddListener;-><init>(Lnet/yostore/aws/view/capture/FileAdapter;Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->text:Landroid/widget/TextView;

    new-instance v3, Lnet/yostore/aws/view/capture/FileAdapter$AddListener;

    invoke-direct {v3, p0, v1}, Lnet/yostore/aws/view/capture/FileAdapter$AddListener;-><init>(Lnet/yostore/aws/view/capture/FileAdapter;Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->size:Landroid/widget/TextView;

    new-instance v3, Lnet/yostore/aws/view/capture/FileAdapter$AddListener;

    invoke-direct {v3, p0, v1}, Lnet/yostore/aws/view/capture/FileAdapter$AddListener;-><init>(Lnet/yostore/aws/view/capture/FileAdapter;Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lnet/yostore/aws/view/capture/FileAdapter;->getSizeDisp(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v2, p0, Lnet/yostore/aws/view/capture/FileAdapter;->hm:Ljava/util/HashMap;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/yostore/aws/view/capture/FileAdapter;->hm:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 153
    invoke-virtual {v1, v7}, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->setIsAdd(Z)V

    goto/16 :goto_1

    .line 155
    :cond_4
    invoke-virtual {v1, v6}, Lnet/yostore/aws/view/capture/FileAdapter$ViewHolder;->setIsAdd(Z)V

    goto/16 :goto_1
.end method
