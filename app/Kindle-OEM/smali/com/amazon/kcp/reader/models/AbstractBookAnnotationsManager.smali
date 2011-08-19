.class public abstract Lcom/amazon/kcp/reader/models/AbstractBookAnnotationsManager;
.super Ljava/lang/Object;
.source "AbstractBookAnnotationsManager.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex(Lcom/amazon/kcp/reader/models/IAnnotation;)I
    .locals 4
    .parameter "annotation"

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/AbstractBookAnnotationsManager;->getAnnotationsList()[Lcom/amazon/kcp/reader/models/IAnnotation;

    move-result-object v0

    .line 14
    .local v0, annotations:[Lcom/amazon/kcp/reader/models/IAnnotation;
    const/4 v2, -0x1

    .line 15
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 17
    aget-object v3, v0, v1

    invoke-interface {p1, v3}, Lcom/amazon/kcp/reader/models/IAnnotation;->isEqual(Lcom/amazon/kcp/reader/models/IAnnotation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19
    move v2, v1

    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_1
    return v2
.end method
