.class Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;
.super Ljava/lang/Object;
.source "IndexRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/indexes/IndexRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetLength"
.end annotation


# instance fields
.field public length:I

.field public offset:I

.field final synthetic this$0:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/indexes/IndexRecord;II)V
    .locals 0
    .parameter
    .parameter "paramOffset"
    .parameter "paramLength"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;->this$0:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput p2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;->offset:I

    .line 278
    iput p3, p0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord$OffsetLength;->length:I

    .line 279
    return-void
.end method
