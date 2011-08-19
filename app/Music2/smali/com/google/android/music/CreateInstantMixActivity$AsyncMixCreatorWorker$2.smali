.class Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;
.super Ljava/lang/Object;
.source "CreateInstantMixActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->onFailure(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

.field final synthetic val$statusCode:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;->this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    iput-object p2, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;->val$statusCode:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 312
    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;->this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    invoke-static {v1}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->access$500(Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;->this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    iget-object v1, v1, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    const v2, 0x7f0c00f6

    invoke-virtual {v1, v2}, Lcom/google/android/music/CreateInstantMixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, errorMessage:Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;->this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    iget-object v1, v1, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    invoke-static {v1}, Lcom/google/android/music/CreateInstantMixActivity;->access$400(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;->this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    iget-object v1, v1, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    invoke-static {v1}, Lcom/google/android/music/CreateInstantMixActivity;->access$600(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;->this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    iget-object v1, v1, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    invoke-static {v1}, Lcom/google/android/music/CreateInstantMixActivity;->access$700(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0c00f7

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 323
    return-void

    .line 314
    .end local v0           #errorMessage:Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;->val$statusCode:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;->INSUFFICIENT_RESULTS:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    if-ne v1, v2, :cond_1

    .line 315
    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;->this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    iget-object v1, v1, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    const v2, 0x7f0c00f5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;->this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    invoke-static {v5}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->access$300(Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/CreateInstantMixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #errorMessage:Ljava/lang/CharSequence;
    goto :goto_0

    .line 318
    .end local v0           #errorMessage:Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;->this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    iget-object v1, v1, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    const v2, 0x7f0c00f4

    invoke-virtual {v1, v2}, Lcom/google/android/music/CreateInstantMixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #errorMessage:Ljava/lang/CharSequence;
    goto :goto_0
.end method
