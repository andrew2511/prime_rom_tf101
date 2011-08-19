.class public Lcom/google/android/finsky/adapters/CategoryPanelAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CategoryPanelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;II)V
    .locals 1
    .parameter "context"
    .parameter "bitmapLoader"
    .parameter "channelId"
    .parameter "textViewResourceId"

    .prologue
    .line 35
    invoke-direct {p0, p1, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/CategoryPanelAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 37
    invoke-static {p1, p3}, Lcom/google/android/finsky/utils/CorpusMetadata;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/adapters/CategoryPanelAdapter;->mTextColor:I

    .line 38
    return-void
.end method


# virtual methods
.method public getCategoryUrl(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/CategoryPanelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getDataUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 53
    if-nez p2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/google/android/finsky/adapters/CategoryPanelAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04000c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/CategoryPanelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    .line 61
    .local v0, category:Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
    const v2, 0x7f09001b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 62
    .local v1, title:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget v2, p0, Lcom/google/android/finsky/adapters/CategoryPanelAdapter;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    return-object p2
.end method
