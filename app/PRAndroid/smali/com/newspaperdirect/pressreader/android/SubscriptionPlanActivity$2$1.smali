.class Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;
.super Ljava/lang/Thread;
.source "SubscriptionPlanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;->onPositiveResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;->this$1:Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;

    .line 66
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;)Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;->this$1:Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;->this$1:Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;->access$0(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;)Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;->getList()Ljava/util/List;

    move-result-object v0

    .line 71
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 72
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;->this$1:Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;->access$0(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;)Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;->access$0(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;Ljava/lang/String;)V

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;->this$1:Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;->access$0(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;)Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;->this$1:Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;->access$0(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;)Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;

    move-result-object v1

    new-instance v2, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1$1;

    invoke-direct {v2, p0, v0}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1$1;-><init>(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
