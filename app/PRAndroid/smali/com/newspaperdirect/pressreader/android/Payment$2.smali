.class Lcom/newspaperdirect/pressreader/android/Payment$2;
.super Landroid/os/AsyncTask;
.source "Payment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Payment;->register(Landroid/os/Bundle;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/Payment;

.field private final synthetic val$extra:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Payment;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Payment$2;->this$0:Lcom/newspaperdirect/pressreader/android/Payment;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/Payment$2;->val$extra:Landroid/os/Bundle;

    .line 151
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/Payment$2;)Lcom/newspaperdirect/pressreader/android/Payment;
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Payment$2;->this$0:Lcom/newspaperdirect/pressreader/android/Payment;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/Payment$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 154
    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-direct {v4}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>()V

    .line 155
    .local v4, status:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/String;>;"
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    const-string v5, "register-account"

    invoke-direct {v2, v5}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;-><init>(Ljava/lang/String;)V

    .line 156
    .local v2, helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    invoke-virtual {v2, v9}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->setAppendAuthInfo(Z)Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    .line 157
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 158
    .local v0, body:Ljava/lang/StringBuffer;
    const-string v5, "<authentication>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/Payment$2;->val$extra:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<client-number>"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getClientNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</client-number>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<activation-number>"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActive()Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v6

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActivationNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</activation-number>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    const-string v5, "</authentication>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->setRequestBody(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    .line 166
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getResponseElement()Landroid/sax/Element;

    move-result-object v5

    const-string v6, "status"

    invoke-virtual {v5, v6}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    new-instance v6, Lcom/newspaperdirect/pressreader/android/Payment$2$1;

    invoke-direct {v6, p0, v4}, Lcom/newspaperdirect/pressreader/android/Payment$2$1;-><init>(Lcom/newspaperdirect/pressreader/android/Payment$2;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v5, v6}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 172
    :try_start_0
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    iget-object p0, v4, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v5, p0

    :goto_1
    return-object v5

    .line 159
    .restart local p0
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 160
    .local v3, key:Ljava/lang/String;
    const-string v6, "<%1$s>%2$s</%1$s>"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v9

    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/Payment$2;->val$extra:Landroid/os/Bundle;

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 173
    .end local v3           #key:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 174
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/Payment$2;->this$0:Lcom/newspaperdirect/pressreader/android/Payment;

    invoke-virtual {v5, v10}, Lcom/newspaperdirect/pressreader/android/Payment;->dismissDialog(I)V

    .line 176
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/Payment$2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 182
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/Payment$2;->this$0:Lcom/newspaperdirect/pressreader/android/Payment;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/Payment;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "OK: N/A"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/Payment$2;->this$0:Lcom/newspaperdirect/pressreader/android/Payment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/Payment;->dismissDialog(I)V

    .line 185
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/Payment$2;->this$0:Lcom/newspaperdirect/pressreader/android/Payment;

    invoke-static {v1, p1}, Lcom/newspaperdirect/pressreader/android/Payment;->access$1(Lcom/newspaperdirect/pressreader/android/Payment;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_1
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/Payment$2;->this$0:Lcom/newspaperdirect/pressreader/android/Payment;

    invoke-direct {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;-><init>(Landroid/app/Activity;)V

    .line 190
    new-instance v2, Lcom/newspaperdirect/pressreader/android/Payment$2$2;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/Payment$2$2;-><init>(Lcom/newspaperdirect/pressreader/android/Payment$2;)V

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->setAuthorization(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$OnAuthorization;)Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    move-result-object v0

    .line 195
    .local v0, checker:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;
    new-instance v1, Lcom/newspaperdirect/pressreader/android/Payment$2$3;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/Payment$2$3;-><init>(Lcom/newspaperdirect/pressreader/android/Payment$2;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->setNegativeResult(Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnNegativeResult;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    .line 200
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/Payment$2;->val$extra:Landroid/os/Bundle;

    const-string v2, "user-name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/Payment$2;->val$extra:Landroid/os/Bundle;

    const-string v3, "user-password"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getSystemModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
