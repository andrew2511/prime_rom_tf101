.class Lcom/asus/reader/book/BookViewActivity$translateOnGoogle;
.super Ljava/lang/Object;
.source "BookViewActivity.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/BookViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "translateOnGoogle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field selectionText:Ljava/lang/String;

.field targetLang:Lcom/google/api/translate/Language;

.field final synthetic this$0:Lcom/asus/reader/book/BookViewActivity;


# direct methods
.method public constructor <init>(Lcom/asus/reader/book/BookViewActivity;Ljava/lang/String;Lcom/google/api/translate/Language;)V
    .locals 0
    .parameter
    .parameter "selection_text"
    .parameter "target_lang"

    .prologue
    .line 2262
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$translateOnGoogle;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2263
    iput-object p2, p0, Lcom/asus/reader/book/BookViewActivity$translateOnGoogle;->selectionText:Ljava/lang/String;

    .line 2264
    iput-object p3, p0, Lcom/asus/reader/book/BookViewActivity$translateOnGoogle;->targetLang:Lcom/google/api/translate/Language;

    .line 2265
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2258
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity$translateOnGoogle;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2268
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 2270
    .local v1, result:Ljava/lang/String;
    :try_start_0
    const-string v2, "http://www.asus.com/"

    invoke-static {v2}, Lcom/google/api/translate/Translate;->setHttpReferrer(Ljava/lang/String;)V

    .line 2271
    const-string v2, "BookViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Translation from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/google/api/translate/Language;->ENGLISH:Lcom/google/api/translate/Language;

    invoke-virtual {v4}, Lcom/google/api/translate/Language;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$translateOnGoogle;->targetLang:Lcom/google/api/translate/Language;

    invoke-virtual {v4}, Lcom/google/api/translate/Language;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$translateOnGoogle;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$6800(Lcom/asus/reader/book/BookViewActivity;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/api/translate/Language;->AUTO_DETECT:Lcom/google/api/translate/Language;

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$translateOnGoogle;->targetLang:Lcom/google/api/translate/Language;

    invoke-static {v2, v3, v4}, Lcom/google/api/translate/Translate;->execute(Ljava/lang/String;Lcom/google/api/translate/Language;Lcom/google/api/translate/Language;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2277
    :goto_0
    return-object v1

    .line 2273
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2274
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2275
    const-string v2, "BookViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error to translate! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
