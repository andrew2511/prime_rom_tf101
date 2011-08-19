.class Lcom/amazon/kcp/application/AnnotationCache$4;
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

.field final synthetic val$book:Lcom/amazon/kcp/application/MBPBookData;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/AnnotationCache;Lcom/amazon/kcp/application/MBPBookData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/amazon/kcp/application/AnnotationCache$4;->this$0:Lcom/amazon/kcp/application/AnnotationCache;

    iput-object p2, p0, Lcom/amazon/kcp/application/AnnotationCache$4;->val$book:Lcom/amazon/kcp/application/MBPBookData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$4;->val$book:Lcom/amazon/kcp/application/MBPBookData;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/MBPBookData;->setAsin(Ljava/lang/String;)V

    .line 263
    return-void
.end method
