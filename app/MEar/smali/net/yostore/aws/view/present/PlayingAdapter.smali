.class public Lnet/yostore/aws/view/present/PlayingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PlayingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/present/PlayingAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lnet/yostore/aws/handler/entity/BrowseRaw;",
        ">;"
    }
.end annotation


# instance fields
.field public currentPlay:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/BrowseRaw;",
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
            "Lnet/yostore/aws/handler/entity/BrowseRaw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/BrowseRaw;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/view/present/PlayingAdapter;->textViewResourceId:I

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/view/present/PlayingAdapter;->currentPlay:I

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayingAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    iput-object p3, p0, Lnet/yostore/aws/view/present/PlayingAdapter;->list:Ljava/util/List;

    .line 42
    iput p2, p0, Lnet/yostore/aws/view/present/PlayingAdapter;->textViewResourceId:I

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lnet/yostore/aws/handler/entity/BrowseRaw;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/present/PlayingAdapter;->add(Lnet/yostore/aws/handler/entity/BrowseRaw;)V

    return-void
.end method

.method public add(Lnet/yostore/aws/handler/entity/BrowseRaw;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 47
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayingAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayingAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/present/PlayingAdapter;->getItem(I)Lnet/yostore/aws/handler/entity/BrowseRaw;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lnet/yostore/aws/handler/entity/BrowseRaw;
    .locals 1
    .parameter "position"

    .prologue
    .line 59
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayingAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/handler/entity/BrowseRaw;

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 61
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 65
    if-nez p2, :cond_0

    .line 66
    iget-object v2, p0, Lnet/yostore/aws/view/present/PlayingAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lnet/yostore/aws/view/present/PlayingAdapter;->textViewResourceId:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance v1, Lnet/yostore/aws/view/present/PlayingAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/PlayingAdapter$ViewHolder;-><init>(Lnet/yostore/aws/view/present/PlayingAdapter;)V

    .line 68
    .local v1, holder:Lnet/yostore/aws/view/present/PlayingAdapter$ViewHolder;
    const v2, 0x7f080001

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lnet/yostore/aws/view/present/PlayingAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 69
    const v2, 0x7f08001a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lnet/yostore/aws/view/present/PlayingAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 70
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    :goto_0
    iget-object v2, p0, Lnet/yostore/aws/view/present/PlayingAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/BrowseRaw;

    .line 79
    .local v0, br:Lnet/yostore/aws/handler/entity/BrowseRaw;
    iget v2, p0, Lnet/yostore/aws/view/present/PlayingAdapter;->currentPlay:I

    if-ne v2, p1, :cond_1

    .line 80
    iget-object v2, v1, Lnet/yostore/aws/view/present/PlayingAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v3, 0x7f0200a2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    const-string v2, "PlayingAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "current Position -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lnet/yostore/aws/view/present/PlayingAdapter;->currentPlay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_1
    iget-object v2, v1, Lnet/yostore/aws/view/present/PlayingAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/BrowseRaw;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-object p2

    .line 73
    .end local v0           #br:Lnet/yostore/aws/handler/entity/BrowseRaw;
    .end local v1           #holder:Lnet/yostore/aws/view/present/PlayingAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/view/present/PlayingAdapter$ViewHolder;

    .restart local v1       #holder:Lnet/yostore/aws/view/present/PlayingAdapter$ViewHolder;
    goto :goto_0

    .line 83
    .restart local v0       #br:Lnet/yostore/aws/handler/entity/BrowseRaw;
    :cond_1
    iget-object v2, v1, Lnet/yostore/aws/view/present/PlayingAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lnet/yostore/aws/handler/entity/BrowseRaw;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/present/PlayingAdapter;->remove(Lnet/yostore/aws/handler/entity/BrowseRaw;)V

    return-void
.end method

.method public remove(Lnet/yostore/aws/handler/entity/BrowseRaw;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 52
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayingAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method
