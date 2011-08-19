.class Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$1;
.super Ljava/lang/Object;
.source "Subscriptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/Subscriptions;)V
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->access$0(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;Z)V

    .line 97
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;->access$4(Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;)Lcom/newspaperdirect/pressreader/android/Subscriptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions;->finish()V

    .line 98
    return-void
.end method
