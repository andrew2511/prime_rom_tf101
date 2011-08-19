.class public abstract Ljava/net/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/Authenticator$RequestorType;
    }
.end annotation


# static fields
.field private static final requestPasswordAuthenticationPermission:Ljava/net/NetPermission;

.field private static final setDefaultAuthenticatorPermission:Ljava/net/NetPermission;

.field private static thisAuthenticator:Ljava/net/Authenticator;


# instance fields
.field private addr:Ljava/net/InetAddress;

.field private host:Ljava/lang/String;

.field private port:I

.field private prompt:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private rt:Ljava/net/Authenticator$RequestorType;

.field private scheme:Ljava/lang/String;

.field private url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "requestPasswordAuthentication"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/Authenticator;->requestPasswordAuthenticationPermission:Ljava/net/NetPermission;

    .line 39
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "setDefaultAuthenticator"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/Authenticator;->setDefaultAuthenticatorPermission:Ljava/net/NetPermission;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    return-void
.end method

.method public static declared-synchronized requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;
    .registers 10
    .parameter "rHost"
    .parameter "rAddr"
    .parameter "rPort"
    .parameter "rProtocol"
    .parameter "rPrompt"
    .parameter "rScheme"

    .prologue
    .line 211
    const-class v1, Ljava/net/Authenticator;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 212
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_e

    .line 213
    sget-object v2, Ljava/net/Authenticator;->requestPasswordAuthenticationPermission:Ljava/net/NetPermission;

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 215
    :cond_e
    sget-object v2, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_3a

    if-nez v2, :cond_15

    .line 216
    const/4 v2, 0x0

    .line 230
    :goto_13
    monitor-exit v1

    return-object v2

    .line 220
    :cond_15
    :try_start_15
    sget-object v2, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p0, v2, Ljava/net/Authenticator;->host:Ljava/lang/String;

    .line 221
    sget-object v2, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p1, v2, Ljava/net/Authenticator;->addr:Ljava/net/InetAddress;

    .line 222
    sget-object v2, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput p2, v2, Ljava/net/Authenticator;->port:I

    .line 223
    sget-object v2, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p3, v2, Ljava/net/Authenticator;->protocol:Ljava/lang/String;

    .line 224
    sget-object v2, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p4, v2, Ljava/net/Authenticator;->prompt:Ljava/lang/String;

    .line 225
    sget-object v2, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p5, v2, Ljava/net/Authenticator;->scheme:Ljava/lang/String;

    .line 226
    sget-object v2, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    sget-object v3, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    iput-object v3, v2, Ljava/net/Authenticator;->rt:Ljava/net/Authenticator$RequestorType;

    .line 230
    sget-object v2, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    invoke-virtual {v2}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    :try_end_38
    .catchall {:try_start_15 .. :try_end_38} :catchall_3a

    move-result-object v2

    goto :goto_13

    .line 211
    .end local v0           #sm:Ljava/lang/SecurityManager;
    :catchall_3a
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;
    .registers 10
    .parameter "rHost"
    .parameter "rAddr"
    .parameter "rPort"
    .parameter "rProtocol"
    .parameter "rPrompt"
    .parameter "rScheme"
    .parameter "rURL"
    .parameter "reqType"

    .prologue
    .line 274
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 275
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 276
    sget-object v1, Ljava/net/Authenticator;->requestPasswordAuthenticationPermission:Ljava/net/NetPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 278
    :cond_b
    sget-object v1, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    if-nez v1, :cond_11

    .line 279
    const/4 v1, 0x0

    .line 294
    :goto_10
    return-object v1

    .line 283
    :cond_11
    sget-object v1, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p0, v1, Ljava/net/Authenticator;->host:Ljava/lang/String;

    .line 284
    sget-object v1, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p1, v1, Ljava/net/Authenticator;->addr:Ljava/net/InetAddress;

    .line 285
    sget-object v1, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput p2, v1, Ljava/net/Authenticator;->port:I

    .line 286
    sget-object v1, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p3, v1, Ljava/net/Authenticator;->protocol:Ljava/lang/String;

    .line 287
    sget-object v1, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p4, v1, Ljava/net/Authenticator;->prompt:Ljava/lang/String;

    .line 288
    sget-object v1, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p5, v1, Ljava/net/Authenticator;->scheme:Ljava/lang/String;

    .line 289
    sget-object v1, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p6, v1, Ljava/net/Authenticator;->url:Ljava/net/URL;

    .line 290
    sget-object v1, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p7, v1, Ljava/net/Authenticator;->rt:Ljava/net/Authenticator$RequestorType;

    .line 294
    sget-object v1, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    invoke-virtual {v1}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;

    move-result-object v1

    goto :goto_10
.end method

.method public static declared-synchronized requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;
    .registers 9
    .parameter "rAddr"
    .parameter "rPort"
    .parameter "rProtocol"
    .parameter "rPrompt"
    .parameter "rScheme"

    .prologue
    .line 144
    const-class v1, Ljava/net/Authenticator;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 145
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_e

    .line 146
    sget-object v2, Ljava/net/Authenticator;->requestPasswordAuthenticationPermission:Ljava/net/NetPermission;

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 148
    :cond_e
    sget-object v2, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_36

    if-nez v2, :cond_15

    .line 149
    const/4 v2, 0x0

    .line 162
    :goto_13
    monitor-exit v1

    return-object v2

    .line 153
    :cond_15
    :try_start_15
    sget-object v2, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p0, v2, Ljava/net/Authenticator;->addr:Ljava/net/InetAddress;

    .line 154
    sget-object v2, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput p1, v2, Ljava/net/Authenticator;->port:I

    .line 155
    sget-object v2, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p2, v2, Ljava/net/Authenticator;->protocol:Ljava/lang/String;

    .line 156
    sget-object v2, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p3, v2, Ljava/net/Authenticator;->prompt:Ljava/lang/String;

    .line 157
    sget-object v2, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p4, v2, Ljava/net/Authenticator;->scheme:Ljava/lang/String;

    .line 158
    sget-object v2, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    sget-object v3, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    iput-object v3, v2, Ljava/net/Authenticator;->rt:Ljava/net/Authenticator$RequestorType;

    .line 162
    sget-object v2, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    invoke-virtual {v2}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    :try_end_34
    .catchall {:try_start_15 .. :try_end_34} :catchall_36

    move-result-object v2

    goto :goto_13

    .line 144
    .end local v0           #sm:Ljava/lang/SecurityManager;
    :catchall_36
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static setDefault(Ljava/net/Authenticator;)V
    .registers 3
    .parameter "a"

    .prologue
    .line 178
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 179
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 180
    sget-object v1, Ljava/net/Authenticator;->setDefaultAuthenticatorPermission:Ljava/net/NetPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 182
    :cond_b
    sput-object p0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    .line 183
    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getRequestingHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Ljava/net/Authenticator;->host:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingPort()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Ljava/net/Authenticator;->port:I

    return v0
.end method

.method protected final getRequestingPrompt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Ljava/net/Authenticator;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingProtocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Ljava/net/Authenticator;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Ljava/net/Authenticator;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingSite()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Ljava/net/Authenticator;->addr:Ljava/net/InetAddress;

    return-object v0
.end method

.method protected getRequestingURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Ljava/net/Authenticator;->url:Ljava/net/URL;

    return-object v0
.end method

.method protected getRequestorType()Ljava/net/Authenticator$RequestorType;
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Ljava/net/Authenticator;->rt:Ljava/net/Authenticator$RequestorType;

    return-object v0
.end method
