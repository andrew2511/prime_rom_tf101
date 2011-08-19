.class public Lnet/yostore/aws/view/capture/FolderAdapter;
.super Landroid/widget/BaseAdapter;
.source "FolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final GB:J

.field private final KB:J

.field private final MB:J

.field private final TB:J

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, it:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/capture/FolderAdapter;->items:Ljava/util/List;

    .line 146
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lnet/yostore/aws/view/capture/FolderAdapter;->KB:J

    .line 147
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lnet/yostore/aws/view/capture/FolderAdapter;->MB:J

    .line 148
    const-wide/32 v0, 0x40000000

    iput-wide v0, p0, Lnet/yostore/aws/view/capture/FolderAdapter;->GB:J

    .line 149
    const-wide v0, 0x10000000000L

    iput-wide v0, p0, Lnet/yostore/aws/view/capture/FolderAdapter;->TB:J

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/capture/FolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    iput-object p2, p0, Lnet/yostore/aws/view/capture/FolderAdapter;->items:Ljava/util/List;

    .line 43
    iput-object p3, p0, Lnet/yostore/aws/view/capture/FolderAdapter;->paths:Ljava/util/List;

    .line 44
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/capture/FolderAdapter;->initIcon(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/capture/FolderAdapter;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FolderAdapter;->mIconFolder:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/capture/FolderAdapter;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FolderAdapter;->mIconFile:Landroid/graphics/Bitmap;

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

    .line 151
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

    .line 155
    :goto_0
    return-object v0

    .line 152
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

    .line 153
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

    .line 154
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

    .line 155
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
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/capture/FolderAdapter;->mIconFolder:Landroid/graphics/Bitmap;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/capture/FolderAdapter;->mIconFile:Landroid/graphics/Bitmap;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02001d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/capture/FolderAdapter;->mIconNotAdded:Landroid/graphics/Bitmap;

    .line 51
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FolderAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 57
    iget-object v0, p0, Lnet/yostore/aws/view/capture/FolderAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 59
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

    .line 63
    if-nez p2, :cond_0

    .line 64
    iget-object v2, p0, Lnet/yostore/aws/view/capture/FolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030012

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 65
    new-instance v1, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;-><init>(Lnet/yostore/aws/view/capture/FolderAdapter;)V

    .line 66
    .local v1, holder:Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;
    const v2, 0x7f090033

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 67
    const v2, 0x7f090032

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 68
    const v2, 0x7f090034

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->size:Landroid/widget/TextView;

    .line 69
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    :goto_0
    iput p1, v1, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->position:I

    .line 77
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lnet/yostore/aws/view/capture/FolderAdapter;->paths:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, f:Ljava/io/File;
    iget-object v2, p0, Lnet/yostore/aws/view/capture/FolderAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<b1>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const-string v3, "/mnt/sdcard/"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v1, v7}, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->setIsFolder(Z)V

    .line 84
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    :goto_1
    return-object p2

    .line 73
    .end local v0           #f:Ljava/io/File;
    .end local v1           #holder:Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;

    .restart local v1       #holder:Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;
    goto :goto_0

    .line 88
    .restart local v0       #f:Ljava/io/File;
    :cond_1
    iget-object v2, p0, Lnet/yostore/aws/view/capture/FolderAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<b2>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v3, 0x7f0600d1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 91
    invoke-virtual {v1, v7}, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->setIsFolder(Z)V

    .line 92
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 99
    :cond_2
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v2, p0, Lnet/yostore/aws/view/capture/FolderAdapter;->paths:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->path:Ljava/lang/String;

    .line 101
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    invoke-virtual {v1, v7}, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->setIsFolder(Z)V

    .line 104
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 107
    :cond_3
    invoke-virtual {v1, v6}, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->setIsFolder(Z)V

    .line 108
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v2, v1, Lnet/yostore/aws/view/capture/FolderAdapter$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lnet/yostore/aws/view/capture/FolderAdapter;->getSizeDisp(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
