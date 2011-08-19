.class Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$3;
.super Ljava/lang/Object;
.source "Subscriptions.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnNegativeResult;


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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$3;->this$1:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeResult()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$3;->this$1:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->access$4(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;)Lcom/newspaperdirect/pressreader/android/Subscriptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions;->finish()V

    .line 120
    return-void
.end method
