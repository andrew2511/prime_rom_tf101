.class Lcom/amazon/topaz/internal/book/PageParser$DehyphenBehavior;
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
    name = "DehyphenBehavior"
.end annotation


# instance fields
.field private final dehyphenTable:Lcom/amazon/topaz/internal/binxml/Table;

.field final synthetic this$0:Lcom/amazon/topaz/internal/book/PageParser;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/book/PageParser;Lcom/amazon/topaz/internal/binxml/Table;)V
    .locals 0
    .parameter
    .parameter "dehyphenTable"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/PageParser$DehyphenBehavior;->this$0:Lcom/amazon/topaz/internal/book/PageParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p2, p0, Lcom/amazon/topaz/internal/book/PageParser$DehyphenBehavior;->dehyphenTable:Lcom/amazon/topaz/internal/binxml/Table;

    .line 128
    return-void
.end method


# virtual methods
.method public getObject(I)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/PageParser$DehyphenBehavior;->this$0:Lcom/amazon/topaz/internal/book/PageParser;

    invoke-static {v0}, Lcom/amazon/topaz/internal/book/PageParser;->access$300(Lcom/amazon/topaz/internal/book/PageParser;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    .line 133
    if-nez v0, :cond_0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get word "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/topaz/internal/book/PageParser$DehyphenBehavior;->this$0:Lcom/amazon/topaz/internal/book/PageParser;

    invoke-static {v2}, Lcom/amazon/topaz/internal/book/PageParser;->access$200(Lcom/amazon/topaz/internal/book/PageParser;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    :cond_0
    return-object v0
.end method

.method public setContinued(Ljava/lang/Object;III)V
    .locals 5
    .parameter "root"
    .parameter "localTableRow"
    .parameter "stemPageNum"
    .parameter "stemID"

    .prologue
    .line 142
    move-object v0, p1

    check-cast v0, Lcom/amazon/topaz/internal/book/Word$Builder;

    move-object v2, v0

    .line 143
    .local v2, wb:Lcom/amazon/topaz/internal/book/Word$Builder;
    iget-object v3, p0, Lcom/amazon/topaz/internal/book/PageParser$DehyphenBehavior;->dehyphenTable:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v4, p0, Lcom/amazon/topaz/internal/book/PageParser$DehyphenBehavior;->this$0:Lcom/amazon/topaz/internal/book/PageParser;

    invoke-static {v4}, Lcom/amazon/topaz/internal/book/PageParser;->access$000(Lcom/amazon/topaz/internal/book/PageParser;)Lcom/amazon/topaz/TPZBook;

    move-result-object v4

    iget-object v4, v4, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    iget-object v4, v4, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_SH:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v3, p2, v4}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v1

    .line 145
    .local v1, shWidth:I
    new-instance v3, Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;

    iget-object v4, p0, Lcom/amazon/topaz/internal/book/PageParser$DehyphenBehavior;->this$0:Lcom/amazon/topaz/internal/book/PageParser;

    invoke-direct {v3, v4, p3, p4, v1}, Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;-><init>(Lcom/amazon/topaz/internal/book/PageParser;III)V

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/book/Word$Builder;->setStemProvider(Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;)V

    .line 146
    return-void
.end method

.method public setIsContinuation(Ljava/lang/Object;)V
    .locals 1
    .parameter "stem"

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 152
    check-cast p1, Lcom/amazon/topaz/internal/book/Word$Builder;

    .end local p1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/internal/book/Word$Builder;->setForeign(Z)V

    .line 154
    :cond_0
    return-void
.end method
