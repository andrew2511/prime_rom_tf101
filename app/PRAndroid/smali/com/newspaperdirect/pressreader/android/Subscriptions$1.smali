.class Lcom/newspaperdirect/pressreader/android/Subscriptions$1;
.super Ljava/lang/Object;
.source "Subscriptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Subscriptions;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/Subscriptions;

.field private final synthetic val$sub:Lcom/newspaperdirect/pressreader/android/core/Subscription;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Subscriptions;Lcom/newspaperdirect/pressreader/android/core/Subscription;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$1;->this$0:Lcom/newspaperdirect/pressreader/android/Subscriptions;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$1;->val$sub:Lcom/newspaperdirect/pressreader/android/core/Subscription;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/Subscriptions$1;)Lcom/newspaperdirect/pressreader/android/Subscriptions;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$1;->this$0:Lcom/newspaperdirect/pressreader/android/Subscriptions;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 70
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$1;->this$0:Lcom/newspaperdirect/pressreader/android/Subscriptions;

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;-><init>(Landroid/app/Activity;)V

    .line 71
    new-instance v1, Lcom/newspaperdirect/pressreader/android/Subscriptions$1$1;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions$1;->val$sub:Lcom/newspaperdirect/pressreader/android/core/Subscription;

    invoke-direct {v1, p0, v2}, Lcom/newspaperdirect/pressreader/android/Subscriptions$1$1;-><init>(Lcom/newspaperdirect/pressreader/android/Subscriptions$1;Lcom/newspaperdirect/pressreader/android/core/Subscription;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->setPositiveResult(Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->check()V

    .line 77
    return-void
.end method
