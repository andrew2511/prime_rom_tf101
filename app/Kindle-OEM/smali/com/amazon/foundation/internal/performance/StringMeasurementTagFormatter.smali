.class public final Lcom/amazon/foundation/internal/performance/StringMeasurementTagFormatter;
.super Ljava/lang/Object;
.source "StringMeasurementTagFormatter.java"

# interfaces
.implements Lcom/amazon/foundation/internal/performance/MeasurementTagFormatter;


# static fields
.field private static final instance:Lcom/amazon/foundation/internal/performance/StringMeasurementTagFormatter;

.field private static final stringToTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final tagToString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/amazon/foundation/internal/performance/StringMeasurementTagFormatter;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/performance/StringMeasurementTagFormatter;-><init>()V

    sput-object v0, Lcom/amazon/foundation/internal/performance/StringMeasurementTagFormatter;->instance:Lcom/amazon/foundation/internal/performance/StringMeasurementTagFormatter;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazon/foundation/internal/performance/StringMeasurementTagFormatter;->tagToString:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/foundation/internal/performance/StringMeasurementTagFormatter;->stringToTag:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static getInstance()Lcom/amazon/foundation/internal/performance/StringMeasurementTagFormatter;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/amazon/foundation/internal/performance/StringMeasurementTagFormatter;->instance:Lcom/amazon/foundation/internal/performance/StringMeasurementTagFormatter;

    return-object v0
.end method

.method public static getTagForString(Ljava/lang/String;)I
    .locals 1
    .parameter "str"

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 1
    .parameter "tag"

    .prologue
    .line 90
    sget-object v0, Lcom/amazon/foundation/internal/performance/StringMeasurementTagFormatter;->tagToString:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
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
    .line 83
    invoke-virtual {p0, p2}, Lcom/amazon/foundation/internal/performance/StringMeasurementTagFormatter;->format(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 84
    return-void
.end method
