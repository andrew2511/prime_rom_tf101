.class public Lorg/dom4j/util/NonLazyDocumentFactory;
.super Lorg/dom4j/DocumentFactory;
.source "NonLazyDocumentFactory.java"


# static fields
.field protected static transient singleton:Lorg/dom4j/util/NonLazyDocumentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lorg/dom4j/util/NonLazyDocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/util/NonLazyDocumentFactory;-><init>()V

    .line 27
    sput-object v0, Lorg/dom4j/util/NonLazyDocumentFactory;->singleton:Lorg/dom4j/util/NonLazyDocumentFactory;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/dom4j/DocumentFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/dom4j/util/NonLazyDocumentFactory;->singleton:Lorg/dom4j/util/NonLazyDocumentFactory;

    return-object v0
.end method


# virtual methods
.method public createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 1
    .parameter "qname"

    .prologue
    .line 44
    new-instance v0, Lorg/dom4j/util/NonLazyElement;

    invoke-direct {v0, p1}, Lorg/dom4j/util/NonLazyElement;-><init>(Lorg/dom4j/QName;)V

    return-object v0
.end method
