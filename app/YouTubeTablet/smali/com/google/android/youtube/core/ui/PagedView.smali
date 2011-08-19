.class public interface abstract Lcom/google/android/youtube/core/ui/PagedView;
.super Ljava/lang/Object;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/ui/PagedView$OnScrollListener;
    }
.end annotation


# virtual methods
.method public abstract getStatusView()Landroid/view/View;
.end method

.method public abstract setAdapter(Lcom/google/android/youtube/core/adapter/ArrayListAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/adapter/ArrayListAdapter",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
.end method

.method public abstract setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
.end method

.method public abstract setOnRetryClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setOnScrollListener(Lcom/google/android/youtube/core/ui/PagedView$OnScrollListener;)V
.end method

.method public abstract showEmpty()V
.end method

.method public abstract showError(Ljava/lang/String;)V
.end method

.method public abstract showItems()V
.end method

.method public abstract showLoading()V
.end method

.method public abstract showRecoverableError(Ljava/lang/String;)V
.end method
