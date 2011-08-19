.class public Lorg/apache/xpath/objects/XBoolean;
.super Lorg/apache/xpath/objects/XObject;
.source "XBoolean.java"


# static fields
.field public static final S_FALSE:Lorg/apache/xpath/objects/XBoolean; = null

.field public static final S_TRUE:Lorg/apache/xpath/objects/XBoolean; = null

.field static final serialVersionUID:J = -0x29258ee87c86ba91L


# instance fields
.field private final m_val:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    new-instance v0, Lorg/apache/xpath/objects/XBooleanStatic;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XBooleanStatic;-><init>(Z)V

    sput-object v0, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    .line 42
    new-instance v0, Lorg/apache/xpath/objects/XBooleanStatic;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XBooleanStatic;-><init>(Z)V

    sput-object v0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .registers 3
    .parameter "b"

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    .line 71
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XBoolean;->setObject(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    .line 58
    iput-boolean p1, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    .line 59
    return-void
.end method


# virtual methods
.method public bool()Z
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    return v0
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .registers 5
    .parameter "obj2"

    .prologue
    .line 155
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    .line 156
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result v1

    .line 160
    :goto_b
    return v1

    :cond_c
    :try_start_c
    iget-boolean v1, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z
    :try_end_11
    .catch Ljavax/xml/transform/TransformerException; {:try_start_c .. :try_end_11} :catch_18

    move-result v2

    if-ne v1, v2, :cond_16

    const/4 v1, 0x1

    goto :goto_b

    :cond_16
    const/4 v1, 0x0

    goto :goto_b

    .line 162
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 164
    .local v0, te:Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    const-string v0, "#BOOLEAN"

    return-object v0
.end method

.method public num()D
    .registers 3

    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    if-eqz v0, :cond_7

    const-wide/high16 v0, 0x3ff0

    :goto_6
    return-wide v0

    :cond_7
    const-wide/16 v0, 0x0

    goto :goto_6
.end method

.method public object()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/xpath/objects/XBoolean;->m_obj:Ljava/lang/Object;

    if-nez v0, :cond_e

    .line 136
    new-instance v0, Ljava/lang/Boolean;

    iget-boolean v1, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XBoolean;->setObject(Ljava/lang/Object;)V

    .line 137
    :cond_e
    iget-object v0, p0, Lorg/apache/xpath/objects/XBoolean;->m_obj:Ljava/lang/Object;

    return-object v0
.end method

.method public str()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/apache/xpath/objects/XBoolean;->m_val:Z

    if-eqz v0, :cond_7

    const-string v0, "true"

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "false"

    goto :goto_6
.end method
