.class public Ljava/sql/SQLException;
.super Ljava/lang/Exception;
.source "SQLException.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/sql/SQLException$InternalIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Exception;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1da1e930db3e75dcL


# instance fields
.field private SQLState:Ljava/lang/String;

.field private next:Ljava/sql/SQLException;

.field private vendorCode:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 44
    iput-object v1, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 48
    iput-object v1, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "theReason"

    .prologue
    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "theReason"
    .parameter "theSQLState"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter "theReason"
    .parameter "theSQLState"
    .parameter "theErrorCode"

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object v1, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 48
    iput-object v1, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    .line 100
    iput-object p2, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 101
    iput p3, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .registers 5
    .parameter "theReason"
    .parameter "theSQLState"
    .parameter "theErrorCode"
    .parameter "theCause"

    .prologue
    .line 174
    invoke-direct {p0, p1, p2, p4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    iput p3, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "theReason"
    .parameter "theSQLState"
    .parameter "theCause"

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    iput-object v1, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 48
    iput-object v1, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    .line 152
    iput-object p2, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "theReason"
    .parameter "theCause"

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    iput-object v1, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 48
    iput-object v1, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 5
    .parameter "theCause"

    .prologue
    const/4 v2, 0x0

    .line 116
    if-nez p1, :cond_9

    move-object v0, v2

    :goto_4
    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 117
    return-void

    .line 116
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method static synthetic access$000(Ljava/sql/SQLException;)Ljava/sql/SQLException;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .prologue
    .line 185
    iget v0, p0, Ljava/sql/SQLException;->vendorCode:I

    return v0
.end method

.method public getNextException()Ljava/sql/SQLException;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    return-object v0
.end method

.method public getSQLState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Ljava/sql/SQLException$InternalIterator;

    invoke-direct {v0, p0}, Ljava/sql/SQLException$InternalIterator;-><init>(Ljava/sql/SQLException;)V

    return-object v0
.end method

.method public setNextException(Ljava/sql/SQLException;)V
    .registers 3
    .parameter "ex"

    .prologue
    .line 221
    iget-object v0, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    if-eqz v0, :cond_a

    .line 222
    iget-object v0, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    invoke-virtual {v0, p1}, Ljava/sql/SQLException;->setNextException(Ljava/sql/SQLException;)V

    .line 226
    :goto_9
    return-void

    .line 224
    :cond_a
    iput-object p1, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    goto :goto_9
.end method
