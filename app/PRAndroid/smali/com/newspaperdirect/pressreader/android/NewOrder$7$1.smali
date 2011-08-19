.class Lcom/newspaperdirect/pressreader/android/NewOrder$7$1;
.super Landroid/os/AsyncTask;
.source "NewOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/NewOrder$7;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$7;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/NewOrder$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$7$1;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$7;

    .line 184
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/NewOrder$7$1;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    .line 187
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 188
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$7$1;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$7;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/NewOrder$7;->access$0(Lcom/newspaperdirect/pressreader/android/NewOrder$7;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v3

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v3

    iget-object v3, v3, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->cid:Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspaperDbAdapter;->updateFavorite(Ljava/lang/String;Z)Z

    .line 190
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<CID>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$7$1;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$7;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/NewOrder$7;->access$0(Lcom/newspaperdirect/pressreader/android/NewOrder$7;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v4

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v4

    iget-object v4, v4, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->cid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</CID>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 191
    const-string v4, "<add-favorites>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "1"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</add-favorites>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 190
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, request:Ljava/lang/String;
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    const-string v3, "manage-favorites"

    invoke-direct {v1, v3}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;-><init>(Ljava/lang/String;)V

    .line 193
    .local v1, helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->setRequestBody(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    .line 194
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getResponseElement()Landroid/sax/Element;

    move-result-object v3

    const-string v4, "cid"

    invoke-virtual {v3, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    new-instance v4, Lcom/newspaperdirect/pressreader/android/NewOrder$7$1$1;

    invoke-direct {v4, p0}, Lcom/newspaperdirect/pressreader/android/NewOrder$7$1$1;-><init>(Lcom/newspaperdirect/pressreader/android/NewOrder$7$1;)V

    invoke-virtual {v3, v4}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 199
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest()V

    .line 205
    .end local v1           #helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    .end local v2           #request:Ljava/lang/String;
    :goto_1
    const/4 v3, 0x0

    return-object v3

    .line 191
    :cond_1
    const-string v4, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 203
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
