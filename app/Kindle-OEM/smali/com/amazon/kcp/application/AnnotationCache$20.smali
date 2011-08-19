.class Lcom/amazon/kcp/application/AnnotationCache$20;
.super Ljava/lang/Object;
.source "AnnotationCache.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IStringValueMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/AnnotationCache;->deserialize(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/AnnotationCache;

.field final synthetic val$note:Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/amazon/kcp/application/AnnotationCache$20;->this$0:Lcom/amazon/kcp/application/AnnotationCache;

    iput-object p2, p0, Lcom/amazon/kcp/application/AnnotationCache$20;->val$note:Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$20;->val$note:Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/AnnotationCache$SerializedAnnotationData;->setUserText(Ljava/lang/String;)V

    .line 440
    return-void
.end method
