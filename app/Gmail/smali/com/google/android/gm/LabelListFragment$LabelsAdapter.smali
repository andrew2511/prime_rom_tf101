.class Lcom/google/android/gm/LabelListFragment$LabelsAdapter;
.super Landroid/widget/BaseAdapter;
.source "LabelListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/LabelListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelsAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mData:Lcom/google/android/gm/provider/LabelList;

.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/google/android/gm/LabelListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/LabelListFragment;Landroid/content/Context;Lcom/google/android/gm/provider/LabelList;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "data"
    .parameter "layout"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->this$0:Lcom/google/android/gm/LabelListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 184
    new-instance v0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter$1;-><init>(Lcom/google/android/gm/LabelListFragment$LabelsAdapter;)V

    iput-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 193
    iput-object p3, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mData:Lcom/google/android/gm/provider/LabelList;

    .line 194
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mData:Lcom/google/android/gm/provider/LabelList;

    iget-object v1, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/LabelList;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 195
    iput-object p2, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mContext:Landroid/content/Context;

    .line 196
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 197
    return-void
.end method

.method private setLabelCountValue(Landroid/widget/TextView;Lcom/google/android/gm/provider/Label;)V
    .locals 2
    .parameter "labelCountView"
    .parameter "label"

    .prologue
    .line 243
    if-eqz p1, :cond_1

    .line 244
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->this$0:Lcom/google/android/gm/LabelListFragment;

    iget-boolean v0, v0, Lcom/google/android/gm/LabelListFragment;->mCreateShortcut:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gm/provider/Label;->getDisplayNoConversationCount()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :goto_0
    const/high16 v0, -0x100

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    :cond_1
    return-void

    .line 246
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Label;->getDisplayTotalConversationCount()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->this$0:Lcom/google/android/gm/LabelListFragment;

    invoke-virtual {p2}, Lcom/google/android/gm/provider/Label;->getNumConversations()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gm/LabelListFragment;->access$300(Lcom/google/android/gm/LabelListFragment;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->this$0:Lcom/google/android/gm/LabelListFragment;

    invoke-virtual {p2}, Lcom/google/android/gm/provider/Label;->getNumUnreadConversations()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gm/LabelListFragment;->access$300(Lcom/google/android/gm/LabelListFragment;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mData:Lcom/google/android/gm/provider/LabelList;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/LabelList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mData:Lcom/google/android/gm/provider/LabelList;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/LabelList;->get(I)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Label;

    .line 268
    .local v0, item:Lcom/google/android/gm/provider/Label;
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Label;->getId()J

    move-result-wide v1

    .line 271
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "v"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 202
    if-nez p2, :cond_0

    .line 203
    iget-object v5, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04001d

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 204
    new-instance v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;

    invoke-direct {v2, v8}, Lcom/google/android/gm/LabelListFragment$ViewHolder;-><init>(Lcom/google/android/gm/LabelListFragment$1;)V

    .line 205
    .local v2, holder:Lcom/google/android/gm/LabelListFragment$ViewHolder;
    const v5, 0x7f0e005f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;->sync:Landroid/widget/TextView;

    .line 206
    const v5, 0x7f0e005d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;->labelCountView:Landroid/widget/TextView;

    .line 207
    const v5, 0x7f0e0010

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;->name:Landroid/widget/TextView;

    .line 208
    const v5, 0x7f0e005b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;->labelBox:Landroid/widget/ImageView;

    .line 209
    const v5, 0x7f0e005c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;->starIcon:Landroid/widget/ImageView;

    .line 210
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 214
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/provider/Label;

    .line 215
    .local v3, label:Lcom/google/android/gm/provider/Label;
    move-object v0, p2

    check-cast v0, Lcom/google/android/gm/LabelItemView;

    move-object v5, v0

    iget-object v6, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->this$0:Lcom/google/android/gm/LabelListFragment;

    invoke-static {v6}, Lcom/google/android/gm/LabelListFragment;->access$100(Lcom/google/android/gm/LabelListFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->this$0:Lcom/google/android/gm/LabelListFragment;

    invoke-static {v7}, Lcom/google/android/gm/LabelListFragment;->access$200(Lcom/google/android/gm/LabelListFragment;)Lcom/google/android/gm/LabelItemView$DropHandler;

    move-result-object v7

    invoke-virtual {v5, v6, v3, v7}, Lcom/google/android/gm/LabelItemView;->bind(Ljava/lang/String;Lcom/google/android/gm/provider/Label;Lcom/google/android/gm/LabelItemView$DropHandler;)V

    .line 217
    iget-object v5, v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v5, v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;->labelCountView:Landroid/widget/TextView;

    invoke-direct {p0, v5, v3}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->setLabelCountValue(Landroid/widget/TextView;Lcom/google/android/gm/provider/Label;)V

    .line 222
    const-string v5, "^t"

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 223
    iget-object v5, v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;->labelBox:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v5, v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;->starIcon:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    :goto_1
    return-object p2

    .line 212
    .end local v2           #holder:Lcom/google/android/gm/LabelListFragment$ViewHolder;
    .end local v3           #label:Lcom/google/android/gm/provider/Label;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;

    .restart local v2       #holder:Lcom/google/android/gm/LabelListFragment$ViewHolder;
    goto :goto_0

    .line 228
    .restart local v3       #label:Lcom/google/android/gm/provider/Label;
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gm/provider/Label;->getBackgroundColor()I

    move-result v1

    .line 230
    .local v1, backgroundColor:I
    invoke-static {}, Lcom/google/android/gm/utils/LabelColorUtils;->getDefaultLabelBackgroundColor()I

    move-result v5

    if-ne v1, v5, :cond_2

    .line 231
    iget-object v5, v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;->labelBox:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    :goto_2
    iget-object v5, v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;->starIcon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 233
    :cond_2
    new-instance v4, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    .line 234
    .local v4, paintDrawable:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    iget-object v5, v2, Lcom/google/android/gm/LabelListFragment$ViewHolder;->labelBox:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x4

    return v0
.end method
