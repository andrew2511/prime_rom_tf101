.class Lcom/layar/EmailContactChooserActivity$PickContactsTask;
.super Landroid/os/AsyncTask;
.source "EmailContactChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/EmailContactChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickContactsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/layar/reflect/EmailChooser$ContactInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private progress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/layar/EmailContactChooserActivity;


# direct methods
.method private constructor <init>(Lcom/layar/EmailContactChooserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/layar/EmailContactChooserActivity$PickContactsTask;->this$0:Lcom/layar/EmailContactChooserActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/EmailContactChooserActivity;Lcom/layar/EmailContactChooserActivity$PickContactsTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/layar/EmailContactChooserActivity$PickContactsTask;-><init>(Lcom/layar/EmailContactChooserActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/EmailContactChooserActivity$PickContactsTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 3
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/reflect/EmailChooser$ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v1, p0, Lcom/layar/EmailContactChooserActivity$PickContactsTask;->this$0:Lcom/layar/EmailContactChooserActivity;

    iget-object v2, p0, Lcom/layar/EmailContactChooserActivity$PickContactsTask;->this$0:Lcom/layar/EmailContactChooserActivity;

    invoke-static {v2}, Lcom/layar/EmailContactChooserActivity;->access$0(Lcom/layar/EmailContactChooserActivity;)Ljava/util/ArrayList;

    move-result-object v2

    .line 94
    invoke-static {v1, v2}, Lcom/layar/reflect/EmailChooser;->getContacts(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 96
    .local v0, contacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/reflect/EmailChooser$ContactInfo;>;"
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/layar/EmailContactChooserActivity$PickContactsTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/reflect/EmailChooser$ContactInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/reflect/EmailChooser$ContactInfo;>;"
    const/4 v2, 0x0

    .line 100
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 102
    invoke-virtual {p0}, Lcom/layar/EmailContactChooserActivity$PickContactsTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    if-nez p1, :cond_2

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    .end local p1           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/reflect/EmailChooser$ContactInfo;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .restart local p1       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/reflect/EmailChooser$ContactInfo;>;"
    :cond_2
    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity$PickContactsTask;->this$0:Lcom/layar/EmailContactChooserActivity;

    invoke-static {v0}, Lcom/layar/EmailContactChooserActivity;->access$0(Lcom/layar/EmailContactChooserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity$PickContactsTask;->this$0:Lcom/layar/EmailContactChooserActivity;

    invoke-static {v0}, Lcom/layar/EmailContactChooserActivity;->access$0(Lcom/layar/EmailContactChooserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity$PickContactsTask;->this$0:Lcom/layar/EmailContactChooserActivity;

    invoke-static {v0}, Lcom/layar/EmailContactChooserActivity;->access$0(Lcom/layar/EmailContactChooserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lcom/layar/reflect/EmailChooser$ContactInfo;

    invoke-direct {v1, v2, v2}, Lcom/layar/reflect/EmailChooser$ContactInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 116
    :goto_1
    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity$PickContactsTask;->this$0:Lcom/layar/EmailContactChooserActivity;

    new-instance v1, Lcom/layar/adapters/ContactChooserAdapter;

    iget-object v2, p0, Lcom/layar/EmailContactChooserActivity$PickContactsTask;->this$0:Lcom/layar/EmailContactChooserActivity;

    .line 117
    iget-object v3, p0, Lcom/layar/EmailContactChooserActivity$PickContactsTask;->this$0:Lcom/layar/EmailContactChooserActivity;

    invoke-direct {v1, v2, p1, v3}, Lcom/layar/adapters/ContactChooserAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-static {v0, v1}, Lcom/layar/EmailContactChooserActivity;->access$1(Lcom/layar/EmailContactChooserActivity;Lcom/layar/adapters/ContactChooserAdapter;)V

    .line 119
    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity$PickContactsTask;->this$0:Lcom/layar/EmailContactChooserActivity;

    invoke-static {v0}, Lcom/layar/EmailContactChooserActivity;->access$2(Lcom/layar/EmailContactChooserActivity;)Lcom/layar/adapters/ContactChooserAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 120
    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity$PickContactsTask;->this$0:Lcom/layar/EmailContactChooserActivity;

    invoke-static {v0}, Lcom/layar/EmailContactChooserActivity;->access$3(Lcom/layar/EmailContactChooserActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/EmailContactChooserActivity$PickContactsTask;->this$0:Lcom/layar/EmailContactChooserActivity;

    invoke-static {v1}, Lcom/layar/EmailContactChooserActivity;->access$2(Lcom/layar/EmailContactChooserActivity;)Lcom/layar/adapters/ContactChooserAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    :goto_2
    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity$PickContactsTask;->progress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity$PickContactsTask;->this$0:Lcom/layar/EmailContactChooserActivity;

    invoke-virtual {v0}, Lcom/layar/EmailContactChooserActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity$PickContactsTask;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 111
    :cond_3
    const/4 v0, 0x0

    new-instance v1, Lcom/layar/reflect/EmailChooser$ContactInfo;

    invoke-direct {v1, v2, v2}, Lcom/layar/reflect/EmailChooser$ContactInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 123
    :cond_4
    invoke-static {}, Lcom/layar/EmailContactChooserActivity;->access$4()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adapter null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 89
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/layar/EmailContactChooserActivity$PickContactsTask;->this$0:Lcom/layar/EmailContactChooserActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/EmailContactChooserActivity$PickContactsTask;->progress:Landroid/app/ProgressDialog;

    .line 90
    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity$PickContactsTask;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 91
    return-void
.end method
