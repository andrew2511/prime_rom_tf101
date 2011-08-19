.class public Lcom/google/android/feeds/core/net/CompressedContentHandler;
.super Ljava/net/ContentHandler;
.source "CompressedContentHandler.java"


# instance fields
.field private final mContentHandler:Ljava/net/ContentHandler;


# direct methods
.method public constructor <init>(Ljava/net/ContentHandler;)V
    .locals 0
    .parameter "contentHandler"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/feeds/core/net/CompressedContentHandler;->mContentHandler:Ljava/net/ContentHandler;

    .line 36
    return-void
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .locals 2
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip, deflate"

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/feeds/core/net/CompressedContentHandler;->mContentHandler:Ljava/net/ContentHandler;

    invoke-virtual {v0, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
