.class public final Lcom/ecareme/http/HttpDebugUtils;
.super Ljava/lang/Object;
.source "HttpDebugUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getRequestInfo(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .locals 2
    .parameter "req"

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "==== http request info ===="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "\nreq.getAuthType()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    const-string v1, "\nreq.getContextPath()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    const-string v1, "\nreq.getMethod()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    const-string v1, "\nreq.getPathInfo()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    const-string v1, "\nreq.getPathTranslated()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getPathTranslated()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    const-string v1, "\nreq.getQueryString()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    const-string v1, "\nreq.getRemoteUser()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getRemoteUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    const-string v1, "\nreq.getRequestedSessionId()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    const-string v1, "\nreq.getRequestURI()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    const-string v1, "\nreq.getRequestURL()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 219
    const-string v1, "\nreq.getServletPath()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    const-string v1, "\nreq.getUserPrincipal()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 223
    const-string v1, "\nreq.getCharacterEncoding()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    const-string v1, "\nreq.getContentLength()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getContentLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 227
    const-string v1, "\nreq.getContentType()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    const-string v1, "\nreq.getLocale()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 237
    const-string v1, "\nreq.getProtocol()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    const-string v1, "\nreq.getRemoteAddr()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    const-string v1, "\nreq.getRemoteHost()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getRemoteHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    const-string v1, "\nreq.getScheme()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    const-string v1, "\nreq.getServerName()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    const-string v1, "\nreq.getServerPort()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getServerPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 251
    const-string v1, "\nreq.isRequestedSessionIdFromCookie()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->isRequestedSessionIdFromCookie()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 253
    const-string v1, "\nreq.isRequestedSessionIdFromURL()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->isRequestedSessionIdFromURL()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 255
    const-string v1, "\nreq.isRequestedSessionIdValid()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->isRequestedSessionIdValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 257
    const-string v1, "\nreq.isSecure()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 259
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final getResponseInfo(Ljavax/servlet/http/HttpServletResponse;)Ljava/lang/String;
    .locals 2
    .parameter "rsp"

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "==== http response info ===="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 347
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "\nrsp.getBufferSize()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletResponse;->getBufferSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 349
    const-string v1, "\nrsp.getCharacterEncoding()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletResponse;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    const-string v1, "\nrsp.getLocale()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletResponse;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 355
    const-string v1, "\nrsp.isCommitted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 357
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static final getSessionInfo(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    .line 314
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "==== http session info ===="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "\nsession.getCreationTime()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    invoke-interface {p0}, Ljavax/servlet/http/HttpSession;->getCreationTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 317
    const-string v1, "\nsession.getId()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    invoke-interface {p0}, Ljavax/servlet/http/HttpSession;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    const-string v1, "\nsession.getLastAccessedTime()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    invoke-interface {p0}, Ljavax/servlet/http/HttpSession;->getLastAccessedTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 321
    const-string v1, "\nsession.getMaxInactiveInterval()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    invoke-interface {p0}, Ljavax/servlet/http/HttpSession;->getMaxInactiveInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 323
    const-string v1, "\nsession.isNew()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    invoke-interface {p0}, Ljavax/servlet/http/HttpSession;->isNew()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 325
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final printRequest(Ljavax/servlet/http/HttpServletRequest;)V
    .locals 1
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lcom/ecareme/http/HttpDebugUtils;->printRequestHttpHeader(Ljavax/servlet/http/HttpServletRequest;Ljava/io/OutputStream;)V

    .line 45
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lcom/ecareme/http/HttpDebugUtils;->printRequestParameter(Ljavax/servlet/http/HttpServletRequest;Ljava/io/OutputStream;)V

    .line 46
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lcom/ecareme/http/HttpDebugUtils;->printRequestAttributes(Ljavax/servlet/http/HttpServletRequest;Ljava/io/OutputStream;)V

    .line 47
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lcom/ecareme/http/HttpDebugUtils;->printRequestCookie(Ljavax/servlet/http/HttpServletRequest;Ljava/io/OutputStream;)V

    .line 48
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lcom/ecareme/http/HttpDebugUtils;->printRequestInfo(Ljavax/servlet/http/HttpServletRequest;Ljava/io/OutputStream;)V

    .line 49
    return-void
.end method

.method public static final printRequest(Ljavax/servlet/http/HttpServletRequest;Ljava/io/OutputStream;)V
    .locals 0
    .parameter "req"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/ecareme/http/HttpDebugUtils;->printRequestHttpHeader(Ljavax/servlet/http/HttpServletRequest;Ljava/io/OutputStream;)V

    .line 36
    invoke-static {p0, p1}, Lcom/ecareme/http/HttpDebugUtils;->printRequestParameter(Ljavax/servlet/http/HttpServletRequest;Ljava/io/OutputStream;)V

    .line 37
    invoke-static {p0, p1}, Lcom/ecareme/http/HttpDebugUtils;->printRequestAttributes(Ljavax/servlet/http/HttpServletRequest;Ljava/io/OutputStream;)V

    .line 38
    invoke-static {p0, p1}, Lcom/ecareme/http/HttpDebugUtils;->printRequestCookie(Ljavax/servlet/http/HttpServletRequest;Ljava/io/OutputStream;)V

    .line 39
    invoke-static {p0, p1}, Lcom/ecareme/http/HttpDebugUtils;->printRequestInfo(Ljavax/servlet/http/HttpServletRequest;Ljava/io/OutputStream;)V

    .line 40
    return-void
.end method

.method public static final printRequest(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;)V
    .locals 0
    .parameter "req"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/ecareme/http/HttpDebugUtils;->printRequestHttpHeader(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;)V

    .line 27
    invoke-static {p0, p1}, Lcom/ecareme/http/HttpDebugUtils;->printRequestParameter(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;)V

    .line 28
    invoke-static {p0, p1}, Lcom/ecareme/http/HttpDebugUtils;->printRequestAttributes(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;)V

    .line 29
    invoke-static {p0, p1}, Lcom/ecareme/http/HttpDebugUtils;->printRequestCookie(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;)V

    .line 30
    invoke-static {p0, p1}, Lcom/ecareme/http/HttpDebugUtils;->printRequestInfo(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;)V

    .line 31
    return-void
.end method

.method public static final printRequestAttributes(Ljavax/servlet/http/HttpServletRequest;)V
    .locals 1
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lcom/ecareme/http/HttpDebugUtils;->printRequestAttributes(Ljavax/servlet/http/HttpServletRequest;Ljava/io/OutputStream;)V

    .line 144
    return-void
.end method

.method public static final printRequestAttributes(Ljavax/servlet/http/HttpServletRequest;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "req"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    const-string v2, "==== http request attribute ====\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 131
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    return-void

    .line 133
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 135
    const-string v2, "="

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 136
    invoke-interface {p0, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 137
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public static final printRequestAttributes(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;)V
    .locals 3
    .parameter "req"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const-string v2, "==== http request attribute ====\n"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 118
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    return-void

    .line 120
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 122
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 123
    invoke-interface {p0, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 124
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_0
.end method

.method public static final printRequestCookie(Ljavax/servlet/http/HttpServletRequest;)V
    .locals 1
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lcom/ecareme/http/HttpDebugUtils;->printRequestCookie(Ljavax/servlet/http/HttpServletRequest;Ljava/io/OutputStream;)V

    .line 179
    return-void
.end method

.method public static final printRequestCookie(Ljavax/servlet/http/HttpServletRequest;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "req"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    const-string v2, "==== http request cookie ====\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 164
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object v0

    .line 165
    .local v0, cookies:[Ljavax/servlet/http/Cookie;
    if-nez v0, :cond_1

    .line 174
    :cond_0
    return-void

    .line 169
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 171
    aget-object v2, v0, v1

    invoke-static {v2}, Lorg/apache/commons/lang/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 172
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static final printRequestCookie(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;)V
    .locals 3
    .parameter "req"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    const-string v2, "==== http request cookie ====\n"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 149
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object v0

    .line 150
    .local v0, cookies:[Ljavax/servlet/http/Cookie;
    if-nez v0, :cond_1

    .line 159
    :cond_0
    return-void

    .line 154
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 156
    aget-object v2, v0, v1

    invoke-static {v2}, Lorg/apache/commons/lang/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 157
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static final printRequestHttpHeader(Ljavax/servlet/http/HttpServletRequest;)V
    .locals 1
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lcom/ecareme/http/HttpDebugUtils;->printRequestHttpHeader(Ljavax/servlet/http/HttpServletRequest;Ljava/io/OutputStream;)V

    .line 80
    return-void
.end method

.method public static final printRequestHttpHeader(Ljavax/servlet/http/HttpServletRequest;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "req"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    const-string v2, "==== http request header ====\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 67
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getHeaderNames()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    return-void

    .line 69
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 71
    const-string v2, "="

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 72
    invoke-interface {p0, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 73
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public static final printRequestHttpHeader(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;)V
    .locals 3
    .parameter "req"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    const-string v2, "==== http request header ====\n"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 54
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getHeaderNames()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    return-void

    .line 56
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 58
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 59
    invoke-interface {p0, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 60
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_0
.end method

.method public static final printRequestInfo(Ljavax/servlet/http/HttpServletRequest;)V
    .locals 2
    .parameter "req"

    .prologue
    .line 193
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0}, Lcom/ecareme/http/HttpDebugUtils;->getRequestInfo(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public static final printRequestInfo(Ljavax/servlet/http/HttpServletRequest;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "req"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {p0}, Lcom/ecareme/http/HttpDebugUtils;->getRequestInfo(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 189
    return-void
.end method

.method public static final printRequestInfo(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;)V
    .locals 1
    .parameter "req"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {p0}, Lcom/ecareme/http/HttpDebugUtils;->getRequestInfo(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public static final printRequestParameter(Ljavax/servlet/http/HttpServletRequest;)V
    .locals 1
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lcom/ecareme/http/HttpDebugUtils;->printRequestParameter(Ljavax/servlet/http/HttpServletRequest;Ljava/io/OutputStream;)V

    .line 113
    return-void
.end method

.method public static final printRequestParameter(Ljavax/servlet/http/HttpServletRequest;Ljava/io/OutputStream;)V
    .locals 4
    .parameter "req"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const-string v3, "==== http request parameter ====\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 99
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getParameterMap()Ljava/util/Map;

    move-result-object v2

    .line 100
    .local v2, params:Ljava/util/Map;
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    return-void

    .line 102
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 103
    .local v1, key:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 104
    const-string v3, "="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 105
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 106
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public static final printRequestParameter(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;)V
    .locals 4
    .parameter "req"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const-string v3, "==== http request parameter ====\n"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 85
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getParameterMap()Ljava/util/Map;

    move-result-object v2

    .line 86
    .local v2, params:Ljava/util/Map;
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    return-void

    .line 88
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 89
    .local v1, key:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 90
    const-string v3, "="

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 91
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 92
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_0
.end method

.method public static final printResponse(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .parameter "rsp"

    .prologue
    .line 373
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0}, Lcom/ecareme/http/HttpDebugUtils;->getResponseInfo(Ljavax/servlet/http/HttpServletResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public static final printResponse(Ljavax/servlet/http/HttpServletResponse;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "rsp"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-static {p0}, Lcom/ecareme/http/HttpDebugUtils;->getResponseInfo(Ljavax/servlet/http/HttpServletResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 369
    return-void
.end method

.method public static final printResponse(Ljavax/servlet/http/HttpServletResponse;Ljava/io/Writer;)V
    .locals 1
    .parameter "rsp"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-static {p0}, Lcom/ecareme/http/HttpDebugUtils;->getResponseInfo(Ljavax/servlet/http/HttpServletResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public static final printSession(Ljavax/servlet/http/HttpSession;)V
    .locals 1
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lcom/ecareme/http/HttpDebugUtils;->printSessionAttribute(Ljavax/servlet/http/HttpSession;Ljava/io/OutputStream;)V

    .line 278
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lcom/ecareme/http/HttpDebugUtils;->printSessionInfo(Ljavax/servlet/http/HttpSession;Ljava/io/OutputStream;)V

    .line 279
    return-void
.end method

.method public static final printSession(Ljavax/servlet/http/HttpSession;Ljava/io/OutputStream;)V
    .locals 0
    .parameter "req"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-static {p0, p1}, Lcom/ecareme/http/HttpDebugUtils;->printSessionAttribute(Ljavax/servlet/http/HttpSession;Ljava/io/OutputStream;)V

    .line 272
    invoke-static {p0, p1}, Lcom/ecareme/http/HttpDebugUtils;->printSessionInfo(Ljavax/servlet/http/HttpSession;Ljava/io/OutputStream;)V

    .line 273
    return-void
.end method

.method public static final printSession(Ljavax/servlet/http/HttpSession;Ljava/io/Writer;)V
    .locals 0
    .parameter "req"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-static {p0, p1}, Lcom/ecareme/http/HttpDebugUtils;->printSessionAttribute(Ljavax/servlet/http/HttpSession;Ljava/io/Writer;)V

    .line 266
    invoke-static {p0, p1}, Lcom/ecareme/http/HttpDebugUtils;->printSessionInfo(Ljavax/servlet/http/HttpSession;Ljava/io/Writer;)V

    .line 267
    return-void
.end method

.method public static final printSessionAttribute(Ljavax/servlet/http/HttpSession;)V
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lcom/ecareme/http/HttpDebugUtils;->printSessionAttribute(Ljavax/servlet/http/HttpSession;Ljava/io/OutputStream;)V

    .line 310
    return-void
.end method

.method public static final printSessionAttribute(Ljavax/servlet/http/HttpSession;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "s"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    const-string v2, "==== http session attribute ====\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 297
    invoke-interface {p0}, Ljavax/servlet/http/HttpSession;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    return-void

    .line 299
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 301
    const-string v2, "="

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 302
    invoke-interface {p0, v1}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 303
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public static final printSessionAttribute(Ljavax/servlet/http/HttpSession;Ljava/io/Writer;)V
    .locals 3
    .parameter "s"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    const-string v2, "==== http session attribute ====\n"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 284
    invoke-interface {p0}, Ljavax/servlet/http/HttpSession;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    return-void

    .line 286
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 288
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 289
    invoke-interface {p0, v1}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 290
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_0
.end method

.method public static final printSessionInfo(Ljavax/servlet/http/HttpSession;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 341
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0}, Lcom/ecareme/http/HttpDebugUtils;->getSessionInfo(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public static final printSessionInfo(Ljavax/servlet/http/HttpSession;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "s"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-static {p0}, Lcom/ecareme/http/HttpDebugUtils;->getSessionInfo(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 337
    return-void
.end method

.method public static final printSessionInfo(Ljavax/servlet/http/HttpSession;Ljava/io/Writer;)V
    .locals 1
    .parameter "s"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-static {p0}, Lcom/ecareme/http/HttpDebugUtils;->getSessionInfo(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 332
    return-void
.end method
