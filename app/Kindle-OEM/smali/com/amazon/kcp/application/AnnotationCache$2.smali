.class Lcom/amazon/kcp/application/AnnotationCache$2;
.super Ljava/lang/Object;
.source "AnnotationCache.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


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


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/AnnotationCache;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/amazon/kcp/application/AnnotationCache$2;->this$0:Lcom/amazon/kcp/application/AnnotationCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$2;->this$0:Lcom/amazon/kcp/application/AnnotationCache;

    invoke-static {v0}, Lcom/amazon/kcp/application/AnnotationCache;->access$200(Lcom/amazon/kcp/application/AnnotationCache;)Lcom/amazon/kcp/application/AnnotationCache$BookData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AnnotationCache$BookData;->emptyAnnotations()V

    .line 245
    return-void
.end method
