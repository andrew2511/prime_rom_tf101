.class public Ljava/sql/SQLWarning;
.super Ljava/sql/SQLException;
.source "SQLWarning.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x365d2d0aa3e484d8L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "theReason"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "theReason"
    .parameter "theSQLState"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .parameter "theReason"
    .parameter "theSQLState"
    .parameter "theErrorCode"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .registers 5
    .parameter "reason"
    .parameter "SQLState"
    .parameter "vendorCode"
    .parameter "cause"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "reason"
    .parameter "SQLState"
    .parameter "cause"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "reason"
    .parameter "cause"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "cause"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/Throwable;)V

    .line 90
    return-void
.end method


# virtual methods
.method public getNextWarning()Ljava/sql/SQLWarning;
    .registers 4

    .prologue
    .line 134
    invoke-super {p0}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    .line 135
    .local v0, next:Ljava/sql/SQLException;
    if-nez v0, :cond_8

    .line 136
    const/4 v1, 0x0

    .line 139
    .end local v0           #next:Ljava/sql/SQLException;
    :goto_7
    return-object v1

    .line 138
    .restart local v0       #next:Ljava/sql/SQLException;
    :cond_8
    instance-of v1, v0, Ljava/sql/SQLWarning;

    if-eqz v1, :cond_10

    .line 139
    check-cast v0, Ljava/sql/SQLWarning;

    .end local v0           #next:Ljava/sql/SQLException;
    move-object v1, v0

    goto :goto_7

    .line 141
    .restart local v0       #next:Ljava/sql/SQLException;
    :cond_10
    new-instance v1, Ljava/lang/Error;

    const-string v2, "SQLWarning chain holds value that is not a SQLWarning"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setNextWarning(Ljava/sql/SQLWarning;)V
    .registers 2
    .parameter "w"

    .prologue
    .line 151
    invoke-super {p0, p1}, Ljava/sql/SQLException;->setNextException(Ljava/sql/SQLException;)V

    .line 152
    return-void
.end method
