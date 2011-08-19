.class public Lcom/amazon/kcp/application/BookIndexReporter;
.super Ljava/lang/Object;
.source "BookIndexReporter.java"


# static fields
.field private static instance:Lcom/amazon/kcp/application/BookIndexReporter;


# instance fields
.field private indexCallback:Lcom/amazon/kcp/application/IFileIndexer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/kcp/application/BookIndexReporter;->instance:Lcom/amazon/kcp/application/BookIndexReporter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/amazon/kcp/application/BookIndexReporter$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/BookIndexReporter$1;-><init>(Lcom/amazon/kcp/application/BookIndexReporter;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/BookIndexReporter;->indexCallback:Lcom/amazon/kcp/application/IFileIndexer;

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/amazon/kcp/application/BookIndexReporter;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/amazon/kcp/application/BookIndexReporter;->instance:Lcom/amazon/kcp/application/BookIndexReporter;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/amazon/kcp/application/BookIndexReporter;

    invoke-direct {v0}, Lcom/amazon/kcp/application/BookIndexReporter;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/BookIndexReporter;->instance:Lcom/amazon/kcp/application/BookIndexReporter;

    .line 23
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/BookIndexReporter;->instance:Lcom/amazon/kcp/application/BookIndexReporter;

    return-object v0
.end method


# virtual methods
.method public injectReporter(Lcom/amazon/kcp/application/IFileIndexer;)V
    .locals 0
    .parameter "indexer"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/amazon/kcp/application/BookIndexReporter;->indexCallback:Lcom/amazon/kcp/application/IFileIndexer;

    .line 32
    return-void
.end method

.method public reportWord(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    return-void
.end method
