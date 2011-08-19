.class final Ljavax/xml/transform/SecuritySupport;
.super Ljava/lang/Object;
.source "SecuritySupport.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doesFileExist(Ljava/io/File;)Z
    .registers 2
    .parameter "f"

    .prologue
    .line 97
    new-instance v0, Ljavax/xml/transform/SecuritySupport$5;

    invoke-direct {v0, p0}, Ljavax/xml/transform/SecuritySupport$5;-><init>(Ljava/io/File;)V

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
    .line 43
    new-instance v0, Ljavax/xml/transform/SecuritySupport$1;

    invoke-direct {v0}, Ljavax/xml/transform/SecuritySupport$1;-><init>()V

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
    .line 68
    :try_start_0
    new-instance v1, Ljavax/xml/transform/SecuritySupport$3;

    invoke-direct {v1, p0}, Ljavax/xml/transform/SecuritySupport$3;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/FileInputStream;
    :try_end_b
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    .line 74
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 75
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
    .line 82
    new-instance v0, Ljavax/xml/transform/SecuritySupport$4;

    invoke-direct {v0, p0, p1}, Ljavax/xml/transform/SecuritySupport$4;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/InputStream;

    return-object p0
.end method

.method static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "propName"

    .prologue
    .line 56
    new-instance v0, Ljavax/xml/transform/SecuritySupport$2;

    invoke-direct {v0, p0}, Ljavax/xml/transform/SecuritySupport$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
