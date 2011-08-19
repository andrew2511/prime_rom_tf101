.class Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter;
.super Landroid/widget/BaseAdapter;
.source "FilterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/ui/FilterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilterAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<TT;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final inflater:Landroid/view/LayoutInflater;

.field private final spinnerItemViewResource:I


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Ljava/util/List;I)V
    .locals 0
    .parameter "inflater"
    .parameter
    .parameter "spinnerItemViewResource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<TT;",
            "Ljava/lang/String;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, this:Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter;,"Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter<TT;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<TT;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 240
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter;->data:Ljava/util/List;

    .line 241
    iput p3, p0, Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter;->spinnerItemViewResource:I

    .line 242
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 245
    .local p0, this:Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter;,"Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 249
    .local p0, this:Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter;,"Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter;,"Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter<TT;>;"
    check-cast p0, Landroid/util/Pair;

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 253
    .local p0, this:Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter;,"Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 257
    .local p0, this:Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter;,"Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter<TT;>;"
    if-nez p2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter;->spinnerItemViewResource:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 260
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 261
    .local v1, view:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter;->data:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter;,"Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter<TT;>;"
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    return-object v1
.end method
