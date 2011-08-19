.class Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$1;
.super Ljava/lang/Object;
.source "CreateInstantMixActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->startInstantMixCreation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;


# direct methods
.method constructor <init>(Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$1;->this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$1;->this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    iget-object v0, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    invoke-static {v0}, Lcom/google/android/music/CreateInstantMixActivity;->access$400(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$1;->this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    iget-object v1, v1, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    invoke-static {v1}, Lcom/google/android/music/CreateInstantMixActivity;->access$100(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c00f3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$1;->this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    invoke-static {v5}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->access$300(Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    return-void
.end method
