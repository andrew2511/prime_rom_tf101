.class Lcom/google/android/youtube/app/ui/CardLayoutHelper$ListCardLayoutHelper;
.super Lcom/google/android/youtube/app/ui/CardLayoutHelper;
.source "CardLayoutHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/ui/CardLayoutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListCardLayoutHelper"
.end annotation


# instance fields
.field private final listSelectorView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;ILandroid/widget/FrameLayout;)V
    .locals 1
    .parameter "listSelectorView"
    .parameter "textViewLayoutId"
    .parameter "cardLayout"

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/youtube/app/ui/CardLayoutHelper;-><init>(Landroid/widget/AdapterView;ILandroid/widget/FrameLayout;Lcom/google/android/youtube/app/ui/CardLayoutHelper$1;)V

    .line 190
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper$ListCardLayoutHelper;->listSelectorView:Landroid/widget/ListView;

    .line 191
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 192
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 193
    return-void
.end method


# virtual methods
.method protected clearSelectorPosition()V
    .locals 3

    .prologue
    .line 207
    invoke-super {p0}, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->clearSelectorPosition()V

    .line 208
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper$ListCardLayoutHelper;->listSelectorView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper$ListCardLayoutHelper;->listSelectorView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 209
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 196
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper$ListCardLayoutHelper;->positionsToCardIds:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/CardLayoutHelper$ListCardLayoutHelper;->setSelectedCard(I)V

    .line 197
    return-void
.end method

.method protected setSelectorPosition(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->setSelectorPosition(I)V

    .line 202
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/CardLayoutHelper$ListCardLayoutHelper;->listSelectorView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 203
    return-void
.end method
