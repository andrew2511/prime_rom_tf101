.class Lcom/amazon/topaz/internal/book/PageParser$ParaContBehavior;
.super Ljava/lang/Object;
.source "PageParser.java"

# interfaces
.implements Lcom/amazon/topaz/internal/book/PageParser$ContinuationBehavior;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/book/PageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParaContBehavior"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/topaz/internal/book/PageParser;


# direct methods
.method private constructor <init>(Lcom/amazon/topaz/internal/book/PageParser;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/PageParser$ParaContBehavior;->this$0:Lcom/amazon/topaz/internal/book/PageParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/topaz/internal/book/PageParser;Lcom/amazon/topaz/internal/book/PageParser$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/amazon/topaz/internal/book/PageParser$ParaContBehavior;-><init>(Lcom/amazon/topaz/internal/book/PageParser;)V

    return-void
.end method


# virtual methods
.method public getObject(I)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/PageParser$ParaContBehavior;->this$0:Lcom/amazon/topaz/internal/book/PageParser;

    invoke-static {v0}, Lcom/amazon/topaz/internal/book/PageParser;->access$100(Lcom/amazon/topaz/internal/book/PageParser;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    .line 94
    if-nez v0, :cond_0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/topaz/internal/book/PageParser$ParaContBehavior;->this$0:Lcom/amazon/topaz/internal/book/PageParser;

    invoke-static {v2}, Lcom/amazon/topaz/internal/book/PageParser;->access$200(Lcom/amazon/topaz/internal/book/PageParser;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    :cond_0
    return-object v0
.end method

.method public setContinued(Ljava/lang/Object;III)V
    .locals 2
    .parameter "root"
    .parameter "localTableRow"
    .parameter "stemPage"
    .parameter "stemID"

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 105
    check-cast p1, Lcom/amazon/topaz/internal/book/Container$Builder;

    .end local p1
    new-instance v0, Lcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;

    iget-object v1, p0, Lcom/amazon/topaz/internal/book/PageParser$ParaContBehavior;->this$0:Lcom/amazon/topaz/internal/book/PageParser;

    invoke-direct {v0, v1, p3, p4}, Lcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;-><init>(Lcom/amazon/topaz/internal/book/PageParser;II)V

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/internal/book/Container$Builder;->setStemProvider(Lcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;)V

    .line 107
    :cond_0
    return-void
.end method

.method public setIsContinuation(Ljava/lang/Object;)V
    .locals 1
    .parameter "stem"

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 113
    check-cast p1, Lcom/amazon/topaz/internal/book/Container$Builder;

    .end local p1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/internal/book/Container$Builder;->setIsContinuation(Z)V

    .line 115
    :cond_0
    return-void
.end method
