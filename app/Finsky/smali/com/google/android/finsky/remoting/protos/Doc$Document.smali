.class public final Lcom/google/android/finsky/remoting/protos/Doc$Document;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Document"
.end annotation


# instance fields
.field private aggregateRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

.field private availability_:Lcom/google/android/finsky/remoting/protos/Doc$Availability;

.field private cachedSize:I

.field private child_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Document;",
            ">;"
        }
    .end annotation
.end field

.field private docid_:Lcom/google/android/finsky/remoting/protos/Doc$Docid;

.field private fetchDocid_:Lcom/google/android/finsky/remoting/protos/Doc$Docid;

.field private fullPriceDeprecated_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

.field private hasAggregateRating:Z

.field private hasAvailability:Z

.field private hasDocid:Z

.field private hasFetchDocid:Z

.field private hasFullPriceDeprecated:Z

.field private hasPrice:Z

.field private hasSampleDocid:Z

.field private hasTitle:Z

.field private hasUrl:Z

.field private image_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation
.end field

.field private offer_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;"
        }
    .end annotation
.end field

.field private price_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

.field private sampleDocid_:Lcom/google/android/finsky/remoting/protos/Doc$Docid;

.field private snippet_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title_:Ljava/lang/String;

.field private translatedSnippet_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;",
            ">;"
        }
    .end annotation
.end field

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 819
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 824
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->docid_:Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    .line 844
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->fetchDocid_:Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    .line 864
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->sampleDocid_:Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    .line 884
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->title_:Ljava/lang/String;

    .line 901
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->url_:Ljava/lang/String;

    .line 917
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->snippet_:Ljava/util/List;

    .line 950
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->translatedSnippet_:Ljava/util/List;

    .line 984
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->price_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 1003
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->offer_:Ljava/util/List;

    .line 1037
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->fullPriceDeprecated_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 1057
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->availability_:Lcom/google/android/finsky/remoting/protos/Doc$Availability;

    .line 1076
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->image_:Ljava/util/List;

    .line 1109
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->child_:Ljava/util/List;

    .line 1143
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->aggregateRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    .line 1258
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->cachedSize:I

    .line 819
    return-void
.end method


