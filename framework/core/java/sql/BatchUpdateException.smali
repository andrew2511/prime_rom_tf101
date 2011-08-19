.class public Ljava/sql/BatchUpdateException;
.super Ljava/sql/SQLException;
.source "BatchUpdateException.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x52f473c0c18b0e5dL


# instance fields
.field private updateCounts:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[I)V
    .registers 6
    .parameter "reason"
    .parameter "SQLState"
    .parameter "vendorCode"
    .parameter "updateCounts"

    .prologue
    .line 203
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 204
    iput-object p4, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[ILjava/lang/Throwable;)V
    .registers 7
    .parameter "reason"
    .parameter "SQLState"
    .parameter "vendorCode"
    .parameter "updateCounts"
    .parameter "cause"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3, p5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 128
    iput-object p4, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[I)V
    .registers 5
    .parameter "reason"
    .parameter "SQLState"
    .parameter "updateCounts"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 182
    iput-object p3, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/Throwable;)V
    .registers 6
    .parameter "reason"
    .parameter "SQLState"
    .parameter "updateCounts"
    .parameter "cause"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 112
    iput-object p3, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[I)V
    .registers 4
    .parameter "reason"
    .parameter "updateCounts"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 161
    iput-object p2, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[ILjava/lang/Throwable;)V
    .registers 5
    .parameter "reason"
    .parameter "updateCounts"
    .parameter "cause"

    .prologue
    .line 95
    invoke-direct {p0, p1, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 96
    iput-object p2, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3
    .parameter "cause"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/sql/BatchUpdateException;-><init>([ILjava/lang/Throwable;)V

    .line 67
    return-void
.end method

.method public constructor <init>([I)V
    .registers 3
    .parameter "updateCounts"

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 143
    iput-object p1, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 144
    return-void
.end method

.method public constructor <init>([ILjava/lang/Throwable;)V
    .registers 4
    .parameter "updateCounts"
    .parameter "cause"

    .prologue
    .line 80
    invoke-direct {p0, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/Throwable;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 81
    iput-object p1, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 82
    return-void
.end method


# virtual methods
.method public getUpdateCounts()[I
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    return-object v0
.end method
