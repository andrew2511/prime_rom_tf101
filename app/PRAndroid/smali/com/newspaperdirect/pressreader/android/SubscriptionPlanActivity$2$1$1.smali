.class Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1$1;
.super Ljava/lang/Object;
.source "SubscriptionPlanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;

.field private final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1$1;->this$2:Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1$1;->val$list:Ljava/util/List;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 77
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1$1;->this$2:Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;->access$0(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;)Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;->access$0(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;)Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;

    move-result-object v0

    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$SubscriptionAdapter;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1$1;->this$2:Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;->access$0(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;)Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;

    move-result-object v2

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;->access$0(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;)Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1$1;->this$2:Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;->access$0(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;)Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;

    move-result-object v3

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;->access$0(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;)Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1$1;->val$list:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$SubscriptionAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1$1;->this$2:Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;->access$0(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;)Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;->access$0(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;)Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;->dismissDialog(I)V

    .line 79
    return-void
.end method
