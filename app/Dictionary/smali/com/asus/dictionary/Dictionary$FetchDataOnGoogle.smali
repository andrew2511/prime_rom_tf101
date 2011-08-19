.class Lcom/asus/dictionary/Dictionary$FetchDataOnGoogle;
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
    name = "FetchDataOnGoogle"
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
.field final synthetic this$0:Lcom/asus/dictionary/Dictionary;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/asus/dictionary/Dictionary;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "dicUrl"

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/asus/dictionary/Dictionary$FetchDataOnGoogle;->this$0:Lcom/asus/dictionary/Dictionary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1368
    iput-object p2, p0, Lcom/asus/dictionary/Dictionary$FetchDataOnGoogle;->url:Ljava/lang/String;

    .line 1369
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
    .line 1363
    invoke-virtual {p0}, Lcom/asus/dictionary/Dictionary$FetchDataOnGoogle;->call()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/HashMap;
    .locals 4
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
    .line 1372
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1373
    .local v0, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "url"

    iget-object v2, p0, Lcom/asus/dictionary/Dictionary$FetchDataOnGoogle;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    const-string v1, "outcome"

    iget-object v2, p0, Lcom/asus/dictionary/Dictionary$FetchDataOnGoogle;->this$0:Lcom/asus/dictionary/Dictionary;

    iget-object v3, p0, Lcom/asus/dictionary/Dictionary$FetchDataOnGoogle;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/asus/dictionary/Dictionary;->access$1500(Lcom/asus/dictionary/Dictionary;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    return-object v0
.end method
