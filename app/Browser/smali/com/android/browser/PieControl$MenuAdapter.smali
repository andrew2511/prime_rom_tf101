.class Lcom/android/browser/PieControl$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "PieControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/PieControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MenuAdapter"
.end annotation


# instance fields
.field mInflater:Landroid/view/LayoutInflater;

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field mUiController:Lcom/android/browser/UiController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/UiController;)V
    .locals 1
    .parameter "ctx"
    .parameter "ctl"

    .prologue
    .line 303
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 304
    iput-object p2, p0, Lcom/android/browser/PieControl$MenuAdapter;->mUiController:Lcom/android/browser/UiController;

    .line 305
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/PieControl$MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/PieControl$MenuAdapter;->mItems:Ljava/util/List;

    .line 307
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/browser/PieControl$MenuAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/browser/PieControl$MenuAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/MenuItem;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/android/browser/PieControl$MenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 332
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 344
    iget-object v3, p0, Lcom/android/browser/PieControl$MenuAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 345
    .local v0, item:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/android/browser/PieControl$MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040020

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 347
    .local v2, view:Landroid/view/View;
    const v3, 0x7f100002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 349
    .local v1, label:Landroid/widget/TextView;
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 351
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/16 v4, 0xf0

    const/16 v5, 0x20

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/browser/PieControl$MenuAdapter;->mUiController:Lcom/android/browser/UiController;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/MenuItem;

    invoke-interface {v0, p0}, Lcom/android/browser/UiController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 340
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 310
    iget-object v2, p0, Lcom/android/browser/PieControl$MenuAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 311
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 312
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 313
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/android/browser/PieControl$MenuAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/PieControl$MenuAdapter;->notifyDataSetChanged()V

    .line 318
    return-void
.end method
