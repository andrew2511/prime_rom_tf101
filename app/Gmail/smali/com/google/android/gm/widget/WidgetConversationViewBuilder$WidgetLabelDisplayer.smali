.class public Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;
.super Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer;
.source "WidgetConversationViewBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/widget/WidgetConversationViewBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WidgetLabelDisplayer"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer;-><init>()V

    return-void
.end method

.method private getLabelViewId(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 61
    packed-switch p1, :pswitch_data_0

    .line 69
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 63
    :pswitch_0
    const v0, 0x7f0e0095

    goto :goto_0

    .line 65
    :pswitch_1
    const v0, 0x7f0e0096

    goto :goto_0

    .line 67
    :pswitch_2
    const v0, 0x7f0e0097

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public displayLabels(Landroid/widget/RemoteViews;)V
    .locals 11
    .parameter "remoteViews"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, displayedLabel:I
    iget-object v7, p0, Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;->mLabelValuesSortedSet:Ljava/util/SortedSet;

    invoke-interface {v7}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;

    .line 78
    .local v5, labelValues:Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;
    invoke-direct {p0, v2}, Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;->getLabelViewId(I)I

    move-result v6

    .line 79
    .local v6, viewId:I
    if-eqz v6, :cond_0

    .line 82
    invoke-virtual {p1, v6, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 83
    new-array v1, v8, [I

    iget v7, v5, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;->backgroundColor:I

    aput v7, v1, v9

    .line 84
    .local v1, color:[I
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v8, v8, v7}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 85
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 87
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v10, :cond_0

    .line 92
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #color:[I
    .end local v5           #labelValues:Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;
    .end local v6           #viewId:I
    :cond_1
    move v3, v2

    .local v3, i:I
    :goto_0
    if-ge v3, v10, :cond_2

    .line 93
    invoke-direct {p0, v3}, Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;->getLabelViewId(I)I

    move-result v7

    const/16 v8, 0x8

    invoke-virtual {p1, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :cond_2
    return-void
.end method

.method public loadConversationLabels(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "displayedLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p3, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer;->loadConversationLabels(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method
