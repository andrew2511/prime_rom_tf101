.class public abstract Lorg/apache/xml/dtm/DTMManager;
.super Ljava/lang/Object;
.source "DTMManager.java"


# static fields
.field public static final IDENT_DTM_DEFAULT:I = -0x10000

.field public static final IDENT_DTM_NODE_BITS:I = 0x10

.field public static final IDENT_MAX_DTMS:I = 0x10000

.field public static final IDENT_NODE_DEFAULT:I = 0xffff

.field private static debug:Z = false

.field private static defaultClassName:Ljava/lang/String; = null

.field private static final defaultPropName:Ljava/lang/String; = "org.apache.xml.dtm.DTMManager"


# instance fields
.field public m_incremental:Z

.field public m_source_location:Z

.field protected m_xsf:Lorg/apache/xml/utils/XMLStringFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-string v0, "org.apache.xml.dtm.ref.DTMManagerDefault"

    sput-object v0, Lorg/apache/xml/dtm/DTMManager;->defaultClassName:Ljava/lang/String;

    .line 359
    :try_start_4
    const-string v0, "dtm.debug"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_d
    sput-boolean v0, Lorg/apache/xml/dtm/DTMManager;->debug:Z
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_f} :catch_12

    .line 362
    :goto_f
    return-void

    .line 359
    :cond_10
    const/4 v0, 0x0

    goto :goto_d

    .line 361
    :catch_12
    move-exception v0

    goto :goto_f
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/DTMManager;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    .line 289
    iput-boolean v1, p0, Lorg/apache/xml/dtm/DTMManager;->m_incremental:Z

    .line 297
    iput-boolean v1, p0, Lorg/apache/xml/dtm/DTMManager;->m_source_location:Z

    .line 68
    return-void
.end method

.method public static newInstance(Lorg/apache/xml/utils/XMLStringFactory;)Lorg/apache/xml/dtm/DTMManager;
    .registers 6
    .parameter "xsf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/dtm/DTMConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 134
    const/4 v1, 0x0

    .line 137
    .local v1, factoryImpl:Lorg/apache/xml/dtm/DTMManager;
    :try_start_2
    const-string v2, "org.apache.xml.dtm.DTMManager"

    sget-object v3, Lorg/apache/xml/dtm/DTMManager;->defaultClassName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/xml/dtm/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #factoryImpl:Lorg/apache/xml/dtm/DTMManager;
    check-cast v1, Lorg/apache/xml/dtm/DTMManager;
    :try_end_c
    .catch Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError; {:try_start_2 .. :try_end_c} :catch_1a

    .line 147
    .restart local v1       #factoryImpl:Lorg/apache/xml/dtm/DTMManager;
    if-nez v1, :cond_2c

    .line 149
    new-instance v2, Lorg/apache/xml/dtm/DTMConfigurationException;

    const-string v3, "ER_NO_DEFAULT_IMPL"

    invoke-static {v3, v4}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/xml/dtm/DTMConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    .end local v1           #factoryImpl:Lorg/apache/xml/dtm/DTMManager;
    :catch_1a
    move-exception v2

    move-object v0, v2

    .line 142
    .local v0, e:Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
    new-instance v2, Lorg/apache/xml/dtm/DTMConfigurationException;

    const-string v3, "ER_NO_DEFAULT_IMPL"

    invoke-static {v3, v4}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/xml/dtm/DTMConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 154
    .end local v0           #e:Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
    .restart local v1       #factoryImpl:Lorg/apache/xml/dtm/DTMManager;
    :cond_2c
    invoke-virtual {v1, p0}, Lorg/apache/xml/dtm/DTMManager;->setXMLStringFactory(Lorg/apache/xml/utils/XMLStringFactory;)V

    .line 156
    return-object v1
.end method


# virtual methods
.method public abstract createDTMIterator(I)Lorg/apache/xml/dtm/DTMIterator;
.end method

.method public abstract createDTMIterator(ILorg/apache/xml/dtm/DTMFilter;Z)Lorg/apache/xml/dtm/DTMIterator;
.end method

.method public abstract createDTMIterator(Ljava/lang/Object;I)Lorg/apache/xml/dtm/DTMIterator;
.end method

.method public abstract createDTMIterator(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xml/dtm/DTMIterator;
.end method

.method public abstract createDocumentFragment()Lorg/apache/xml/dtm/DTM;
.end method

.method public abstract getDTM(I)Lorg/apache/xml/dtm/DTM;
.end method

.method public abstract getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;
.end method

.method public abstract getDTMHandleFromNode(Lorg/w3c/dom/Node;)I
.end method

.method public abstract getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I
.end method

.method public getDTMIdentityMask()I
    .registers 2

    .prologue
    .line 417
    const/high16 v0, -0x1

    return v0
.end method

.method public getIncremental()Z
    .registers 2

    .prologue
    .line 306
    iget-boolean v0, p0, Lorg/apache/xml/dtm/DTMManager;->m_incremental:Z

    return v0
.end method

.method public getNodeIdentityMask()I
    .registers 2

    .prologue
    .line 427
    const v0, 0xffff

    return v0
.end method

.method public getSource_location()Z
    .registers 2

    .prologue
    .line 331
    iget-boolean v0, p0, Lorg/apache/xml/dtm/DTMManager;->m_source_location:Z

    return v0
.end method

.method public getXMLStringFactory()Lorg/apache/xml/utils/XMLStringFactory;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/xml/dtm/DTMManager;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    return-object v0
.end method

.method public abstract release(Lorg/apache/xml/dtm/DTM;Z)Z
.end method

.method public setIncremental(Z)V
    .registers 2
    .parameter "incremental"

    .prologue
    .line 319
    iput-boolean p1, p0, Lorg/apache/xml/dtm/DTMManager;->m_incremental:Z

    .line 320
    return-void
.end method

.method public setSource_location(Z)V
    .registers 2
    .parameter "sourceLocation"

    .prologue
    .line 344
    iput-boolean p1, p0, Lorg/apache/xml/dtm/DTMManager;->m_source_location:Z

    .line 345
    return-void
.end method

.method public setXMLStringFactory(Lorg/apache/xml/utils/XMLStringFactory;)V
    .registers 2
    .parameter "xsf"

    .prologue
    .line 89
    iput-object p1, p0, Lorg/apache/xml/dtm/DTMManager;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    .line 90
    return-void
.end method
