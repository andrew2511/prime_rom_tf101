.class Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;
.super Ljava/lang/Object;
.source "Subscriptions.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->loadSubscriptionsFromServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;->this$1:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;)Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;->this$1:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;

    return-object v0
.end method


# virtual methods
.method public onPositiveResult()V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;->this$1:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->access$4(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;)Lcom/newspaperdirect/pressreader/android/Subscriptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 125
    :cond_0
    new-instance v0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4$1;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4$1;-><init>(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    .line 143
    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$4$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
