.class Lcom/newspaperdirect/pressreader/android/LocalStore$22;
.super Landroid/os/AsyncTask;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;->filterNewspapers(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

.field private final synthetic val$filter:Ljava/lang/String;

.field private final synthetic val$newspapers:Ljava/util/List;

.field private final synthetic val$newspapersAdditional:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$22;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$22;->val$newspapers:Ljava/util/List;

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$22;->val$newspapersAdditional:Ljava/util/List;

    iput-object p4, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$22;->val$filter:Ljava/lang/String;

    .line 903
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/LocalStore$22;)Lcom/newspaperdirect/pressreader/android/LocalStore;
    .locals 1
    .parameter

    .prologue
    .line 903
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$22;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter "params"

    .prologue
    .line 906
    const/4 v0, 0x1

    .line 907
    .local v0, result:Z
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$22;->val$newspapers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$22;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$22;->val$newspapers:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$27(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    and-int/2addr v0, v1

    .line 908
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$22;->val$newspapersAdditional:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$22;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$22;->val$newspapersAdditional:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$27(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    and-int/2addr v0, v1

    .line 909
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$22;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 913
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$22;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 942
    .end local p0
    :goto_0
    return-void

    .line 914
    .restart local p0
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 915
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$22;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$8(Lcom/newspaperdirect/pressreader/android/LocalStore;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/BaseAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 917
    .restart local p0
    :cond_1
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>(Ljava/lang/Object;)V

    .line 918
    .local v0, flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$22;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 919
    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 920
    const v2, 0x7f09002c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 921
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 922
    const v2, 0x7f090060

    new-instance v3, Lcom/newspaperdirect/pressreader/android/LocalStore$22$1;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$22;->val$filter:Ljava/lang/String;

    invoke-direct {v3, p0, v0, v4}, Lcom/newspaperdirect/pressreader/android/LocalStore$22$1;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore$22;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 931
    const v2, 0x7f09005c

    new-instance v3, Lcom/newspaperdirect/pressreader/android/LocalStore$22$2;

    invoke-direct {v3, p0, v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$22$2;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore$22;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 940
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$22;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
