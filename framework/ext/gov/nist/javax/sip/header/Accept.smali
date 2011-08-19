.class public final Lgov/nist/javax/sip/header/Accept;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "Accept.java"

# interfaces
.implements Ljavax/sip/header/AcceptHeader;


# static fields
.field private static final serialVersionUID:J = -0x6d2a503d84e287e7L


# instance fields
.field protected mediaRange:Lgov/nist/javax/sip/header/MediaRange;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    const-string v0, "Accept"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method public allowsAllContentSubTypes()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_7

    move v0, v2

    .line 85
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/MediaRange;->getSubtype()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_6

    :cond_17
    move v0, v2

    goto :goto_6
.end method

.method public allowsAllContentTypes()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_7

    move v0, v2

    .line 73
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    iget-object v0, v0, Lgov/nist/javax/sip/header/MediaRange;->type:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_6

    :cond_15
    move v0, v2

    goto :goto_6
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 195
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Accept;

    .line 196
    .local v0, retval:Lgov/nist/javax/sip/header/Accept;
    iget-object v1, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-eqz v1, :cond_14

    .line 197
    iget-object v1, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/MediaRange;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/header/MediaRange;

    iput-object p0, v0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    .line 198
    :cond_14
    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Accept;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "buffer"

    .prologue
    .line 96
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-eqz v0, :cond_9

    .line 97
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MediaRange;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 98
    :cond_9
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 99
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 102
    :cond_1f
    return-object p1
.end method

.method public getContentSubType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_6

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/MediaRange;->getSubtype()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_6

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/MediaRange;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getMediaRange()Lgov/nist/javax/sip/header/MediaRange;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    return-object v0
.end method

.method public getQValue()F
    .registers 2

    .prologue
    .line 137
    const-string v0, "q"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Accept;->getParameterAsFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public hasQValue()Z
    .registers 2

    .prologue
    .line 145
    const-string v0, "q"

    invoke-super {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeQValue()V
    .registers 2

    .prologue
    .line 153
    const-string v0, "q"

    invoke-super {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->removeParameter(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public setContentSubType(Ljava/lang/String;)V
    .registers 3
    .parameter "subtype"

    .prologue
    .line 160
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_b

    .line 161
    new-instance v0, Lgov/nist/javax/sip/header/MediaRange;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MediaRange;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    .line 162
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MediaRange;->setSubtype(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 3
    .parameter "type"

    .prologue
    .line 169
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    if-nez v0, :cond_b

    .line 170
    new-instance v0, Lgov/nist/javax/sip/header/MediaRange;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MediaRange;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    .line 171
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MediaRange;->setType(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public setMediaRange(Lgov/nist/javax/sip/header/MediaRange;)V
    .registers 2
    .parameter "m"

    .prologue
    .line 191
    iput-object p1, p0, Lgov/nist/javax/sip/header/Accept;->mediaRange:Lgov/nist/javax/sip/header/MediaRange;

    .line 192
    return-void
.end method

.method public setQValue(F)V
    .registers 3
    .parameter "qValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 180
    const/high16 v0, -0x4080

    cmpl-float v0, p1, v0

    if-nez v0, :cond_b

    .line 181
    const-string v0, "q"

    invoke-super {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->removeParameter(Ljava/lang/String;)V

    .line 182
    :cond_b
    const-string v0, "q"

    invoke-super {p0, v0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Ljava/lang/String;F)V

    .line 184
    return-void
.end method
