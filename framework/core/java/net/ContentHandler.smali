.class public abstract Ljava/net/ContentHandler;
.super Ljava/lang/Object;
.source "ContentHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getContent(Ljava/net/URLConnection;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .parameter "uConn"
    .parameter "types"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, content:Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    array-length v2, p2

    if-ge v1, v2, :cond_15

    .line 61
    aget-object v2, p2, v1

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object v2, v0

    .line 65
    :goto_11
    return-object v2

    .line 60
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 65
    :cond_15
    const/4 v2, 0x0

    goto :goto_11
.end method
