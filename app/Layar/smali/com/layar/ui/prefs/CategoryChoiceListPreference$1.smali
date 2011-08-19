.class Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;
.super Landroid/widget/ArrayAdapter;
.source "CategoryChoiceListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/prefs/CategoryChoiceListPreference;->createListView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$CheckWrapper;,
        Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/layar/data/category/Category;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/prefs/CategoryChoiceListPreference;

.field private final synthetic val$iconSize:I

.field private final synthetic val$imageCache:Lcom/layar/data/ImageCache;

.field private final synthetic val$layoutInflater:Landroid/view/LayoutInflater;

.field private final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/layar/ui/prefs/CategoryChoiceListPreference;Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;Lcom/layar/data/ImageCache;ILandroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    .local p5, $anonymous3:Ljava/util/List;,"Ljava/util/List<Lcom/layar/data/category/Category;>;"
    iput-object p1, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;->this$0:Lcom/layar/ui/prefs/CategoryChoiceListPreference;

    iput-object p6, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;->val$layoutInflater:Landroid/view/LayoutInflater;

    iput-object p7, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;->val$imageCache:Lcom/layar/data/ImageCache;

    iput p8, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;->val$iconSize:I

    iput-object p9, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;->val$listView:Landroid/widget/ListView;

    .line 211
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;)Lcom/layar/ui/prefs/CategoryChoiceListPreference;
    .locals 1
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;->this$0:Lcom/layar/ui/prefs/CategoryChoiceListPreference;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 256
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 257
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$ViewHolder;

    .line 272
    .local v1, holder:Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/data/category/Category;

    .line 273
    .local v0, cat:Lcom/layar/data/category/Category;
    iget-object v2, v1, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$ViewHolder;->check:Landroid/widget/CheckBox;

    new-instance v3, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$CheckWrapper;

    iget-object v4, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;->val$listView:Landroid/widget/ListView;

    invoke-direct {v3, p0, p1, v4}, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$CheckWrapper;-><init>(Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;ILandroid/widget/ListView;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v2, v1, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/layar/data/category/Category;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget v2, v0, Lcom/layar/data/category/Category;->id:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 277
    iget-object v2, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;->val$imageCache:Lcom/layar/data/ImageCache;

    iget v3, v0, Lcom/layar/data/category/Category;->id:I

    .line 278
    iget v4, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;->val$iconSize:I

    iget-object v5, v1, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$ViewHolder;->throbber:Landroid/widget/ProgressBar;

    .line 277
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/layar/data/ImageCache;->setCategoryImageBitmap(IILandroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    .line 279
    iget-object v2, v1, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$ViewHolder;->imageBox:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 283
    :goto_1
    iget-object v2, v1, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$ViewHolder;->check:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;->this$0:Lcom/layar/ui/prefs/CategoryChoiceListPreference;

    invoke-static {v3}, Lcom/layar/ui/prefs/CategoryChoiceListPreference;->access$0(Lcom/layar/ui/prefs/CategoryChoiceListPreference;)[Z

    move-result-object v3

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 284
    return-object p2

    .line 259
    .end local v0           #cat:Lcom/layar/data/category/Category;
    .end local v1           #holder:Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$ViewHolder;
    :cond_0
    iget-object v2, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;->val$layoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030015

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 262
    new-instance v1, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$ViewHolder;

    invoke-direct {v1, p0}, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$ViewHolder;-><init>(Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;)V

    .line 263
    .restart local v1       #holder:Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$ViewHolder;
    const v2, 0x7f07003e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$ViewHolder;->imageBox:Landroid/view/View;

    .line 264
    const v2, 0x7f07004a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$ViewHolder;->image:Landroid/widget/ImageView;

    .line 265
    const v2, 0x7f07004b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v1, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$ViewHolder;->throbber:Landroid/widget/ProgressBar;

    .line 266
    const v2, 0x7f070025

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$ViewHolder;->title:Landroid/widget/TextView;

    .line 267
    const v2, 0x7f07004c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$ViewHolder;->check:Landroid/widget/CheckBox;

    .line 269
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 281
    .restart local v0       #cat:Lcom/layar/data/category/Category;
    :cond_1
    iget-object v2, v1, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$ViewHolder;->imageBox:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
