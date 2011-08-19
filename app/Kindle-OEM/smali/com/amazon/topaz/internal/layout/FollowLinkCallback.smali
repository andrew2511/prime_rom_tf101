.class public final Lcom/amazon/topaz/internal/layout/FollowLinkCallback;
.super Lcom/amazon/topaz/Callback;
.source "FollowLinkCallback.java"


# static fields
.field private static DEFAULT_LABEL:Ljava/lang/String;

.field private static HREF:Ljava/lang/String;

.field private static ID:Ljava/lang/String;

.field private static LABEL_PREFIX:Ljava/lang/String;

.field private static LINKTYPE_DIRECT:Ljava/lang/String;

.field private static LINKTYPE_MENU:Ljava/lang/String;

.field private static PAGE:Ljava/lang/String;


# instance fields
.field private direct_:Z

.field private href_:Ljava/lang/String;

.field private objid_:I

.field private page_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "Go to "

    sput-object v0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->LABEL_PREFIX:Ljava/lang/String;

    .line 20
    const-string v0, "Go To Link"

    sput-object v0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->DEFAULT_LABEL:Ljava/lang/String;

    .line 21
    const-string v0, "direct"

    sput-object v0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->LINKTYPE_DIRECT:Ljava/lang/String;

    .line 22
    const-string v0, "menu"

    sput-object v0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->LINKTYPE_MENU:Ljava/lang/String;

    .line 23
    const-string v0, "href"

    sput-object v0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->HREF:Ljava/lang/String;

    .line 24
    const-string v0, "page"

    sput-object v0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->PAGE:Ljava/lang/String;

    .line 25
    const-string v0, "id"

    sput-object v0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Z)V
    .locals 1
    .parameter "page"
    .parameter "obj"
    .parameter "title"
    .parameter "direct"

    .prologue
    .line 29
    sget-object v0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->DEFAULT_LABEL:Ljava/lang/String;

    invoke-direct {p0, p3, v0}, Lcom/amazon/topaz/Callback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput p1, p0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->page_:I

    .line 31
    iput p2, p0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->objid_:I

    .line 32
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->href_:Ljava/lang/String;

    .line 33
    iput-boolean p4, p0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->direct_:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "href"
    .parameter "title"

    .prologue
    const/4 v2, -0x1

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->LABEL_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/amazon/topaz/Callback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iput v2, p0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->page_:I

    .line 39
    iput v2, p0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->objid_:I

    .line 40
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->href_:Ljava/lang/String;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->direct_:Z

    .line 42
    return-void
.end method


# virtual methods
.method public getInfo()Lcom/amazon/topaz/Callback$Info;
    .locals 4

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->direct_:Z

    if-eqz v0, :cond_3

    .line 68
    sget-object v0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->LINKTYPE_DIRECT:Ljava/lang/String;

    .line 73
    :goto_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 74
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->href_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    sget-object v2, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->HREF:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->href_:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    iget v2, p0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->page_:I

    if-ltz v2, :cond_1

    .line 80
    sget-object v2, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->PAGE:Ljava/lang/String;

    iget v3, p0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->page_:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_1
    iget v2, p0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->objid_:I

    if-ltz v2, :cond_2

    .line 84
    sget-object v2, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->ID:Ljava/lang/String;

    iget v3, p0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->objid_:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_2
    new-instance v2, Lcom/amazon/topaz/Callback$Info;

    invoke-direct {v2, v0, v1}, Lcom/amazon/topaz/Callback$Info;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v2

    .line 70
    :cond_3
    sget-object v0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->LINKTYPE_MENU:Ljava/lang/String;

    goto :goto_0
.end method

.method public run(Lcom/amazon/topaz/Viewer;)Ljava/lang/String;
    .locals 1
    .parameter "view"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget v0, p0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->page_:I

    if-gez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->href_:Ljava/lang/String;

    .line 60
    :goto_0
    return-object v0

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/topaz/Viewer;->pushLocation()V

    .line 52
    iget v0, p0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->page_:I

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/Viewer;->setPage(I)V

    .line 55
    iget v0, p0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->objid_:I

    if-lez v0, :cond_1

    .line 57
    iget v0, p0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;->objid_:I

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/Viewer;->setStartID(I)V

    .line 60
    :cond_1
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    goto :goto_0
.end method
