.class Lcom/google/android/finsky/adapters/PaginatedListAdapter$1;
.super Ljava/lang/Object;
.source "PaginatedListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/PaginatedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/PaginatedListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/PaginatedListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$1;->this$0:Lcom/google/android/finsky/adapters/PaginatedListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$1;->this$0:Lcom/google/android/finsky/adapters/PaginatedListAdapter;

    invoke-static {v0}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->access$000(Lcom/google/android/finsky/adapters/PaginatedListAdapter;)Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->ERROR:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    if-ne v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$1;->this$0:Lcom/google/android/finsky/adapters/PaginatedListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->retryLoadingItems()V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$1;->this$0:Lcom/google/android/finsky/adapters/PaginatedListAdapter;

    sget-object v1, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->LOADING:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    invoke-static {v0, v1}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->access$002(Lcom/google/android/finsky/adapters/PaginatedListAdapter;Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;)Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$1;->this$0:Lcom/google/android/finsky/adapters/PaginatedListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->notifyDataSetChanged()V

    .line 51
    return-void
.end method
