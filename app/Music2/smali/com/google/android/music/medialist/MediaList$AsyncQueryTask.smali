.class Lcom/google/android/music/medialist/MediaList$AsyncQueryTask;
.super Landroid/os/AsyncTask;
.source "MediaList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/medialist/MediaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncQueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/android/music/medialist/MediaList$QueryParams;",
        "Lcom/google/android/music/medialist/MediaList$MediaCursor;",
        "Lcom/google/android/music/medialist/MediaList$MediaCursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/medialist/MediaList;


# direct methods
.method private constructor <init>(Lcom/google/android/music/medialist/MediaList;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/google/android/music/medialist/MediaList$AsyncQueryTask;->this$0:Lcom/google/android/music/medialist/MediaList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/medialist/MediaList;Lcom/google/android/music/medialist/MediaList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/google/android/music/medialist/MediaList$AsyncQueryTask;-><init>(Lcom/google/android/music/medialist/MediaList;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/google/android/music/medialist/MediaList$QueryParams;)Lcom/google/android/music/medialist/MediaList$MediaCursor;
    .locals 7
    .parameter "params"

    .prologue
    .line 364
    const/4 v3, 0x0

    aget-object v2, p1, v3

    .line 365
    .local v2, p:Lcom/google/android/music/medialist/MediaList$QueryParams;
    const/4 v0, 0x0

    .line 367
    .local v0, c:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    :try_start_0
    iget-object v3, p0, Lcom/google/android/music/medialist/MediaList$AsyncQueryTask;->this$0:Lcom/google/android/music/medialist/MediaList;

    iget-object v4, v2, Lcom/google/android/music/medialist/MediaList$QueryParams;->mContext:Landroid/content/Context;

    iget-object v5, v2, Lcom/google/android/music/medialist/MediaList$QueryParams;->mProjection:[Ljava/lang/String;

    iget-object v6, v2, Lcom/google/android/music/medialist/MediaList$QueryParams;->mFilter:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/music/medialist/MediaList;->getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 371
    :goto_0
    return-object v0

    .line 368
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 369
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "MediaList"

    const-string v4, "error getting cursor"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 360
    check-cast p1, [Lcom/google/android/music/medialist/MediaList$QueryParams;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/MediaList$AsyncQueryTask;->doInBackground([Lcom/google/android/music/medialist/MediaList$QueryParams;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v0

    return-object v0
.end method
