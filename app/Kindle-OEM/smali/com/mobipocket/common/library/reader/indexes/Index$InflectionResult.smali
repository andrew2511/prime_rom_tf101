.class Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;
.super Ljava/lang/Object;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/indexes/Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InflectionResult"
.end annotation


# instance fields
.field public minplen:I

.field public preflen:I

.field public skip:Z

.field final synthetic this$0:Lcom/mobipocket/common/library/reader/indexes/Index;


# direct methods
.method private constructor <init>(Lcom/mobipocket/common/library/reader/indexes/Index;)V
    .locals 0
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->this$0:Lcom/mobipocket/common/library/reader/indexes/Index;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobipocket/common/library/reader/indexes/Index;Lcom/mobipocket/common/library/reader/indexes/Index$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;-><init>(Lcom/mobipocket/common/library/reader/indexes/Index;)V

    return-void
.end method
