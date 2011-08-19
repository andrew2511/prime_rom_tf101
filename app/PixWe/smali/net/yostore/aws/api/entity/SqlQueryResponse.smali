.class public Lnet/yostore/aws/api/entity/SqlQueryResponse;
.super Lnet/yostore/aws/api/entity/ApiResponse;
.source "SqlQueryResponse.java"


# instance fields
.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/EntryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lnet/yostore/aws/api/entity/ApiResponse;-><init>()V

    .line 6
    const/16 v0, -0x3e7

    iput v0, p0, Lnet/yostore/aws/api/entity/SqlQueryResponse;->total:I

    .line 5
    return-void
.end method


# virtual methods
.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/EntryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SqlQueryResponse;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lnet/yostore/aws/api/entity/SqlQueryResponse;->total:I

    return v0
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/EntryInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SqlQueryResponse;->entries:Ljava/util/List;

    .line 10
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .parameter "total"

    .prologue
    .line 15
    iput p1, p0, Lnet/yostore/aws/api/entity/SqlQueryResponse;->total:I

    .line 16
    return-void
.end method
