.class Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "MyPurchasesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$AdapterDataSetObserver;->this$0:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$AdapterDataSetObserver;-><init>(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$AdapterDataSetObserver;->this$0:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->notifyDataSetChanged()V

    .line 272
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$AdapterDataSetObserver;->this$0:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->notifyDataSetInvalidated()V

    .line 276
    return-void
.end method
