.class public Lcom/ecareme/pixwe/upload/LazyAdapter;
.super Landroid/widget/BaseAdapter;
.source "LazyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/upload/LazyAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field private activity:Landroid/app/Activity;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;",
            ">;"
        }
    .end annotation
.end field

.field public imageLoader:Lcom/ecareme/pixwe/upload/ImageLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/ecareme/pixwe/upload/LazyAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .parameter "a"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, d:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/ecareme/pixwe/upload/LazyAdapter;->activity:Landroid/app/Activity;

    .line 28
    iput-object p2, p0, Lcom/ecareme/pixwe/upload/LazyAdapter;->data:Ljava/util/List;

    .line 29
    iget-object v0, p0, Lcom/ecareme/pixwe/upload/LazyAdapter;->activity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lcom/ecareme/pixwe/upload/LazyAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 30
    new-instance v0, Lcom/ecareme/pixwe/upload/ImageLoader;

    iget-object v1, p0, Lcom/ecareme/pixwe/upload/LazyAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/upload/ImageLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/upload/LazyAdapter;->imageLoader:Lcom/ecareme/pixwe/upload/ImageLoader;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ecareme/pixwe/upload/LazyAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 51
    move-object v1, p2

    .line 53
    .local v1, vi:Landroid/view/View;
    if-nez p2, :cond_0

    .line 54
    sget-object v2, Lcom/ecareme/pixwe/upload/LazyAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 55
    new-instance v0, Lcom/ecareme/pixwe/upload/LazyAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/ecareme/pixwe/upload/LazyAdapter$ViewHolder;-><init>()V

    .line 56
    .local v0, holder:Lcom/ecareme/pixwe/upload/LazyAdapter$ViewHolder;
    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ecareme/pixwe/upload/LazyAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 57
    const v2, 0x7f090009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/ecareme/pixwe/upload/LazyAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 58
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    :goto_0
    iget-object v3, v0, Lcom/ecareme/pixwe/upload/LazyAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ecareme/pixwe/upload/LazyAdapter;->data:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;

    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v3, v0, Lcom/ecareme/pixwe/upload/LazyAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ecareme/pixwe/upload/LazyAdapter;->data:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;

    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;->getFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 65
    iget-object v3, p0, Lcom/ecareme/pixwe/upload/LazyAdapter;->imageLoader:Lcom/ecareme/pixwe/upload/ImageLoader;

    iget-object v2, p0, Lcom/ecareme/pixwe/upload/LazyAdapter;->data:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;

    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;->getFileUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/ecareme/pixwe/upload/LazyAdapter;->activity:Landroid/app/Activity;

    iget-object v5, v0, Lcom/ecareme/pixwe/upload/LazyAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v3, v2, v4, v5}, Lcom/ecareme/pixwe/upload/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/app/Activity;Landroid/widget/ImageView;)V

    .line 66
    return-object v1

    .line 61
    .end local v0           #holder:Lcom/ecareme/pixwe/upload/LazyAdapter$ViewHolder;
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/upload/LazyAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/ecareme/pixwe/upload/LazyAdapter$ViewHolder;
    goto :goto_0
.end method
