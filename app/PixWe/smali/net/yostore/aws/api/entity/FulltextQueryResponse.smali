.class public Lnet/yostore/aws/api/entity/FulltextQueryResponse;
.super Lnet/yostore/aws/api/entity/ApiResponse;
.source "FulltextQueryResponse.java"


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
    .line 6
    invoke-direct {p0}, Lnet/yostore/aws/api/entity/ApiResponse;-><init>()V

    .line 8
    const/16 v0, -0x3e7

    iput v0, p0, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->total:I

    .line 9
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->entries:Ljava/util/List;

    .line 6
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
    .line 16
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->total:I

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
    .line 13
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->entries:Ljava/util/List;

    .line 14
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .parameter "total"

    .prologue
    .line 19
    iput p1, p0, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->total:I

    .line 20
    return-void
.end method
