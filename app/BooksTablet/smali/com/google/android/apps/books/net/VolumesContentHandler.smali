.class public Lcom/google/android/apps/books/net/VolumesContentHandler;
.super Lcom/google/android/feeds/xml/net/XmlContentHandler;
.source "VolumesContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/net/VolumesContentHandler$PriceAmountListener;,
        Lcom/google/android/apps/books/net/VolumesContentHandler$PriceTypeListener;,
        Lcom/google/android/apps/books/net/VolumesContentHandler$LinkListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/feeds/xml/net/XmlContentHandler",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final ATOM:Ljava/lang/String; = "http://www.w3.org/2005/Atom"

.field private static final DC:Ljava/lang/String; = "http://purl.org/dc/terms"

.field private static final GBS:Ljava/lang/String; = "http://schemas.google.com/books/2008"

.field private static final GD:Ljava/lang/String; = "http://schemas.google.com/g/2005"

.field private static final OPENSEARCH:Ljava/lang/String; = "http://a9.com/-/spec/opensearchrss/1.0/"

.field private static final REL_BUYLINK:Ljava/lang/String; = "http://schemas.google.com/books/2008/buylink"

.field private static final REL_THUMBNAIL:Ljava/lang/String; = "http://schemas.google.com/books/2008/thumbnail"

.field private static final TAG:Ljava/lang/String; = "VolumesContentHandler"


# instance fields
.field private final mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/net/KeyValueHandler",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mPriceType:Ljava/lang/String;

.field private final mRoot:Landroid/sax/RootElement;

.field private final mTime:Landroid/text/format/Time;


