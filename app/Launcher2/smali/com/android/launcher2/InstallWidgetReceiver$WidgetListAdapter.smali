.class public Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;
.super Ljava/lang/Object;
.source "InstallWidgetReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/InstallWidgetReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetListAdapter"
.end annotation


# instance fields
.field private mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;",
            ">;"
        }
    .end annotation
.end field

.field private mClipData:Landroid/content/ClipData;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mMimeType:Ljava/lang/String;

.field private mTargetLayout:Lcom/android/launcher2/CellLayout;

.field private mTargetLayoutPos:[I

.field private mTargetLayoutScreen:I


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;Landroid/content/ClipData;Ljava/util/List;Lcom/android/launcher2/CellLayout;I[I)V
    .locals 0
    .parameter "l"
    .parameter "mimeType"
    .parameter "data"
    .parameter
    .parameter "target"
    .parameter "targetScreen"
    .parameter "targetPos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/Launcher;",
            "Ljava/lang/String;",
            "Landroid/content/ClipData;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;",
            ">;",
            "Lcom/android/launcher2/CellLayout;",
            "I[I)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p4, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 88
    iput-object p2, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mMimeType:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mClipData:Landroid/content/ClipData;

    .line 90
    iput-object p4, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mActivities:Ljava/util/List;

    .line 91
    iput-object p5, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 92
    iput p6, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mTargetLayoutScreen:I

    .line 93
    iput-object p7, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mTargetLayoutPos:[I

    .line 94
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 116
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 127
    .local v5, context:Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 130
    .local v9, packageManager:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object v14, v0

    if-nez v14, :cond_0

    .line 131
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 135
    :cond_0
    if-nez p2, :cond_1

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object v14, v0

    const v15, 0x7f030011

    const/16 v16, 0x0

    move-object v0, v14

    move v1, v15

    move-object/from16 v2, p3

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 140
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mActivities:Ljava/util/List;

    move-object v14, v0

    move-object v0, v14

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;

    .line 141
    .local v7, data:Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;
    iget-object v10, v7, Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 142
    .local v10, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v12, v7, Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 145
    .local v12, widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual {v10, v9}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 146
    .local v6, d:Landroid/graphics/drawable/Drawable;
    const v14, 0x7f080020

    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 147
    .local v8, i:Landroid/widget/ImageView;
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    invoke-virtual {v10, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 151
    .local v4, component:Ljava/lang/CharSequence;
    const/4 v14, 0x2

    new-array v13, v14, [I

    .line 152
    .local v13, widgetSpan:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object v14, v0

    iget v15, v12, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    move-object v0, v12

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    move/from16 v16, v0

    move-object v0, v14

    move v1, v15

    move/from16 v2, v16

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->rectToCell(II[I)[I

    .line 153
    const v14, 0x7f080021

    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 154
    .local v11, t:Landroid/widget/TextView;
    const v14, 0x7f0e0018

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x0

    aget v17, v13, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x1

    aget v17, v13, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v5, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 187
    iget-object v2, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mActivities:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;

    iget-object v1, v2, Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 189
    .local v1, widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v0, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget-object v2, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mMimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mClipData:Landroid/content/ClipData;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/PendingAddWidgetInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 191
    .local v0, createInfo:Lcom/android/launcher2/PendingAddWidgetInfo;
    iget-object v2, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mLauncher:Lcom/android/launcher2/Launcher;

    iget v3, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mTargetLayoutScreen:I

    iget-object v4, p0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;->mTargetLayoutPos:[I

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/launcher2/Launcher;->addAppWidgetFromDrop(Lcom/android/launcher2/PendingAddWidgetInfo;I[I)V

    .line 192
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 98
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 102
    return-void
.end method
