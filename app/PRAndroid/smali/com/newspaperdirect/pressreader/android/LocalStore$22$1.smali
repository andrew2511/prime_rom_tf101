.class Lcom/newspaperdirect/pressreader/android/LocalStore$22$1;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore$22;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$22;

.field private final synthetic val$filter:Ljava/lang/String;

.field private final synthetic val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore$22;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$22$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$22;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$22$1;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$22$1;->val$filter:Ljava/lang/String;

    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 924
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$22$1;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$22$1;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 926
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$22$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$22;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$22;->access$2(Lcom/newspaperdirect/pressreader/android/LocalStore$22;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 928
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$22$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$22;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$22;->access$2(Lcom/newspaperdirect/pressreader/android/LocalStore$22;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$22$1;->val$filter:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$42(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/lang/String;)V

    goto :goto_0
.end method