# virtual methods
.method public addChild(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1126
    if-nez p1, :cond_0

    .line 1127
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1129
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->child_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->child_:Ljava/util/List;

    .line 1132
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->child_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1133
    return-object p0
.end method

.method public addImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1093
    if-nez p1, :cond_0

    .line 1094
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->image_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1097
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->image_:Ljava/util/List;

    .line 1099
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->image_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    return-object p0
.end method

.method public addOffer(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1020
    if-nez p1, :cond_0

    .line 1021
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->offer_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1024
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->offer_:Ljava/util/List;

    .line 1026
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->offer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    return-object p0
.end method

.method public addSnippet(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 934
    if-nez p1, :cond_0

    .line 935
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->snippet_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 938
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->snippet_:Ljava/util/List;

    .line 940
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->snippet_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 941
    return-object p0
.end method

.method public addTranslatedSnippet(Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 967
    if-nez p1, :cond_0

    .line 968
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->translatedSnippet_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 971
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->translatedSnippet_:Ljava/util/List;

    .line 973
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->translatedSnippet_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    return-object p0
.end method

.method public getAggregateRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->aggregateRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    return-object v0
.end method

.method public getAvailability()Lcom/google/android/finsky/remoting/protos/Doc$Availability;
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->availability_:Lcom/google/android/finsky/remoting/protos/Doc$Availability;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1260
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->cachedSize:I

    if-gez v0, :cond_0

    .line 1262
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSerializedSize()I

    .line 1264
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->cachedSize:I

    return v0
.end method

.method public getChildList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->child_:Ljava/util/List;

    return-object v0
.end method

.method public getDocid()Lcom/google/android/finsky/remoting/protos/Doc$Docid;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->docid_:Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    return-object v0
.end method

.method public getFetchDocid()Lcom/google/android/finsky/remoting/protos/Doc$Docid;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->fetchDocid_:Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    return-object v0
.end method

.method public getFullPriceDeprecated()Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->fullPriceDeprecated_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    return-object v0
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->image_:Ljava/util/List;

    return-object v0
.end method

.method public getOfferList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->offer_:Ljava/util/List;

    return-object v0
.end method

.method public getPrice()Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->price_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    return-object v0
.end method

.method public getSampleDocid()Lcom/google/android/finsky/remoting/protos/Doc$Docid;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->sampleDocid_:Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1268
    const/4 v3, 0x0

    .line 1269
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasDocid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1270
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDocid()Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1273
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasFetchDocid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1274
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getFetchDocid()Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1277
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasSampleDocid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1278
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSampleDocid()Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1281
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasTitle()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1282
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1285
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasUrl()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1286
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1290
    :cond_4
    const/4 v0, 0x0

    .line 1291
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSnippetList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1292
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 1295
    .end local v1           #element:Ljava/lang/String;
    :cond_5
    add-int/2addr v3, v0

    .line 1296
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSnippetList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1298
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPrice()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1299
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getPrice()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1302
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasFullPriceDeprecated()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1303
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getFullPriceDeprecated()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1306
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAvailability()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1307
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getAvailability()Lcom/google/android/finsky/remoting/protos/Doc$Availability;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1310
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getImageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 1311
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    const/16 v4, 0xa

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    .line 1314
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getChildList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 1315
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    const/16 v4, 0xb

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_2

    .line 1318
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAggregateRating()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1319
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getAggregateRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1322
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getOfferList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 1323
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const/16 v4, 0xe

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_3

    .line 1326
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getTranslatedSnippetList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    .line 1327
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    const/16 v4, 0xf

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_4

    .line 1330
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    :cond_d
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->cachedSize:I

    .line 1331
    return v3
.end method

.method public getSnippetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 920
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->snippet_:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslatedSnippetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;",
            ">;"
        }
    .end annotation

    .prologue
    .line 953
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->translatedSnippet_:Ljava/util/List;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAggregateRating()Z
    .locals 1

    .prologue
    .line 1144
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAggregateRating:Z

    return v0
.end method

.method public hasAvailability()Z
    .locals 1

    .prologue
    .line 1058
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAvailability:Z

    return v0
.end method

.method public hasDocid()Z
    .locals 1

    .prologue
    .line 825
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasDocid:Z

    return v0
.end method

.method public hasFetchDocid()Z
    .locals 1

    .prologue
    .line 845
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasFetchDocid:Z

    return v0
.end method

.method public hasFullPriceDeprecated()Z
    .locals 1

    .prologue
    .line 1038
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasFullPriceDeprecated:Z

    return v0
.end method

.method public hasPrice()Z
    .locals 1

    .prologue
    .line 985
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPrice:Z

    return v0
.end method

.method public hasSampleDocid()Z
    .locals 1

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasSampleDocid:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 886
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasTitle:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 903
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1338
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1339
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1343
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1344
    :sswitch_0
    return-object p0

    .line 1349
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;-><init>()V

    .line 1350
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Docid;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1351
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setDocid(Lcom/google/android/finsky/remoting/protos/Doc$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 1355
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Docid;
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;-><init>()V

    .line 1356
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/Doc$Docid;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1357
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setFetchDocid(Lcom/google/android/finsky/remoting/protos/Doc$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 1361
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Docid;
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;-><init>()V

    .line 1362
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/Doc$Docid;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1363
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setSampleDocid(Lcom/google/android/finsky/remoting/protos/Doc$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 1367
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Docid;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 1371
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 1375
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addSnippet(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 1379
    :sswitch_7
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;-><init>()V

    .line 1380
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1381
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setPrice(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 1385
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :sswitch_8
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;-><init>()V

    .line 1386
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1387
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setFullPriceDeprecated(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 1391
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :sswitch_9
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Availability;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Availability;-><init>()V

    .line 1392
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Availability;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1393
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setAvailability(Lcom/google/android/finsky/remoting/protos/Doc$Availability;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 1397
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Availability;
    :sswitch_a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;-><init>()V

    .line 1398
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1399
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 1403
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :sswitch_b
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;-><init>()V

    .line 1404
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1405
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addChild(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 1409
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :sswitch_c
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;-><init>()V

    .line 1410
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1411
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setAggregateRating(Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 1415
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    :sswitch_d
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;-><init>()V

    .line 1416
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1417
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addOffer(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 1421
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;-><init>()V

    .line 1422
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1423
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addTranslatedSnippet(Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 1339
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x6a -> :sswitch_c
        0x72 -> :sswitch_d
        0x7a -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 817
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    move-result-object v0

    return-object v0
.end method

.method public setAggregateRating(Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1147
    if-nez p1, :cond_0

    .line 1148
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1150
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAggregateRating:Z

    .line 1151
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->aggregateRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    .line 1152
    return-object p0
.end method

.method public setAvailability(Lcom/google/android/finsky/remoting/protos/Doc$Availability;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1061
    if-nez p1, :cond_0

    .line 1062
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1064
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAvailability:Z

    .line 1065
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->availability_:Lcom/google/android/finsky/remoting/protos/Doc$Availability;

    .line 1066
    return-object p0
.end method

.method public setDocid(Lcom/google/android/finsky/remoting/protos/Doc$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 828
    if-nez p1, :cond_0

    .line 829
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 831
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasDocid:Z

    .line 832
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->docid_:Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    .line 833
    return-object p0
.end method

.method public setFetchDocid(Lcom/google/android/finsky/remoting/protos/Doc$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 848
    if-nez p1, :cond_0

    .line 849
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 851
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasFetchDocid:Z

    .line 852
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->fetchDocid_:Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    .line 853
    return-object p0
.end method

.method public setFullPriceDeprecated(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1041
    if-nez p1, :cond_0

    .line 1042
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1044
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasFullPriceDeprecated:Z

    .line 1045
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->fullPriceDeprecated_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 1046
    return-object p0
.end method

.method public setPrice(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 988
    if-nez p1, :cond_0

    .line 989
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 991
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPrice:Z

    .line 992
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->price_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 993
    return-object p0
.end method

.method public setSampleDocid(Lcom/google/android/finsky/remoting/protos/Doc$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 868
    if-nez p1, :cond_0

    .line 869
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 871
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasSampleDocid:Z

    .line 872
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->sampleDocid_:Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    .line 873
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 888
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasTitle:Z

    .line 889
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->title_:Ljava/lang/String;

    .line 890
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 905
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasUrl:Z

    .line 906
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->url_:Ljava/lang/String;

    .line 907
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1214
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasDocid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1215
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDocid()Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1217
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasFetchDocid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1218
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getFetchDocid()Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1220
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasSampleDocid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1221
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSampleDocid()Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1223
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1224
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1226
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasUrl()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1227
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1229
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSnippetList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1230
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 1232
    .end local v0           #element:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPrice()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1233
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getPrice()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1235
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasFullPriceDeprecated()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1236
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getFullPriceDeprecated()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1238
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAvailability()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1239
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getAvailability()Lcom/google/android/finsky/remoting/protos/Doc$Availability;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1241
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getImageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 1242
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 1244
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getChildList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 1245
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_2

    .line 1247
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAggregateRating()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1248
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getAggregateRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1250
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getOfferList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 1251
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_3

    .line 1253
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getTranslatedSnippetList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    .line 1254
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_4

    .line 1256
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    :cond_d
    return-void
.end method
