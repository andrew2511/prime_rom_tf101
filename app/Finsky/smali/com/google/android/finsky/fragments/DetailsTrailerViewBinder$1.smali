.class Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder$1;
.super Ljava/lang/Object;
.source "DetailsTrailerViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;->setupTableCell(Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;

.field final synthetic val$data:Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;

    iput-object p2, p0, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder$1;->val$data:Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 117
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;

    iget-object v1, v1, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder$1;->val$data:Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->getWatchUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/IntentUtils;->createYouTubeIntentForUrl(Landroid/content/pm/PackageManager;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 120
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;

    iget-object v1, v1, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    return-void
.end method
