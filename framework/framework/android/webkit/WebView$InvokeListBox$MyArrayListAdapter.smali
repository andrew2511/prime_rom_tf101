.class Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView$InvokeListBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyArrayListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/webkit/WebView$InvokeListBox$Container;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebView$InvokeListBox;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView$InvokeListBox;)V
    .registers 5
    .parameter

    .prologue
    .line 8437
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebView$InvokeListBox;

    .line 8438
    iget-object v0, p1, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/webkit/WebView;->access$10500(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v0

    #getter for: Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z
    invoke-static {p1}, Landroid/webkit/WebView$InvokeListBox;->access$10600(Landroid/webkit/WebView$InvokeListBox;)Z

    move-result v1

    if-eqz v1, :cond_19

    const v1, 0x1090013

    :goto_11
    #getter for: Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;
    invoke-static {p1}, Landroid/webkit/WebView$InvokeListBox;->access$10700(Landroid/webkit/WebView$InvokeListBox;)[Landroid/webkit/WebView$InvokeListBox$Container;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 8442
    return-void

    .line 8438
    :cond_19
    const v1, 0x10900a5

    goto :goto_11
.end method

.method private item(I)Landroid/webkit/WebView$InvokeListBox$Container;
    .registers 3
    .parameter "position"

    .prologue
    .line 8500
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_a

    .line 8501
    :cond_8
    const/4 v0, 0x0

    .line 8503
    .end local p0
    :goto_9
    return-object v0

    .restart local p0
    :cond_a
    invoke-virtual {p0, p1}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/WebView$InvokeListBox$Container;

    move-object v0, p0

    goto :goto_9
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 8517
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 8508
    invoke-direct {p0, p1}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->item(I)Landroid/webkit/WebView$InvokeListBox$Container;

    move-result-object v0

    .line 8509
    .local v0, item:Landroid/webkit/WebView$InvokeListBox$Container;
    if-nez v0, :cond_9

    .line 8510
    const-wide/16 v1, -0x1

    .line 8512
    :goto_8
    return-wide v1

    :cond_9
    iget v1, v0, Landroid/webkit/WebView$InvokeListBox$Container;->mId:I

    int-to-long v1, v1

    goto :goto_8
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    const v8, 0x1080012

    const/4 v7, 0x1

    .line 8452
    invoke-super {p0, p1, v9, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 8453
    invoke-direct {p0, p1}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->item(I)Landroid/webkit/WebView$InvokeListBox$Container;

    move-result-object v1

    .line 8454
    .local v1, c:Landroid/webkit/WebView$InvokeListBox$Container;
    if-eqz v1, :cond_75

    iget v5, v1, Landroid/webkit/WebView$InvokeListBox$Container;->mEnabled:I

    if-eq v7, v5, :cond_75

    .line 8457
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v5, v5, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebView;->access$10800(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 8458
    .local v4, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8459
    if-lez p1, :cond_38

    .line 8460
    new-instance v3, Landroid/view/View;

    iget-object v5, p0, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v5, v5, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebView;->access$10900(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 8461
    .local v3, dividerTop:Landroid/view/View;
    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8463
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 8466
    .end local v3           #dividerTop:Landroid/view/View;
    :cond_38
    const/4 v5, -0x1

    iget v6, v1, Landroid/webkit/WebView$InvokeListBox$Container;->mEnabled:I

    if-ne v5, v6, :cond_70

    .line 8469
    iget-object v5, p0, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebView$InvokeListBox;

    #getter for: Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z
    invoke-static {v5}, Landroid/webkit/WebView$InvokeListBox;->access$10600(Landroid/webkit/WebView$InvokeListBox;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 8470
    instance-of v5, p2, Landroid/widget/CheckedTextView;

    invoke-static {v5}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 8471
    move-object v0, p2

    check-cast v0, Landroid/widget/CheckedTextView;

    move-object v5, v0

    invoke-virtual {v5, v9}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8479
    :cond_51
    :goto_51
    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 8480
    invoke-virtual {p0}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->getCount()I

    move-result v5

    sub-int/2addr v5, v7

    if-ge p1, v5, :cond_6e

    .line 8481
    new-instance v2, Landroid/view/View;

    iget-object v5, p0, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v5, v5, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebView;->access$11000(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 8482
    .local v2, dividerBottom:Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8484
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .end local v2           #dividerBottom:Landroid/view/View;
    :cond_6e
    move-object v5, v4

    .line 8488
    .end local v4           #layout:Landroid/widget/LinearLayout;
    :goto_6f
    return-object v5

    .line 8476
    .restart local v4       #layout:Landroid/widget/LinearLayout;
    :cond_70
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_51

    .end local v4           #layout:Landroid/widget/LinearLayout;
    :cond_75
    move-object v5, p2

    .line 8488
    goto :goto_6f
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 8496
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 6
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8522
    invoke-direct {p0, p1}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->item(I)Landroid/webkit/WebView$InvokeListBox$Container;

    move-result-object v0

    .line 8523
    .local v0, item:Landroid/webkit/WebView$InvokeListBox$Container;
    if-nez v0, :cond_a

    move v1, v2

    .line 8526
    :goto_9
    return v1

    :cond_a
    iget v1, v0, Landroid/webkit/WebView$InvokeListBox$Container;->mEnabled:I

    if-ne v3, v1, :cond_10

    move v1, v3

    goto :goto_9

    :cond_10
    move v1, v2

    goto :goto_9
.end method
