.class public final Lcom/zinio/mobile/android/view/library/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/l;->a:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/l;->b:Ljava/util/ArrayList;

    .line 32
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Adapter;

    .line 57
    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_0

    .line 60
    :cond_0
    return v0
.end method

.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/widget/ArrayAdapter;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, p1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Adapter;

    .line 81
    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 84
    if-nez v2, :cond_0

    .line 85
    invoke-virtual {p4, v0, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 93
    :goto_1
    return-object v0

    .line 86
    :cond_0
    if-ge v2, v3, :cond_1

    .line 87
    const/4 v0, 0x1

    sub-int v0, v2, v0

    invoke-interface {p0, v0, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 90
    :cond_1
    sub-int/2addr v2, v3

    .line 91
    add-int/lit8 v0, v0, 0x1

    .line 92
    goto :goto_0

    :cond_2
    move-object v0, p2

    .line 93
    goto :goto_1
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 98
    .line 101
    const/4 v0, 0x0

    move v1, v0

    move v2, p1

    :goto_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 103
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 106
    if-nez v2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 117
    :goto_1
    return-object v0

    .line 110
    :cond_0
    if-ge v2, v3, :cond_1

    .line 111
    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 115
    :cond_1
    sub-int v0, v2, v3

    .line 101
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    .line 117
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/zinio/mobile/android/view/library/s;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Adapter;

    .line 71
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/widget/Adapter;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public final b(I)I
    .locals 3
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, p1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Adapter;

    .line 127
    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 130
    if-nez v1, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 138
    :goto_1
    return v0

    .line 132
    :cond_0
    if-ge v1, v2, :cond_1

    .line 133
    const/4 v0, 0x1

    goto :goto_1

    .line 136
    :cond_1
    sub-int/2addr v1, v2

    goto :goto_0

    .line 138
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method
