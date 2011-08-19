.class public Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AWSBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$AddListener;,
        Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lnet/yostore/aws/handler/entity/AWSBrowseRaw;",
        ">;"
    }
.end annotation


# instance fields
.field private inforelay:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/AWSBrowseRaw;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .parameter "ir"
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/AWSBrowseRaw;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/AWSBrowseRaw;>;"
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 34
    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;->inforelay:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;->token:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    iput-object p3, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;->list:Ljava/util/List;

    .line 41
    iput-object p4, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;->inforelay:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;->token:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic access$3(Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;->token:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;->inforelay:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lnet/yostore/aws/handler/entity/AWSBrowseRaw;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;->add(Lnet/yostore/aws/handler/entity/AWSBrowseRaw;)V

    return-void
.end method

.method public add(Lnet/yostore/aws/handler/entity/AWSBrowseRaw;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;->getItem(I)Lnet/yostore/aws/handler/entity/AWSBrowseRaw;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lnet/yostore/aws/handler/entity/AWSBrowseRaw;
    .locals 1
    .parameter "position"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/handler/entity/AWSBrowseRaw;

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 65
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 70
    if-nez p2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 75
    new-instance v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;)V

    .line 76
    .local v1, holder:Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;
    const v2, 0x7f090006

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 77
    const v2, 0x7f090005

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 78
    const v2, 0x7f090008

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;->setStar(Landroid/widget/ImageView;)V

    .line 79
    const v2, 0x7f090007

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;->size:Landroid/widget/TextView;

    .line 81
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    :goto_0
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/AWSBrowseRaw;

    .line 89
    .local v0, br:Lnet/yostore/aws/handler/entity/AWSBrowseRaw;
    iget-object v2, v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/AWSBrowseRaw;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/AWSBrowseRaw;->getKind()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;->kind:Ljava/lang/String;

    .line 91
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/AWSBrowseRaw;->getFid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;->fid:Ljava/lang/String;

    .line 96
    iget-object v2, v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/AWSBrowseRaw;->getIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    iput p1, v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;->position:I

    .line 112
    return-object p2

    .line 85
    .end local v0           #br:Lnet/yostore/aws/handler/entity/AWSBrowseRaw;
    .end local v1           #holder:Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;
    goto :goto_0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lnet/yostore/aws/handler/entity/AWSBrowseRaw;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;->remove(Lnet/yostore/aws/handler/entity/AWSBrowseRaw;)V

    return-void
.end method

.method public remove(Lnet/yostore/aws/handler/entity/AWSBrowseRaw;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method
