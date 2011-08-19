.class public Lcom/android/videoeditor/TransitionsAdapter;
.super Lcom/android/videoeditor/BaseAdapterWithImages;
.source "TransitionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/videoeditor/BaseAdapterWithImages",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTransitions:[Lcom/android/videoeditor/TransitionType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 1
    .parameter "context"
    .parameter "listView"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/videoeditor/BaseAdapterWithImages;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    .line 43
    invoke-static {p1}, Lcom/android/videoeditor/TransitionType;->getTransitions(Landroid/content/Context;)[Lcom/android/videoeditor/TransitionType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/TransitionsAdapter;->mTransitions:[Lcom/android/videoeditor/TransitionType;

    .line 44
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/videoeditor/TransitionsAdapter;->mTransitions:[Lcom/android/videoeditor/TransitionType;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/videoeditor/TransitionsAdapter;->mTransitions:[Lcom/android/videoeditor/TransitionType;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTransitions()[Lcom/android/videoeditor/TransitionType;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/videoeditor/TransitionsAdapter;->mTransitions:[Lcom/android/videoeditor/TransitionType;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 75
    if-nez p2, :cond_0

    .line 76
    iget-object v5, p0, Lcom/android/videoeditor/TransitionsAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 78
    .local v3, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f04000a

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, rowView:Landroid/view/View;
    new-instance v4, Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;

    invoke-direct {v4, v0}, Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;-><init>(Landroid/view/View;)V

    .line 80
    .local v4, viewHolder:Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;,"Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder<Ljava/lang/Integer;>;"
    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    .end local v3           #vi:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v5, p0, Lcom/android/videoeditor/TransitionsAdapter;->mTransitions:[Lcom/android/videoeditor/TransitionType;

    aget-object v1, v5, p1

    .line 87
    .local v1, transitionType:Lcom/android/videoeditor/TransitionType;
    invoke-virtual {v1}, Lcom/android/videoeditor/TransitionType;->getType()I

    move-result v2

    .line 88
    .local v2, type:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v6, v4}, Lcom/android/videoeditor/TransitionsAdapter;->initiateLoad(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;)V

    .line 91
    iget-object v5, v4, Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/videoeditor/TransitionType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-object v0

    .line 82
    .end local v0           #rowView:Landroid/view/View;
    .end local v1           #transitionType:Lcom/android/videoeditor/TransitionType;
    .end local v2           #type:I
    .end local v4           #viewHolder:Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;,"Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder<Ljava/lang/Integer;>;"
    :cond_0
    move-object v0, p2

    .line 83
    .restart local v0       #rowView:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;

    .restart local v4       #viewHolder:Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;,"Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder<Ljava/lang/Integer;>;"
    goto :goto_0
.end method

.method protected loadImage(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "data"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/videoeditor/TransitionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/videoeditor/TransitionType;->TRANSITION_RESOURCE_IDS:[I

    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
