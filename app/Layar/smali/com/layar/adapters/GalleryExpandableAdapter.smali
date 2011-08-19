.class public Lcom/layar/adapters/GalleryExpandableAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "GalleryExpandableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;
    }
.end annotation


# static fields
.field public static final CATEGORIES_GROUP:I = 0x1

.field public static final TABS_GROUP:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGroups:[Ljava/lang/String;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/category/Category;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/layar/adapters/GalleryExpandableAdapter;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/adapters/GalleryExpandableAdapter;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mItems:Ljava/util/ArrayList;

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mTabs:Ljava/util/ArrayList;

    .line 35
    iput-object p1, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mContext:Landroid/content/Context;

    .line 36
    iget-object v1, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    const v1, 0x7f090008

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, categories:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mGroups:[Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public addTab(Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    return-void
.end method

.method public addTab(Ljava/lang/String;IILjava/lang/Class;)V
    .locals 2
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
    .line 193
    .local p4, intentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mTabs:Ljava/util/ArrayList;

    new-instance v1, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method public clearTabs()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 214
    return-void
.end method

.method public getChild(II)Lcom/layar/data/category/Category;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 52
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_1

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/layar/data/category/Category;

    move-object v0, p0

    goto :goto_0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/layar/adapters/GalleryExpandableAdapter;->getChild(II)Lcom/layar/data/category/Category;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    int-to-long v0, p2

    .line 61
    .end local p0
    :goto_0
    return-wide v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/layar/data/category/Category;

    iget v0, p0, Lcom/layar/data/category/Category;->id:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 78
    if-nez p1, :cond_5

    .line 80
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/layar/adapters/GalleryExpandableAdapter$1TabViewHolder;

    if-eqz v3, :cond_0

    .line 81
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layar/adapters/GalleryExpandableAdapter$1TabViewHolder;

    .line 95
    .local v1, holder:Lcom/layar/adapters/GalleryExpandableAdapter$1TabViewHolder;
    :goto_0
    iget-object v3, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;

    .line 96
    .local v2, item:Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;
    iget-object v3, v2, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->icon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 97
    iget-object v3, v1, Lcom/layar/adapters/GalleryExpandableAdapter$1TabViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    :goto_1
    iget-object v3, v2, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->title:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 104
    iget-object v3, v1, Lcom/layar/adapters/GalleryExpandableAdapter$1TabViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    move-object v0, p4

    .line 129
    .end local v1           #holder:Lcom/layar/adapters/GalleryExpandableAdapter$1TabViewHolder;
    .end local v2           #item:Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;
    .end local p4
    .local v0, convertView:Landroid/view/View;
    :goto_3
    return-object v0

    .line 83
    .end local v0           #convertView:Landroid/view/View;
    .restart local p4
    :cond_0
    iget-object v3, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030053

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 85
    new-instance v1, Lcom/layar/adapters/GalleryExpandableAdapter$1TabViewHolder;

    invoke-direct {v1, p0}, Lcom/layar/adapters/GalleryExpandableAdapter$1TabViewHolder;-><init>(Lcom/layar/adapters/GalleryExpandableAdapter;)V

    .line 86
    .restart local v1       #holder:Lcom/layar/adapters/GalleryExpandableAdapter$1TabViewHolder;
    const v3, 0x7f070024

    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/layar/adapters/GalleryExpandableAdapter$1TabViewHolder;->icon:Landroid/widget/ImageView;

    .line 87
    const v3, 0x7f07008f

    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/layar/adapters/GalleryExpandableAdapter$1TabViewHolder;->title:Landroid/widget/TextView;

    .line 88
    const v3, 0x7f0700ca

    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/layar/adapters/GalleryExpandableAdapter$1TabViewHolder;->rightIcon:Landroid/widget/ImageView;

    .line 89
    iget-object v3, v1, Lcom/layar/adapters/GalleryExpandableAdapter$1TabViewHolder;->rightIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    const v3, 0x7f0200b0

    invoke-virtual {p4, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 92
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    .restart local v2       #item:Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;
    :cond_1
    iget v3, v2, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->iconId:I

    if-eq v3, v6, :cond_2

    .line 99
    iget-object v3, v1, Lcom/layar/adapters/GalleryExpandableAdapter$1TabViewHolder;->icon:Landroid/widget/ImageView;

    iget v4, v2, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->iconId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 101
    :cond_2
    iget-object v3, v1, Lcom/layar/adapters/GalleryExpandableAdapter$1TabViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 105
    :cond_3
    iget v3, v2, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->titleId:I

    if-eq v3, v6, :cond_4

    .line 106
    iget-object v3, v1, Lcom/layar/adapters/GalleryExpandableAdapter$1TabViewHolder;->title:Landroid/widget/TextView;

    iget v4, v2, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->titleId:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 108
    :cond_4
    iget-object v3, v1, Lcom/layar/adapters/GalleryExpandableAdapter$1TabViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 111
    .end local v1           #holder:Lcom/layar/adapters/GalleryExpandableAdapter$1TabViewHolder;
    .end local v2           #item:Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;
    :cond_5
    const/4 v3, 0x1

    if-ne p1, v3, :cond_7

    .line 113
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/layar/adapters/GalleryExpandableAdapter$1CategoryViewHolder;

    if-eqz v3, :cond_6

    .line 114
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layar/adapters/GalleryExpandableAdapter$1CategoryViewHolder;

    .line 124
    .local v1, holder:Lcom/layar/adapters/GalleryExpandableAdapter$1CategoryViewHolder;
    :goto_4
    iget-object v3, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layar/data/category/Category;

    .line 125
    .local v2, item:Lcom/layar/data/category/Category;
    iget-object v3, v1, Lcom/layar/adapters/GalleryExpandableAdapter$1CategoryViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/layar/data/category/Category;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v3, v1, Lcom/layar/adapters/GalleryExpandableAdapter$1CategoryViewHolder;->count:Landroid/widget/TextView;

    iget v4, v2, Lcom/layar/data/category/Category;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p4

    .line 127
    .end local p4
    .restart local v0       #convertView:Landroid/view/View;
    goto/16 :goto_3

    .line 116
    .end local v0           #convertView:Landroid/view/View;
    .end local v1           #holder:Lcom/layar/adapters/GalleryExpandableAdapter$1CategoryViewHolder;
    .end local v2           #item:Lcom/layar/data/category/Category;
    .restart local p4
    :cond_6
    iget-object v3, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03000f

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 117
    new-instance v1, Lcom/layar/adapters/GalleryExpandableAdapter$1CategoryViewHolder;

    invoke-direct {v1, p0}, Lcom/layar/adapters/GalleryExpandableAdapter$1CategoryViewHolder;-><init>(Lcom/layar/adapters/GalleryExpandableAdapter;)V

    .line 118
    .restart local v1       #holder:Lcom/layar/adapters/GalleryExpandableAdapter$1CategoryViewHolder;
    const v3, 0x7f07003d

    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/layar/adapters/GalleryExpandableAdapter$1CategoryViewHolder;->title:Landroid/widget/TextView;

    .line 119
    const v3, 0x7f07003c

    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/layar/adapters/GalleryExpandableAdapter$1CategoryViewHolder;->count:Landroid/widget/TextView;

    .line 121
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4

    .end local v1           #holder:Lcom/layar/adapters/GalleryExpandableAdapter$1CategoryViewHolder;
    :cond_7
    move-object v0, p4

    .line 129
    .end local p4
    .restart local v0       #convertView:Landroid/view/View;
    goto/16 :goto_3
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 144
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/layar/adapters/GalleryExpandableAdapter;->getGroup(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroup(I)Ljava/lang/String;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mGroups:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mGroups:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 159
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/layar/adapters/GalleryExpandableAdapter;->getGroup(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, text:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 167
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 174
    :goto_0
    return-object v2

    .line 169
    :cond_0
    invoke-virtual {p0, p1}, Lcom/layar/adapters/GalleryExpandableAdapter;->getChildrenCount(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 170
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030033

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 173
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/layar/adapters/GalleryExpandableAdapter;->getGroup(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, v1

    .line 174
    goto :goto_0
.end method

.method public getItem(I)Lcom/layar/data/category/Category;
    .locals 1
    .parameter "position"

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/layar/adapters/GalleryExpandableAdapter;->getChild(II)Lcom/layar/data/category/Category;

    move-result-object v0

    return-object v0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTab(I)Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;

    return-object p0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setItems(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/category/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/category/Category;>;"
    iput-object p1, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mItems:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method public updateTab(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "tag"
    .parameter "icon"

    .prologue
    .line 201
    iget-object v3, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 202
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 210
    :goto_1
    return-void

    .line 203
    :cond_0
    iget-object v3, p0, Lcom/layar/adapters/GalleryExpandableAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;

    .line 204
    .local v2, tab:Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;
    iget-object v3, v2, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    iput-object p2, v2, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->icon:Landroid/graphics/Bitmap;

    .line 206
    invoke-virtual {p0}, Lcom/layar/adapters/GalleryExpandableAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 202
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
