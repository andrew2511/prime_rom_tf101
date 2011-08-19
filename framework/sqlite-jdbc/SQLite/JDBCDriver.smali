.class public LSQLite/JDBCDriver;
.super Ljava/lang/Object;
.source "JDBCDriver.java"

# interfaces
.implements Ljava/sql/Driver;


# static fields
.field public static final MAJORVERSION:I = 0x1

.field private static makeConn:Ljava/lang/reflect/Constructor;

.field public static sharedCache:Z

.field public static vfs:Ljava/lang/String;


# instance fields
.field protected conn:Ljava/sql/Connection;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 10
    sput-boolean v8, LSQLite/JDBCDriver;->sharedCache:Z

    .line 12
    sput-object v9, LSQLite/JDBCDriver;->vfs:Ljava/lang/String;

    .line 14
    sput-object v9, LSQLite/JDBCDriver;->makeConn:Ljava/lang/reflect/Constructor;

    .line 20
    const/4 v1, 0x0

    .line 21
    .local v1, connClass:Ljava/lang/Class;
    const/4 v8, 0x5

    :try_start_a
    new-array v0, v8, [Ljava/lang/Class;

    .line 22
    .local v0, args:[Ljava/lang/Class;
    const/4 v8, 0x0

    const-string v9, "java.lang.String"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v0, v8

    .line 23
    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-object v9, v0, v9

    aput-object v9, v0, v8

    .line 24
    const/4 v8, 0x2

    const/4 v9, 0x0

    aget-object v9, v0, v9

    aput-object v9, v0, v8

    .line 25
    const/4 v8, 0x3

    const/4 v9, 0x0

    aget-object v9, v0, v9

    aput-object v9, v0, v8

    .line 26
    const/4 v8, 0x4

    const/4 v9, 0x0

    aget-object v9, v0, v9

    aput-object v9, v0, v8

    .line 27
    const-string v8, "java.version"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 29
    .local v5, jvers:Ljava/lang/String;
    if-eqz v5, :cond_3d

    const-string v8, "1.0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 30
    :cond_3d
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "unsupported java version"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_45} :catch_45

    .line 77
    .end local v0           #args:[Ljava/lang/Class;
    .end local v5           #jvers:Ljava/lang/String;
    :catch_45
    move-exception v8

    move-object v3, v8

    .line 78
    .local v3, e:Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v8, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 80
    .end local v3           #e:Ljava/lang/Exception;
    :cond_4c
    :goto_4c
    return-void

    .line 31
    .restart local v0       #args:[Ljava/lang/Class;
    .restart local v5       #jvers:Ljava/lang/String;
    :cond_4d
    :try_start_4d
    const-string v8, "1.1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_95

    .line 32
    const-string v2, "SQLite.JDBC1.JDBCConnection"

    .line 57
    .local v2, cvers:Ljava/lang/String;
    :goto_57
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    sput-object v8, LSQLite/JDBCDriver;->makeConn:Ljava/lang/reflect/Constructor;

    .line 59
    new-instance v8, LSQLite/JDBCDriver;

    invoke-direct {v8}, LSQLite/JDBCDriver;-><init>()V

    invoke-static {v8}, Ljava/sql/DriverManager;->registerDriver(Ljava/sql/Driver;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_69} :catch_45

    .line 61
    :try_start_69
    const-string v8, "SQLite.sharedcache"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, shcache:Ljava/lang/String;
    if-eqz v6, :cond_88

    const-string v8, "y"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_81

    const-string v8, "Y"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_88

    .line 65
    :cond_81
    const/4 v8, 0x1

    invoke-static {v8}, LSQLite/Database;->_enable_shared_cache(Z)Z

    move-result v8

    sput-boolean v8, LSQLite/JDBCDriver;->sharedCache:Z
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_88} :catch_d6

    .line 70
    .end local v6           #shcache:Ljava/lang/String;
    :cond_88
    :goto_88
    :try_start_88
    const-string v8, "SQLite.vfs"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, tvfs:Ljava/lang/String;
    if-eqz v7, :cond_4c

    .line 73
    sput-object v7, LSQLite/JDBCDriver;->vfs:Ljava/lang/String;
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_92} :catch_93

    goto :goto_4c

    .line 75
    .end local v7           #tvfs:Ljava/lang/String;
    :catch_93
    move-exception v8

    goto :goto_4c

    .line 33
    .end local v2           #cvers:Ljava/lang/String;
    :cond_95
    :try_start_95
    const-string v8, "1.2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a5

    const-string v8, "1.3"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a8

    .line 34
    :cond_a5
    const-string v2, "SQLite.JDBC2.JDBCConnection"

    .restart local v2       #cvers:Ljava/lang/String;
    goto :goto_57

    .line 35
    .end local v2           #cvers:Ljava/lang/String;
    :cond_a8
    const-string v8, "1.4"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b3

    .line 36
    const-string v2, "SQLite.JDBC2x.JDBCConnection"

    .restart local v2       #cvers:Ljava/lang/String;
    goto :goto_57

    .line 37
    .end local v2           #cvers:Ljava/lang/String;
    :cond_b3
    const-string v8, "1.5"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c5

    .line 38
    const-string v2, "SQLite.JDBC2y.JDBCConnection"
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_bd} :catch_45

    .line 40
    .restart local v2       #cvers:Ljava/lang/String;
    :try_start_bd
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c0} :catch_c1

    goto :goto_57

    .line 41
    :catch_c1
    move-exception v3

    .line 42
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_c2
    const-string v2, "SQLite.JDBC2x.JDBCConnection"

    .line 43
    goto :goto_57

    .line 45
    .end local v2           #cvers:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_c5
    const-string v2, "SQLite.JDBC2z.JDBCConnection"
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c7} :catch_45

    .line 47
    .restart local v2       #cvers:Ljava/lang/String;
    :try_start_c7
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_ca} :catch_cb

    goto :goto_57

    .line 48
    :catch_cb
    move-exception v3

    .line 49
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_cc
    const-string v2, "SQLite.JDBC2y.JDBCConnection"
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_ce} :catch_45

    .line 51
    :try_start_ce
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d1} :catch_d2

    goto :goto_57

    .line 52
    :catch_d2
    move-exception v4

    .line 53
    .local v4, ee:Ljava/lang/Exception;
    :try_start_d3
    const-string v2, "SQLite.JDBC2x.JDBCConnection"
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d5} :catch_45

    goto :goto_57

    .line 67
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #ee:Ljava/lang/Exception;
    :catch_d6
    move-exception v8

    goto :goto_88
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method


