.class Lcom/layar/TabListActivity$TabListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TabListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/TabListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/TabListActivity$TabListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/layar/TabListActivity$TabListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 98
    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 99
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/TabListActivity$TabListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 100
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 121
    if-eqz p2, :cond_0

    .line 122
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/TabListActivity$TabListAdapter$ViewHolder;

    .line 133
    .local v0, holder:Lcom/layar/TabListActivity$TabListAdapter$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/layar/TabListActivity$TabListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layar/TabListActivity$TabListItem;

    .line 134
    .local v1, item:Lcom/layar/TabListActivity$TabListItem;
    iget-object v2, v0, Lcom/layar/TabListActivity$TabListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget v3, v1, Lcom/layar/TabListActivity$TabListItem;->icon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v2, v0, Lcom/layar/TabListActivity$TabListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget v3, v1, Lcom/layar/TabListActivity$TabListItem;->title:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 136
    return-object p2

    .line 124
    .end local v0           #holder:Lcom/layar/TabListActivity$TabListAdapter$ViewHolder;
    .end local v1           #item:Lcom/layar/TabListActivity$TabListItem;
    :cond_0
    iget-object v2, p0, Lcom/layar/TabListActivity$TabListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030053

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 126
    new-instance v0, Lcom/layar/TabListActivity$TabListAdapter$ViewHolder;

    invoke-direct {v0, v4}, Lcom/layar/TabListActivity$TabListAdapter$ViewHolder;-><init>(Lcom/layar/TabListActivity$TabListAdapter$ViewHolder;)V

    .line 127
    .restart local v0       #holder:Lcom/layar/TabListActivity$TabListAdapter$ViewHolder;
    const v2, 0x7f070024

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/layar/TabListActivity$TabListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 128
    const v2, 0x7f07008f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/layar/TabListActivity$TabListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 130
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public update(Ljava/lang/String;IILjava/lang/Class;)V
    .locals 4
    .parameter "tag"
    .parameter "icon"
    .parameter "title"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p4, intentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/layar/TabListActivity$TabListAdapter;->getCount()I

    move-result v0

    .line 104
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 115
    :goto_1
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0, v1}, Lcom/layar/TabListActivity$TabListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layar/TabListActivity$TabListItem;

    .line 106
    .local v2, item:Lcom/layar/TabListActivity$TabListItem;
    iget-object v3, v2, Lcom/layar/TabListActivity$TabListItem;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    iput p2, v2, Lcom/layar/TabListActivity$TabListItem;->icon:I

    .line 108
    iput p3, v2, Lcom/layar/TabListActivity$TabListItem;->title:I

    .line 109
    iput-object p1, v2, Lcom/layar/TabListActivity$TabListItem;->tag:Ljava/lang/String;

    .line 110
    iput-object p4, v2, Lcom/layar/TabListActivity$TabListItem;->intentClass:Ljava/lang/Class;

    .line 111
    invoke-virtual {p0}, Lcom/layar/TabListActivity$TabListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 104
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
