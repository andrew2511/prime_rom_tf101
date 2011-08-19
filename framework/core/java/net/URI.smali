.class public final Ljava/net/URI;
.super Ljava/lang/Object;
.source "URI.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/net/URI;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final ALL_LEGAL:Ljava/lang/String; = "_-!.~\'()*,;:$&+=?/[]@"

.field static final PUNCTUATION:Ljava/lang/String; = ",;:$&+="

.field static final RESERVED:Ljava/lang/String; = ",;:$&+=?/[]@"

.field static final SOME_LEGAL:Ljava/lang/String; = "_-!.~\'()*,;:$&+="

.field static final UNRESERVED:Ljava/lang/String; = "_-!.~\'()*"

.field private static final serialVersionUID:J = -0x53fe87d1bc61b655L


# instance fields
.field private transient absolute:Z

.field private transient authority:Ljava/lang/String;

.field private transient fragment:Ljava/lang/String;

.field private transient hash:I

.field private transient host:Ljava/lang/String;

.field private transient opaque:Z

.field private transient path:Ljava/lang/String;

.field private transient port:I

.field private transient query:Ljava/lang/String;

.field private transient scheme:Ljava/lang/String;

.field private transient schemeSpecificPart:Ljava/lang/String;

.field private transient serverAuthority:Z

.field private string:Ljava/lang/String;

