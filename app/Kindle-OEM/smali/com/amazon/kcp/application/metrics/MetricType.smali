.class public Lcom/amazon/kcp/application/metrics/MetricType;
.super Ljava/lang/Object;
.source "MetricType.java"


# static fields
.field public static final CRITICAL:Lcom/amazon/kcp/application/metrics/MetricType;

.field public static final DEBUG:Lcom/amazon/kcp/application/metrics/MetricType;

.field public static final ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

.field public static final INFO:Lcom/amazon/kcp/application/metrics/MetricType;

.field public static ORDERED_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/kcp/application/metrics/MetricType;",
            ">;"
        }
    .end annotation
.end field

.field public static final WARN:Lcom/amazon/kcp/application/metrics/MetricType;


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/metrics/MetricType;->ORDERED_TYPES:Ljava/util/List;

    .line 27
    new-instance v0, Lcom/amazon/kcp/application/metrics/MetricType;

    const-string v1, "D"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/metrics/MetricType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/metrics/MetricType;->DEBUG:Lcom/amazon/kcp/application/metrics/MetricType;

    .line 30
    new-instance v0, Lcom/amazon/kcp/application/metrics/MetricType;

    const-string v1, "I"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/metrics/MetricType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    .line 33
    new-instance v0, Lcom/amazon/kcp/application/metrics/MetricType;

    const-string v1, "W"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/metrics/MetricType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/metrics/MetricType;->WARN:Lcom/amazon/kcp/application/metrics/MetricType;

    .line 36
    new-instance v0, Lcom/amazon/kcp/application/metrics/MetricType;

    const-string v1, "E"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/metrics/MetricType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    .line 39
    new-instance v0, Lcom/amazon/kcp/application/metrics/MetricType;

    const-string v1, "C"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/metrics/MetricType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/metrics/MetricType;->CRITICAL:Lcom/amazon/kcp/application/metrics/MetricType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/amazon/kcp/application/metrics/MetricType;->code:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/amazon/kcp/application/metrics/MetricType;->ORDERED_TYPES:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/MetricType;->code:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/MetricType;->code:Ljava/lang/String;

    return-object v0
.end method
