.class Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker$2;
.super Ljava/lang/Object;
.source "NetworkConnectionChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->check()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;

.field private final synthetic val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker$2;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker$2;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker$2;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 34
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 35
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->check()V

    goto :goto_0
.end method
