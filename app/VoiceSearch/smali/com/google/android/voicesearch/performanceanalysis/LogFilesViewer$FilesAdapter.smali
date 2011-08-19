.class Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;
.super Ljava/lang/Object;
.source "LogFilesViewer.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilesAdapter"
.end annotation


# instance fields
.field public mFiles:[Ljava/io/File;

.field final synthetic this$0:Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;[Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;->this$0:Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;->mFiles:[Ljava/io/File;

    .line 81
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;->mFiles:[Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;->mFiles:[Ljava/io/File;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;->mFiles:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 100
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    if-eqz p2, :cond_0

    .line 110
    check-cast p2, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$ResultView;

    .line 111
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;->mFiles:[Ljava/io/File;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$ResultView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p2

    .line 115
    :goto_0
    return-object v0

    .line 113
    :cond_0
    new-instance v0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$ResultView;

    iget-object v1, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;->this$0:Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;

    iget-object v2, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;->mFiles:[Ljava/io/File;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$ResultView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;->mFiles:[Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;->mFiles:[Ljava/io/File;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    return-void
.end method
