.class Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$1;
.super Ljava/lang/Object;
.source "DetailsRelatedViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->setupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetry()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;

    invoke-static {v0}, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;->access$000(Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;)Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeList;->retryLoadItems(Z)V

    .line 177
    return-void
.end method
