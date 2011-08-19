.class public final Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;
.super Ljava/lang/Object;
.source "IntMeasurementTagFormatter.java"

# interfaces
.implements Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;


# static fields
.field private static final instance:Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;-><init>()V

    sput-object v0, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;->instance:Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;->instance:Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;

    return-object v0
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 1
    .parameter "tag"

    .prologue
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStreamWriter;I)V
    .locals 1
    .parameter "o"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p2}, Lcom/amazon/foundation/internal/performance/IntMeasurementTagFormatter;->format(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 40
    return-void
.end method
