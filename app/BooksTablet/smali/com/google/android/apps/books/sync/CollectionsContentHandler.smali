.class public Lcom/google/android/apps/books/sync/CollectionsContentHandler;
.super Lcom/google/android/feeds/xml/net/XmlContentHandler;
.source "CollectionsContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/sync/CollectionsContentHandler$MyEntryListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/feeds/xml/net/XmlContentHandler",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/content/ContentValues;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ATOM_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2005/Atom"


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mRoot:Landroid/sax/RootElement;

.field private mValues:Landroid/content/ContentValues;

.field private final mValuesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/feeds/xml/net/XmlContentHandler;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->mAccount:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->mValuesList:Ljava/util/List;

    .line 46
    invoke-direct {p0}, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->createRoot()Landroid/sax/RootElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->mRoot:Landroid/sax/RootElement;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/sync/CollectionsContentHandler;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->mValuesList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/sync/CollectionsContentHandler;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/books/sync/CollectionsContentHandler;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->mValues:Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$300(Ljava/lang/String;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->extractCollectionId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/sync/CollectionsContentHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method private associateText(Landroid/sax/Element;Ljava/lang/String;)V
    .locals 1
    .parameter "element"
    .parameter "valueName"

    .prologue
    .line 71
    new-instance v0, Lcom/google/android/apps/books/sync/CollectionsContentHandler$2;

    invoke-direct {v0, p0, p2}, Lcom/google/android/apps/books/sync/CollectionsContentHandler$2;-><init>(Lcom/google/android/apps/books/sync/CollectionsContentHandler;Ljava/lang/String;)V

    .line 76
    .local v0, listener:Landroid/sax/EndTextElementListener;
    invoke-virtual {p1, v0}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 77
    return-void
.end method

.method private createRoot()Landroid/sax/RootElement;
    .locals 7

    .prologue
    const-string v6, "title"

    const-string v5, "summary"

    const-string v4, "http://www.w3.org/2005/Atom"

    .line 50
    new-instance v1, Landroid/sax/RootElement;

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v2, "feed"

    invoke-direct {v1, v4, v2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v1, root:Landroid/sax/RootElement;
    new-instance v2, Lcom/google/android/apps/books/sync/CollectionsContentHandler$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/books/sync/CollectionsContentHandler$1;-><init>(Lcom/google/android/apps/books/sync/CollectionsContentHandler;)V

    invoke-virtual {v1, v2}, Landroid/sax/RootElement;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 57
    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v2, "entry"

    invoke-virtual {v1, v4, v2}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    .line 58
    .local v0, entry:Landroid/sax/Element;
    new-instance v2, Lcom/google/android/apps/books/sync/CollectionsContentHandler$MyEntryListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/books/sync/CollectionsContentHandler$MyEntryListener;-><init>(Lcom/google/android/apps/books/sync/CollectionsContentHandler;Lcom/google/android/apps/books/sync/CollectionsContentHandler$1;)V

    invoke-virtual {v0, v2}, Landroid/sax/Element;->setElementListener(Landroid/sax/ElementListener;)V

    .line 60
    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v2, "id"

    invoke-virtual {v0, v4, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    const-string v3, "collection_id"

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->urlColumn(Landroid/sax/Element;Ljava/lang/String;)V

    .line 61
    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v2, "title"

    invoke-virtual {v0, v4, v6}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    const-string v3, "title"

    invoke-direct {p0, v2, v6}, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->associateText(Landroid/sax/Element;Ljava/lang/String;)V

    .line 62
    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v2, "summary"

    invoke-virtual {v0, v4, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    const-string v3, "summary"

    invoke-direct {p0, v2, v5}, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->associateText(Landroid/sax/Element;Ljava/lang/String;)V

    .line 63
    return-object v1
.end method

.method private static extractCollectionId(Ljava/lang/String;)J
    .locals 4
    .parameter "url"

    .prologue
    .line 103
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 104
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, collectionId:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method private urlColumn(Landroid/sax/Element;Ljava/lang/String;)V
    .locals 1
    .parameter "element"
    .parameter "valueName"

    .prologue
    .line 83
    new-instance v0, Lcom/google/android/apps/books/sync/CollectionsContentHandler$3;

    invoke-direct {v0, p0, p2}, Lcom/google/android/apps/books/sync/CollectionsContentHandler$3;-><init>(Lcom/google/android/apps/books/sync/CollectionsContentHandler;Ljava/lang/String;)V

    .line 89
    .local v0, listener:Landroid/sax/EndTextElementListener;
    invoke-virtual {p1, v0}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 90
    return-void
.end method


# virtual methods
.method protected bridge synthetic getContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->getContent()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getContent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->mValuesList:Ljava/util/List;

    return-object v0
.end method

.method protected getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->mRoot:Landroid/sax/RootElement;

    invoke-virtual {v0}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    return-object v0
.end method
