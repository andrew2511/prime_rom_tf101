.class final Ljavax/xml/xpath/SecuritySupport;
.super Ljava/lang/Object;
.source "SecuritySupport.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doesFileExist(Ljava/io/File;)Z
    .registers 2
    .parameter "f"

    .prologue
    .line 154
    new-instance v0, Ljavax/xml/xpath/SecuritySupport$8;

    invoke-direct {v0, p0}, Ljavax/xml/xpath/SecuritySupport$8;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    .prologue
    .line 45
    new-instance v0, Ljavax/xml/xpath/SecuritySupport$1;

    invoke-direct {v0}, Ljavax/xml/xpath/SecuritySupport$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .registers 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    new-instance v1, Ljavax/xml/xpath/SecuritySupport$3;

    invoke-direct {v1, p0}, Ljavax/xml/xpath/SecuritySupport$3;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/FileInputStream;
    :try_end_b
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    .line 76
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 77
    .local v0, e:Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Ljava/io/FileNotFoundException;

    throw p0
.end method

.method static getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .parameter "cl"
    .parameter "name"

    .prologue
    .line 139
    new-instance v0, Ljavax/xml/xpath/SecuritySupport$7;

    invoke-direct {v0, p0, p1}, Ljavax/xml/xpath/SecuritySupport$7;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/InputStream;

    return-object p0
.end method

.method static getResourceAsURL(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/net/URL;
    .registers 3
    .parameter "cl"
    .parameter "name"

    .prologue
    .line 99
    new-instance v0, Ljavax/xml/xpath/SecuritySupport$5;

    invoke-direct {v0, p0, p1}, Ljavax/xml/xpath/SecuritySupport$5;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/net/URL;

    return-object p0
.end method

.method static getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 4
    .parameter "cl"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    :try_start_0
    new-instance v1, Ljavax/xml/xpath/SecuritySupport$6;

    invoke-direct {v1, p0, p1}, Ljavax/xml/xpath/SecuritySupport$6;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Enumeration;
    :try_end_b
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    .line 131
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 132
    .local v0, e:Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0
.end method

.method static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "propName"

    .prologue
    .line 58
    new-instance v0, Ljavax/xml/xpath/SecuritySupport$2;

    invoke-direct {v0, p0}, Ljavax/xml/xpath/SecuritySupport$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static getURLInputStream(Ljava/net/URL;)Ljava/io/InputStream;
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    :try_start_0
    new-instance v1, Ljavax/xml/xpath/SecuritySupport$4;

    invoke-direct {v1, p0}, Ljavax/xml/xpath/SecuritySupport$4;-><init>(Ljava/net/URL;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/InputStream;
    :try_end_b
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    .line 91
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 92
    .local v0, e:Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0
.end method
