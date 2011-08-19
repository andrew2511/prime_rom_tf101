.class Lcom/amazon/kcp/application/BookIndexReporter$1;
.super Ljava/lang/Object;
.source "BookIndexReporter.java"

# interfaces
.implements Lcom/amazon/kcp/application/IFileIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/BookIndexReporter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/BookIndexReporter;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/BookIndexReporter;)V
    .locals 0
    .parameter

    .prologue
    .line 9
    iput-object p1, p0, Lcom/amazon/kcp/application/BookIndexReporter$1;->this$0:Lcom/amazon/kcp/application/BookIndexReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addWord(Ljava/lang/String;II)V
    .locals 0
    .parameter "word"
    .parameter "startIndex"
    .parameter "length"

    .prologue
    .line 15
    return-void
.end method