.field private transient userInfo:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v1, p0, Ljava/net/URI;->port:I

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/URI;->serverAuthority:Z

    .line 56
    iput v1, p0, Ljava/net/URI;->hash:I

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Ljava/net/URI;->port:I

    .line 54
    iput-boolean v1, p0, Ljava/net/URI;->serverAuthority:Z

    .line 56
    iput v0, p0, Ljava/net/URI;->hash:I

    .line 70
    invoke-direct {p0, p1, v1}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "scheme"
    .parameter "ssp"
    .parameter "frag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v1, p0, Ljava/net/URI;->port:I

    .line 54
    iput-boolean v2, p0, Ljava/net/URI;->serverAuthority:Z

    .line 56
    iput v1, p0, Ljava/net/URI;->hash:I

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, uri:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1a

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    :cond_1a
    if-eqz p2, :cond_25

    .line 99
    const-string v1, "_-!.~\'()*,;:$&+=?/[]@"

    invoke-direct {p0, p2, v1}, Ljava/net/URI;->quoteComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_25
    if-eqz p3, :cond_35

    .line 102
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "_-!.~\'()*,;:$&+=?/[]@"

    invoke-direct {p0, p3, v1}, Ljava/net/URI;->quoteComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "scheme"
    .parameter "userInfo"
    .parameter "host"
    .parameter "port"
    .parameter "path"
    .parameter "query"
    .parameter "fragment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x3a

    const/4 v3, -0x1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v3, p0, Ljava/net/URI;->port:I

    .line 54
    iput-boolean v2, p0, Ljava/net/URI;->serverAuthority:Z

    .line 56
    iput v3, p0, Ljava/net/URI;->hash:I

    .line 141
    if-nez p1, :cond_1e

    if-nez p2, :cond_1e

    if-nez p3, :cond_1e

    if-nez p5, :cond_1e

    if-nez p6, :cond_1e

    if-nez p7, :cond_1e

    .line 143
    const-string v1, ""

    iput-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    .line 201
    :goto_1d
    return-void

    .line 147
    :cond_1e
    if-eqz p1, :cond_38

    if-eqz p5, :cond_38

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_38

    invoke-virtual {p5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_38

    .line 149
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "Relative path"

    invoke-direct {v1, p5, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v0, uri:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_45

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    :cond_45
    if-nez p2, :cond_4b

    if-nez p3, :cond_4b

    if-eq p4, v3, :cond_50

    .line 159
    :cond_4b
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_50
    if-eqz p2, :cond_60

    .line 164
    const-string v1, "_-!.~\'()*,;:$&+="

    invoke-direct {p0, p2, v1}, Ljava/net/URI;->quoteComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    :cond_60
    if-eqz p3, :cond_94

    .line 171
    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_91

    const/16 v1, 0x5d

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_91

    const/16 v1, 0x5b

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_91

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 175
    :cond_91
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_94
    if-eq p4, v3, :cond_9c

    .line 179
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    :cond_9c
    if-eqz p5, :cond_a7

    .line 185
    const-string v1, "/@_-!.~\'()*,;:$&+="

    invoke-direct {p0, p5, v1}, Ljava/net/URI;->quoteComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_a7
    if-eqz p6, :cond_b7

    .line 189
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, "_-!.~\'()*,;:$&+=?/[]@"

    invoke-direct {p0, p6, v1}, Ljava/net/URI;->quoteComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_b7
    if-eqz p7, :cond_c7

    .line 196
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, "_-!.~\'()*,;:$&+=?/[]@"

    invoke-direct {p0, p7, v1}, Ljava/net/URI;->quoteComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_c7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    goto/16 :goto_1d
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "scheme"
    .parameter "host"
    .parameter "path"
    .parameter "fragment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 224
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, v2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "scheme"
    .parameter "authority"
    .parameter "path"
    .parameter "query"
    .parameter "fragment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v1, p0, Ljava/net/URI;->port:I

    .line 54
    iput-boolean v3, p0, Ljava/net/URI;->serverAuthority:Z

    .line 56
    iput v1, p0, Ljava/net/URI;->hash:I

    .line 251
    if-eqz p1, :cond_25

    if-eqz p3, :cond_25

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_25

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_25

    .line 253
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "Relative path"

    invoke-direct {v1, p3, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 256
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v0, uri:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_34

    .line 258
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    :cond_34
    if-eqz p2, :cond_44

    .line 262
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, "@[]_-!.~\'()*,;:$&+="

    invoke-direct {p0, p2, v1}, Ljava/net/URI;->quoteComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_44
    if-eqz p3, :cond_4f

    .line 269
    const-string v1, "/@_-!.~\'()*,;:$&+="

    invoke-direct {p0, p3, v1}, Ljava/net/URI;->quoteComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_4f
    if-eqz p4, :cond_5f

    .line 273
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    const-string v1, "_-!.~\'()*,;:$&+=?/[]@"

    invoke-direct {p0, p4, v1}, Ljava/net/URI;->quoteComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_5f
    if-eqz p5, :cond_6f

    .line 278
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    const-string v1, "_-!.~\'()*,;:$&+=?/[]@"

    invoke-direct {p0, p5, v1}, Ljava/net/URI;->quoteComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_6f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    .line 283
    return-void
.end method

.method private convertHexToLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "s"

    .prologue
    const/16 v6, 0x25

    const/4 v5, -0x1

    .line 795
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 796
    .local v2, result:Ljava/lang/StringBuilder;
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_12

    move-object v3, p1

    .line 807
    :goto_11
    return-object v3

    .line 800
    :cond_12
    const/4 v1, 0x0

    .line 801
    .local v1, prevIndex:I
    :goto_13
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .local v0, index:I
    if-eq v0, v5, :cond_35

    .line 802
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    add-int/lit8 v0, v0, 0x3

    .line 805
    move v1, v0

    goto :goto_13

    .line 807
    :cond_35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_11
.end method

.method public static create(Ljava/lang/String;)Ljava/net/URI;
    .registers 4
    .parameter "uri"

    .prologue
    .line 767
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v1

    .line 768
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 769
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "s"

    .prologue
    .line 1423
    if-nez p1, :cond_4

    move-object v1, p1

    .line 1428
    :goto_3
    return-object v1

    :cond_4
    :try_start_4
    invoke-static {p1}, Ljava/net/URIEncoderDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v1

    goto :goto_3

    .line 1429
    :catch_9
    move-exception v0

    .line 1430
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private duplicate()Ljava/net/URI;
    .registers 3

    .prologue
    .line 774
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0}, Ljava/net/URI;-><init>()V

    .line 775
    .local v0, clone:Ljava/net/URI;
    iget-boolean v1, p0, Ljava/net/URI;->absolute:Z

    iput-boolean v1, v0, Ljava/net/URI;->absolute:Z

    .line 776
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 777
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 778
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 779
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    iput-boolean v1, v0, Ljava/net/URI;->opaque:Z

    .line 780
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    .line 781
    iget v1, p0, Ljava/net/URI;->port:I

    iput v1, v0, Ljava/net/URI;->port:I

    .line 782
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    .line 783
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 784
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 785
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 786
    iget-boolean v1, p0, Ljava/net/URI;->serverAuthority:Z

    iput-boolean v1, v0, Ljava/net/URI;->serverAuthority:Z

    .line 787
    return-object v0
.end method

.method private encodeNonAscii(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "s"

    .prologue
    .line 1416
    :try_start_0
    invoke-static {p1}, Ljava/net/URIEncoderDecoder;->encodeOthers(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 1417
    :catch_5
    move-exception v0

    .line 1418
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x25

    .line 815
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v3, v4, :cond_12

    .line 816
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 837
    :goto_11
    return v3

    .line 819
    :cond_12
    const/4 v2, 0x0

    .line 821
    .local v2, prevIndex:I
    :goto_13
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .local v0, index:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_4c

    invoke-virtual {p2, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v3, v0, :cond_4c

    .line 822
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 824
    .local v1, match:Z
    if-nez v1, :cond_30

    move v3, v7

    .line 825
    goto :goto_11

    .line 828
    :cond_30
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x3

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 830
    if-nez v1, :cond_48

    move v3, v7

    .line 831
    goto :goto_11

    .line 834
    :cond_48
    add-int/lit8 v0, v0, 0x3

    .line 835
    move v2, v0

    .line 836
    goto :goto_13

    .line 837
    .end local v1           #match:Z
    :cond_4c
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_11
.end method

.method public static getEffectivePort(Ljava/lang/String;I)I
    .registers 4
    .parameter "scheme"
    .parameter "specifiedPort"

    .prologue
    const/4 v1, -0x1

    .line 988
    if-eq p1, v1, :cond_5

    move v0, p1

    .line 997
    :goto_4
    return v0

    .line 992
    :cond_5
    const-string v0, "http"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 993
    const/16 v0, 0x50

    goto :goto_4

    .line 994
    :cond_10
    const-string v0, "https"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 995
    const/16 v0, 0x1bb

    goto :goto_4

    :cond_1b
    move v0, v1

    .line 997
    goto :goto_4
.end method

.method private getHashString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1492
    .local v0, result:Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 1493
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1494
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1496
    :cond_17
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    if-eqz v1, :cond_37

    .line 1497
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    :cond_20
    :goto_20
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_2e

    .line 1525
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1526
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/net/URI;->convertHexToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1499
    :cond_37
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_49

    .line 1500
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v1, :cond_61

    .line 1502
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    :cond_49
    :goto_49
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_52

    .line 1515
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    :cond_52
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 1519
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1520
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 1504
    :cond_61
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_7d

    .line 1505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    :cond_7d
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    iget v1, p0, Ljava/net/URI;->port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_49

    .line 1509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/net/URI;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_49
.end method

.method private isValidDomainName(Ljava/lang/String;)Z
    .registers 8
    .parameter "host"

    .prologue
    const/4 v5, 0x0

    .line 591
    :try_start_1
    const-string v4, "-."

    invoke-static {p1, v4}, Ljava/net/URIEncoderDecoder;->validateSimple(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_6} :catch_2a

    .line 596
    const/4 v2, 0x0

    .line 597
    .local v2, lastLabel:Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "."

    invoke-direct {v3, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    .local v3, st:Ljava/util/StringTokenizer;
    :cond_e
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 599
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 600
    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_28

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_28
    move v4, v5

    .line 615
    .end local v2           #lastLabel:Ljava/lang/String;
    .end local v3           #st:Ljava/util/StringTokenizer;
    :goto_29
    return v4

    .line 592
    :catch_2a
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/net/URISyntaxException;
    move v4, v5

    .line 593
    goto :goto_29

    .line 605
    .end local v1           #e:Ljava/net/URISyntaxException;
    .restart local v2       #lastLabel:Ljava/lang/String;
    .restart local v3       #st:Ljava/util/StringTokenizer;
    :cond_2e
    if-nez v2, :cond_32

    move v4, v5

    .line 606
    goto :goto_29

    .line 609
    :cond_32
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 610
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 611
    .local v0, ch:C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_46

    const/16 v4, 0x39

    if-gt v0, v4, :cond_46

    move v4, v5

    .line 612
    goto :goto_29

    .line 615
    .end local v0           #ch:C
    :cond_46
    const/4 v4, 0x1

    goto :goto_29
.end method

.method private isValidHost(ZLjava/lang/String;)Z
    .registers 10
    .parameter "forceServer"
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 540
    const-string v2, "["

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 542
    const-string v2, "]"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 543
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "Expected a closing square bracket for IPv6 address"

    invoke-direct {v2, p2, v3, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 546
    :cond_1c
    invoke-static {p2}, Ljava/net/InetAddress;->ipStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 552
    .local v0, bytes:[B
    if-eqz v0, :cond_34

    array-length v2, v0

    const/16 v3, 0x10

    if-eq v2, v3, :cond_32

    array-length v2, v0

    if-ne v2, v6, :cond_34

    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    :cond_32
    move v2, v5

    .line 586
    .end local v0           #bytes:[B
    :goto_33
    return v2

    .line 555
    .restart local v0       #bytes:[B
    :cond_34
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "Malformed IPv6 address"

    invoke-direct {v2, p2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 560
    .end local v0           #bytes:[B
    :cond_3c
    const/16 v2, 0x5b

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_4c

    const/16 v2, 0x5d

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v3, :cond_54

    .line 561
    :cond_4c
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "Illegal character in host name"

    invoke-direct {v2, p2, v3, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 564
    :cond_54
    const/16 v2, 0x2e

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 565
    .local v1, index:I
    if-ltz v1, :cond_6f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    if-eq v1, v2, :cond_6f

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_83

    .line 568
    :cond_6f
    invoke-direct {p0, p2}, Ljava/net/URI;->isValidDomainName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    move v2, v5

    .line 569
    goto :goto_33

    .line 571
    :cond_77
    if-eqz p1, :cond_81

    .line 572
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "Illegal character in host name"

    invoke-direct {v2, p2, v3, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_81
    move v2, v4

    .line 574
    goto :goto_33

    .line 578
    :cond_83
    invoke-static {p2}, Ljava/net/InetAddress;->ipStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 579
    .restart local v0       #bytes:[B
    if-eqz v0, :cond_8e

    array-length v2, v0

    if-ne v2, v6, :cond_8e

    move v2, v5

    .line 580
    goto :goto_33

    .line 583
    :cond_8e
    if-eqz p1, :cond_98

    .line 584
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "Malformed IPv4 address"

    invoke-direct {v2, p2, v3, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_98
    move v2, v4

    .line 586
    goto :goto_33
.end method

.method private normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "path"

    .prologue
    .line 1131
    const/4 v4, -0x1

    .line 1132
    .local v4, index:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 1133
    .local v7, pathLength:I
    const/4 v11, 0x0

    .line 1134
    .local v11, size:I
    if-lez v7, :cond_13

    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2f

    if-eq v12, v13, :cond_13

    .line 1135
    add-int/lit8 v11, v11, 0x1

    .line 1137
    :cond_13
    :goto_13
    const/16 v12, 0x2f

    add-int/lit8 v13, v4, 0x1

    invoke-virtual {p1, v12, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v12, -0x1

    if-eq v4, v12, :cond_2f

    .line 1138
    add-int/lit8 v12, v4, 0x1

    if-ge v12, v7, :cond_13

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2f

    if-eq v12, v13, :cond_13

    .line 1139
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    .line 1143
    :cond_2f
    new-array v10, v11, [Ljava/lang/String;

    .line 1144
    .local v10, segList:[Ljava/lang/String;
    new-array v3, v11, [Z

    .line 1147
    .local v3, include:[Z
    const/4 v0, 0x0

    .line 1149
    .local v0, current:I
    if-lez v7, :cond_58

    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2f

    if-ne v12, v13, :cond_58

    const/4 v12, 0x1

    move v4, v12

    .line 1150
    :goto_41
    const/16 v12, 0x2f

    add-int/lit8 v13, v4, 0x1

    invoke-virtual {p1, v12, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .local v5, index2:I
    const/4 v12, -0x1

    if-eq v5, v12, :cond_5b

    .line 1151
    add-int/lit8 v1, v0, 0x1

    .end local v0           #current:I
    .local v1, current:I
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v0

    .line 1152
    add-int/lit8 v4, v5, 0x1

    move v0, v1

    .end local v1           #current:I
    .restart local v0       #current:I
    goto :goto_41

    .line 1149
    .end local v5           #index2:I
    :cond_58
    const/4 v12, 0x0

    move v4, v12

    goto :goto_41

    .line 1157
    .restart local v5       #index2:I
    :cond_5b
    if-ge v0, v11, :cond_63

    .line 1158
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v0

    .line 1162
    :cond_63
    const/4 v2, 0x0

    .local v2, i:I
    :goto_64
    if-ge v2, v11, :cond_a4

    .line 1163
    const/4 v12, 0x1

    aput-boolean v12, v3, v2

    .line 1164
    aget-object v12, v10, v2

    const-string v13, ".."

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_96

    .line 1165
    const/4 v12, 0x1

    sub-int v8, v2, v12

    .line 1167
    .local v8, remove:I
    :goto_76
    const/4 v12, -0x1

    if-le v8, v12, :cond_80

    aget-boolean v12, v3, v8

    if-nez v12, :cond_80

    .line 1168
    add-int/lit8 v8, v8, -0x1

    goto :goto_76

    .line 1172
    :cond_80
    const/4 v12, -0x1

    if-le v8, v12, :cond_93

    aget-object v12, v10, v8

    const-string v13, ".."

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_93

    .line 1173
    const/4 v12, 0x0

    aput-boolean v12, v3, v8

    .line 1174
    const/4 v12, 0x0

    aput-boolean v12, v3, v2

    .line 1162
    .end local v8           #remove:I
    :cond_93
    :goto_93
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 1176
    :cond_96
    aget-object v12, v10, v2

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_93

    .line 1177
    const/4 v12, 0x0

    aput-boolean v12, v3, v2

    goto :goto_93

    .line 1182
    :cond_a4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1183
    .local v6, newPath:Ljava/lang/StringBuilder;
    const-string v12, "/"

    invoke-virtual {p1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b6

    .line 1184
    const/16 v12, 0x2f

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1187
    :cond_b6
    const/4 v2, 0x0

    :goto_b7
    array-length v12, v10

    if-ge v2, v12, :cond_cb

    .line 1188
    aget-boolean v12, v3, v2

    if-eqz v12, :cond_c8

    .line 1189
    aget-object v12, v10, v2

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    const/16 v12, 0x2f

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1187
    :cond_c8
    add-int/lit8 v2, v2, 0x1

    goto :goto_b7

    .line 1197
    :cond_cb
    const-string v12, "/"

    invoke-virtual {p1, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_e6

    array-length v12, v10

    if-lez v12, :cond_e6

    array-length v12, v10

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    aget-boolean v12, v3, v12

    if-eqz v12, :cond_e6

    .line 1199
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1202
    :cond_e6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1206
    .local v9, result:Ljava/lang/String;
    const/16 v12, 0x3a

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1207
    const/16 v12, 0x2f

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1208
    const/4 v12, -0x1

    if-eq v4, v12, :cond_108

    if-lt v4, v5, :cond_fe

    const/4 v12, -0x1

    if-ne v5, v12, :cond_108

    .line 1209
    :cond_fe
    const/4 v12, 0x0

    const-string v13, "./"

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1212
    :cond_108
    return-object v9
.end method

.method private parseAuthority(Z)V
    .registers 14
    .parameter "forceServer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 456
    iget-object v8, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v8, :cond_8

    .line 520
    :cond_7
    :goto_7
    return-void

    .line 460
    :cond_8
    const/4 v7, 0x0

    .line 461
    .local v7, tempUserInfo:Ljava/lang/String;
    iget-object v4, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 462
    .local v4, temp:Ljava/lang/String;
    const/16 v8, 0x40

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 463
    .local v3, index:I
    const/4 v2, 0x0

    .line 464
    .local v2, hostIndex:I
    if-eq v3, v10, :cond_25

    .line 466
    invoke-virtual {v4, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 467
    iget-object v8, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-direct {p0, v8, v7, v9}, Ljava/net/URI;->validateUserInfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 468
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 469
    add-int/lit8 v2, v3, 0x1

    .line 472
    :cond_25
    const/16 v8, 0x3a

    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 473
    const/16 v8, 0x5d

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 476
    .local v1, endIndex:I
    const/4 v6, -0x1

    .line 477
    .local v6, tempPort:I
    if-eq v3, v10, :cond_6f

    if-ge v1, v3, :cond_6f

    .line 479
    invoke-virtual {v4, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 481
    .local v5, tempHost:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v11

    if-ge v3, v8, :cond_70

    .line 483
    add-int/lit8 v8, v3, 0x1

    :try_start_43
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 484
    if-gez v6, :cond_70

    .line 485
    if-eqz p1, :cond_7

    .line 486
    new-instance v8, Ljava/net/URISyntaxException;

    iget-object v9, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    const-string v10, "Invalid port number"

    add-int v11, v2, v3

    add-int/lit8 v11, v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_5d} :catch_5d

    .line 491
    :catch_5d
    move-exception v8

    move-object v0, v8

    .line 492
    .local v0, e:Ljava/lang/NumberFormatException;
    if-eqz p1, :cond_7

    .line 493
    new-instance v8, Ljava/net/URISyntaxException;

    iget-object v9, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    const-string v10, "Invalid port number"

    add-int v11, v2, v3

    add-int/lit8 v11, v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 500
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v5           #tempHost:Ljava/lang/String;
    :cond_6f
    move-object v5, v4

    .line 503
    .restart local v5       #tempHost:Ljava/lang/String;
    :cond_70
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_82

    .line 504
    if-eqz p1, :cond_7

    .line 505
    new-instance v8, Ljava/net/URISyntaxException;

    iget-object v9, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    const-string v10, "Expected host"

    invoke-direct {v8, v9, v10, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 510
    :cond_82
    invoke-direct {p0, p1, v5}, Ljava/net/URI;->isValidHost(ZLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 516
    iput-object v7, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 517
    iput-object v5, p0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 518
    iput v6, p0, Ljava/net/URI;->port:I

    .line 519
    iput-boolean v11, p0, Ljava/net/URI;->serverAuthority:Z

    goto/16 :goto_7
.end method

.method private parseURI(Ljava/lang/String;Z)V
    .registers 16
    .parameter "uri"
    .parameter "forceServer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/16 v11, 0x2f

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 286
    move-object v5, p1

    .line 288
    .local v5, temp:Ljava/lang/String;
    iput-object p1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    .line 294
    const/16 v6, 0x23

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 295
    .local v0, index:I
    if-eq v0, v8, :cond_24

    .line 297
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 298
    iget-object v6, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    add-int/lit8 v7, v0, 0x1

    invoke-direct {p0, p1, v6, v7}, Ljava/net/URI;->validateFragment(Ljava/lang/String;Ljava/lang/String;I)V

    .line 299
    invoke-virtual {v5, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 303
    :cond_24
    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, index1:I
    move v0, v1

    .line 304
    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 305
    .local v2, index2:I
    const/16 v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 309
    .local v3, index3:I
    if-eq v0, v8, :cond_76

    if-ge v2, v0, :cond_3b

    if-ne v2, v8, :cond_76

    :cond_3b
    if-ge v3, v0, :cond_3f

    if-ne v3, v8, :cond_76

    .line 312
    :cond_3f
    iput-boolean v12, p0, Ljava/net/URI;->absolute:Z

    .line 313
    invoke-virtual {v5, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 314
    iget-object v6, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_57

    .line 315
    new-instance v6, Ljava/net/URISyntaxException;

    const-string v7, "Scheme expected"

    invoke-direct {v6, p1, v7, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v6

    .line 317
    :cond_57
    iget-object v6, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-direct {p0, p1, v6, v9}, Ljava/net/URI;->validateScheme(Ljava/lang/String;Ljava/lang/String;I)V

    .line 318
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 319
    iget-object v6, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_7a

    .line 320
    new-instance v6, Ljava/net/URISyntaxException;

    const-string v7, "Scheme-specific part expected"

    add-int/lit8 v8, v0, 0x1

    invoke-direct {v6, p1, v7, v8}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v6

    .line 323
    :cond_76
    iput-boolean v9, p0, Ljava/net/URI;->absolute:Z

    .line 324
    iput-object v5, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 327
    :cond_7a
    iget-object v6, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v6, :cond_8e

    iget-object v6, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_115

    iget-object v6, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v11, :cond_115

    .line 329
    :cond_8e
    iput-boolean v9, p0, Ljava/net/URI;->opaque:Z

    .line 333
    iget-object v5, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 334
    const/16 v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 335
    if-eq v0, v8, :cond_ae

    .line 336
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->query:Ljava/lang/String;

    .line 337
    invoke-virtual {v5, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 338
    iget-object v6, p0, Ljava/net/URI;->query:Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    add-int/2addr v7, v0

    invoke-direct {p0, p1, v6, v7}, Ljava/net/URI;->validateQuery(Ljava/lang/String;Ljava/lang/String;I)V

    .line 342
    :cond_ae
    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_112

    .line 343
    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 344
    if-eq v0, v8, :cond_e3

    .line 345
    invoke-virtual {v5, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 346
    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->path:Ljava/lang/String;

    .line 359
    :goto_c8
    iget-object v6, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_10a

    .line 360
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 368
    :goto_d3
    const/4 v4, 0x0

    .line 369
    .local v4, pathIndex:I
    if-le v2, v8, :cond_d7

    .line 370
    add-int/2addr v4, v2

    .line 372
    :cond_d7
    if-le v0, v8, :cond_da

    .line 373
    add-int/2addr v4, v0

    .line 375
    :cond_da
    iget-object v6, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, p1, v6, v4}, Ljava/net/URI;->validatePath(Ljava/lang/String;Ljava/lang/String;I)V

    .line 381
    .end local v4           #pathIndex:I
    :goto_df
    invoke-direct {p0, p2}, Ljava/net/URI;->parseAuthority(Z)V

    .line 382
    return-void

    .line 348
    :cond_e3
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 349
    iget-object v6, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_105

    iget-object v6, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v6, :cond_105

    iget-object v6, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v6, :cond_105

    .line 351
    new-instance v6, Ljava/net/URISyntaxException;

    const-string v7, "Authority expected"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v6, p1, v7, v8}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v6

    .line 354
    :cond_105
    const-string v6, ""

    iput-object v6, p0, Ljava/net/URI;->path:Ljava/lang/String;

    goto :goto_c8

    .line 362
    :cond_10a
    iget-object v6, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    add-int/lit8 v7, v1, 0x3

    invoke-direct {p0, p1, v6, v7}, Ljava/net/URI;->validateAuthority(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_d3

    .line 365
    :cond_112
    iput-object v5, p0, Ljava/net/URI;->path:Ljava/lang/String;

    goto :goto_d3

    .line 377
    :cond_115
    iput-boolean v12, p0, Ljava/net/URI;->opaque:Z

    .line 378
    iget-object v6, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    add-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v0

    invoke-direct {p0, p1, v6, v7}, Ljava/net/URI;->validateSsp(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_df
.end method

.method private quoteComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "component"
    .parameter "legalSet"

    .prologue
    .line 633
    :try_start_0
    invoke-static {p1, p2}, Ljava/net/URIEncoderDecoder;->quoteIllegal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 634
    :catch_5
    move-exception v0

    .line 635
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1549
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1551
    :try_start_3
    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_9} :catch_a

    .line 1555
    return-void

    .line 1552
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1553
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setSchemeSpecificPart()V
    .registers 4

    .prologue
    .line 1373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1374
    .local v0, ssp:Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 1375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    :cond_21
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_2a

    .line 1378
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    :cond_2a
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_46

    .line 1381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 1385
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    .line 1386
    return-void
.end method

.method private validateAuthority(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "uri"
    .parameter "authority"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 412
    :try_start_0
    const-string v1, "@[]_-!.~\'()*,;:$&+="

    invoke-static {p2, v1}, Ljava/net/URIEncoderDecoder;->validate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    .line 416
    return-void

    .line 413
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 414
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v1, Ljava/net/URISyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in authority"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getIndex()I

    move-result v3

    add-int/2addr v3, p3

    invoke-direct {v1, p1, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method private validateFragment(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "uri"
    .parameter "fragment"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 440
    :try_start_0
    const-string v1, "_-!.~\'()*,;:$&+=?/[]@"

    invoke-static {p2, v1}, Ljava/net/URIEncoderDecoder;->validate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    .line 444
    return-void

    .line 441
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 442
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v1, Ljava/net/URISyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in fragment"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getIndex()I

    move-result v3

    add-int/2addr v3, p3

    invoke-direct {v1, p1, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method private validatePath(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "uri"
    .parameter "path"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 421
    :try_start_0
    const-string v1, "/@_-!.~\'()*,;:$&+="

    invoke-static {p2, v1}, Ljava/net/URIEncoderDecoder;->validate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    .line 425
    return-void

    .line 422
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 423
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v1, Ljava/net/URISyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getIndex()I

    move-result v3

    add-int/2addr v3, p3

    invoke-direct {v1, p1, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method private validateQuery(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "uri"
    .parameter "query"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 430
    :try_start_0
    const-string v1, "_-!.~\'()*,;:$&+=?/[]@"

    invoke-static {p2, v1}, Ljava/net/URIEncoderDecoder;->validate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    .line 435
    return-void

    .line 431
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 432
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v1, Ljava/net/URISyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in query"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getIndex()I

    move-result v3

    add-int/2addr v3, p3

    invoke-direct {v1, p1, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method private validateScheme(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .parameter "uri"
    .parameter "scheme"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 387
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 388
    .local v0, ch:C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_d

    const/16 v2, 0x7a

    if-le v0, v2, :cond_1d

    :cond_d
    const/16 v2, 0x41

    if-lt v0, v2, :cond_15

    const/16 v2, 0x5a

    if-le v0, v2, :cond_1d

    .line 389
    :cond_15
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "Illegal character in scheme"

    invoke-direct {v2, p1, v3, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 393
    :cond_1d
    :try_start_1d
    const-string v2, "+-."

    invoke-static {p2, v2}, Ljava/net/URIEncoderDecoder;->validateSimple(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/net/URISyntaxException; {:try_start_1d .. :try_end_22} :catch_23

    .line 397
    return-void

    .line 394
    :catch_23
    move-exception v2

    move-object v1, v2

    .line 395
    .local v1, e:Ljava/net/URISyntaxException;
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "Illegal character in scheme"

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getIndex()I

    move-result v4

    add-int/2addr v4, p3

    invoke-direct {v2, p1, v3, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2
.end method

.method private validateSsp(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "uri"
    .parameter "ssp"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 402
    :try_start_0
    const-string v1, "_-!.~\'()*,;:$&+=?/[]@"

    invoke-static {p2, v1}, Ljava/net/URIEncoderDecoder;->validate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    .line 407
    return-void

    .line 403
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 404
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v1, Ljava/net/URISyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in schemeSpecificPart"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getIndex()I

    move-result v3

    add-int/2addr v3, p3

    invoke-direct {v1, p1, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method private validateUserInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .parameter "uri"
    .parameter "userInfo"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 524
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 525
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 526
    .local v0, ch:C
    const/16 v2, 0x5d

    if-eq v0, v2, :cond_13

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_1d

    .line 527
    :cond_13
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "Illegal character in userInfo"

    add-int v4, p3, v1

    invoke-direct {v2, p1, v3, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 524
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 530
    .end local v0           #ch:C
    :cond_20
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1560
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 1561
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1562
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, Ljava/net/URI;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/net/URI;->compareTo(Ljava/net/URI;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/net/URI;)I
    .registers 7
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 658
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v1, :cond_c

    iget-object v1, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_c

    move v1, v3

    .line 755
    :goto_b
    return v1

    .line 660
    :cond_c
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v1, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v1, :cond_16

    move v1, v4

    .line 661
    goto :goto_b

    .line 662
    :cond_16
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_2a

    iget-object v1, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_2a

    .line 663
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 664
    .local v0, ret:I
    if-eqz v0, :cond_2a

    move v1, v0

    .line 665
    goto :goto_b

    .line 670
    .end local v0           #ret:I
    :cond_2a
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    if-nez v1, :cond_34

    iget-boolean v1, p1, Ljava/net/URI;->opaque:Z

    if-eqz v1, :cond_34

    move v1, v3

    .line 671
    goto :goto_b

    .line 672
    :cond_34
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    if-eqz v1, :cond_3e

    iget-boolean v1, p1, Ljava/net/URI;->opaque:Z

    if-nez v1, :cond_3e

    move v1, v4

    .line 673
    goto :goto_b

    .line 674
    :cond_3e
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    if-eqz v1, :cond_52

    iget-boolean v1, p1, Ljava/net/URI;->opaque:Z

    if-eqz v1, :cond_52

    .line 675
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 676
    .restart local v0       #ret:I
    if-eqz v0, :cond_fe

    move v1, v0

    .line 677
    goto :goto_b

    .line 684
    .end local v0           #ret:I
    :cond_52
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_5c

    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v1, :cond_5c

    move v1, v4

    .line 685
    goto :goto_b

    .line 686
    :cond_5c
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v1, :cond_66

    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_66

    move v1, v3

    .line 687
    goto :goto_b

    .line 688
    :cond_66
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_c6

    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_c6

    .line 689
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v1, :cond_b9

    iget-object v1, p1, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v1, :cond_b9

    .line 691
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_80

    iget-object v1, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-nez v1, :cond_80

    move v1, v4

    .line 692
    goto :goto_b

    .line 693
    :cond_80
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-nez v1, :cond_8a

    iget-object v1, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_8a

    move v1, v3

    .line 694
    goto :goto_b

    .line 695
    :cond_8a
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_9f

    iget-object v1, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_9f

    .line 696
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 697
    .restart local v0       #ret:I
    if-eqz v0, :cond_9f

    move v1, v0

    .line 698
    goto/16 :goto_b

    .line 703
    .end local v0           #ret:I
    :cond_9f
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 704
    .restart local v0       #ret:I
    if-eqz v0, :cond_ac

    move v1, v0

    .line 705
    goto/16 :goto_b

    .line 709
    :cond_ac
    iget v1, p0, Ljava/net/URI;->port:I

    iget v2, p1, Ljava/net/URI;->port:I

    if-eq v1, v2, :cond_c6

    .line 710
    iget v1, p0, Ljava/net/URI;->port:I

    iget v2, p1, Ljava/net/URI;->port:I

    sub-int/2addr v1, v2

    goto/16 :goto_b

    .line 714
    .end local v0           #ret:I
    :cond_b9
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 715
    .restart local v0       #ret:I
    if-eqz v0, :cond_c6

    move v1, v0

    .line 716
    goto/16 :goto_b

    .line 723
    .end local v0           #ret:I
    :cond_c6
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 724
    .restart local v0       #ret:I
    if-eqz v0, :cond_d3

    move v1, v0

    .line 725
    goto/16 :goto_b

    .line 730
    :cond_d3
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_de

    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v1, :cond_de

    move v1, v4

    .line 731
    goto/16 :goto_b

    .line 732
    :cond_de
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v1, :cond_e9

    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_e9

    move v1, v3

    .line 733
    goto/16 :goto_b

    .line 734
    :cond_e9
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_fe

    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_fe

    .line 735
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 736
    if-eqz v0, :cond_fe

    move v1, v0

    .line 737
    goto/16 :goto_b

    .line 743
    :cond_fe
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_109

    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v1, :cond_109

    move v1, v4

    .line 744
    goto/16 :goto_b

    .line 745
    :cond_109
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v1, :cond_114

    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_114

    move v1, v3

    .line 746
    goto/16 :goto_b

    .line 747
    :cond_114
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_129

    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_129

    .line 748
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 749
    if-eqz v0, :cond_129

    move v1, v0

    .line 750
    goto/16 :goto_b

    .line 755
    :cond_129
    const/4 v1, 0x0

    goto/16 :goto_b
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 852
    instance-of v2, p1, Ljava/net/URI;

    if-nez v2, :cond_8

    move v2, v4

    .line 927
    :goto_7
    return v2

    .line 855
    :cond_8
    move-object v0, p1

    check-cast v0, Ljava/net/URI;

    move-object v1, v0

    .line 857
    .local v1, uri:Ljava/net/URI;
    iget-object v2, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v2, :cond_14

    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v2, :cond_1c

    :cond_14
    iget-object v2, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v2, :cond_1e

    :cond_1c
    move v2, v4

    .line 859
    goto :goto_7

    .line 860
    :cond_1e
    iget-object v2, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_32

    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_32

    .line 861
    iget-object v2, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v3, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    move v2, v4

    .line 862
    goto :goto_7

    .line 866
    :cond_32
    iget-object v2, v1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v2, :cond_3a

    iget-object v2, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v2, :cond_42

    :cond_3a
    iget-object v2, v1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v2, :cond_44

    iget-object v2, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v2, :cond_44

    :cond_42
    move v2, v4

    .line 868
    goto :goto_7

    .line 869
    :cond_44
    iget-object v2, v1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v2, :cond_58

    iget-object v2, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v2, :cond_58

    .line 870
    iget-object v2, v1, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_58

    move v2, v4

    .line 871
    goto :goto_7

    .line 875
    :cond_58
    iget-boolean v2, v1, Ljava/net/URI;->opaque:Z

    if-eqz v2, :cond_69

    iget-boolean v2, p0, Ljava/net/URI;->opaque:Z

    if-eqz v2, :cond_69

    .line 876
    iget-object v2, v1, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    iget-object v3, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_7

    .line 878
    :cond_69
    iget-boolean v2, v1, Ljava/net/URI;->opaque:Z

    if-nez v2, :cond_126

    iget-boolean v2, p0, Ljava/net/URI;->opaque:Z

    if-nez v2, :cond_126

    .line 879
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v3, v1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7d

    move v2, v4

    .line 880
    goto :goto_7

    .line 883
    :cond_7d
    iget-object v2, v1, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v2, :cond_85

    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v2, :cond_8d

    :cond_85
    iget-object v2, v1, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v2, :cond_90

    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v2, :cond_90

    :cond_8d
    move v2, v4

    .line 885
    goto/16 :goto_7

    .line 886
    :cond_90
    iget-object v2, v1, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v2, :cond_a5

    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v2, :cond_a5

    .line 887
    iget-object v2, v1, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a5

    move v2, v4

    .line 888
    goto/16 :goto_7

    .line 892
    :cond_a5
    iget-object v2, v1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v2, :cond_ad

    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v2, :cond_b5

    :cond_ad
    iget-object v2, v1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v2, :cond_b8

    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v2, :cond_b8

    :cond_b5
    move v2, v4

    .line 894
    goto/16 :goto_7

    .line 895
    :cond_b8
    iget-object v2, v1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v2, :cond_123

    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v2, :cond_123

    .line 896
    iget-object v2, v1, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v2, :cond_c8

    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v2, :cond_d0

    :cond_c8
    iget-object v2, v1, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v2, :cond_d3

    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v2, :cond_d3

    :cond_d0
    move v2, v4

    .line 898
    goto/16 :goto_7

    .line 899
    :cond_d3
    iget-object v2, v1, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v2, :cond_e5

    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v2, :cond_e5

    .line 901
    iget-object v2, v1, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_7

    .line 903
    :cond_e5
    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v3, v1, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f2

    move v2, v4

    .line 904
    goto/16 :goto_7

    .line 907
    :cond_f2
    iget v2, p0, Ljava/net/URI;->port:I

    iget v3, v1, Ljava/net/URI;->port:I

    if-eq v2, v3, :cond_fb

    move v2, v4

    .line 908
    goto/16 :goto_7

    .line 911
    :cond_fb
    iget-object v2, v1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v2, :cond_103

    iget-object v2, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v2, :cond_10b

    :cond_103
    iget-object v2, v1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-nez v2, :cond_10e

    iget-object v2, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v2, :cond_10e

    :cond_10b
    move v2, v4

    .line 913
    goto/16 :goto_7

    .line 914
    :cond_10e
    iget-object v2, v1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v2, :cond_120

    iget-object v2, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v2, :cond_120

    .line 915
    iget-object v2, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-object v3, v1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_7

    :cond_120
    move v2, v5

    .line 917
    goto/16 :goto_7

    :cond_123
    move v2, v5

    .line 922
    goto/16 :goto_7

    :cond_126
    move v2, v4

    .line 927
    goto/16 :goto_7
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 937
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEffectivePort()I
    .registers 3

    .prologue
    .line 978
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget v1, p0, Ljava/net/URI;->port:I

    invoke-static {v0, v1}, Ljava/net/URI;->getEffectivePort(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFragment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 946
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 955
    iget-object v0, p0, Ljava/net/URI;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 964
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 973
    iget v0, p0, Ljava/net/URI;->port:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1007
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1016
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public getRawFragment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1025
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getRawPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1034
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRawQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1043
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRawSchemeSpecificPart()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1052
    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    return-object v0
.end method

.method public getRawUserInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1061
    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1070
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1079
    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1088
    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 1098
    iget v0, p0, Ljava/net/URI;->hash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 1099
    invoke-direct {p0}, Ljava/net/URI;->getHashString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Ljava/net/URI;->hash:I

    .line 1101
    :cond_f
    iget v0, p0, Ljava/net/URI;->hash:I

    return v0
.end method

.method public isAbsolute()Z
    .registers 2

    .prologue
    .line 1111
    iget-boolean v0, p0, Ljava/net/URI;->absolute:Z

    return v0
.end method

.method public isOpaque()Z
    .registers 2

    .prologue
    .line 1123
    iget-boolean v0, p0, Ljava/net/URI;->opaque:Z

    return v0
.end method

.method public normalize()Ljava/net/URI;
    .registers 4

    .prologue
    .line 1222
    iget-boolean v2, p0, Ljava/net/URI;->opaque:Z

    if-eqz v2, :cond_6

    move-object v2, p0

    .line 1235
    :goto_5
    return-object v2

    .line 1225
    :cond_6
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1227
    .local v0, normalizedPath:Ljava/lang/String;
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move-object v2, p0

    .line 1228
    goto :goto_5

    .line 1232
    :cond_16
    invoke-direct {p0}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v1

    .line 1233
    .local v1, result:Ljava/net/URI;
    iput-object v0, v1, Ljava/net/URI;->path:Ljava/lang/String;

    .line 1234
    invoke-direct {v1}, Ljava/net/URI;->setSchemeSpecificPart()V

    move-object v2, v1

    .line 1235
    goto :goto_5
.end method

.method public parseServerAuthority()Ljava/net/URI;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 1249
    iget-boolean v0, p0, Ljava/net/URI;->serverAuthority:Z

    if-nez v0, :cond_8

    .line 1250
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/URI;->parseAuthority(Z)V

    .line 1252
    :cond_8
    return-object p0
.end method

.method public relativize(Ljava/net/URI;)Ljava/net/URI;
    .registers 7
    .parameter "relative"

    .prologue
    .line 1264
    iget-boolean v3, p1, Ljava/net/URI;->opaque:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_a

    :cond_8
    move-object v3, p1

    .line 1307
    :goto_9
    return-object v3

    .line 1268
    :cond_a
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_14

    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_1e

    :cond_12
    move-object v3, p1

    .line 1270
    goto :goto_9

    .line 1268
    :cond_14
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1273
    :cond_1e
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_28

    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_32

    :cond_26
    move-object v3, p1

    .line 1275
    goto :goto_9

    .line 1273
    :cond_28
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1279
    :cond_32
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1280
    .local v2, thisPath:Ljava/lang/String;
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1286
    .local v0, relativePath:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    .line 1288
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 1289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1296
    :cond_5f
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_67

    move-object v3, p1

    .line 1297
    goto :goto_9

    .line 1301
    :cond_67
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1}, Ljava/net/URI;-><init>()V

    .line 1302
    .local v1, result:Ljava/net/URI;
    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v3, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 1303
    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v3, v1, Ljava/net/URI;->query:Ljava/lang/String;

    .line 1305
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ljava/net/URI;->path:Ljava/lang/String;

    .line 1306
    invoke-direct {v1}, Ljava/net/URI;->setSchemeSpecificPart()V

    move-object v3, v1

    .line 1307
    goto :goto_9
.end method

.method public resolve(Ljava/lang/String;)Ljava/net/URI;
    .registers 3
    .parameter "relative"

    .prologue
    .line 1399
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/net/URI;)Ljava/net/URI;
    .registers 7
    .parameter "relative"

    .prologue
    .line 1319
    iget-boolean v2, p1, Ljava/net/URI;->absolute:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Ljava/net/URI;->opaque:Z

    if-eqz v2, :cond_a

    :cond_8
    move-object v2, p1

    .line 1364
    :goto_9
    return-object v2

    .line 1324
    :cond_a
    iget-object v2, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v2, :cond_2c

    iget-object v2, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v2, :cond_2c

    iget-object v2, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v2, :cond_2c

    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_2c

    .line 1330
    invoke-direct {p0}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v1

    .line 1331
    .local v1, result:Ljava/net/URI;
    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    move-object v2, v1

    .line 1334
    goto :goto_9

    .line 1337
    .end local v1           #result:Ljava/net/URI;
    :cond_2c
    iget-object v2, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v2, :cond_3e

    .line 1341
    invoke-direct {p1}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v1

    .line 1342
    .restart local v1       #result:Ljava/net/URI;
    iget-object v2, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 1343
    iget-boolean v2, p0, Ljava/net/URI;->absolute:Z

    iput-boolean v2, v1, Ljava/net/URI;->absolute:Z

    :goto_3c
    move-object v2, v1

    .line 1364
    goto :goto_9

    .line 1349
    .end local v1           #result:Ljava/net/URI;
    :cond_3e
    invoke-direct {p0}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v1

    .line 1350
    .restart local v1       #result:Ljava/net/URI;
    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 1351
    iget-object v2, p1, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->query:Ljava/lang/String;

    .line 1352
    iget-object v2, p1, Ljava/net/URI;->path:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1353
    iget-object v2, p1, Ljava/net/URI;->path:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->path:Ljava/lang/String;

    .line 1362
    :goto_58
    invoke-direct {v1}, Ljava/net/URI;->setSchemeSpecificPart()V

    goto :goto_3c

    .line 1356
    :cond_5c
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 1357
    .local v0, endIndex:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljava/net/URI;->path:Ljava/lang/String;

    goto :goto_58
.end method

.method public toASCIIString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1441
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/URI;->encodeNonAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1451
    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    if-nez v1, :cond_34

    .line 1452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1453
    .local v0, result:Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 1454
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1457
    :cond_17
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    if-eqz v1, :cond_37

    .line 1458
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    :cond_20
    :goto_20
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_2e

    .line 1476
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1477
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    .line 1482
    .end local v0           #result:Ljava/lang/StringBuilder;
    :cond_34
    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    return-object v1

    .line 1460
    .restart local v0       #result:Ljava/lang/StringBuilder;
    :cond_37
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_45

    .line 1461
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    :cond_45
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_4e

    .line 1466
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    :cond_4e
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 1470
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1471
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20
.end method

.method public toURL()Ljava/net/URL;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 1541
    iget-boolean v0, p0, Ljava/net/URI;->absolute:Z

    if-nez v0, :cond_21

    .line 1542
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI is not absolute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1544
    :cond_21
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