# direct methods
.method public constructor <init>(ZLcom/google/android/apps/books/net/KeyValueHandler;)V
    .locals 9
    .parameter "isFeed"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/android/apps/books/net/KeyValueHandler",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>;"
    .local p2, keyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;,"Lcom/google/android/apps/books/net/KeyValueHandler<TT;>;"
    invoke-direct {p0}, Lcom/google/android/feeds/xml/net/XmlContentHandler;-><init>()V

    .line 136
    const-string v6, "missing keyValueHandler"

    invoke-static {p2, v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2           #keyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;,"Lcom/google/android/apps/books/net/KeyValueHandler<TT;>;"
    check-cast p2, Lcom/google/android/apps/books/net/KeyValueHandler;

    iput-object p2, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;

    .line 137
    new-instance v6, Landroid/text/format/Time;

    const-string v7, "UTC"

    invoke-direct {v6, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mTime:Landroid/text/format/Time;

    .line 140
    if-eqz p1, :cond_0

    .line 141
    new-instance v6, Landroid/sax/RootElement;

    const-string v7, "http://www.w3.org/2005/Atom"

    const-string v8, "feed"

    invoke-direct {v6, v7, v8}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mRoot:Landroid/sax/RootElement;

    .line 142
    iget-object v3, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mRoot:Landroid/sax/RootElement;

    .line 143
    .local v3, feed:Landroid/sax/RootElement;
    const-string v6, "http://www.w3.org/2005/Atom"

    const-string v7, "entry"

    invoke-virtual {v3, v6, v7}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    .line 144
    .local v2, entry:Landroid/sax/Element;
    new-instance v6, Lcom/google/android/apps/books/net/VolumesContentHandler$1;

    invoke-direct {v6, p0}, Lcom/google/android/apps/books/net/VolumesContentHandler$1;-><init>(Lcom/google/android/apps/books/net/VolumesContentHandler;)V

    invoke-virtual {v3, v6}, Landroid/sax/RootElement;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 149
    const-string v6, "http://a9.com/-/spec/opensearchrss/1.0/"

    const-string v7, "totalResults"

    const-string v8, "com.google.android.apps.books.cursor.extra.TOTAL_RESULTS"

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/google/android/apps/books/net/VolumesContentHandler;->extra(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    new-instance v6, Lcom/google/android/apps/books/net/VolumesContentHandler$2;

    invoke-direct {v6, p0, p1}, Lcom/google/android/apps/books/net/VolumesContentHandler$2;-><init>(Lcom/google/android/apps/books/net/VolumesContentHandler;Z)V

    invoke-virtual {v2, v6}, Landroid/sax/Element;->setElementListener(Landroid/sax/ElementListener;)V

    .line 171
    const-string v6, "http://www.w3.org/2005/Atom"

    const-string v7, "id"

    invoke-virtual {v2, v6, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    const-string v7, "volume_id"

    invoke-direct {p0, v6, v7}, Lcom/google/android/apps/books/net/VolumesContentHandler;->mapString(Landroid/sax/Element;Ljava/lang/String;)V

    .line 172
    const-string v6, "http://www.w3.org/2005/Atom"

    const-string v7, "title"

    invoke-virtual {v2, v6, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    const-string v7, "title"

    invoke-direct {p0, v6, v7}, Lcom/google/android/apps/books/net/VolumesContentHandler;->mapString(Landroid/sax/Element;Ljava/lang/String;)V

    .line 173
    const-string v6, "http://purl.org/dc/terms"

    const-string v7, "creator"

    invoke-virtual {v2, v6, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    const-string v7, "creator"

    invoke-direct {p0, v6, v7}, Lcom/google/android/apps/books/net/VolumesContentHandler;->mapString(Landroid/sax/Element;Ljava/lang/String;)V

    .line 174
    const-string v6, "http://purl.org/dc/terms"

    const-string v7, "publisher"

    invoke-virtual {v2, v6, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    const-string v7, "publisher"

    invoke-direct {p0, v6, v7}, Lcom/google/android/apps/books/net/VolumesContentHandler;->mapString(Landroid/sax/Element;Ljava/lang/String;)V

    .line 175
    const-string v6, "http://purl.org/dc/terms"

    const-string v7, "description"

    invoke-virtual {v2, v6, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    const-string v7, "description"

    invoke-direct {p0, v6, v7}, Lcom/google/android/apps/books/net/VolumesContentHandler;->mapString(Landroid/sax/Element;Ljava/lang/String;)V

    .line 176
    const-string v6, "http://purl.org/dc/terms"

    const-string v7, "date"

    invoke-virtual {v2, v6, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    const-string v7, "date"

    invoke-direct {p0, v6, v7}, Lcom/google/android/apps/books/net/VolumesContentHandler;->mapString(Landroid/sax/Element;Ljava/lang/String;)V

    .line 177
    const-string v6, "http://schemas.google.com/books/2008"

    const-string v7, "contentVersion"

    invoke-virtual {v2, v6, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    const-string v7, "content_version"

    invoke-direct {p0, v6, v7}, Lcom/google/android/apps/books/net/VolumesContentHandler;->mapString(Landroid/sax/Element;Ljava/lang/String;)V

    .line 178
    const-string v6, "http://schemas.google.com/books/2008"

    const-string v7, "openAccess"

    invoke-virtual {v2, v6, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    const-string v7, "value"

    const-string v8, "open_access"

    invoke-direct {p0, v6, v7, v8}, Lcom/google/android/apps/books/net/VolumesContentHandler;->mapString(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v6, "http://schemas.google.com/books/2008"

    const-string v7, "viewability"

    invoke-virtual {v2, v6, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    const-string v7, "value"

    const-string v8, "viewability"

    invoke-direct {p0, v6, v7, v8}, Lcom/google/android/apps/books/net/VolumesContentHandler;->mapString(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v6, "http://www.w3.org/2005/Atom"

    const-string v7, "updated"

    invoke-virtual {v2, v6, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    const-string v7, "timestamp"

    invoke-direct {p0, v6, v7}, Lcom/google/android/apps/books/net/VolumesContentHandler;->mapTime(Landroid/sax/Element;Ljava/lang/String;)V

    .line 181
    const-string v6, "http://schemas.google.com/books/2008"

    const-string v7, "readingPosition"

    invoke-virtual {v2, v6, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/apps/books/net/VolumesContentHandler;->mapPositionValues(Landroid/sax/Element;)V

    .line 183
    const-string v6, "http://schemas.google.com/books/2008"

    const-string v7, "deviceAccess"

    invoke-virtual {v2, v6, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    .line 184
    .local v1, deviceAccess:Landroid/sax/Element;
    const-string v6, "http://schemas.google.com/books/2008"

    const-string v7, "allowed"

    invoke-virtual {v1, v6, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    const-string v7, "access:allowed"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/google/android/apps/books/net/VolumesContentHandler;->mapBoolean(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 185
    const-string v6, "http://schemas.google.com/books/2008"

    const-string v7, "maxConcurrentDevices"

    invoke-virtual {v1, v6, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    const-string v7, "access:max_devices"

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/google/android/apps/books/net/VolumesContentHandler;->mapLong(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/Long;)V

    .line 186
    const-string v6, "http://schemas.google.com/books/2008"

    const-string v7, "timeWindowSeconds"

    invoke-virtual {v1, v6, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    const-string v7, "access:seconds"

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/google/android/apps/books/net/VolumesContentHandler;->mapLong(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/Long;)V

    .line 188
    const-string v6, "http://www.w3.org/2005/Atom"

    const-string v7, "link"

    invoke-virtual {v2, v6, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v4

    .line 189
    .local v4, link:Landroid/sax/Element;
    new-instance v6, Lcom/google/android/apps/books/net/VolumesContentHandler$LinkListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/google/android/apps/books/net/VolumesContentHandler$LinkListener;-><init>(Lcom/google/android/apps/books/net/VolumesContentHandler;Lcom/google/android/apps/books/net/VolumesContentHandler$1;)V

    invoke-virtual {v4, v6}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 190
    const-string v6, "http://schemas.google.com/books/2008"

    const-string v7, "price"

    invoke-virtual {v2, v6, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    .line 191
    .local v5, price:Landroid/sax/Element;
    new-instance v6, Lcom/google/android/apps/books/net/VolumesContentHandler$PriceTypeListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/google/android/apps/books/net/VolumesContentHandler$PriceTypeListener;-><init>(Lcom/google/android/apps/books/net/VolumesContentHandler;Lcom/google/android/apps/books/net/VolumesContentHandler$1;)V

    invoke-virtual {v5, v6}, Landroid/sax/Element;->setElementListener(Landroid/sax/ElementListener;)V

    .line 192
    const-string v6, "http://schemas.google.com/g/2005"

    const-string v7, "money"

    invoke-virtual {v5, v6, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    .line 193
    .local v0, amount:Landroid/sax/Element;
    new-instance v6, Lcom/google/android/apps/books/net/VolumesContentHandler$PriceAmountListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/google/android/apps/books/net/VolumesContentHandler$PriceAmountListener;-><init>(Lcom/google/android/apps/books/net/VolumesContentHandler;Lcom/google/android/apps/books/net/VolumesContentHandler$1;)V

    invoke-virtual {v0, v6}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 195
    return-void

    .line 151
    .end local v0           #amount:Landroid/sax/Element;
    .end local v1           #deviceAccess:Landroid/sax/Element;
    .end local v2           #entry:Landroid/sax/Element;
    .end local v3           #feed:Landroid/sax/RootElement;
    .end local v4           #link:Landroid/sax/Element;
    .end local v5           #price:Landroid/sax/Element;
    :cond_0
    new-instance v6, Landroid/sax/RootElement;

    const-string v7, "http://www.w3.org/2005/Atom"

    const-string v8, "entry"

    invoke-direct {v6, v7, v8}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mRoot:Landroid/sax/RootElement;

    .line 152
    const/4 v3, 0x0

    .line 153
    .restart local v3       #feed:Landroid/sax/RootElement;
    iget-object v2, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mRoot:Landroid/sax/RootElement;

    .restart local v2       #entry:Landroid/sax/Element;
    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/net/VolumesContentHandler;Lorg/xml/sax/Attributes;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/net/VolumesContentHandler;->handleEtag(Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/net/VolumesContentHandler;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/books/net/VolumesContentHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mPriceType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/apps/books/net/VolumesContentHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mPriceType:Ljava/lang/String;

    return-object p1
.end method

.method private extra(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "element"
    .parameter "uri"
    .parameter "localName"
    .parameter "key"

    .prologue
    .line 198
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>;"
    invoke-virtual {p1, p2, p3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/books/net/VolumesContentHandler$3;

    invoke-direct {v1, p0, p4}, Lcom/google/android/apps/books/net/VolumesContentHandler$3;-><init>(Lcom/google/android/apps/books/net/VolumesContentHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 203
    return-void
.end method

.method private handleEtag(Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "attributes"

    .prologue
    .line 338
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>;"
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v2, "etag"

    invoke-interface {p1, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, etag:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 340
    iget-object v1, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;

    const-string v2, "version"

    invoke-interface {v1, v2, v0}, Lcom/google/android/apps/books/net/KeyValueHandler;->setColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_0
    return-void
.end method

.method private mapBoolean(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "element"
    .parameter "columnName"
    .parameter "defaultValue"

    .prologue
    .line 277
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>;"
    new-instance v0, Lcom/google/android/apps/books/net/VolumesContentHandler$7;

    invoke-direct {v0, p0, p3, p2}, Lcom/google/android/apps/books/net/VolumesContentHandler$7;-><init>(Lcom/google/android/apps/books/net/VolumesContentHandler;Ljava/lang/Boolean;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 291
    return-void
.end method

.method private mapLong(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .parameter "element"
    .parameter "columnName"
    .parameter "defaultValue"

    .prologue
    .line 296
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>;"
    new-instance v0, Lcom/google/android/apps/books/net/VolumesContentHandler$8;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/google/android/apps/books/net/VolumesContentHandler$8;-><init>(Lcom/google/android/apps/books/net/VolumesContentHandler;Landroid/sax/Element;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 308
    return-void
.end method

.method private mapPositionValues(Landroid/sax/Element;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 318
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>;"
    new-instance v0, Lcom/google/android/apps/books/net/VolumesContentHandler$9;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/net/VolumesContentHandler$9;-><init>(Lcom/google/android/apps/books/net/VolumesContentHandler;)V

    invoke-virtual {p1, v0}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 331
    return-void
.end method

.method private mapString(Landroid/sax/Element;Ljava/lang/String;)V
    .locals 1
    .parameter "element"
    .parameter "columnName"

    .prologue
    .line 219
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>;"
    new-instance v0, Lcom/google/android/apps/books/net/VolumesContentHandler$4;

    invoke-direct {v0, p0, p2}, Lcom/google/android/apps/books/net/VolumesContentHandler$4;-><init>(Lcom/google/android/apps/books/net/VolumesContentHandler;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 239
    return-void
.end method

.method private mapString(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "element"
    .parameter "attributeName"
    .parameter "columnName"

    .prologue
    .line 249
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>;"
    new-instance v0, Lcom/google/android/apps/books/net/VolumesContentHandler$5;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/apps/books/net/VolumesContentHandler$5;-><init>(Lcom/google/android/apps/books/net/VolumesContentHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 255
    return-void
.end method

.method private mapTime(Landroid/sax/Element;Ljava/lang/String;)V
    .locals 1
    .parameter "element"
    .parameter "columnName"

    .prologue
    .line 261
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>;"
    new-instance v0, Lcom/google/android/apps/books/net/VolumesContentHandler$6;

    invoke-direct {v0, p0, p2}, Lcom/google/android/apps/books/net/VolumesContentHandler$6;-><init>(Lcom/google/android/apps/books/net/VolumesContentHandler;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 272
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;

    invoke-interface {v0}, Lcom/google/android/apps/books/net/KeyValueHandler;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 371
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mRoot:Landroid/sax/RootElement;

    invoke-virtual {v0}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    return-object v0
.end method

.method handleLink(Lorg/xml/sax/Attributes;)V
    .locals 5
    .parameter "attributes"

    .prologue
    .line 357
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>;"
    const-string v2, "rel"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, rel:Ljava/lang/String;
    const-string v2, "href"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, href:Ljava/lang/String;
    const-string v2, "http://schemas.google.com/books/2008/thumbnail"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "zoom"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "edge"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "l"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "w"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "h"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/apps/books/util/UriUtils;->dropQueryParam(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    iget-object v2, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;

    const-string v3, "cover_url"

    invoke-interface {v2, v3, v0}, Lcom/google/android/apps/books/net/KeyValueHandler;->setColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    const-string v2, "http://schemas.google.com/books/2008/buylink"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    iget-object v2, p0, Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;

    const-string v3, "buy_url"

    invoke-interface {v2, v3, v0}, Lcom/google/android/apps/books/net/KeyValueHandler;->setColumn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
