.class public Lcom/google/android/youtube/app/ui/CardLayoutHelper;
.super Landroid/widget/BaseAdapter;
.source "CardLayoutHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/ui/CardLayoutHelper$1;,
        Lcom/google/android/youtube/app/ui/CardLayoutHelper$ListCardLayoutHelper;,
        Lcom/google/android/youtube/app/ui/CardLayoutHelper$CardListener;
    }
.end annotation


# instance fields
.field protected final cardIdsToPositions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final cardLayout:Landroid/widget/FrameLayout;

.field private listener:Lcom/google/android/youtube/app/ui/CardLayoutHelper$CardListener;

.field protected final positionsToCardIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectedCardId:I

.field private final selectorView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<-",
            "Landroid/widget/BaseAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final textViewLayoutId:I

.field private final titles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/AdapterView;ILandroid/widget/FrameLayout;)V
    .locals 8
    .parameter
    .parameter "textViewLayoutId"
    .parameter "cardLayout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<-",
            "Landroid/widget/BaseAdapter;",
            ">;I",
            "Landroid/widget/FrameLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, selectorView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<-Landroid/widget/BaseAdapter;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->selectorView:Landroid/widget/AdapterView;

    .line 80
    iput p2, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->textViewLayoutId:I

    .line 81
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->titles:Ljava/util/List;

    .line 82
    iget-object v5, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->selectorView:Landroid/widget/AdapterView;

    invoke-virtual {v5, p0}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 83
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->cardLayout:Landroid/widget/FrameLayout;

    .line 84
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->positionsToCardIds:Ljava/util/Map;

    .line 85
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->cardIdsToPositions:Ljava/util/Map;

    .line 87
    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, selectorPosition:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 91
    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 93
    .local v4, title:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 94
    iget-object v5, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->titles:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v5, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->positionsToCardIds:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v5, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->cardIdsToPositions:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    add-int/lit8 v3, v2, 0x1

    .end local v2           #selectorPosition:I
    .local v3, selectorPosition:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    .line 98
    .end local v3           #selectorPosition:I
    .restart local v2       #selectorPosition:I
    :cond_0
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v0           #childView:Landroid/view/View;
    .end local v4           #title:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->notifyDataSetChanged()V

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AdapterView;ILandroid/widget/FrameLayout;Lcom/google/android/youtube/app/ui/CardLayoutHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/app/ui/CardLayoutHelper;-><init>(Landroid/widget/AdapterView;ILandroid/widget/FrameLayout;)V

    return-void
.end method

.method public static createCardLayoutHelper(Landroid/widget/ListView;ILandroid/widget/FrameLayout;I)Lcom/google/android/youtube/app/ui/CardLayoutHelper;
    .locals 1
    .parameter "selectorView"
    .parameter "textViewLayoutId"
    .parameter "cardLayout"
    .parameter "selectedCardId"

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/youtube/app/ui/CardLayoutHelper$ListCardLayoutHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/youtube/app/ui/CardLayoutHelper$ListCardLayoutHelper;-><init>(Landroid/widget/ListView;ILandroid/widget/FrameLayout;)V

    .line 54
    .local v0, helper:Lcom/google/android/youtube/app/ui/CardLayoutHelper;
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/app/ui/CardLayoutHelper$ListCardLayoutHelper;->setSelectedCard(I)V

    .line 55
    return-object v0
.end method


# virtual methods
.method protected clearSelectorPosition()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->titles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->titles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 113
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedCard()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->selectedCardId:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 117
    if-nez p2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->selectorView:Landroid/widget/AdapterView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->textViewLayoutId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 121
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 122
    .local v1, view:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->titles:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-object v1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->positionsToCardIds:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->setSelectedCard(I)V

    .line 175
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public setCardListener(Lcom/google/android/youtube/app/ui/CardLayoutHelper$CardListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->listener:Lcom/google/android/youtube/app/ui/CardLayoutHelper$CardListener;

    .line 128
    return-void
.end method

.method public setSelectedCard(I)V
    .locals 5
    .parameter "cardId"

    .prologue
    .line 135
    iget v3, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->selectedCardId:I

    if-ne p1, v3, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->cardLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, cardToActivate:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 144
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->cardLayout:Landroid/widget/FrameLayout;

    iget v4, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->selectedCardId:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 145
    .local v1, cardToDeactivate:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 146
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->listener:Lcom/google/android/youtube/app/ui/CardLayoutHelper$CardListener;

    if-eqz v3, :cond_2

    .line 148
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->listener:Lcom/google/android/youtube/app/ui/CardLayoutHelper$CardListener;

    iget v4, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->selectedCardId:I

    invoke-interface {v3, v4}, Lcom/google/android/youtube/app/ui/CardLayoutHelper$CardListener;->onCardUnselected(I)V

    .line 152
    :cond_2
    iput p1, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->selectedCardId:I

    .line 153
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->cardIdsToPositions:Ljava/util/Map;

    iget v4, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->selectedCardId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 155
    .local v2, selectorPosition:Ljava/lang/Integer;
    if-eqz v2, :cond_3

    .line 156
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->setSelectorPosition(I)V

    .line 160
    :goto_1
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->listener:Lcom/google/android/youtube/app/ui/CardLayoutHelper$CardListener;

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->listener:Lcom/google/android/youtube/app/ui/CardLayoutHelper$CardListener;

    iget v4, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->selectedCardId:I

    invoke-interface {v3, v4}, Lcom/google/android/youtube/app/ui/CardLayoutHelper$CardListener;->onCardSelected(I)V

    goto :goto_0

    .line 158
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->clearSelectorPosition()V

    goto :goto_1
.end method

.method protected setSelectorPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->selectorView:Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 167
    return-void
.end method
