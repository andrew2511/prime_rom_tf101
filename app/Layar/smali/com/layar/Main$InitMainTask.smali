.class Lcom/layar/Main$InitMainTask;
.super Landroid/os/AsyncTask;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitMainTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/Main;


# direct methods
.method private constructor <init>(Lcom/layar/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/layar/Main$InitMainTask;->this$0:Lcom/layar/Main;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/Main;Lcom/layar/Main$InitMainTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/layar/Main$InitMainTask;-><init>(Lcom/layar/Main;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "params"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/layar/Main$InitMainTask;->this$0:Lcom/layar/Main;

    invoke-static {v0}, Lcom/layar/App;->clearRestorePoints(Landroid/content/Context;)V

    .line 279
    iget-object v0, p0, Lcom/layar/Main$InitMainTask;->this$0:Lcom/layar/Main;

    iget-object v1, p0, Lcom/layar/Main$InitMainTask;->this$0:Lcom/layar/Main;

    invoke-virtual {v1}, Lcom/layar/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/data/layer/LayerManager;->getLayerManager(Landroid/content/Context;)Lcom/layar/data/layer/LayerManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layar/Main;->access$0(Lcom/layar/Main;Lcom/layar/data/layer/LayerManager;)V

    .line 280
    iget-object v0, p0, Lcom/layar/Main$InitMainTask;->this$0:Lcom/layar/Main;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/Main$InitMainTask;->doInBackground([Ljava/lang/Void;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/content/SharedPreferences;)V
    .locals 7
    .parameter "prefs"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 285
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 288
    const-string v2, "welcome.sequence.last"

    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 289
    .local v1, lastWelcomeSequence:I
    iget-object v2, p0, Lcom/layar/Main$InitMainTask;->this$0:Lcom/layar/Main;

    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    move v3, v6

    :goto_0
    invoke-static {v2, v3}, Lcom/layar/Main;->access$1(Lcom/layar/Main;Z)V

    .line 291
    const-string v2, "PREFS_TERMS_31_ACCEPTED"

    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 292
    .local v0, isTermsAccepted:Z
    if-eqz v0, :cond_1

    .line 293
    iget-object v2, p0, Lcom/layar/Main$InitMainTask;->this$0:Lcom/layar/Main;

    invoke-static {v2}, Lcom/layar/Main;->access$2(Lcom/layar/Main;)V

    .line 298
    :goto_1
    return-void

    .end local v0           #isTermsAccepted:Z
    :cond_0
    move v3, v5

    .line 289
    goto :goto_0

    .line 295
    .restart local v0       #isTermsAccepted:Z
    :cond_1
    iget-object v2, p0, Lcom/layar/Main$InitMainTask;->this$0:Lcom/layar/Main;

    const v3, 0x7f0900f1

    invoke-virtual {v2, v3}, Lcom/layar/Main;->updateMessageText(I)V

    .line 296
    new-instance v2, Lcom/layar/Main$TermsLoader;

    iget-object v3, p0, Lcom/layar/Main$InitMainTask;->this$0:Lcom/layar/Main;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/layar/Main$TermsLoader;-><init>(Lcom/layar/Main;Lcom/layar/Main$TermsLoader;)V

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "/resources/documents/terms-4.0/"

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/layar/Main$TermsLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1}, Lcom/layar/Main$InitMainTask;->onPostExecute(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/layar/Main$InitMainTask;->this$0:Lcom/layar/Main;

    const v1, 0x7f0900eb

    invoke-virtual {v0, v1}, Lcom/layar/Main;->updateMessageText(I)V

    .line 273
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 274
    return-void
.end method
