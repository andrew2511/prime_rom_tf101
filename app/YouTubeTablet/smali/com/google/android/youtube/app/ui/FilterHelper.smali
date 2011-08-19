.class public Lcom/google/android/youtube/app/ui/FilterHelper;
.super Ljava/lang/Object;
.source "FilterHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/ui/FilterHelper$2;,
        Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter;,
        Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field protected final activity:Landroid/app/Activity;

.field private anchorButton:Landroid/widget/Button;

.field private chooserDialogId:I

.field private currentFilter:I

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

.field private final listener:Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private spinner:Landroid/widget/Spinner;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;Ljava/util/List;I)V
    .locals 1
    .parameter "activity"
    .parameter
    .parameter
    .parameter "initialSelection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<TT;",
            "Ljava/lang/String;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, this:Lcom/google/android/youtube/app/ui/FilterHelper;,"Lcom/google/android/youtube/app/ui/FilterHelper<TT;>;"
    .local p2, listener:Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;,"Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener<TT;>;"
    .local p3, data:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<TT;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-ltz p4, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(Z)V

    .line 70
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/FilterHelper;->listener:Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;

    .line 71
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/FilterHelper;->data:Ljava/util/List;

    .line 72
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/FilterHelper;->activity:Landroid/app/Activity;

    .line 73
    iput p4, p0, Lcom/google/android/youtube/app/ui/FilterHelper;->currentFilter:I

    .line 74
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;Ljava/util/List;ILandroid/widget/Spinner;I)V
    .locals 3
    .parameter "activity"
    .parameter
    .parameter
    .parameter "initialSelection"
    .parameter "spinner"
    .parameter "spinnerItemViewResource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<TT;",
            "Ljava/lang/String;",
            ">;>;I",
            "Landroid/widget/Spinner;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, this:Lcom/google/android/youtube/app/ui/FilterHelper;,"Lcom/google/android/youtube/app/ui/FilterHelper<TT;>;"
    .local p2, listener:Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;,"Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener<TT;>;"
    .local p3, data:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<TT;Ljava/lang/String;>;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/app/ui/FilterHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;Ljava/util/List;I)V

    .line 115
    invoke-static {p5}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/FilterHelper;->spinner:Landroid/widget/Spinner;

    .line 116
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/FilterHelper;->spinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v1, v2, p3, p6}, Lcom/google/android/youtube/app/ui/FilterHelper$FilterAdapter;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/FilterHelper;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/FilterHelper;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 120
    return-void
.end method

