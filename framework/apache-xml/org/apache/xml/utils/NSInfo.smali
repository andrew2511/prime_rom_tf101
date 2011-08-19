.class public Lorg/apache/xml/utils/NSInfo;
.super Ljava/lang/Object;
.source "NSInfo.java"


# static fields
.field public static final ANCESTORHASXMLNS:I = 0x1

.field public static final ANCESTORNOXMLNS:I = 0x2

.field public static final ANCESTORXMLNSUNPROCESSED:I


# instance fields
.field public m_ancestorHasXMLNSAttrs:I

.field public m_hasProcessedNS:Z

.field public m_hasXMLNSAttrs:Z

.field public m_namespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .parameter "namespace"
    .parameter "hasXMLNSAttrs"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/utils/NSInfo;->m_hasProcessedNS:Z

    .line 85
    iput-boolean p2, p0, Lorg/apache/xml/utils/NSInfo;->m_hasXMLNSAttrs:Z

    .line 86
    iput-object p1, p0, Lorg/apache/xml/utils/NSInfo;->m_namespace:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/NSInfo;->m_ancestorHasXMLNSAttrs:I

    .line 88
    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 4
    .parameter "hasProcessedNS"
    .parameter "hasXMLNSAttrs"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lorg/apache/xml/utils/NSInfo;->m_hasProcessedNS:Z

    .line 45
    iput-boolean p2, p0, Lorg/apache/xml/utils/NSInfo;->m_hasXMLNSAttrs:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/NSInfo;->m_namespace:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/NSInfo;->m_ancestorHasXMLNSAttrs:I

    .line 48
    return-void
.end method

.method public constructor <init>(ZZI)V
    .registers 5
    .parameter "hasProcessedNS"
    .parameter "hasXMLNSAttrs"
    .parameter "ancestorHasXMLNSAttrs"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean p1, p0, Lorg/apache/xml/utils/NSInfo;->m_hasProcessedNS:Z

    .line 68
    iput-boolean p2, p0, Lorg/apache/xml/utils/NSInfo;->m_hasXMLNSAttrs:Z

    .line 69
    iput p3, p0, Lorg/apache/xml/utils/NSInfo;->m_ancestorHasXMLNSAttrs:I

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/NSInfo;->m_namespace:Ljava/lang/String;

    .line 71
    return-void
.end method
