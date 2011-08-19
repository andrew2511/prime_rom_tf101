.class Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder$2;
.super Ljava/lang/Object;
.source "DetailsDeveloperViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->setupTableCell(Ljava/lang/Integer;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder$2;->this$0:Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder$2;->this$0:Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder$2;->this$0:Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;

    invoke-static {v2}, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->access$100(Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/IntentUtils;->createSendIntentForUrl(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 106
    return-void
.end method
