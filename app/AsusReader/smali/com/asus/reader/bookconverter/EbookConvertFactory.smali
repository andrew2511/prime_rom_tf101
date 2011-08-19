.class public Lcom/asus/reader/bookconverter/EbookConvertFactory;
.super Ljava/lang/Object;
.source "EbookConvertFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEbook(Ljava/lang/String;)Lcom/asus/reader/bookconverter/Ebook;
    .locals 4
    .parameter "bookPath"

    .prologue
    .line 7
    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".pdb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".updb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    :cond_0
    new-instance v0, Lcom/asus/reader/bookconverter/GoodReadPdbBook;

    invoke-direct {v0, p0}, Lcom/asus/reader/bookconverter/GoodReadPdbBook;-><init>(Ljava/lang/String;)V

    .line 11
    .local v0, goodReadPdbBook:Lcom/asus/reader/bookconverter/GoodReadPdbBook;
    invoke-virtual {v0}, Lcom/asus/reader/bookconverter/GoodReadPdbBook;->init()Z

    move-result v1

    .line 12
    .local v1, isGoodRead:Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move-object v2, v0

    .line 20
    .end local v0           #goodReadPdbBook:Lcom/asus/reader/bookconverter/GoodReadPdbBook;
    .end local v1           #isGoodRead:Z
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
