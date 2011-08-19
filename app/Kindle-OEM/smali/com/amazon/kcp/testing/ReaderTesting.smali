.class public final Lcom/amazon/kcp/testing/ReaderTesting;
.super Ljava/lang/Object;
.source "ReaderTesting.java"


# static fields
.field private static bookNavigator:Lcom/amazon/kcp/reader/models/IBookNavigator;

.field private static testDriver:Lcom/amazon/kcp/testing/IReaderTestDriver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    sput-object v0, Lcom/amazon/kcp/testing/ReaderTesting;->testDriver:Lcom/amazon/kcp/testing/IReaderTestDriver;

    .line 8
    sput-object v0, Lcom/amazon/kcp/testing/ReaderTesting;->bookNavigator:Lcom/amazon/kcp/reader/models/IBookNavigator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getBookNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/amazon/kcp/testing/ReaderTesting;->bookNavigator:Lcom/amazon/kcp/reader/models/IBookNavigator;

    return-object v0
.end method

.method public static getTestDriver()Lcom/amazon/kcp/testing/IReaderTestDriver;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/amazon/kcp/testing/ReaderTesting;->testDriver:Lcom/amazon/kcp/testing/IReaderTestDriver;

    return-object v0
.end method

.method public static setBookNavigator(Lcom/amazon/kcp/reader/models/IBookNavigator;)V
    .locals 0
    .parameter "bookNavigator"

    .prologue
    .line 30
    sput-object p0, Lcom/amazon/kcp/testing/ReaderTesting;->bookNavigator:Lcom/amazon/kcp/reader/models/IBookNavigator;

    .line 31
    return-void
.end method

.method public static setTestDriver(Lcom/amazon/kcp/testing/IReaderTestDriver;)V
    .locals 0
    .parameter "testDriver"

    .prologue
    .line 20
    sput-object p0, Lcom/amazon/kcp/testing/ReaderTesting;->testDriver:Lcom/amazon/kcp/testing/IReaderTestDriver;

    .line 21
    return-void
.end method
