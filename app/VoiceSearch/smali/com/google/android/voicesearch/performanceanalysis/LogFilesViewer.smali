.class public Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;
.super Landroid/app/ListActivity;
.source "LogFilesViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$ResultView;,
        Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_FILENAME_KEY:Ljava/lang/String; = "extra_filename_key"

.field public static final FILES_DIRECTORY:Ljava/lang/String; = "/sdcard/Android/data/com.google.android.voicesearch/files/"


# instance fields
.field private mAdapter:Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;)Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;->mAdapter:Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;

    return-object v0
.end method

.method private getFilesList()[Ljava/io/File;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Android/data/com.google.android.voicesearch/files/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$2;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$2;-><init>(Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    new-instance v0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;

    invoke-direct {p0}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;->getFilesList()[Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;-><init>(Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;[Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;->mAdapter:Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;->mAdapter:Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0906fc

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$1;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$1;-><init>(Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    return-void
.end method
