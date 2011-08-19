.class Lcom/newspaperdirect/pressreader/android/Accounts$1;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Accounts;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/Accounts;

.field private final synthetic val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

.field private final synthetic val$service:Lcom/newspaperdirect/pressreader/android/core/Service;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Accounts;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Lcom/newspaperdirect/pressreader/android/core/Service;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1;->this$0:Lcom/newspaperdirect/pressreader/android/Accounts;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1;->val$service:Lcom/newspaperdirect/pressreader/android/core/Service;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/Accounts$1;)Lcom/newspaperdirect/pressreader/android/Accounts;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1;->this$0:Lcom/newspaperdirect/pressreader/android/Accounts;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 52
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 53
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1;->this$0:Lcom/newspaperdirect/pressreader/android/Accounts;

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;-><init>(Landroid/app/Activity;)V

    .line 54
    new-instance v1, Lcom/newspaperdirect/pressreader/android/Accounts$1$1;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/Accounts$1;->val$service:Lcom/newspaperdirect/pressreader/android/core/Service;

    invoke-direct {v1, p0, v2}, Lcom/newspaperdirect/pressreader/android/Accounts$1$1;-><init>(Lcom/newspaperdirect/pressreader/android/Accounts$1;Lcom/newspaperdirect/pressreader/android/core/Service;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->setPositiveResult(Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->check()V

    goto :goto_0
.end method
