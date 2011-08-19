.class LSQLite/JDBC2z/BatchArg;
.super Ljava/lang/Object;
.source "JDBCPreparedStatement.java"


# instance fields
.field arg:Ljava/lang/String;

.field blob:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .parameter "arg"
    .parameter "blob"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    if-nez p1, :cond_b

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, LSQLite/JDBC2z/BatchArg;->arg:Ljava/lang/String;

    .line 17
    :goto_8
    iput-boolean p2, p0, LSQLite/JDBC2z/BatchArg;->blob:Z

    .line 18
    return-void

    .line 15
    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LSQLite/JDBC2z/BatchArg;->arg:Ljava/lang/String;

    goto :goto_8
.end method
