.class Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder$1;
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
    .line 84
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;

    invoke-static {v1}, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->access$000(Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/IntentUtils;->createViewIntentForUrl(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method
