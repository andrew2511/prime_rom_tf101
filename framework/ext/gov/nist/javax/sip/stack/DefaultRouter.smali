.class public Lgov/nist/javax/sip/stack/DefaultRouter;
.super Ljava/lang/Object;
.source "DefaultRouter.java"

# interfaces
.implements Ljavax/sip/address/Router;


# instance fields
.field private defaultRoute:Ljavax/sip/address/Hop;

.field private sipStack:Lgov/nist/javax/sip/SipStackImpl;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljavax/sip/SipStack;Ljava/lang/String;)V
    .registers 7
    .parameter "sipStack"
    .parameter "defaultRoute"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/SipStackImpl;

    move-object v2, v0

    iput-object v2, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 114
    if-eqz p2, :cond_1c

    .line 116
    :try_start_b
    iget-object v2, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getAddressResolver()Lgov/nist/core/net/AddressResolver;

    move-result-object v2

    new-instance v3, Lgov/nist/javax/sip/stack/HopImpl;

    invoke-direct {v3, p2}, Lgov/nist/javax/sip/stack/HopImpl;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    move-result-object v2

    iput-object v2, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_1c} :catch_1d

    .line 127
    :cond_1c
    return-void

    .line 118
    :catch_1d
    move-exception v2

    move-object v1, v2

    .line 120
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    check-cast p1, Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .end local p1
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Invalid default route specification - need host:port/transport"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 124
    throw v1
.end method

.method private final createHop(Ljavax/sip/address/SipURI;Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;
    .registers 10
    .parameter "sipUri"
    .parameter "request"

    .prologue
    .line 291
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->isSecure()Z

    move-result v5

    if-eqz v5, :cond_3d

    const-string v5, "tls"

    move-object v3, v5

    .line 293
    .local v3, transport:Ljava/lang/String;
    :goto_9
    if-nez v3, :cond_17

    .line 295
    const-string v5, "Via"

    invoke-interface {p2, v5}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v4

    check-cast v4, Ljavax/sip/header/ViaHeader;

    .line 296
    .local v4, via:Ljavax/sip/header/ViaHeader;
    invoke-interface {v4}, Ljavax/sip/header/ViaHeader;->getTransport()Ljava/lang/String;

    move-result-object v3

    .line 302
    .end local v4           #via:Ljavax/sip/header/ViaHeader;
    :cond_17
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getPort()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_43

    .line 303
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getPort()I

    move-result v2

    .line 310
    .local v2, port:I
    :goto_22
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_51

    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 312
    .local v1, host:Ljava/lang/String;
    :goto_2d
    iget-object v5, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getAddressResolver()Lgov/nist/core/net/AddressResolver;

    move-result-object v0

    .line 313
    .local v0, addressResolver:Lgov/nist/core/net/AddressResolver;
    new-instance v5, Lgov/nist/javax/sip/stack/HopImpl;

    invoke-direct {v5, v1, v2, v3}, Lgov/nist/javax/sip/stack/HopImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v5}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    move-result-object v5

    return-object v5

    .line 291
    .end local v0           #addressResolver:Lgov/nist/core/net/AddressResolver;
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #port:I
    .end local v3           #transport:Ljava/lang/String;
    :cond_3d
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_9

    .line 305
    .restart local v3       #transport:Ljava/lang/String;
    :cond_43
    const-string v5, "tls"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 306
    const/16 v2, 0x13c5

    .restart local v2       #port:I
    goto :goto_22

    .line 308
    .end local v2           #port:I
    :cond_4e
    const/16 v2, 0x13c4

    .restart local v2       #port:I
    goto :goto_22

    .line 310
    :cond_51
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    goto :goto_2d
.end method


