.class Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;
.super Ljava/lang/Object;
.source "PageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/book/PageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WordStemProvider"
.end annotation


# instance fields
.field private final shWidth:I

.field private final stemID:I

.field private final stemPageNum:I

.field final synthetic this$0:Lcom/amazon/topaz/internal/book/PageParser;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/book/PageParser;III)V
    .locals 0
    .parameter
    .parameter "stemPageNum"
    .parameter "stemID"
    .parameter "shWidth"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;->this$0:Lcom/amazon/topaz/internal/book/PageParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p2, p0, Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;->stemPageNum:I

    .line 39
    iput p3, p0, Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;->stemID:I

    .line 40
    iput p4, p0, Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;->shWidth:I

    .line 41
    return-void
.end method


# virtual methods
.method public getShWidth()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;->shWidth:I

    return v0
.end method

.method public getStem()Lcom/amazon/topaz/internal/book/Word;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;->this$0:Lcom/amazon/topaz/internal/book/PageParser;

    invoke-static {v0}, Lcom/amazon/topaz/internal/book/PageParser;->access$000(Lcom/amazon/topaz/internal/book/PageParser;)Lcom/amazon/topaz/TPZBook;

    move-result-object v0

    iget v1, p0, Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;->stemPageNum:I

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/TPZBook;->getPage(I)Lcom/amazon/topaz/internal/book/Page;

    move-result-object v0

    iget v1, p0, Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;->stemID:I

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/book/Page;->getDrawableForRow(I)Lcom/amazon/topaz/internal/book/Drawable;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/topaz/internal/book/Word;

    return-object p0
.end method
