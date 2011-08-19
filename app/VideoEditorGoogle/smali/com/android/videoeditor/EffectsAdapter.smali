.class public Lcom/android/videoeditor/EffectsAdapter;
.super Lcom/android/videoeditor/BaseAdapterWithImages;
.source "EffectsAdapter.java"


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
.field private final mEffects:[Lcom/android/videoeditor/EffectType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "context"
    .parameter "listView"
    .parameter "category"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/videoeditor/BaseAdapterWithImages;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    .line 44
    invoke-static {p1, p3}, Lcom/android/videoeditor/EffectType;->getEffects(Landroid/content/Context;I)[Lcom/android/videoeditor/EffectType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/EffectsAdapter;->mEffects:[Lcom/android/videoeditor/EffectType;

    .line 45
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/videoeditor/EffectsAdapter;->mEffects:[Lcom/android/videoeditor/EffectType;

    array-length v0, v0

    return v0
.end method

.method public getEffects()[Lcom/android/videoeditor/EffectType;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/videoeditor/EffectsAdapter;->mEffects:[Lcom/android/videoeditor/EffectType;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/videoeditor/EffectsAdapter;->mEffects:[Lcom/android/videoeditor/EffectType;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 76
    if-nez p2, :cond_0

    .line 77
    iget-object v4, p0, Lcom/android/videoeditor/EffectsAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 79
    .local v2, vi:Landroid/view/LayoutInflater;
    const v4, 0x7f04000a

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, rowView:Landroid/view/View;
    new-instance v3, Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;

    invoke-direct {v3, v1}, Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;-><init>(Landroid/view/View;)V

    .line 81
    .local v3, viewHolder:Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;,"Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder<Ljava/lang/Integer;>;"
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    .end local v2           #vi:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v4, p0, Lcom/android/videoeditor/EffectsAdapter;->mEffects:[Lcom/android/videoeditor/EffectType;

    aget-object v0, v4, p1

    .line 88
    .local v0, effect:Lcom/android/videoeditor/EffectType;
    invoke-virtual {v0}, Lcom/android/videoeditor/EffectType;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/videoeditor/EffectType;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v3}, Lcom/android/videoeditor/EffectsAdapter;->initiateLoad(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;)V

    .line 91
    iget-object v4, v3, Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/videoeditor/EffectType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-object v1

    .line 83
    .end local v0           #effect:Lcom/android/videoeditor/EffectType;
    .end local v1           #rowView:Landroid/view/View;
    .end local v3           #viewHolder:Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;,"Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder<Ljava/lang/Integer;>;"
    :cond_0
    move-object v1, p2

    .line 84
    .restart local v1       #rowView:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;

    .restart local v3       #viewHolder:Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;,"Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder<Ljava/lang/Integer;>;"
    goto :goto_0
.end method

.method protected loadImage(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "data"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/videoeditor/EffectsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/videoeditor/EffectType;->EFFECT_RESOURCE_IDS:[I

    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
