.class public Lorg/apache/xpath/Arg;
.super Ljava/lang/Object;
.source "Arg.java"


# instance fields
.field private m_expression:Ljava/lang/String;

.field private m_isFromWithParam:Z

.field private m_isVisible:Z

.field private m_qname:Lorg/apache/xml/utils/QName;

.field private m_val:Lorg/apache/xpath/objects/XObject;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Lorg/apache/xml/utils/QName;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    .line 184
    iput-object v2, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    .line 185
    iput-object v2, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isFromWithParam:Z

    .line 188
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/utils/QName;Ljava/lang/String;Z)V
    .registers 5
    .parameter "qname"
    .parameter "expression"
    .parameter "isFromWithParam"

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    .line 202
    iput-object p2, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    .line 203
    iput-boolean p3, p0, Lorg/apache/xpath/Arg;->m_isFromWithParam:Z

    .line 204
    if-nez p3, :cond_12

    const/4 v0, 0x1

    :goto_f
    iput-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    .line 205
    return-void

    .line 204
    :cond_12
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public constructor <init>(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;)V
    .registers 4
    .parameter "qname"
    .parameter "val"

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    .line 218
    iput-object p2, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isFromWithParam:Z

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;Z)V
    .registers 5
    .parameter "qname"
    .parameter "val"
    .parameter "isFromWithParam"

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    .line 253
    iput-object p2, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    .line 254
    iput-boolean p3, p0, Lorg/apache/xpath/Arg;->m_isFromWithParam:Z

    .line 255
    if-nez p3, :cond_12

    const/4 v0, 0x1

    :goto_c
    iput-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    .line 257
    return-void

    .line 255
    :cond_12
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public detach()V
    .registers 3

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    if-eqz v0, :cond_f

    .line 98
    iget-object v0, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    .line 99
    iget-object v0, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->detach()V

    .line 101
    :cond_f
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 234
    instance-of v0, p1, Lorg/apache/xml/utils/QName;

    if-eqz v0, :cond_b

    .line 236
    iget-object v0, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 239
    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_a
.end method

.method public getExpression()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    return-object v0
.end method

.method public final getQName()Lorg/apache/xml/utils/QName;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    return-object v0
.end method

.method public final getVal()Lorg/apache/xpath/objects/XObject;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    return-object v0
.end method

.method public isFromWithParam()Z
    .registers 2

    .prologue
    .line 146
    iget-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isFromWithParam:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    return v0
.end method

.method public setExpression(Ljava/lang/String;)V
    .registers 2
    .parameter "expr"

    .prologue
    .line 131
    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setIsVisible(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 171
    iput-boolean p1, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    .line 172
    return-void
.end method

.method public final setQName(Lorg/apache/xml/utils/QName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 59
    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    .line 60
    return-void
.end method

.method public final setVal(Lorg/apache/xpath/objects/XObject;)V
    .registers 2
    .parameter "val"

    .prologue
    .line 87
    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    .line 88
    return-void
.end method
