.class Lcom/android/launcher2/CustomizePagedView$SyncWidgetPageItemsTask;
.super Landroid/os/AsyncTask;
.source "CustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CustomizePagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncWidgetPageItemsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;",
        "Ljava/lang/Void;",
        "Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CustomizePagedView;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/CustomizePagedView;)V
    .locals 0
    .parameter

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/android/launcher2/CustomizePagedView$SyncWidgetPageItemsTask;->this$0:Lcom/android/launcher2/CustomizePagedView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/CustomizePagedView;Lcom/android/launcher2/CustomizePagedView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1036
    invoke-direct {p0, p1}, Lcom/android/launcher2/CustomizePagedView$SyncWidgetPageItemsTask;-><init>(Lcom/android/launcher2/CustomizePagedView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;)Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;
    .locals 7
    .parameter "args"

    .prologue
    .line 1039
    array-length v4, p1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 1040
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Wrong number of args to SyncWidgetPageItemsTask"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1042
    :cond_0
    const/4 v4, 0x0

    aget-object v3, p1, v4

    .line 1045
    .local v3, pageToSync:Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;
    iget-object v4, p0, Lcom/android/launcher2/CustomizePagedView$SyncWidgetPageItemsTask;->this$0:Lcom/android/launcher2/CustomizePagedView;

    monitor-enter v4

    .line 1047
    :try_start_0
    iget-object v5, v3, Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1048
    .local v2, numWidgets:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1049
    iget-object v5, v3, Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1050
    .local v1, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v5, v3, Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;->mAppWidgetBitmaps:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/launcher2/CustomizePagedView$SyncWidgetPageItemsTask;->this$0:Lcom/android/launcher2/CustomizePagedView;

    invoke-static {v6, v1}, Lcom/android/launcher2/CustomizePagedView;->access$500(Lcom/android/launcher2/CustomizePagedView;Landroid/appwidget/AppWidgetProviderInfo;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1048
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1052
    .end local v1           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    monitor-exit v4

    .line 1053
    return-object v3

    .line 1052
    .end local v0           #i:I
    .end local v2           #numWidgets:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1036
    check-cast p1, [Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CustomizePagedView$SyncWidgetPageItemsTask;->doInBackground([Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;)Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;)V
    .locals 13
    .parameter "pageToSync"

    .prologue
    .line 1057
    iget-object v9, p1, Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;->mLayout:Landroid/widget/LinearLayout;

    .line 1058
    .local v9, layout:Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView$SyncWidgetPageItemsTask;->this$0:Lcom/android/launcher2/CustomizePagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/CustomizePagedView;->getPageCount()I

    move-result v10

    .line 1059
    .local v10, numPages:I
    iget-object v3, p1, Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1060
    .local v11, numWidgets:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v11, :cond_1

    .line 1061
    iget-object v3, p1, Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1062
    .local v1, info:Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v7, Lcom/android/launcher2/PendingAddWidgetInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v7, v1, v3, v4}, Lcom/android/launcher2/PendingAddWidgetInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1064
    .local v7, createItemInfo:Lcom/android/launcher2/PendingAddWidgetInfo;
    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView$SyncWidgetPageItemsTask;->this$0:Lcom/android/launcher2/CustomizePagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/CustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v5, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/android/launcher2/CellLayout;->rectToCell(Landroid/content/res/Resources;II[I)[I

    move-result-object v4

    .line 1067
    .local v4, cellSpans:[I
    new-instance v2, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v3, p1, Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;->mAppWidgetBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v2, v0}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1069
    .local v2, icon:Lcom/android/launcher2/FastBitmapDrawable;
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/android/launcher2/FastBitmapDrawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v2}, Lcom/android/launcher2/FastBitmapDrawable;->getIntrinsicHeight()I

    move-result v12

    invoke-virtual {v2, v3, v5, v6, v12}, Lcom/android/launcher2/FastBitmapDrawable;->setBounds(IIII)V

    .line 1071
    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView$SyncWidgetPageItemsTask;->this$0:Lcom/android/launcher2/CustomizePagedView;

    invoke-static {v3}, Lcom/android/launcher2/CustomizePagedView;->access$600(Lcom/android/launcher2/CustomizePagedView;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f03000f

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v9, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewWidget;

    .line 1074
    .local v0, l:Lcom/android/launcher2/PagedViewWidget;
    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView$SyncWidgetPageItemsTask;->this$0:Lcom/android/launcher2/CustomizePagedView;

    invoke-static {v3}, Lcom/android/launcher2/CustomizePagedView;->access$700(Lcom/android/launcher2/CustomizePagedView;)I

    move-result v3

    sget-object v5, Lcom/android/launcher2/PagedView;->mPageViewIconCache:Lcom/android/launcher2/PagedViewIconCache;

    const/4 v6, 0x1

    if-le v10, v6, :cond_0

    const/4 v6, 0x1

    :goto_1
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/PagedViewWidget;->applyFromAppWidgetProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;Lcom/android/launcher2/FastBitmapDrawable;I[ILcom/android/launcher2/PagedViewIconCache;Z)V

    .line 1076
    invoke-virtual {v0, v7}, Lcom/android/launcher2/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    .line 1077
    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView$SyncWidgetPageItemsTask;->this$0:Lcom/android/launcher2/CustomizePagedView;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/PagedViewWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1078
    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView$SyncWidgetPageItemsTask;->this$0:Lcom/android/launcher2/CustomizePagedView;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/PagedViewWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1079
    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView$SyncWidgetPageItemsTask;->this$0:Lcom/android/launcher2/CustomizePagedView;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/PagedViewWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1081
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1060
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1074
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 1083
    .end local v0           #l:Lcom/android/launcher2/PagedViewWidget;
    .end local v1           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v2           #icon:Lcom/android/launcher2/FastBitmapDrawable;
    .end local v4           #cellSpans:[I
    .end local v7           #createItemInfo:Lcom/android/launcher2/PendingAddWidgetInfo;
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1036
    check-cast p1, Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CustomizePagedView$SyncWidgetPageItemsTask;->onPostExecute(Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;)V

    return-void
.end method
