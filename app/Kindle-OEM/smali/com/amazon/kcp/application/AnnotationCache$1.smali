.class Lcom/amazon/kcp/application/AnnotationCache$1;
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

.field final synthetic val$book:Lcom/amazon/kcp/application/MBPBookData;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/MBPBookData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/amazon/kcp/application/AnnotationCache$1;->this$0:Lcom/amazon/kcp/application/AnnotationCache;

    iput-object p2, p0, Lcom/amazon/kcp/application/AnnotationCache$1;->val$book:Lcom/amazon/kcp/application/MBPBookData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$1;->this$0:Lcom/amazon/kcp/application/AnnotationCache;

    iget-object v1, p0, Lcom/amazon/kcp/application/AnnotationCache$1;->val$book:Lcom/amazon/kcp/application/MBPBookData;

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/AnnotationCache;->access$100(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/MBPBookData;)V

    .line 236
    return-void
.end method
