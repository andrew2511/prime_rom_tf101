.class Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;
.super Landroid/widget/ArrayAdapter;
.source "MultipleChoiceListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/prefs/MultipleChoiceListPreference;->createListView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$CheckWrapper;,
        Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/prefs/MultipleChoiceListPreference;

.field private final synthetic val$iconSize:I

.field private final synthetic val$imageCache:Lcom/layar/data/ImageCache;

.field private final synthetic val$layoutInflater:Landroid/view/LayoutInflater;

.field private final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/layar/ui/prefs/MultipleChoiceListPreference;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/view/LayoutInflater;Lcom/layar/data/ImageCache;ILandroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;->this$0:Lcom/layar/ui/prefs/MultipleChoiceListPreference;

    iput-object p6, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;->val$layoutInflater:Landroid/view/LayoutInflater;

    iput-object p7, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;->val$imageCache:Lcom/layar/data/ImageCache;

    iput p8, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;->val$iconSize:I

    iput-object p9, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;->val$listView:Landroid/widget/ListView;

    .line 298
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;)Lcom/layar/ui/prefs/MultipleChoiceListPreference;
    .locals 1
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;->this$0:Lcom/layar/ui/prefs/MultipleChoiceListPreference;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 335
    if-eqz p2, :cond_0

    .line 336
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$ViewHolder;

    .line 352
    .local v0, holder:Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$ViewHolder;
    :goto_0
    iget-object v1, v0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$ViewHolder;->check:Landroid/widget/CheckBox;

    new-instance v2, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$CheckWrapper;

    iget-object v3, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;->val$listView:Landroid/widget/ListView;

    invoke-direct {v2, p0, p1, v3}, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$CheckWrapper;-><init>(Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;ILandroid/widget/ListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v1, v0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;->this$0:Lcom/layar/ui/prefs/MultipleChoiceListPreference;

    invoke-static {v2}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->access$1(Lcom/layar/ui/prefs/MultipleChoiceListPreference;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;->this$0:Lcom/layar/ui/prefs/MultipleChoiceListPreference;

    invoke-static {v1}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->access$2(Lcom/layar/ui/prefs/MultipleChoiceListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;->val$imageCache:Lcom/layar/data/ImageCache;

    .line 357
    iget-object v2, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;->this$0:Lcom/layar/ui/prefs/MultipleChoiceListPreference;

    invoke-static {v2}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->access$3(Lcom/layar/ui/prefs/MultipleChoiceListPreference;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 358
    iget v3, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;->val$iconSize:I

    iget-object v4, v0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$ViewHolder;->throbber:Landroid/widget/ProgressBar;

    .line 356
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/layar/data/ImageCache;->setCategoryImageBitmap(IILandroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    .line 359
    iget-object v1, v0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$ViewHolder;->imageBox:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 363
    :goto_1
    iget-object v1, v0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$ViewHolder;->check:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;->this$0:Lcom/layar/ui/prefs/MultipleChoiceListPreference;

    invoke-static {v2}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->access$0(Lcom/layar/ui/prefs/MultipleChoiceListPreference;)[Z

    move-result-object v2

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 364
    return-object p2

    .line 338
    .end local v0           #holder:Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$ViewHolder;
    :cond_0
    iget-object v1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;->val$layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030015

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 341
    new-instance v0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$ViewHolder;

    invoke-direct {v0, p0}, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$ViewHolder;-><init>(Lcom/layar/ui/prefs/MultipleChoiceListPreference$1;)V

    .line 342
    .restart local v0       #holder:Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$ViewHolder;
    const v1, 0x7f07003e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$ViewHolder;->imageBox:Landroid/view/View;

    .line 343
    const v1, 0x7f07004a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$ViewHolder;->image:Landroid/widget/ImageView;

    .line 344
    const v1, 0x7f07004b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, v0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$ViewHolder;->throbber:Landroid/widget/ProgressBar;

    .line 345
    const v1, 0x7f070025

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$ViewHolder;->title:Landroid/widget/TextView;

    .line 346
    const v1, 0x7f07004c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$ViewHolder;->check:Landroid/widget/CheckBox;

    .line 349
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 361
    :cond_1
    iget-object v1, v0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$1$ViewHolder;->imageBox:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
