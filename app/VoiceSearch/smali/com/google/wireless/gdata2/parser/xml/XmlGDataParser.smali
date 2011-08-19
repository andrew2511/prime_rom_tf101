.class public Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;
.super Ljava/lang/Object;
.source "XmlGDataParser.java"

# interfaces
.implements Lcom/google/wireless/gdata2/parser/GDataParser;


# static fields
.field public static final NAMESPACE_ATOM_URI:Ljava/lang/String; = "http://www.w3.org/2005/Atom"

.field public static final NAMESPACE_BATCH:Ljava/lang/String; = "batch"

.field public static final NAMESPACE_BATCH_URI:Ljava/lang/String; = "http://schemas.google.com/gdata/batch"

.field public static final NAMESPACE_GD:Ljava/lang/String; = "gd"

.field public static final NAMESPACE_GD_URI:Ljava/lang/String; = "http://schemas.google.com/g/2005"

.field public static final NAMESPACE_OPENSEARCH_URI:Ljava/lang/String; = "http://a9.com/-/spec/opensearch/1.1/"


# instance fields
.field private fields:Ljava/lang/String;

.field private final is:Ljava/io/InputStream;

.field private isInBadState:Z

.field private final parser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    .line 64
    iput-object p2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 66
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A XmlGDataParser needs to be constructed with a namespace aware XmlPullParser"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->isInBadState:Z

    .line 73
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_1
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not create XmlGDataParser"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 705
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 709
    invoke-static {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private handleAuthor(Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 639
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 641
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->AUTHOR:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 644
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected <author>: Actual element: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 650
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 651
    packed-switch v0, :pswitch_data_0

    .line 671
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 653
    :pswitch_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 654
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 655
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setAuthor(Ljava/lang/String;)V

    goto :goto_1

    .line 657
    :cond_3
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->EMAIL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 658
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 659
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setEmail(Ljava/lang/String;)V

    goto :goto_1

    .line 663
    :pswitch_1
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 664
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->AUTHOR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 673
    :cond_4
    return-void

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleBatchInfo(Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 677
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 678
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->STATUS:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    new-instance v0, Lcom/google/wireless/gdata2/data/batch/BatchStatus;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/data/batch/BatchStatus;-><init>()V

    .line 680
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->setBatchStatus(Lcom/google/wireless/gdata2/data/Entry;Lcom/google/wireless/gdata2/data/batch/BatchStatus;)V

    .line 681
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CODE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/batch/BatchStatus;->setStatusCode(I)V

    .line 682
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->REASON:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/batch/BatchStatus;->setReason(Ljava/lang/String;)V

    .line 683
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CONTENT_TYPE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/batch/BatchStatus;->setContentType(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->skipSubTree()V

    .line 702
    :goto_0
    return-void

    .line 686
    :cond_0
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 687
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->setBatchId(Lcom/google/wireless/gdata2/data/Entry;Ljava/lang/String;)V

    goto :goto_0

    .line 688
    :cond_1
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->OPERATION:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 689
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TYPE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->setBatchOperation(Lcom/google/wireless/gdata2/data/Entry;Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :cond_2
    const-string v1, "interrupted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 691
    new-instance v0, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;-><init>()V

    .line 692
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->setBatchInterrupted(Lcom/google/wireless/gdata2/data/Entry;Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;)V

    .line 693
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->REASON:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->setReason(Ljava/lang/String;)V

    .line 694
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ERROR:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->setErrorCount(I)V

    .line 695
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SUCCESS:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->setSuccessCount(I)V

    .line 696
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARSED:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->setTotalCount(I)V

    .line 698
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->skipSubTree()V

    goto :goto_0

    .line 700
    :cond_3
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected batch element "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final parseFeed()Lcom/google/wireless/gdata2/data/Feed;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 218
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->createFeed()Lcom/google/wireless/gdata2/data/Feed;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "http://schemas.google.com/g/2005"

    sget-object v3, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ETAG:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/Feed;->setETag(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 223
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    .line 224
    packed-switch v1, :pswitch_data_0

    .line 268
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 226
    :pswitch_0
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 227
    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 229
    const-string v3, "http://a9.com/-/spec/opensearch/1.1/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 230
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TOTAL_RESULTS:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/google/wireless/gdata2/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/Feed;->setTotalResults(I)V

    goto :goto_1

    .line 233
    :cond_1
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->START_INDEX:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/google/wireless/gdata2/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/Feed;->setStartIndex(I)V

    goto :goto_1

    .line 236
    :cond_2
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ITEMS_PER_PAGE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/google/wireless/gdata2/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/Feed;->setItemsPerPage(I)V

    goto :goto_1

    .line 240
    :cond_3
    const-string v3, "http://www.w3.org/2005/Atom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 241
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TITLE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 242
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/Feed;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 243
    :cond_4
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 244
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/Feed;->setId(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 245
    :cond_5
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UPDATED:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 246
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/Feed;->setLastUpdated(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 247
    :cond_6
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CATEGORY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 248
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TERM:Ljava/lang/String;

    invoke-interface {v1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 251
    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/Feed;->setCategory(Ljava/lang/String;)V

    .line 253
    :cond_7
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SCHEME:Ljava/lang/String;

    invoke-interface {v1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/data/Feed;->setCategoryScheme(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 258
    :cond_8
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    :cond_9
    return-object v0

    .line 263
    :cond_a
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleExtraElementInFeed(Lcom/google/wireless/gdata2/data/Feed;)V

    goto/16 :goto_1

    .line 224
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private final parsePartialFeed()Lcom/google/wireless/gdata2/data/Feed;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 183
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FIELDS:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->fields:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 186
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 187
    packed-switch v0, :pswitch_data_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 189
    :pswitch_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .line 192
    const-string v2, "http://www.w3.org/2005/Atom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FEED:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parseFeed()Lcom/google/wireless/gdata2/data/Feed;

    move-result-object v0

    .line 203
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v3

    goto :goto_1

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 719
    :try_start_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 720
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected createEntry()Lcom/google/wireless/gdata2/data/Entry;
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/google/wireless/gdata2/data/Entry;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/data/Entry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata2/data/Feed;
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/google/wireless/gdata2/data/Feed;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/data/Feed;-><init>()V

    return-object v0
.end method

.method protected final getParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    return-object v0
.end method

.method protected handleDefaultEntryElements(Lcom/google/wireless/gdata2/data/Entry;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 751
    const/4 v0, 0x0

    return v0
.end method

.method protected handleEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 544
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected <entry>: Actual element: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://schemas.google.com/g/2005"

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ETAG:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setETag(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->fields:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setFields(Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 555
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 556
    :goto_0
    if-eq v0, v5, :cond_11

    .line 557
    packed-switch v0, :pswitch_data_0

    .line 630
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 559
    :pswitch_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 560
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 633
    :goto_2
    return-void

    .line 566
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleDefaultEntryElements(Lcom/google/wireless/gdata2/data/Entry;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 570
    const-string v1, "http://schemas.google.com/gdata/batch"

    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 573
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleBatchInfo(Lcom/google/wireless/gdata2/data/Entry;)V

    goto :goto_1

    .line 574
    :cond_3
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 575
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setId(Ljava/lang/String;)V

    goto :goto_1

    .line 576
    :cond_4
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TITLE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 577
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 578
    :cond_5
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->LINK:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 579
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->REL:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TYPE:Ljava/lang/String;

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 583
    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v3, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 585
    sget-object v3, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->EDIT_REL:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 586
    invoke-virtual {p1, v2}, Lcom/google/wireless/gdata2/data/Entry;->setEditUri(Ljava/lang/String;)V

    goto :goto_1

    .line 587
    :cond_6
    sget-object v3, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ALTERNATE_REL:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TEXTHTML:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 589
    invoke-virtual {p1, v2}, Lcom/google/wireless/gdata2/data/Entry;->setHtmlUri(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 591
    :cond_7
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)V

    goto/16 :goto_1

    .line 596
    :cond_8
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SUMMARY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 597
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 598
    :cond_9
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CONTENT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 599
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TYPE:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setContentType(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SRC:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setContentSource(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setContent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 602
    :cond_a
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->AUTHOR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 603
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleAuthor(Lcom/google/wireless/gdata2/data/Entry;)V

    goto/16 :goto_1

    .line 604
    :cond_b
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CATEGORY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 605
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TERM:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 607
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c

    .line 608
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setCategory(Ljava/lang/String;)V

    .line 610
    :cond_c
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SCHEME:Ljava/lang/String;

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 612
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 613
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/data/Entry;->setCategoryScheme(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 615
    :cond_d
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PUBLISHED:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 616
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setPublicationDate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 618
    :cond_e
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UPDATED:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 619
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setUpdateDate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 620
    :cond_f
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->DELETED:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 621
    invoke-virtual {p1, v5}, Lcom/google/wireless/gdata2/data/Entry;->setDeleted(Z)V

    goto/16 :goto_1

    .line 623
    :cond_10
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleExtraElementInEntry(Lcom/google/wireless/gdata2/data/Entry;)V

    goto/16 :goto_1

    .line 632
    :cond_11
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->validate()V

    goto/16 :goto_2

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 737
    return-void
.end method

.method protected handleExtraElementInFeed(Lcom/google/wireless/gdata2/data/Feed;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    return-void
.end method

.method protected handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 769
    return-void
.end method

.method protected handlePartialEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 504
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARTIAL:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected <partial>: Actual element: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FIELDS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->fields:Ljava/lang/String;

    .line 512
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 514
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 515
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 516
    packed-switch v0, :pswitch_data_0

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 518
    :pswitch_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 519
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata2/data/Entry;)V

    .line 528
    :cond_2
    return-void

    .line 516
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public hasMoreData()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 291
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->isInBadState:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 298
    :goto_0
    return v0

    .line 295
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 296
    if-eq v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    move v0, v1

    .line 298
    goto :goto_0
.end method

.method public final parseFeedEnvelope()Lcom/google/wireless/gdata2/data/Feed;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->fields:Ljava/lang/String;

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v1, "Attempting to initialize parsing beyond the start of the document."

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not parse GData feed."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 100
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 106
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 107
    packed-switch v0, :pswitch_data_0

    .line 136
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    move-result v0

    goto :goto_0

    .line 101
    :catch_1
    move-exception v0

    .line 102
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 103
    :catch_2
    move-exception v0

    .line 104
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 109
    :pswitch_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 110
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARTIAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    :try_start_3
    invoke-direct {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parsePartialFeed()Lcom/google/wireless/gdata2/data/Feed;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    .line 120
    :goto_1
    return-object v0

    .line 113
    :catch_3
    move-exception v0

    .line 114
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Unable to parse <partial> feed start"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 115
    :catch_4
    move-exception v0

    .line 116
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Unable to parse <partial> feed start"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 118
    :cond_2
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FEED:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :try_start_4
    invoke-direct {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parseFeed()Lcom/google/wireless/gdata2/data/Feed;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v0

    goto :goto_1

    .line 121
    :catch_5
    move-exception v0

    .line 122
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Unable to parse <feed>."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 124
    :catch_6
    move-exception v0

    .line 125
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Unable to parse <feed>."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 137
    :catch_7
    move-exception v0

    .line 138
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 139
    :catch_8
    move-exception v0

    .line 140
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 143
    :cond_3
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v1, "No <feed> found in document."

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public parseStandaloneEntry()Lcom/google/wireless/gdata2/data/Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->fields:Ljava/lang/String;

    .line 376
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->createEntry()Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v0

    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 384
    if-eqz v1, :cond_0

    .line 385
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v1, "Attempting to initialize parsing beyond the start of the document."

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not parse GData entry."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 390
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    .line 396
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 397
    packed-switch v1, :pswitch_data_0

    .line 430
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_7

    move-result v1

    goto :goto_0

    .line 391
    :catch_1
    move-exception v0

    .line 392
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 393
    :catch_2
    move-exception v0

    .line 394
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 399
    :pswitch_0
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 400
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARTIAL:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 402
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handlePartialEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 414
    :goto_1
    return-object v0

    .line 404
    :catch_3
    move-exception v0

    .line 405
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Unable to parse <partial> entry."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 407
    :catch_4
    move-exception v0

    .line 408
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Unable to parse <partial> entry."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 411
    :cond_2
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 413
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_1

    .line 415
    :catch_5
    move-exception v0

    .line 416
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Unable to parse <entry>."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 418
    :catch_6
    move-exception v0

    .line 419
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Unable to parse <entry>."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 431
    :catch_7
    move-exception v0

    .line 432
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 435
    :cond_3
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v1, "No <entry> found in document."

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public readNextEntry(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 307
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you shouldn\'t call this if hasMoreData() is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 318
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 319
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected event START_TAG: Actual event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not parse entry."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 327
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARTIAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 329
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected <entry> or <partial>: Actual element: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 333
    :cond_2
    if-nez p1, :cond_3

    .line 334
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->createEntry()Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v1

    .line 340
    :goto_0
    :try_start_1
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 341
    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    :try_end_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    .line 364
    :goto_1
    return-object v1

    .line 336
    :cond_3
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->clear()V

    move-object v1, p1

    goto :goto_0

    .line 343
    :cond_4
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handlePartialEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    :try_end_2
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 345
    :catch_1
    move-exception v0

    .line 347
    :try_start_3
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->skipToNextEntry()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2

    .line 353
    :cond_5
    :goto_2
    new-instance v2, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse <entry>, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 348
    :catch_2
    move-exception v2

    .line 351
    iput-boolean v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->isInBadState:Z

    goto :goto_2

    .line 354
    :catch_3
    move-exception v0

    .line 356
    :try_start_4
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->skipToNextEntry()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4

    .line 362
    :cond_6
    :goto_3
    new-instance v2, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse <entry>, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 357
    :catch_4
    move-exception v2

    .line 360
    iput-boolean v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->isInBadState:Z

    goto :goto_3
.end method

.method protected skipSubTree()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    const/4 v0, 0x1

    .line 475
    :goto_0
    if-lez v0, :cond_0

    .line 476
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 477
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 479
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 480
    goto :goto_0

    .line 482
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 483
    goto :goto_0

    .line 488
    :cond_0
    return-void

    .line 477
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected skipToNextEntry()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you shouldn\'t call this if hasMoreData() is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 452
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 453
    packed-switch v0, :pswitch_data_0

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 455
    :pswitch_0
    sget-object v0, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    :cond_2
    return-void

    .line 453
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
