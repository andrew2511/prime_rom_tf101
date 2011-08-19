.class Lcom/google/android/youtube/core/adapter/FootedAdapter$InternalDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "FootedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/adapter/FootedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/adapter/FootedAdapter;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/adapter/FootedAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    .local p0, this:Lcom/google/android/youtube/core/adapter/FootedAdapter$InternalDataSetObserver;,"Lcom/google/android/youtube/core/adapter/FootedAdapter<TT;>.InternalDataSetObserver;"
    iput-object p1, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter$InternalDataSetObserver;->this$0:Lcom/google/android/youtube/core/adapter/FootedAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/adapter/FootedAdapter;Lcom/google/android/youtube/core/adapter/FootedAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    .local p0, this:Lcom/google/android/youtube/core/adapter/FootedAdapter$InternalDataSetObserver;,"Lcom/google/android/youtube/core/adapter/FootedAdapter<TT;>.InternalDataSetObserver;"
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/adapter/FootedAdapter$InternalDataSetObserver;-><init>(Lcom/google/android/youtube/core/adapter/FootedAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 131
    .local p0, this:Lcom/google/android/youtube/core/adapter/FootedAdapter$InternalDataSetObserver;,"Lcom/google/android/youtube/core/adapter/FootedAdapter<TT;>.InternalDataSetObserver;"
    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter$InternalDataSetObserver;->this$0:Lcom/google/android/youtube/core/adapter/FootedAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/adapter/FootedAdapter;->notifyDataSetChanged()V

    .line 132
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 136
    .local p0, this:Lcom/google/android/youtube/core/adapter/FootedAdapter$InternalDataSetObserver;,"Lcom/google/android/youtube/core/adapter/FootedAdapter<TT;>.InternalDataSetObserver;"
    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter$InternalDataSetObserver;->this$0:Lcom/google/android/youtube/core/adapter/FootedAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/adapter/FootedAdapter;->notifyDataSetInvalidated()V

    .line 137
    return-void
.end method
