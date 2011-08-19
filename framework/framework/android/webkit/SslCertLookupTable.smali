.class Landroid/webkit/SslCertLookupTable;
.super Ljava/lang/Object;
.source "SslCertLookupTable.java"


# static fields
.field private static sTable:Landroid/webkit/SslCertLookupTable;


# instance fields
.field private final table:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/webkit/SslCertLookupTable;->table:Landroid/os/Bundle;

    .line 39
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/webkit/SslCertLookupTable;
    .registers 2

    .prologue
    .line 31
    const-class v0, Landroid/webkit/SslCertLookupTable;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/webkit/SslCertLookupTable;->sTable:Landroid/webkit/SslCertLookupTable;

    if-nez v1, :cond_e

    .line 32
    new-instance v1, Landroid/webkit/SslCertLookupTable;

    invoke-direct {v1}, Landroid/webkit/SslCertLookupTable;-><init>()V

    sput-object v1, Landroid/webkit/SslCertLookupTable;->sTable:Landroid/webkit/SslCertLookupTable;

    .line 34
    :cond_e
    sget-object v1, Landroid/webkit/SslCertLookupTable;->sTable:Landroid/webkit/SslCertLookupTable;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 31
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public Allow(Landroid/net/http/SslError;)V
    .registers 5
    .parameter "ssl_error"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/webkit/SslCertLookupTable;->table:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    return-void
.end method

.method public Deny(Landroid/net/http/SslError;)V
    .registers 5
    .parameter "ssl_error"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/webkit/SslCertLookupTable;->table:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    return-void
.end method

.method public IsAllowed(Landroid/net/http/SslError;)Z
    .registers 4
    .parameter "ssl_error"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/webkit/SslCertLookupTable;->table:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
