.class Lcom/amazon/kcp/application/AnnotationCache$BookData;
.super Ljava/lang/Object;
.source "AnnotationCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AnnotationCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BookData"
.end annotation


# instance fields
.field annotationDataList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$BookData;->annotationDataList:Ljava/util/Vector;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/application/AnnotationCache$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/amazon/kcp/application/AnnotationCache$BookData;-><init>()V

    return-void
.end method


# virtual methods
.method public emptyAnnotations()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$BookData;->annotationDataList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 174
    return-void
.end method

.method public getAnnotations()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$BookData;->annotationDataList:Ljava/util/Vector;

    return-object v0
.end method
