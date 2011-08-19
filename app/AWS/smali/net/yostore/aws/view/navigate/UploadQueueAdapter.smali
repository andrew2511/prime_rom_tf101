.class public Lnet/yostore/aws/view/navigate/UploadQueueAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UploadQueueAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/navigate/UploadQueueAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lnet/yostore/aws/sqlite/entity/UploadItem;",
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
            "Lnet/yostore/aws/sqlite/entity/UploadItem;",
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
            "Lnet/yostore/aws/sqlite/entity/UploadItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/UploadItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->textViewResourceId:I

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->currentPlay:I

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 34
    iput-object p3, p0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->list:Ljava/util/List;

    .line 35
    iput p2, p0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->textViewResourceId:I

    .line 36
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->context:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lnet/yostore/aws/sqlite/entity/UploadItem;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->add(Lnet/yostore/aws/sqlite/entity/UploadItem;)V

    return-void
.end method

.method public add(Lnet/yostore/aws/sqlite/entity/UploadItem;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 41
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->getItem(I)Lnet/yostore/aws/sqlite/entity/UploadItem;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lnet/yostore/aws/sqlite/entity/UploadItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 53
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/sqlite/entity/UploadItem;

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 59
    if-nez p2, :cond_1

    .line 60
    iget-object v3, p0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->textViewResourceId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 61
    new-instance v0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/navigate/UploadQueueAdapter$ViewHolder;-><init>(Lnet/yostore/aws/view/navigate/UploadQueueAdapter;)V

    .line 62
    .local v0, holder:Lnet/yostore/aws/view/navigate/UploadQueueAdapter$ViewHolder;
    const v3, 0x7f090033

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 63
    const v3, 0x7f09003e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter$ViewHolder;->percent:Landroid/widget/TextView;

    .line 64
    const v3, 0x7f09003d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    :goto_0
    iget-object v3, p0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/sqlite/entity/UploadItem;

    .line 80
    .local v2, ui:Lnet/yostore/aws/sqlite/entity/UploadItem;
    iget-object v3, v0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, v2, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v3, p0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/yostore/aws/sqlite/entity/UploadItem;

    iget v1, v3, Lnet/yostore/aws/sqlite/entity/UploadItem;->percent:I

    .line 82
    .local v1, percent:I
    if-lez v1, :cond_0

    const/16 v3, 0x64

    if-eq v1, v3, :cond_0

    iget v3, v2, Lnet/yostore/aws/sqlite/entity/UploadItem;->status:I

    if-nez v3, :cond_2

    .line 83
    :cond_0
    iget-object v3, p0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->context:Landroid/content/Context;

    iget-wide v4, v2, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    invoke-static {v3, v4, v5}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->getUploadQueueItem(Landroid/content/Context;J)Lnet/yostore/aws/sqlite/entity/UploadItem;

    move-result-object v3

    iget v3, v3, Lnet/yostore/aws/sqlite/entity/UploadItem;->status:I

    iput v3, v2, Lnet/yostore/aws/sqlite/entity/UploadItem;->status:I

    .line 84
    iget-object v3, v0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter$ViewHolder;->percent:Landroid/widget/TextView;

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->context:Landroid/content/Context;

    iget v5, v2, Lnet/yostore/aws/sqlite/entity/UploadItem;->status:I

    invoke-static {v4, v5}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getProcessStatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v3, v0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 91
    :goto_1
    return-object p2

    .line 68
    .end local v0           #holder:Lnet/yostore/aws/view/navigate/UploadQueueAdapter$ViewHolder;
    .end local v1           #percent:I
    .end local v2           #ui:Lnet/yostore/aws/sqlite/entity/UploadItem;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter$ViewHolder;

    .restart local v0       #holder:Lnet/yostore/aws/view/navigate/UploadQueueAdapter$ViewHolder;
    goto :goto_0

    .line 87
    .restart local v1       #percent:I
    .restart local v2       #ui:Lnet/yostore/aws/sqlite/entity/UploadItem;
    :cond_2
    iget-object v3, v0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter$ViewHolder;->percent:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v3, v0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 89
    iget-object v3, v0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lnet/yostore/aws/sqlite/entity/UploadItem;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->remove(Lnet/yostore/aws/sqlite/entity/UploadItem;)V

    return-void
.end method

.method public remove(Lnet/yostore/aws/sqlite/entity/UploadItem;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 46
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method
