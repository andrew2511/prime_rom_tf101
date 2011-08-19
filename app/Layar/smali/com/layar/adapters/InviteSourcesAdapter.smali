.class public Lcom/layar/adapters/InviteSourcesAdapter;
.super Landroid/widget/BaseAdapter;
.source "InviteSourcesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;,
        Lcom/layar/adapters/InviteSourcesAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:[Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;)V
    .locals 1
    .parameter "context"
    .parameter "items"

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/layar/adapters/InviteSourcesAdapter;->mItems:[Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/adapters/InviteSourcesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/layar/adapters/InviteSourcesAdapter;->mItems:[Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;
    .locals 1
    .parameter "position"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/layar/adapters/InviteSourcesAdapter;->mItems:[Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/layar/adapters/InviteSourcesAdapter;->getItem(I)Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 47
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

    .line 58
    if-eqz p2, :cond_0

    .line 59
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/adapters/InviteSourcesAdapter$ViewHolder;

    .line 69
    .local v0, holder:Lcom/layar/adapters/InviteSourcesAdapter$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/layar/adapters/InviteSourcesAdapter;->getItem(I)Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;

    move-result-object v1

    .line 70
    .local v1, item:Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;
    iget-object v2, v0, Lcom/layar/adapters/InviteSourcesAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, v0, Lcom/layar/adapters/InviteSourcesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget v3, v1, Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;->iconId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    return-object p2

    .line 61
    .end local v0           #holder:Lcom/layar/adapters/InviteSourcesAdapter$ViewHolder;
    .end local v1           #item:Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;
    :cond_0
    iget-object v2, p0, Lcom/layar/adapters/InviteSourcesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03005e

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance v0, Lcom/layar/adapters/InviteSourcesAdapter$ViewHolder;

    invoke-direct {v0, v4}, Lcom/layar/adapters/InviteSourcesAdapter$ViewHolder;-><init>(Lcom/layar/adapters/InviteSourcesAdapter$ViewHolder;)V

    .line 63
    .restart local v0       #holder:Lcom/layar/adapters/InviteSourcesAdapter$ViewHolder;
    const v2, 0x7f070025

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/layar/adapters/InviteSourcesAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 64
    const v2, 0x7f070024

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/layar/adapters/InviteSourcesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 66
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