.method private static getTimeFilterData(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {}, Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;->values()[Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;

    move-result-object v5

    .line 190
    .local v5, values:[Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;
    new-instance v1, Ljava/util/ArrayList;

    array-length v6, v5

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    .local v1, data:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;Ljava/lang/String;>;>;"
    move-object v0, v5

    .local v0, arr$:[Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 192
    .local v4, value:Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;
    iget v6, v4, Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;->stringId:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    .end local v4           #value:Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;
    :cond_0
    return-object v1
.end method

.method public static newStandardFeedFilterHelper(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;Landroid/widget/Spinner;)Lcom/google/android/youtube/app/ui/FilterHelper;
    .locals 7
    .parameter "activity"
    .parameter
    .parameter "initialFilter"
    .parameter "spinner"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;",
            ">;",
            "Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;",
            "Landroid/widget/Spinner;",
            ")",
            "Lcom/google/android/youtube/app/ui/FilterHelper",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, listener:Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;,"Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener<Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;>;"
    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    .local v3, data:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;Ljava/lang/String;>;>;"
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->TOP_RATED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    const v1, 0x7f0d0029

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->TOP_FAVORITES:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    const v1, 0x7f0d002a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->MOST_VIEWED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    const v1, 0x7f0d002b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->MOST_DISCUSSED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    const v1, 0x7f0d002c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    const/4 v4, 0x0

    .line 219
    .local v4, selection:I
    sget-object v0, Lcom/google/android/youtube/app/ui/FilterHelper$2;->$SwitchMap$com$google$android$youtube$core$async$GDataRequests$StandardFeed:[I

    invoke-virtual {p2}, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 227
    :goto_0
    new-instance v0, Lcom/google/android/youtube/app/ui/FilterHelper;

    const v6, 0x7f040010

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/ui/FilterHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;Ljava/util/List;ILandroid/widget/Spinner;I)V

    return-object v0

    .line 220
    :pswitch_0
    const/4 v4, 0x0

    goto :goto_0

    .line 221
    :pswitch_1
    const/4 v4, 0x1

    goto :goto_0

    .line 222
    :pswitch_2
    const/4 v4, 0x2

    goto :goto_0

    .line 223
    :pswitch_3
    const/4 v4, 0x3

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static newTimeFilterHelper(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;Landroid/widget/Spinner;)Lcom/google/android/youtube/app/ui/FilterHelper;
    .locals 7
    .parameter "activity"
    .parameter
    .parameter "initialFilter"
    .parameter "spinner"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;",
            ">;",
            "Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;",
            "Landroid/widget/Spinner;",
            ")",
            "Lcom/google/android/youtube/app/ui/FilterHelper",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, listener:Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;,"Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener<Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;>;"
    invoke-static {p0}, Lcom/google/android/youtube/app/ui/FilterHelper;->getTimeFilterData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 171
    .local v3, data:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;Ljava/lang/String;>;>;"
    new-instance v0, Lcom/google/android/youtube/app/ui/FilterHelper;

    invoke-virtual {p2}, Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;->ordinal()I

    move-result v4

    const v6, 0x7f040010

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/ui/FilterHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;Ljava/util/List;ILandroid/widget/Spinner;I)V

    return-object v0
.end method


# virtual methods
.method changeFilter(I)V
    .locals 2
    .parameter "newFilter"

    .prologue
    .line 129
    .local p0, this:Lcom/google/android/youtube/app/ui/FilterHelper;,"Lcom/google/android/youtube/app/ui/FilterHelper<TT;>;"
    iget v0, p0, Lcom/google/android/youtube/app/ui/FilterHelper;->currentFilter:I

    if-eq p1, v0, :cond_1

    .line 130
    iput p1, p0, Lcom/google/android/youtube/app/ui/FilterHelper;->currentFilter:I

    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/FilterHelper;->anchorButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 132
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/FilterHelper;->anchorButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/FilterHelper;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/FilterHelper;->listener:Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/FilterHelper;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/google/android/youtube/app/ui/FilterHelper;,"Lcom/google/android/youtube/app/ui/FilterHelper<TT;>;"
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Enum;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/app/ui/FilterHelper$OnFilterChangeListener;->onFilterChanged(Ljava/lang/Enum;)V

    .line 138
    :cond_1
    return-void

    .line 133
    .restart local p0       #this:Lcom/google/android/youtube/app/ui/FilterHelper;,"Lcom/google/android/youtube/app/ui/FilterHelper<TT;>;"
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/FilterHelper;->spinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/FilterHelper;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/FilterHelper;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method public getSelected()Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, this:Lcom/google/android/youtube/app/ui/FilterHelper;,"Lcom/google/android/youtube/app/ui/FilterHelper<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/FilterHelper;->data:Ljava/util/List;

    iget v1, p0, Lcom/google/android/youtube/app/ui/FilterHelper;->currentFilter:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/google/android/youtube/app/ui/FilterHelper;,"Lcom/google/android/youtube/app/ui/FilterHelper<TT;>;"
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Enum;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 124
    .local p0, this:Lcom/google/android/youtube/app/ui/FilterHelper;,"Lcom/google/android/youtube/app/ui/FilterHelper<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/FilterHelper;->activity:Landroid/app/Activity;

    iget v1, p0, Lcom/google/android/youtube/app/ui/FilterHelper;->chooserDialogId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 125
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, this:Lcom/google/android/youtube/app/ui/FilterHelper;,"Lcom/google/android/youtube/app/ui/FilterHelper<TT;>;"
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lcom/google/android/youtube/app/ui/FilterHelper;->changeFilter(I)V

    .line 157
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, this:Lcom/google/android/youtube/app/ui/FilterHelper;,"Lcom/google/android/youtube/app/ui/FilterHelper<TT;>;"
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
