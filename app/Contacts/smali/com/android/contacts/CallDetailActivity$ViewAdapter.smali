.class final Lcom/android/contacts/CallDetailActivity$ViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewAdapter"
.end annotation


# instance fields
.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/CallDetailActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/CallDetailActivity$ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p2, actions:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/CallDetailActivity$ViewEntry;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 315
    iput-object p2, p0, Lcom/android/contacts/CallDetailActivity$ViewAdapter;->mActions:Ljava/util/List;

    .line 316
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity$ViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 317
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$ViewAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$ViewAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 328
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 333
    if-nez p2, :cond_0

    .line 334
    iget-object v8, p0, Lcom/android/contacts/CallDetailActivity$ViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040005

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 338
    :cond_0
    iget-object v8, p0, Lcom/android/contacts/CallDetailActivity$ViewAdapter;->mActions:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;

    .line 339
    .local v0, entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 341
    const v8, 0x7f07001f

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 342
    .local v1, icon:Landroid/widget/ImageView;
    const v8, 0x1020014

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 344
    .local v7, text:Landroid/widget/TextView;
    iget v8, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->icon:I

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 345
    iget-object v8, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->text:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    const v8, 0x7f070028

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 348
    .local v4, line2:Landroid/view/View;
    iget-object v8, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->number:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 349
    .local v6, numberEmpty:Z
    iget-object v8, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz v6, :cond_2

    :cond_1
    const/4 v8, 0x1

    move v3, v8

    .line 350
    .local v3, labelEmpty:Z
    :goto_0
    if-eqz v3, :cond_3

    if-eqz v6, :cond_3

    .line 351
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 367
    :goto_1
    return-object p2

    .end local v3           #labelEmpty:Z
    :cond_2
    move v3, v10

    .line 349
    goto :goto_0

    .line 353
    .restart local v3       #labelEmpty:Z
    :cond_3
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 355
    const v8, 0x7f070029

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 356
    .local v2, label:Landroid/widget/TextView;
    if-eqz v3, :cond_4

    .line 357
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    :goto_2
    const v8, 0x7f07002a

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 364
    .local v5, number:Landroid/widget/TextView;
    iget-object v8, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->number:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 359
    .end local v5           #number:Landroid/widget/TextView;
    :cond_4
    iget-object v8, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
