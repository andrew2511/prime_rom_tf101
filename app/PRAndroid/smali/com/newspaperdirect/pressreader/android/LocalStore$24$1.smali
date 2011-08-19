.class Lcom/newspaperdirect/pressreader/android/LocalStore$24$1;
.super Landroid/os/AsyncTask;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore$24;->onPositiveResult()V
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
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$24;

.field private final synthetic val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

.field private final synthetic val$newspapers:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore$24;Ljava/util/List;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$24$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$24;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$24$1;->val$newspapers:Ljava/util/List;

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$24$1;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    .line 1004
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/LocalStore$24$1;)Lcom/newspaperdirect/pressreader/android/LocalStore$24;
    .locals 1
    .parameter

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$24$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$24;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .parameter "params"

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$24$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$24;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$24;->access$0(Lcom/newspaperdirect/pressreader/android/LocalStore$24;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$24$1;->val$newspapers:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$27(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$24$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 1011
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$24$1;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v1, v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1040
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 1012
    .restart local p0
    :cond_1
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$24$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$24;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$24;->access$0(Lcom/newspaperdirect/pressreader/android/LocalStore$24;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1013
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1014
    :cond_2
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>(Ljava/lang/Object;)V

    .line 1015
    .local v0, flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$24$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$24;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/LocalStore$24;->access$0(Lcom/newspaperdirect/pressreader/android/LocalStore$24;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1016
    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1017
    const v2, 0x7f09002c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1018
    const v2, 0x7f090060

    new-instance v3, Lcom/newspaperdirect/pressreader/android/LocalStore$24$1$1;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$24$1;->val$newspapers:Ljava/util/List;

    invoke-direct {v3, p0, v0, v4}, Lcom/newspaperdirect/pressreader/android/LocalStore$24$1$1;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore$24$1;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Ljava/util/List;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1027
    const v2, 0x7f09005c

    new-instance v3, Lcom/newspaperdirect/pressreader/android/LocalStore$24$1$2;

    invoke-direct {v3, p0, v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$24$1$2;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore$24$1;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1036
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1038
    .end local v0           #flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    :cond_3
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$24$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$24;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$24;->access$0(Lcom/newspaperdirect/pressreader/android/LocalStore$24;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v1

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$26(Lcom/newspaperdirect/pressreader/android/LocalStore;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/BaseAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$24$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
