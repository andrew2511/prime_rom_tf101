.class public Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DownloadQueueAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/navigate/DownloadQueueAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lnet/yostore/aws/sqlite/entity/DownloadItem;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field public currentPlay:I

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/DownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private textViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/DownloadItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/DownloadItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->textViewResourceId:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->currentPlay:I

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    iput-object p3, p0, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->list:Ljava/util/List;

    .line 34
    iput p2, p0, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->textViewResourceId:I

    .line 35
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->context:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lnet/yostore/aws/sqlite/entity/DownloadItem;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->add(Lnet/yostore/aws/sqlite/entity/DownloadItem;)V

    return-void
.end method

.method public add(Lnet/yostore/aws/sqlite/entity/DownloadItem;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 40
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->getItem(I)Lnet/yostore/aws/sqlite/entity/DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lnet/yostore/aws/sqlite/entity/DownloadItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 52
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 58
    if-nez p2, :cond_0

    .line 59
    iget-object v3, p0, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->textViewResourceId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 60
    new-instance v1, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter$ViewHolder;-><init>(Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;)V

    .line 61
    .local v1, holder:Lnet/yostore/aws/view/navigate/DownloadQueueAdapter$ViewHolder;
    const v3, 0x7f090033

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 62
    const v3, 0x7f09003e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter$ViewHolder;->percent:Landroid/widget/TextView;

    .line 63
    const v3, 0x7f09003d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v1, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 64
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    :goto_0
    iget-object v3, p0, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/sqlite/entity/DownloadItem;

    .line 79
    .local v0, di:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    iget-object v3, v1, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, v0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v3, p0, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget v2, v3, Lnet/yostore/aws/sqlite/entity/DownloadItem;->percent:I

    .line 81
    .local v2, percent:I
    if-gtz v2, :cond_1

    .line 82
    iget-object v3, v1, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter$ViewHolder;->percent:Landroid/widget/TextView;

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->context:Landroid/content/Context;

    iget v5, v0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->status:I

    invoke-static {v4, v5}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getProcessStatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v3, v1, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 90
    :goto_1
    return-object p2

    .line 67
    .end local v0           #di:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    .end local v1           #holder:Lnet/yostore/aws/view/navigate/DownloadQueueAdapter$ViewHolder;
    .end local v2           #percent:I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter$ViewHolder;

    .restart local v1       #holder:Lnet/yostore/aws/view/navigate/DownloadQueueAdapter$ViewHolder;
    goto :goto_0

    .line 85
    .restart local v0       #di:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    .restart local v2       #percent:I
    :cond_1
    iget-object v3, v1, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter$ViewHolder;->percent:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v3, v1, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 87
    iget-object v3, v1, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lnet/yostore/aws/sqlite/entity/DownloadItem;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->remove(Lnet/yostore/aws/sqlite/entity/DownloadItem;)V

    return-void
.end method

.method public remove(Lnet/yostore/aws/sqlite/entity/DownloadItem;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 45
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method
