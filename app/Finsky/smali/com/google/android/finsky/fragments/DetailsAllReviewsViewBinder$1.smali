.class Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder$1;
.super Ljava/lang/Object;
.source "DetailsAllReviewsViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsAllReviewsViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    sget-object v1, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;->ALL_DETAILS:Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->switchDetailsPageState(Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;)V

    .line 49
    return-void
.end method
