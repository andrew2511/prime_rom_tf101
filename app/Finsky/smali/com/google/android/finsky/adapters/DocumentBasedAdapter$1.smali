.class Lcom/google/android/finsky/adapters/DocumentBasedAdapter$1;
.super Ljava/lang/Object;
.source "DocumentBasedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->makeHeaderClickListener(Lcom/google/android/finsky/model/Bucket;Ljava/lang/String;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/DocumentBasedAdapter;

.field final synthetic val$bucket:Lcom/google/android/finsky/model/Bucket;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/DocumentBasedAdapter;Lcom/google/android/finsky/model/Bucket;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter$1;->this$0:Lcom/google/android/finsky/adapters/DocumentBasedAdapter;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter$1;->val$bucket:Lcom/google/android/finsky/model/Bucket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter$1;->this$0:Lcom/google/android/finsky/adapters/DocumentBasedAdapter;

    iget-object v0, v0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/DocumentBasedAdapter$1;->val$bucket:Lcom/google/android/finsky/model/Bucket;

    invoke-virtual {v1}, Lcom/google/android/finsky/model/Bucket;->getHeaderUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBrowse(Ljava/lang/String;)V

    .line 114
    return-void
.end method
