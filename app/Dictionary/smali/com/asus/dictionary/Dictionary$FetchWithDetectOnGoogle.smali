.class Lcom/asus/dictionary/Dictionary$FetchWithDetectOnGoogle;
.super Ljava/lang/Object;
.source "Dictionary.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dictionary/Dictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FetchWithDetectOnGoogle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field data:Ljava/lang/String;

.field final synthetic this$0:Lcom/asus/dictionary/Dictionary;

.field wordLookup:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/asus/dictionary/Dictionary;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "wordLookup"
    .parameter "data"

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/asus/dictionary/Dictionary$FetchWithDetectOnGoogle;->this$0:Lcom/asus/dictionary/Dictionary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1385
    iput-object p3, p0, Lcom/asus/dictionary/Dictionary$FetchWithDetectOnGoogle;->data:Ljava/lang/String;

    .line 1386
    iput-object p2, p0, Lcom/asus/dictionary/Dictionary$FetchWithDetectOnGoogle;->wordLookup:Ljava/lang/String;

    .line 1387
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
    .line 1379
    invoke-virtual {p0}, Lcom/asus/dictionary/Dictionary$FetchWithDetectOnGoogle;->call()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1390
    iget-object v3, p0, Lcom/asus/dictionary/Dictionary$FetchWithDetectOnGoogle;->this$0:Lcom/asus/dictionary/Dictionary;

    iget-object v4, p0, Lcom/asus/dictionary/Dictionary$FetchWithDetectOnGoogle;->data:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/asus/dictionary/Dictionary;->access$1600(Lcom/asus/dictionary/Dictionary;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1391
    .local v2, wordLanguage:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 1396
    :goto_0
    return-object v3

    .line 1392
    :cond_1
    iget-object v3, p0, Lcom/asus/dictionary/Dictionary$FetchWithDetectOnGoogle;->this$0:Lcom/asus/dictionary/Dictionary;

    iget-object v4, p0, Lcom/asus/dictionary/Dictionary$FetchWithDetectOnGoogle;->wordLookup:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/asus/dictionary/Dictionary;->dicUrlGenerator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1393
    .local v0, dicUrl:Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1394
    .local v1, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "url"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    const-string v3, "outcome"

    iget-object v4, p0, Lcom/asus/dictionary/Dictionary$FetchWithDetectOnGoogle;->this$0:Lcom/asus/dictionary/Dictionary;

    invoke-static {v4, v0}, Lcom/asus/dictionary/Dictionary;->access$1500(Lcom/asus/dictionary/Dictionary;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    .line 1396
    goto :goto_0
.end method
