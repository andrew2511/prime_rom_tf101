.class public Ljavax/xml/datatype/DatatypeConfigurationException;
.super Ljava/lang/Exception;
.source "DatatypeConfigurationException.java"


# static fields
.field private static final serialVersionUID:J = -0x179562e26ca3fb46L


# instance fields
.field private causeOnJDK13OrBelow:Ljava/lang/Throwable;

.field private transient isJDK14OrAbove:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    .line 77
    invoke-direct {p0, p2}, Ljavax/xml/datatype/DatatypeConfigurationException;->initCauseByReflection(Ljava/lang/Throwable;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3
    .parameter "cause"

    .prologue
    .line 88
    if-nez p1, :cond_d

    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    .line 89
    invoke-direct {p0, p1}, Ljavax/xml/datatype/DatatypeConfigurationException;->initCauseByReflection(Ljava/lang/Throwable;)V

    .line 90
    return-void

    .line 88
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private initCauseByReflection(Ljava/lang/Throwable;)V
    .registers 8
    .parameter "cause"

    .prologue
    .line 143
    iput-object p1, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    .line 145
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "initCause"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Throwable;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 146
    .local v0, m:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    .line 151
    .end local v0           #m:Ljava/lang/reflect/Method;
    :goto_20
    return-void

    .line 150
    :catch_21
    move-exception v1

    goto :goto_20
.end method

.method private printStackTrace0(Ljava/io/PrintWriter;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 137
    iget-object v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 138
    const-string v0, "------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 140
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 10
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 157
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getCause"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 158
    .local v1, m1:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 159
    .local v0, cause:Ljava/lang/Throwable;
    iget-object v3, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    if-nez v3, :cond_23

    .line 160
    iput-object v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    .line 166
    :cond_1f
    :goto_1f
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    .line 170
    .end local v0           #cause:Ljava/lang/Throwable;
    .end local v1           #m1:Ljava/lang/reflect/Method;
    :goto_22
    return-void

    .line 162
    .restart local v0       #cause:Ljava/lang/Throwable;
    .restart local v1       #m1:Ljava/lang/reflect/Method;
    :cond_23
    if-nez v0, :cond_1f

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "initCause"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Throwable;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 164
    .local v2, m2:Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_42} :catch_43

    goto :goto_1f

    .line 169
    .end local v0           #cause:Ljava/lang/Throwable;
    .end local v1           #m1:Ljava/lang/reflect/Method;
    .end local v2           #m2:Ljava/lang/reflect/Method;
    :catch_43
    move-exception v3

    goto :goto_22
.end method


# virtual methods
.method public printStackTrace()V
    .registers 4

    .prologue
    .line 98
    iget-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    if-eqz v0, :cond_14

    .line 99
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;->printStackTrace0(Ljava/io/PrintWriter;)V

    .line 104
    :goto_13
    return-void

    .line 102
    :cond_14
    invoke-super {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 113
    iget-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    if-eqz v0, :cond_11

    .line 114
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;->printStackTrace0(Ljava/io/PrintWriter;)V

    .line 119
    :goto_10
    return-void

    .line 117
    :cond_11
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_10
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 128
    iget-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    if-eqz v0, :cond_c

    .line 129
    invoke-direct {p0, p1}, Ljavax/xml/datatype/DatatypeConfigurationException;->printStackTrace0(Ljava/io/PrintWriter;)V

    .line 134
    :goto_b
    return-void

    .line 132
    :cond_c
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_b
.end method
