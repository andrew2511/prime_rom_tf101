.class public Lcom/zinio/mobile/android/view/library/g;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Lcom/zinio/mobile/android/view/library/l;

.field private b:Landroid/widget/ArrayAdapter;

.field private c:Lcom/zinio/mobile/android/view/library/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    new-instance v0, Lcom/zinio/mobile/android/view/library/l;

    invoke-direct {v0}, Lcom/zinio/mobile/android/view/library/l;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/g;->a:Lcom/zinio/mobile/android/view/library/l;

    .line 43
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/library/g;->b()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/g;->b:Landroid/widget/ArrayAdapter;

    .line 44
    new-instance v0, Lcom/zinio/mobile/android/view/library/s;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/library/s;-><init>(Lcom/zinio/mobile/android/view/library/g;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/g;->c:Lcom/zinio/mobile/android/view/library/s;

    .line 45
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/g;->a:Lcom/zinio/mobile/android/view/library/l;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/g;->c:Lcom/zinio/mobile/android/view/library/s;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/library/l;->a(Lcom/zinio/mobile/android/view/library/s;)V

    .line 31
    iput-object v2, p0, Lcom/zinio/mobile/android/view/library/g;->c:Lcom/zinio/mobile/android/view/library/s;

    .line 32
    iput-object v2, p0, Lcom/zinio/mobile/android/view/library/g;->a:Lcom/zinio/mobile/android/view/library/l;

    .line 33
    iput-object v2, p0, Lcom/zinio/mobile/android/view/library/g;->b:Landroid/widget/ArrayAdapter;

    .line 34
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/widget/Adapter;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/g;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/g;->a:Lcom/zinio/mobile/android/view/library/l;

    invoke-virtual {v0, p1, p2}, Lcom/zinio/mobile/android/view/library/l;->a(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 67
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/g;->c:Lcom/zinio/mobile/android/view/library/s;

    invoke-interface {p2, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 68
    return-void
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f030012

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/g;->a:Lcom/zinio/mobile/android/view/library/l;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/l;->a()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/g;->a:Lcom/zinio/mobile/android/view/library/l;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/view/library/l;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 99
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/g;->a:Lcom/zinio/mobile/android/view/library/l;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/view/library/l;->b(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/g;->a:Lcom/zinio/mobile/android/view/library/l;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/g;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/zinio/mobile/android/view/library/l;->a(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/widget/ArrayAdapter;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/view/library/g;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
