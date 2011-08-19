.class public Lgov/nist/javax/sip/header/MaxForwards;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "MaxForwards.java"

# interfaces
.implements Ljavax/sip/header/MaxForwardsHeader;


# static fields
.field private static final serialVersionUID:J = -0x2afa4eca0522fa07L


# instance fields
.field protected maxForwards:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    const-string v0, "Max-Forwards"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "m"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 59
    const-string v0, "Max-Forwards"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/MaxForwards;->setMaxForwards(I)V

    .line 61
    return-void
.end method


# virtual methods
.method public decrementMaxForwards()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/header/TooManyHopsException;
        }
    .end annotation

    .prologue
    .line 105
    iget v0, p0, Lgov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    if-lez v0, :cond_b

    .line 106
    iget v0, p0, Lgov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lgov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    .line 108
    return-void

    .line 107
    :cond_b
    new-instance v0, Ljavax/sip/header/TooManyHopsException;

    const-string v1, "has already reached 0!"

    invoke-direct {v0, v1}, Ljavax/sip/header/TooManyHopsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/MaxForwards;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "buffer"

    .prologue
    .line 92
    iget v0, p0, Lgov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "other"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 111
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 116
    :goto_5
    return v2

    .line 112
    :cond_6
    instance-of v2, p1, Ljavax/sip/header/MaxForwardsHeader;

    if-eqz v2, :cond_1c

    .line 113
    move-object v0, p1

    check-cast v0, Ljavax/sip/header/MaxForwardsHeader;

    move-object v1, v0

    .line 114
    .local v1, o:Ljavax/sip/header/MaxForwardsHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/MaxForwards;->getMaxForwards()I

    move-result v2

    invoke-interface {v1}, Ljavax/sip/header/MaxForwardsHeader;->getMaxForwards()I

    move-result v3

    if-ne v2, v3, :cond_1a

    move v2, v5

    goto :goto_5

    :cond_1a
    move v2, v4

    goto :goto_5

    .end local v1           #o:Ljavax/sip/header/MaxForwardsHeader;
    :cond_1c
    move v2, v4

    .line 116
    goto :goto_5
.end method

.method public getMaxForwards()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lgov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    return v0
.end method

.method public hasReachedZero()Z
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Lgov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setMaxForwards(I)V
    .registers 5
    .parameter "maxForwards"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 76
    if-ltz p1, :cond_6

    const/16 v0, 0xff

    if-le p1, v0, :cond_1f

    .line 77
    :cond_6
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad max forwards value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1f
    iput p1, p0, Lgov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    .line 80
    return-void
.end method