# virtual methods
.method public fixStrictRouting(Lgov/nist/javax/sip/message/SIPRequest;)V
    .registers 10
    .parameter "req"

    .prologue
    .line 264
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v4

    .line 265
    .local v4, routes:Lgov/nist/javax/sip/header/RouteList;
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/Route;

    .line 266
    .local v1, first:Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/address/SipUri;

    .line 267
    .local v2, firstUri:Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/RouteList;->removeFirst()V

    .line 270
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 271
    .local v0, addr:Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v5

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/address/AddressImpl;->setAddess(Ljavax/sip/address/URI;)V

    .line 272
    new-instance v3, Lgov/nist/javax/sip/header/Route;

    invoke-direct {v3, v0}, Lgov/nist/javax/sip/header/Route;-><init>(Lgov/nist/javax/sip/address/AddressImpl;)V

    .line 274
    .local v3, route:Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v4, v3}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 275
    invoke-virtual {p1, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    .line 276
    iget-object v5, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 277
    iget-object v5, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "post: fixStrictRouting"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 279
    :cond_52
    return-void
.end method

.method public getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;
    .registers 14
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object v6, v0

    .line 165
    .local v6, sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestLine()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v2

    .line 166
    .local v2, requestLine:Lgov/nist/javax/sip/header/RequestLine;
    if-nez v2, :cond_d

    .line 167
    iget-object v9, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;

    .line 251
    :goto_c
    return-object v9

    .line 169
    :cond_d
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v3

    .line 170
    .local v3, requestURI:Ljavax/sip/address/URI;
    if-nez v3, :cond_1b

    .line 171
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Bad message: Null requestURI"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 173
    :cond_1b
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v5

    .line 192
    .local v5, routes:Lgov/nist/javax/sip/header/RouteList;
    if-eqz v5, :cond_87

    .line 196
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/Route;

    .line 197
    .local v4, route:Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v9

    invoke-interface {v9}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v8

    .line 198
    .local v8, uri:Ljavax/sip/address/URI;
    invoke-interface {v8}, Ljavax/sip/address/URI;->isSipURI()Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 199
    move-object v0, v8

    check-cast v0, Ljavax/sip/address/SipURI;

    move-object v7, v0

    .line 200
    .local v7, sipUri:Ljavax/sip/address/SipURI;
    invoke-interface {v7}, Ljavax/sip/address/SipURI;->hasLrParam()Z

    move-result v9

    if-nez v9, :cond_55

    .line 202
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/stack/DefaultRouter;->fixStrictRouting(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 203
    iget-object v9, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_55

    .line 204
    iget-object v9, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    const-string v10, "Route post processing fixed strict routing"

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 208
    :cond_55
    invoke-direct {p0, v7, p1}, Lgov/nist/javax/sip/stack/DefaultRouter;->createHop(Ljavax/sip/address/SipURI;Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v1

    .line 209
    .local v1, hop:Ljavax/sip/address/Hop;
    iget-object v9, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 210
    iget-object v9, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NextHop based on Route:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_7d
    move-object v9, v1

    .line 212
    goto :goto_c

    .line 214
    .end local v1           #hop:Ljavax/sip/address/Hop;
    .end local v7           #sipUri:Ljavax/sip/address/SipURI;
    :cond_7f
    new-instance v9, Ljavax/sip/SipException;

    const-string v10, "First Route not a SIP URI"

    invoke-direct {v9, v10}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 217
    .end local v4           #route:Lgov/nist/javax/sip/header/Route;
    .end local v8           #uri:Ljavax/sip/address/URI;
    :cond_87
    invoke-interface {v3}, Ljavax/sip/address/URI;->isSipURI()Z

    move-result v9

    if-eqz v9, :cond_c8

    move-object v0, v3

    check-cast v0, Ljavax/sip/address/SipURI;

    move-object v9, v0

    invoke-interface {v9}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c8

    .line 219
    check-cast v3, Ljavax/sip/address/SipURI;

    .end local v3           #requestURI:Ljavax/sip/address/URI;
    invoke-direct {p0, v3, p1}, Lgov/nist/javax/sip/stack/DefaultRouter;->createHop(Ljavax/sip/address/SipURI;Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v1

    .line 220
    .restart local v1       #hop:Ljavax/sip/address/Hop;
    iget-object v9, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_c5

    .line 221
    iget-object v9, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Using request URI maddr to route the request = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_c5
    move-object v9, v1

    .line 228
    goto/16 :goto_c

    .line 230
    .end local v1           #hop:Ljavax/sip/address/Hop;
    .restart local v3       #requestURI:Ljavax/sip/address/URI;
    :cond_c8
    iget-object v9, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;

    if-eqz v9, :cond_fa

    .line 231
    iget-object v9, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_f6

    .line 232
    iget-object v9, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Using outbound proxy to route the request = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 235
    :cond_f6
    iget-object v9, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;

    goto/16 :goto_c

    .line 236
    :cond_fa
    invoke-interface {v3}, Ljavax/sip/address/URI;->isSipURI()Z

    move-result v9

    if-eqz v9, :cond_147

    .line 237
    check-cast v3, Ljavax/sip/address/SipURI;

    .end local v3           #requestURI:Ljavax/sip/address/URI;
    invoke-direct {p0, v3, p1}, Lgov/nist/javax/sip/stack/DefaultRouter;->createHop(Ljavax/sip/address/SipURI;Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v1

    .line 238
    .restart local v1       #hop:Ljavax/sip/address/Hop;
    if-eqz v1, :cond_133

    iget-object v9, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_133

    .line 239
    iget-object v9, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Used request-URI for nextHop = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_130
    :goto_130
    move-object v9, v1

    .line 245
    goto/16 :goto_c

    .line 241
    :cond_133
    iget-object v9, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_130

    .line 242
    iget-object v9, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    const-string v10, "returning null hop -- loop detected"

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_130

    .line 249
    .end local v1           #hop:Ljavax/sip/address/Hop;
    .restart local v3       #requestURI:Ljavax/sip/address/URI;
    :cond_147
    const-string v9, "Unexpected non-sip URI"

    iget-object v10, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v10}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    invoke-static {v9, v10}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;Lgov/nist/core/StackLogger;)V

    .line 251
    const/4 v9, 0x0

    goto/16 :goto_c
.end method

.method public getNextHops(Ljavax/sip/message/Request;)Ljava/util/ListIterator;
    .registers 5
    .parameter "request"

    .prologue
    .line 337
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 338
    .local v1, llist:Ljava/util/LinkedList;
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/DefaultRouter;->getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;
    :try_end_f
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v2

    .line 341
    .end local v1           #llist:Ljava/util/LinkedList;
    :goto_10
    return-object v2

    .line 340
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 341
    .local v0, ex:Ljavax/sip/SipException;
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public getOutboundProxy()Ljavax/sip/address/Hop;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;

    return-object v0
.end method
