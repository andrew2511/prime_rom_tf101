.class Lcom/newspaperdirect/pressreader/android/Subscriptions$1$1;
.super Ljava/lang/Object;
.source "Subscriptions.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Subscriptions$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/Subscriptions$1;

.field private final synthetic val$sub:Lcom/newspaperdirect/pressreader/android/core/Subscription;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Subscriptions$1;Lcom/newspaperdirect/pressreader/android/core/Subscription;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$1$1;->this$1:Lcom/newspaperdirect/pressreader/android/Subscriptions$1;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$1$1;->val$sub:Lcom/newspaperdirect/pressreader/android/core/Subscription;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveResult()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$1$1;->val$sub:Lcom/newspaperdirect/pressreader/android/core/Subscription;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->delete(ZZ)V

    .line 74
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$1$1;->this$1:Lcom/newspaperdirect/pressreader/android/Subscriptions$1;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$1;->access$0(Lcom/newspaperdirect/pressreader/android/Subscriptions$1;)Lcom/newspaperdirect/pressreader/android/Subscriptions;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$1$1;->this$1:Lcom/newspaperdirect/pressreader/android/Subscriptions$1;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/Subscriptions$1;->access$0(Lcom/newspaperdirect/pressreader/android/Subscriptions$1;)Lcom/newspaperdirect/pressreader/android/Subscriptions;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/Subscriptions;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/Subscriptions;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    return-void
.end method