# virtual methods
.method public acceptsURL(Ljava/lang/String;)Z
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 86
    const-string v0, "sqlite:/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "jdbc:sqlite:/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .registers 10
    .parameter "url"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 92
    invoke-virtual {p0, p1}, LSQLite/JDBCDriver;->acceptsURL(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 93
    const/4 v3, 0x0

    .line 116
    :goto_9
    return-object v3

    .line 95
    :cond_a
    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/Object;

    .line 96
    .local v0, args:[Ljava/lang/Object;
    const/4 v3, 0x0

    aput-object p1, v0, v3

    .line 97
    if-eqz p2, :cond_34

    .line 98
    const-string v3, "encoding"

    invoke-virtual {p2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    .line 99
    const/4 v3, 0x2

    const-string v4, "password"

    invoke-virtual {p2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 100
    const/4 v3, 0x3

    const-string v4, "daterepr"

    invoke-virtual {p2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 101
    const-string v3, "vfs"

    invoke-virtual {p2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    .line 103
    :cond_34
    aget-object v3, v0, v5

    if-nez v3, :cond_40

    .line 104
    const-string v3, "SQLite.encoding"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    .line 106
    :cond_40
    aget-object v3, v0, v6

    if-nez v3, :cond_48

    .line 107
    sget-object v3, LSQLite/JDBCDriver;->vfs:Ljava/lang/String;

    aput-object v3, v0, v6

    .line 110
    :cond_48
    :try_start_48
    sget-object v3, LSQLite/JDBCDriver;->makeConn:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/Connection;

    iput-object v3, p0, LSQLite/JDBCDriver;->conn:Ljava/sql/Connection;
    :try_end_52
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_48 .. :try_end_52} :catch_55
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_52} :catch_65

    .line 116
    iget-object v3, p0, LSQLite/JDBCDriver;->conn:Ljava/sql/Connection;

    goto :goto_9

    .line 111
    :catch_55
    move-exception v3

    move-object v2, v3

    .line 112
    .local v2, ie:Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/sql/SQLException;

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 113
    .end local v2           #ie:Ljava/lang/reflect/InvocationTargetException;
    :catch_65
    move-exception v3

    move-object v1, v3

    .line 114
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/sql/SQLException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getMajorVersion()I
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public getMinorVersion()I
    .registers 2

    .prologue
    .line 124
    const v0, 0x132b423

    return v0
.end method

.method public getPropertyInfo(Ljava/lang/String;Ljava/util/Properties;)[Ljava/sql/DriverPropertyInfo;
    .registers 7
    .parameter "url"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/sql/DriverPropertyInfo;

    .line 130
    .local v0, p:[Ljava/sql/DriverPropertyInfo;
    new-instance v1, Ljava/sql/DriverPropertyInfo;

    const-string v2, "encoding"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Ljava/sql/DriverPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .local v1, pp:Ljava/sql/DriverPropertyInfo;
    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 132
    new-instance v1, Ljava/sql/DriverPropertyInfo;

    .end local v1           #pp:Ljava/sql/DriverPropertyInfo;
    const-string v2, "password"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Ljava/sql/DriverPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .restart local v1       #pp:Ljava/sql/DriverPropertyInfo;
    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 134
    new-instance v1, Ljava/sql/DriverPropertyInfo;

    .end local v1           #pp:Ljava/sql/DriverPropertyInfo;
    const-string v2, "daterepr"

    const-string v3, "normal"

    invoke-direct {v1, v2, v3}, Ljava/sql/DriverPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .restart local v1       #pp:Ljava/sql/DriverPropertyInfo;
    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 136
    new-instance v1, Ljava/sql/DriverPropertyInfo;

    .end local v1           #pp:Ljava/sql/DriverPropertyInfo;
    const-string v2, "vfs"

    sget-object v3, LSQLite/JDBCDriver;->vfs:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/sql/DriverPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .restart local v1       #pp:Ljava/sql/DriverPropertyInfo;
    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 138
    return-object v0
.end method

.method public jdbcCompliant()Z
    .registers 2

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method
