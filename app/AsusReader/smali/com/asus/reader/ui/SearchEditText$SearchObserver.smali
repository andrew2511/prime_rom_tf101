.class Lcom/asus/reader/ui/SearchEditText$SearchObserver;
.super Ljava/lang/Object;
.source "SearchEditText.java"

# interfaces
.implements Lcom/asus/reader/ui/SearchEditText$SearchResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/ui/SearchEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/ui/SearchEditText;


# direct methods
.method private constructor <init>(Lcom/asus/reader/ui/SearchEditText;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/asus/reader/ui/SearchEditText$SearchObserver;->this$0:Lcom/asus/reader/ui/SearchEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/reader/ui/SearchEditText;Lcom/asus/reader/ui/SearchEditText$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/asus/reader/ui/SearchEditText$SearchObserver;-><init>(Lcom/asus/reader/ui/SearchEditText;)V

    return-void
.end method


# virtual methods
.method public onGetNextResult(Ljava/util/HashMap;I)V
    .locals 3
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    const-string v1, "find"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    :cond_0
    const-string v1, "SearchEditText"

    const-string v2, "Get a null value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/asus/reader/ui/SearchEditText$SearchObserver;->this$0:Lcom/asus/reader/ui/SearchEditText;

    invoke-static {v1}, Lcom/asus/reader/ui/SearchEditText;->access$1100(Lcom/asus/reader/ui/SearchEditText;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 318
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 319
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
