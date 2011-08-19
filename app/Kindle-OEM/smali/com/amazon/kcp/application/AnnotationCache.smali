.class public Lcom/amazon/kcp/application/AnnotationCache;
.super Ljava/lang/Object;
.source "AnnotationCache.java"

# interfaces
.implements Lcom/amazon/kcp/application/IAnnotationCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/AnnotationCache$BookData;,
        Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;
    }
.end annotation


# static fields
.field public static final DEFAULTS_IS_SYNC_ENABLED:Ljava/lang/String; = "autoSyncEnabled"


# instance fields
.field private appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

.field private bookData:Lcom/amazon/kcp/application/AnnotationCache$BookData;

.field private books:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/amazon/kcp/application/IBookData;",
            "Ljava/util/Set;",
            ">;"
        }
    .end annotation
.end field

.field private fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

.field private path:Ljava/lang/String;

.field private syncAnnotations:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/io/IPersistentSettingsHelper;)V
    .locals 2
    .parameter "path"
    .parameter "fileSystem"
    .parameter "appSettings"

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->books:Ljava/util/Hashtable;

    .line 43
    new-instance v0, Lcom/amazon/kcp/application/AnnotationCache$BookData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/AnnotationCache$BookData;-><init>(Lcom/amazon/kcp/application/AnnotationCache$1;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->bookData:Lcom/amazon/kcp/application/AnnotationCache$BookData;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->syncAnnotations:Z

    .line 190
    iput-object p1, p0, Lcom/amazon/kcp/application/AnnotationCache;->path:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Lcom/amazon/kcp/application/AnnotationCache;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 192
    iput-object p3, p0, Lcom/amazon/kcp/application/AnnotationCache;->appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    .line 194
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AnnotationCache;->deserialize(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/MBPBookData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AnnotationCache;->deserialize(Lcom/amazon/kcp/application/MBPBookData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/application/AnnotationCache;)Lcom/amazon/kcp/application/AnnotationCache$BookData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->bookData:Lcom/amazon/kcp/application/AnnotationCache$BookData;

    return-object v0
.end method

.method private buildAnnotationSpecificTag(Lcom/amazon/kcp/reader/models/IAnnotationData;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 816
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 817
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IAnnotationData;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 830
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IAnnotationData;->getState()[B

    move-result-object v1

    .line 838
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 839
    const/4 v3, 0x0

    :goto_1
    if-eqz v1, :cond_1

    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 841
    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xf0

    if-nez v4, :cond_0

    .line 843
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 845
    :cond_0
    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 839
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 820
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<bookmark"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 823
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<last_read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 826
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<note"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 829
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<highlight"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 847
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    .line 849
    :cond_2
    const/4 v1, 0x3

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IAnnotationData;->getType()I

    move-result v3

    if-eq v1, v3, :cond_3

    .line 851
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IAnnotationData;->getAction()I

    move-result v1

    if-nez v1, :cond_6

    .line 853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action=\"create\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 865
    :cond_3
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " begin=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IAnnotationData;->getBegin()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 867
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IAnnotationData;->getType()I

    move-result v1

    if-eq v1, v6, :cond_4

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IAnnotationData;->getType()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 870
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " end=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IAnnotationData;->getEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 873
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pos=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IAnnotationData;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timestamp=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IAnnotationData;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->timeToTimestamp(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 877
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IAnnotationData;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 886
    :goto_3
    return-object v0

    .line 855
    :cond_6
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IAnnotationData;->getAction()I

    move-result v1

    if-ne v5, v1, :cond_7

    .line 857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action=\"modify\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 859
    :cond_7
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IAnnotationData;->getAction()I

    move-result v1

    if-ne v6, v1, :cond_3

    .line 861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action=\"delete\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 882
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 885
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IAnnotationData;->getUserText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</note>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 817
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 877
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private buildBookTag(Lcom/amazon/kcp/application/IBookData;Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/IBookData;",
            "Ljava/util/Set",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 788
    invoke-interface {p1}, Lcom/amazon/kcp/application/IBookData;->getGuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kcp/application/IBookData;->getAsin()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 790
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping book from journal due to null GUID or ASIN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/application/IBookData;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/application/IBookData;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    const-string v0, ""

    .line 810
    :goto_0
    return-object v0

    .line 794
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<book guid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/application/IBookData;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " key=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/application/IBookData;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type=\"EBOK\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " version=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/application/IBookData;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 801
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 803
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/IAnnotationData;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/AnnotationCache;->buildAnnotationSpecificTag(Lcom/amazon/kcp/reader/models/IAnnotationData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 808
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</book>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private deletePersistedFileIfExists()V
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    iget-object v1, p0, Lcom/amazon/kcp/application/AnnotationCache;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/system/io/internal/FileSystemHelper;->exists(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    iget-object v1, p0, Lcom/amazon/kcp/application/AnnotationCache;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 714
    :cond_0
    return-void
.end method

.method private deserialize(Lcom/amazon/kcp/application/MBPBookData;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 624
    iget-object v3, p0, Lcom/amazon/kcp/application/AnnotationCache;->bookData:Lcom/amazon/kcp/application/AnnotationCache$BookData;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/AnnotationCache$BookData;->getAnnotations()Ljava/util/Vector;

    move-result-object v1

    .line 626
    .local v1, annotationDataList:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 628
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    .line 630
    .local v0, annotationData:Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/application/AnnotationCache;->annotationChanged(Lcom/amazon/kcp/application/IBookData;Lcom/amazon/kcp/reader/models/IAnnotationData;)V

    .line 626
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 632
    .end local v0           #annotationData:Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;
    :cond_0
    return-void
.end method

.method private deserialize(Ljava/lang/String;)V
    .locals 12
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 200
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    const-string v1, "autoSyncEnabled"

    invoke-interface {v0, v1, v8}, Lcom/amazon/system/io/IPersistentSettingsHelper;->get(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->syncAnnotations:Z

    .line 202
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v0, p1}, Lcom/amazon/system/io/internal/FileSystemHelper;->openFileInputStream(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Lcom/amazon/system/io/IFileInputStream;

    move-result-object v0

    .line 204
    if-nez v0, :cond_0

    .line 616
    :goto_0
    return-void

    .line 210
    :cond_0
    new-instance v1, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    invoke-direct {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;-><init>()V

    .line 214
    if-eqz v8, :cond_2

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->getRootNode()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v3, v2

    move v2, v8

    .line 215
    :goto_1
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    const-string v2, "annotations"

    invoke-virtual {v3, v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v8

    .line 221
    :goto_2
    new-instance v4, Lcom/amazon/kcp/application/MBPBookData;

    invoke-direct {v4, v9, v9}, Lcom/amazon/kcp/application/MBPBookData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    if-eqz v3, :cond_39

    .line 225
    if-eqz v2, :cond_5

    invoke-virtual {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object v3, v2

    move v2, v8

    :goto_3
    move-object v11, v3

    move v3, v2

    move-object v2, v11

    .line 228
    :goto_4
    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    const-string v3, "book"

    invoke-virtual {v2, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v8

    .line 229
    :goto_5
    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    new-instance v3, Lcom/amazon/kcp/application/AnnotationCache$1;

    invoke-direct {v3, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$1;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/MBPBookData;)V

    invoke-virtual {v2, v10, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v8

    .line 239
    :goto_6
    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    new-instance v3, Lcom/amazon/kcp/application/AnnotationCache$2;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/application/AnnotationCache$2;-><init>(Lcom/amazon/kcp/application/AnnotationCache;)V

    invoke-virtual {v2, v7, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v8

    .line 248
    :goto_7
    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    const-string v3, "guid"

    new-instance v5, Lcom/amazon/kcp/application/AnnotationCache$3;

    invoke-direct {v5, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$3;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/MBPBookData;)V

    invoke-virtual {v2, v3, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v8

    .line 257
    :goto_8
    if-eqz v3, :cond_b

    if-eqz v2, :cond_b

    const-string v3, "key"

    new-instance v5, Lcom/amazon/kcp/application/AnnotationCache$4;

    invoke-direct {v5, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$4;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/MBPBookData;)V

    invoke-virtual {v2, v3, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v8

    .line 266
    :goto_9
    if-eqz v3, :cond_c

    if-eqz v2, :cond_c

    const-string v3, "type"

    new-instance v5, Lcom/amazon/kcp/application/AnnotationCache$5;

    invoke-direct {v5, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$5;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/MBPBookData;)V

    invoke-virtual {v2, v3, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v3, v8

    .line 275
    :goto_a
    if-eqz v3, :cond_d

    if-eqz v2, :cond_d

    const-string v3, "version"

    new-instance v5, Lcom/amazon/kcp/application/AnnotationCache$6;

    invoke-direct {v5, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$6;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/MBPBookData;)V

    invoke-virtual {v2, v3, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v8

    .line 286
    :goto_b
    new-instance v4, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    new-instance v5, Lcom/mobipocket/common/library/reader/AnnotationExport;

    invoke-direct {v5}, Lcom/mobipocket/common/library/reader/AnnotationExport;-><init>()V

    invoke-direct {v4, v5}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;-><init>(Lcom/mobipocket/common/library/reader/AnnotationExport;)V

    .line 287
    if-eqz v2, :cond_38

    .line 289
    if-eqz v3, :cond_e

    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v3

    if-eqz v3, :cond_f

    move-object v5, v3

    move v3, v8

    :goto_c
    move-object v11, v5

    move v5, v3

    move-object v3, v11

    .line 291
    :goto_d
    if-eqz v5, :cond_10

    if-eqz v3, :cond_10

    const-string v5, "bookmark"

    invoke-virtual {v3, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    move v5, v8

    .line 292
    :goto_e
    if-eqz v5, :cond_11

    if-eqz v3, :cond_11

    new-instance v5, Lcom/amazon/kcp/application/AnnotationCache$7;

    invoke-direct {v5, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$7;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v3, v10, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v5

    if-eqz v5, :cond_11

    move v5, v8

    .line 302
    :goto_f
    invoke-virtual {v4, v7}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->setType(I)V

    .line 304
    if-eqz v5, :cond_12

    if-eqz v3, :cond_12

    const-string v5, "action"

    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$8;

    invoke-direct {v6, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$8;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v3, v5, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_12

    move v5, v8

    .line 313
    :goto_10
    if-eqz v5, :cond_13

    if-eqz v3, :cond_13

    const-string v5, "begin"

    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$9;

    invoke-direct {v6, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$9;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v3, v5, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_13

    move v5, v8

    .line 322
    :goto_11
    if-eqz v5, :cond_14

    if-eqz v3, :cond_14

    const-string v5, "pos"

    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$10;

    invoke-direct {v6, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$10;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v3, v5, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_14

    move v5, v8

    .line 331
    :goto_12
    if-eqz v5, :cond_15

    if-eqz v3, :cond_15

    const-string v5, "state"

    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$11;

    invoke-direct {v6, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$11;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v3, v5, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_15

    move v5, v8

    .line 340
    :goto_13
    if-eqz v5, :cond_16

    if-eqz v3, :cond_16

    const-string v5, "timestamp"

    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$12;

    invoke-direct {v6, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$12;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v3, v5, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v3

    if-eqz v3, :cond_16

    move v3, v8

    .line 351
    :goto_14
    new-instance v4, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    new-instance v5, Lcom/mobipocket/common/library/reader/AnnotationExport;

    invoke-direct {v5}, Lcom/mobipocket/common/library/reader/AnnotationExport;-><init>()V

    invoke-direct {v4, v5}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;-><init>(Lcom/mobipocket/common/library/reader/AnnotationExport;)V

    .line 352
    if-eqz v2, :cond_37

    .line 354
    if-eqz v3, :cond_17

    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v3

    if-eqz v3, :cond_18

    move-object v5, v3

    move v3, v8

    :goto_15
    move-object v11, v5

    move v5, v3

    move-object v3, v11

    .line 356
    :goto_16
    if-eqz v5, :cond_19

    if-eqz v3, :cond_19

    const-string v5, "last_read"

    invoke-virtual {v3, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    move v5, v8

    .line 357
    :goto_17
    if-eqz v5, :cond_1a

    if-eqz v3, :cond_1a

    new-instance v5, Lcom/amazon/kcp/application/AnnotationCache$13;

    invoke-direct {v5, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$13;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v3, v10, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v5

    if-eqz v5, :cond_1a

    move v5, v8

    .line 367
    :goto_18
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->setType(I)V

    .line 369
    if-eqz v5, :cond_1b

    if-eqz v3, :cond_1b

    const-string v5, "action"

    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$14;

    invoke-direct {v6, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$14;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v3, v5, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_1b

    move v5, v8

    .line 378
    :goto_19
    if-eqz v5, :cond_1c

    if-eqz v3, :cond_1c

    const-string v5, "begin"

    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$15;

    invoke-direct {v6, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$15;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v3, v5, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_1c

    move v5, v8

    .line 387
    :goto_1a
    if-eqz v5, :cond_1d

    if-eqz v3, :cond_1d

    const-string v5, "pos"

    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$16;

    invoke-direct {v6, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$16;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v3, v5, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_1d

    move v5, v8

    .line 396
    :goto_1b
    if-eqz v5, :cond_1e

    if-eqz v3, :cond_1e

    const-string v5, "state"

    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$17;

    invoke-direct {v6, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$17;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v3, v5, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_1e

    move v5, v8

    .line 405
    :goto_1c
    if-eqz v5, :cond_1f

    if-eqz v3, :cond_1f

    const-string v5, "timestamp"

    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$18;

    invoke-direct {v6, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$18;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v3, v5, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move v3, v8

    .line 416
    :goto_1d
    new-instance v4, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    new-instance v5, Lcom/mobipocket/common/library/reader/AnnotationExport;

    invoke-direct {v5}, Lcom/mobipocket/common/library/reader/AnnotationExport;-><init>()V

    invoke-direct {v4, v5}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;-><init>(Lcom/mobipocket/common/library/reader/AnnotationExport;)V

    .line 417
    if-eqz v2, :cond_36

    .line 419
    if-eqz v3, :cond_20

    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v3

    if-eqz v3, :cond_21

    move-object v5, v3

    move v3, v8

    :goto_1e
    move-object v11, v5

    move v5, v3

    move-object v3, v11

    .line 421
    :goto_1f
    if-eqz v5, :cond_22

    if-eqz v3, :cond_22

    const-string v5, "note"

    invoke-virtual {v3, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    move v5, v8

    .line 422
    :goto_20
    if-eqz v5, :cond_23

    if-eqz v3, :cond_23

    new-instance v5, Lcom/amazon/kcp/application/AnnotationCache$19;

    invoke-direct {v5, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$19;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v3, v10, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v5

    if-eqz v5, :cond_23

    move v5, v8

    .line 432
    :goto_21
    invoke-virtual {v4, v8}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->setType(I)V

    .line 434
    if-eqz v5, :cond_24

    if-eqz v3, :cond_24

    new-instance v5, Lcom/amazon/kcp/application/AnnotationCache$20;

    invoke-direct {v5, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$20;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v3, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_24

    move v5, v8

    .line 443
    :goto_22
    if-eqz v5, :cond_25

    if-eqz v3, :cond_25

    const-string v5, "action"

    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$21;

    invoke-direct {v6, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$21;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v3, v5, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_25

    move v5, v8

    .line 452
    :goto_23
    if-eqz v5, :cond_26

    if-eqz v3, :cond_26

    const-string v5, "begin"

    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$22;

    invoke-direct {v6, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$22;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v3, v5, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_26

    move v5, v8

    .line 461
    :goto_24
    if-eqz v5, :cond_27

    if-eqz v3, :cond_27

    const-string v5, "end"

    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$23;

    invoke-direct {v6, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$23;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v3, v5, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_27

    move v5, v8

    .line 470
    :goto_25
    if-eqz v5, :cond_28

    if-eqz v3, :cond_28

    const-string v5, "pos"

    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$24;

    invoke-direct {v6, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$24;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v3, v5, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_28

    move v5, v8

    .line 479
    :goto_26
    if-eqz v5, :cond_29

    if-eqz v3, :cond_29

    const-string v5, "state"

    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$25;

    invoke-direct {v6, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$25;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v3, v5, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v5

    if-eqz v5, :cond_29

    move v5, v8

    .line 488
    :goto_27
    if-eqz v5, :cond_2a

    if-eqz v3, :cond_2a

    const-string v5, "timestamp"

    new-instance v6, Lcom/amazon/kcp/application/AnnotationCache$26;

    invoke-direct {v6, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$26;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v3, v5, v6}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v3

    if-eqz v3, :cond_2a

    move v3, v8

    .line 500
    :goto_28
    new-instance v4, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    new-instance v5, Lcom/mobipocket/common/library/reader/AnnotationExport;

    invoke-direct {v5}, Lcom/mobipocket/common/library/reader/AnnotationExport;-><init>()V

    invoke-direct {v4, v5}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;-><init>(Lcom/mobipocket/common/library/reader/AnnotationExport;)V

    .line 501
    if-eqz v2, :cond_35

    .line 503
    if-eqz v3, :cond_2b

    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    if-eqz v2, :cond_2c

    move-object v3, v2

    move v2, v8

    :goto_29
    move-object v11, v3

    move v3, v2

    move-object v2, v11

    .line 505
    :goto_2a
    if-eqz v3, :cond_2d

    if-eqz v2, :cond_2d

    const-string v3, "highlight"

    invoke-virtual {v2, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    move v3, v8

    .line 506
    :goto_2b
    if-eqz v3, :cond_2e

    if-eqz v2, :cond_2e

    new-instance v3, Lcom/amazon/kcp/application/AnnotationCache$27;

    invoke-direct {v3, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$27;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v2, v10, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setTagCallback(ILcom/amazon/foundation/ICallback;)Z

    move-result v3

    if-eqz v3, :cond_2e

    move v3, v8

    .line 516
    :goto_2c
    invoke-virtual {v4, v10}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->setType(I)V

    .line 518
    if-eqz v3, :cond_2f

    if-eqz v2, :cond_2f

    new-instance v3, Lcom/amazon/kcp/application/AnnotationCache$28;

    invoke-direct {v3, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$28;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v2, v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v3

    if-eqz v3, :cond_2f

    move v3, v8

    .line 527
    :goto_2d
    if-eqz v3, :cond_30

    if-eqz v2, :cond_30

    const-string v3, "action"

    new-instance v5, Lcom/amazon/kcp/application/AnnotationCache$29;

    invoke-direct {v5, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$29;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v2, v3, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v3

    if-eqz v3, :cond_30

    move v3, v8

    .line 536
    :goto_2e
    if-eqz v3, :cond_31

    if-eqz v2, :cond_31

    const-string v3, "begin"

    new-instance v5, Lcom/amazon/kcp/application/AnnotationCache$30;

    invoke-direct {v5, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$30;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v2, v3, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v3

    if-eqz v3, :cond_31

    move v3, v8

    .line 545
    :goto_2f
    if-eqz v3, :cond_32

    if-eqz v2, :cond_32

    const-string v3, "end"

    new-instance v5, Lcom/amazon/kcp/application/AnnotationCache$31;

    invoke-direct {v5, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$31;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v2, v3, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v3

    if-eqz v3, :cond_32

    move v3, v8

    .line 554
    :goto_30
    if-eqz v3, :cond_33

    if-eqz v2, :cond_33

    const-string v3, "pos"

    new-instance v5, Lcom/amazon/kcp/application/AnnotationCache$32;

    invoke-direct {v5, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$32;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v2, v3, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v3

    if-eqz v3, :cond_33

    move v3, v8

    .line 563
    :goto_31
    if-eqz v3, :cond_34

    if-eqz v2, :cond_34

    const-string v3, "state"

    new-instance v5, Lcom/amazon/kcp/application/AnnotationCache$33;

    invoke-direct {v5, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$33;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v2, v3, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v3

    if-eqz v3, :cond_34

    move v3, v8

    .line 572
    :goto_32
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    const-string v3, "timestamp"

    new-instance v5, Lcom/amazon/kcp/application/AnnotationCache$34;

    invoke-direct {v5, p0, v4}, Lcom/amazon/kcp/application/AnnotationCache$34;-><init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V

    invoke-virtual {v2, v3, v5}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    .line 587
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/system/io/IFileInputStream;->size()J

    move-result-wide v2

    .line 588
    long-to-int v4, v2

    new-array v4, v4, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 592
    const/4 v5, 0x0

    long-to-int v2, v2

    :try_start_1
    invoke-virtual {v0, v4, v5, v2}, Lcom/amazon/system/io/IFileInputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 602
    :try_start_2
    invoke-virtual {v0}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v4

    .line 610
    :goto_33
    new-instance v2, Lcom/amazon/foundation/internal/parser/xml/SAXParser;

    invoke-direct {v2, v1}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;-><init>(Lcom/amazon/foundation/internal/parser/xml/ISAXContentHandler;)V

    .line 612
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->initialize()Z

    .line 613
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->write([C)I

    .line 614
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->close()Z

    goto/16 :goto_0

    :cond_2
    move-object v2, v9

    :cond_3
    move-object v3, v2

    move v2, v7

    .line 214
    goto/16 :goto_1

    :cond_4
    move v2, v7

    .line 215
    goto/16 :goto_2

    :cond_5
    move-object v2, v9

    :cond_6
    move-object v3, v2

    move v2, v7

    .line 225
    goto/16 :goto_3

    :cond_7
    move v3, v7

    .line 228
    goto/16 :goto_5

    :cond_8
    move v3, v7

    .line 229
    goto/16 :goto_6

    :cond_9
    move v3, v7

    .line 239
    goto/16 :goto_7

    :cond_a
    move v3, v7

    .line 248
    goto/16 :goto_8

    :cond_b
    move v3, v7

    .line 257
    goto/16 :goto_9

    :cond_c
    move v3, v7

    .line 266
    goto/16 :goto_a

    :cond_d
    move v3, v7

    .line 275
    goto/16 :goto_b

    :cond_e
    move-object v3, v9

    :cond_f
    move-object v5, v3

    move v3, v7

    .line 289
    goto/16 :goto_c

    :cond_10
    move v5, v7

    .line 291
    goto/16 :goto_e

    :cond_11
    move v5, v7

    .line 292
    goto/16 :goto_f

    :cond_12
    move v5, v7

    .line 304
    goto/16 :goto_10

    :cond_13
    move v5, v7

    .line 313
    goto/16 :goto_11

    :cond_14
    move v5, v7

    .line 322
    goto/16 :goto_12

    :cond_15
    move v5, v7

    .line 331
    goto/16 :goto_13

    :cond_16
    move v3, v7

    .line 340
    goto/16 :goto_14

    :cond_17
    move-object v3, v9

    :cond_18
    move-object v5, v3

    move v3, v7

    .line 354
    goto/16 :goto_15

    :cond_19
    move v5, v7

    .line 356
    goto/16 :goto_17

    :cond_1a
    move v5, v7

    .line 357
    goto/16 :goto_18

    :cond_1b
    move v5, v7

    .line 369
    goto/16 :goto_19

    :cond_1c
    move v5, v7

    .line 378
    goto/16 :goto_1a

    :cond_1d
    move v5, v7

    .line 387
    goto/16 :goto_1b

    :cond_1e
    move v5, v7

    .line 396
    goto/16 :goto_1c

    :cond_1f
    move v3, v7

    .line 405
    goto/16 :goto_1d

    :cond_20
    move-object v3, v9

    :cond_21
    move-object v5, v3

    move v3, v7

    .line 419
    goto/16 :goto_1e

    :cond_22
    move v5, v7

    .line 421
    goto/16 :goto_20

    :cond_23
    move v5, v7

    .line 422
    goto/16 :goto_21

    :cond_24
    move v5, v7

    .line 434
    goto/16 :goto_22

    :cond_25
    move v5, v7

    .line 443
    goto/16 :goto_23

    :cond_26
    move v5, v7

    .line 452
    goto/16 :goto_24

    :cond_27
    move v5, v7

    .line 461
    goto/16 :goto_25

    :cond_28
    move v5, v7

    .line 470
    goto/16 :goto_26

    :cond_29
    move v5, v7

    .line 479
    goto/16 :goto_27

    :cond_2a
    move v3, v7

    .line 488
    goto/16 :goto_28

    :cond_2b
    move-object v2, v9

    :cond_2c
    move-object v3, v2

    move v2, v7

    .line 503
    goto/16 :goto_29

    :cond_2d
    move v3, v7

    .line 505
    goto/16 :goto_2b

    :cond_2e
    move v3, v7

    .line 506
    goto/16 :goto_2c

    :cond_2f
    move v3, v7

    .line 518
    goto/16 :goto_2d

    :cond_30
    move v3, v7

    .line 527
    goto/16 :goto_2e

    :cond_31
    move v3, v7

    .line 536
    goto/16 :goto_2f

    :cond_32
    move v3, v7

    .line 545
    goto/16 :goto_30

    :cond_33
    move v3, v7

    .line 554
    goto/16 :goto_31

    :cond_34
    move v3, v7

    .line 563
    goto/16 :goto_32

    .line 606
    :catch_0
    move-exception v0

    move-object v0, v4

    goto/16 :goto_33

    :catch_1
    move-exception v2

    move-object v2, v9

    .line 596
    :goto_34
    :try_start_3
    invoke-virtual {v0}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v2

    .line 607
    goto/16 :goto_33

    .line 606
    :catch_2
    move-exception v0

    move-object v0, v2

    goto/16 :goto_33

    .line 600
    :catchall_0
    move-exception v1

    .line 602
    :try_start_4
    invoke-virtual {v0}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 606
    :goto_35
    throw v1

    :catch_3
    move-exception v0

    goto :goto_35

    :catch_4
    move-exception v2

    move-object v2, v4

    goto :goto_34

    :cond_35
    move-object v2, v9

    goto/16 :goto_2a

    :cond_36
    move v5, v3

    move-object v3, v9

    goto/16 :goto_1f

    :cond_37
    move v5, v3

    move-object v3, v9

    goto/16 :goto_16

    :cond_38
    move v5, v3

    move-object v3, v9

    goto/16 :goto_d

    :cond_39
    move v3, v2

    move-object v2, v9

    goto/16 :goto_4
.end method


# virtual methods
.method public annotationChanged(Lcom/amazon/kcp/application/IBookData;Lcom/amazon/kcp/reader/models/IAnnotationData;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 725
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kcp/application/IBookData;->clone()Lcom/amazon/kcp/application/IBookData;

    move-result-object v1

    .line 731
    invoke-interface {p2}, Lcom/amazon/kcp/reader/models/IAnnotationData;->clone()Lcom/amazon/kcp/reader/models/IAnnotationData;

    move-result-object v2

    .line 734
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->books:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 737
    invoke-interface {v1}, Lcom/amazon/kcp/application/IBookData;->getAsin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object v0, v7

    .line 739
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 741
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/IBookData;

    .line 743
    invoke-interface {v0}, Lcom/amazon/kcp/application/IBookData;->getAsin()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Lcom/amazon/kcp/application/IBookData;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/amazon/kcp/application/IBookData;->getAsin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    .line 751
    :cond_2
    :goto_2
    if-eqz v0, :cond_6

    .line 753
    iget-object v1, p0, Lcom/amazon/kcp/application/AnnotationCache;->books:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 756
    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IAnnotationData;->getType()I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 759
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 761
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 763
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/IAnnotationData;

    .line 764
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IAnnotationData;->getType()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 766
    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 773
    :cond_4
    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    move-object v0, v7

    .line 748
    goto :goto_1

    .line 778
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 779
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 780
    iget-object v2, p0, Lcom/amazon/kcp/application/AnnotationCache;->books:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    move-object v0, v7

    goto :goto_2
.end method

.method public equalsIgnoreJournalTimestamp(Ljava/lang/String;)Z
    .locals 4
    .parameter "journal"

    .prologue
    const/16 v3, 0x2d

    const/4 v2, 0x0

    .line 637
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AnnotationCache;->getJournal()Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, internal:Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    move v1, v2

    .line 649
    :goto_0
    return v1

    .line 646
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 647
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 649
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public getJournal()Ljava/lang/String;
    .locals 7

    .prologue
    .line 655
    const-string v3, "<annotations timestamp=\""

    .line 656
    .local v3, tmp:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->timeToTimestamp(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 657
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 658
    iget-object v4, p0, Lcom/amazon/kcp/application/AnnotationCache;->books:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 660
    .local v2, it:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/amazon/kcp/application/IBookData;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 662
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/IBookData;

    .line 663
    .local v1, book:Lcom/amazon/kcp/application/IBookData;
    invoke-interface {v1}, Lcom/amazon/kcp/application/IBookData;->getAsin()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Lcom/amazon/kcp/application/IBookData;->getGuid()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 668
    iget-object v4, p0, Lcom/amazon/kcp/application/AnnotationCache;->books:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 669
    .local v0, annotations:Ljava/util/Set;,"Ljava/util/Set<*>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/application/AnnotationCache;->buildBookTag(Lcom/amazon/kcp/application/IBookData;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 670
    goto :goto_0

    .line 672
    .end local v0           #annotations:Ljava/util/Set;,"Ljava/util/Set<*>;"
    .end local v1           #book:Lcom/amazon/kcp/application/IBookData;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</annotations>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 673
    return-object v3
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->books:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSyncAnnotationsOn()Z
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->syncAnnotations:Z

    return v0
.end method

.method public resetJournal()V
    .locals 3

    .prologue
    .line 692
    iget-object v2, p0, Lcom/amazon/kcp/application/AnnotationCache;->books:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 694
    .local v0, annotationDataIterator:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/Set;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 696
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 697
    .local v1, annotations:Ljava/util/Set;,"Ljava/util/Set<*>;"
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 700
    .end local v1           #annotations:Ljava/util/Set;,"Ljava/util/Set<*>;"
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/application/AnnotationCache;->books:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 702
    invoke-direct {p0}, Lcom/amazon/kcp/application/AnnotationCache;->deletePersistedFileIfExists()V

    .line 703
    return-void
.end method

.method public serialize()V
    .locals 4

    .prologue
    .line 898
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;

    const-string v1, "autoSyncEnabled"

    iget-boolean v2, p0, Lcom/amazon/kcp/application/AnnotationCache;->syncAnnotations:Z

    invoke-interface {v0, v1, v2}, Lcom/amazon/system/io/IPersistentSettingsHelper;->set(Ljava/lang/String;Z)V

    .line 900
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 902
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    invoke-direct {p0}, Lcom/amazon/kcp/application/AnnotationCache;->deletePersistedFileIfExists()V

    .line 906
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    iget-object v1, p0, Lcom/amazon/kcp/application/AnnotationCache;->path:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amazon/system/io/internal/FileSystemHelper;->outputStreamFromFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v0

    .line 908
    if-nez v0, :cond_1

    .line 936
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AnnotationCache;->getJournal()Ljava/lang/String;

    move-result-object v1

    .line 916
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 917
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 927
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 929
    :catch_0
    move-exception v0

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_1
    move-exception v1

    .line 921
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 929
    :catch_2
    move-exception v0

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 925
    :catchall_0
    move-exception v1

    .line 927
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 932
    :goto_1
    throw v1

    .line 929
    :catch_3
    move-exception v0

    .line 931
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public setAnnotationSyncStatus(Z)V
    .locals 0
    .parameter "syncStatus"

    .prologue
    .line 719
    iput-boolean p1, p0, Lcom/amazon/kcp/application/AnnotationCache;->syncAnnotations:Z

    .line 720
    return-void
.end method
